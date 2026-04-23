from __future__ import annotations

import json
import re
import statistics
import subprocess
import time
from pathlib import Path


ROOT = Path(__file__).resolve().parent
BUILD_DIR = ROOT / "build"
RESULT_JSON = ROOT / "benchmark_results.json"
RESULT_MD = ROOT / "benchmark_results.md"

ARM_SRC = next(ROOT.glob("*-arm.s"))
RISCV_SRC = next(ROOT.glob("*-riscv.s"))

CASES = [
    {"len": 256, "repeat": 20000},
    {"len": 1024, "repeat": 20000},
    {"len": 4096, "repeat": 20000},
]

RUNS = 7
WARMUP_RUNS = 1


def run(cmd: list[str], cwd: Path | None = None) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        cmd,
        cwd=cwd or ROOT,
        check=True,
        text=True,
        capture_output=True,
    )


def compile_binary(arch: str, src: Path, length: int, repeat: int) -> tuple[Path, Path]:
    BUILD_DIR.mkdir(exist_ok=True)
    binary = BUILD_DIR / f"{arch}_len{length}_rep{repeat}"
    dump = binary.with_suffix(".dump")

    if arch == "armv9":
        compiler = "aarch64-linux-gnu-gcc"
        objdump = "aarch64-linux-gnu-objdump"
        extra = []
    else:
        compiler = "riscv64-linux-gnu-gcc"
        objdump = "riscv64-linux-gnu-objdump"
        extra = ["-march=rv64im", "-mabi=lp64"]

    compile_cmd = [
        compiler,
        "-nostdlib",
        "-static",
        "-x",
        "assembler-with-cpp",
        f"-DLEN={length}",
        f"-DREPEAT={repeat}",
        *extra,
        "-o",
        str(binary),
        str(src),
    ]
    run(compile_cmd)
    dump_text = run([objdump, "-d", str(binary)]).stdout
    dump.write_text(dump_text, encoding="utf-8")
    return binary, dump


def measure(binary: Path, qemu_cmd: str) -> list[float]:
    for _ in range(WARMUP_RUNS):
        subprocess.run(
            [qemu_cmd, str(binary)],
            cwd=ROOT,
            check=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )

    times_ms: list[float] = []
    for _ in range(RUNS):
        start = time.perf_counter_ns()
        subprocess.run(
            [qemu_cmd, str(binary)],
            cwd=ROOT,
            check=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
        elapsed_ms = (time.perf_counter_ns() - start) / 1_000_000
        times_ms.append(elapsed_ms)
    return times_ms


def extract_loop_stats(dump_text: str, arch: str) -> tuple[int, int, list[str]]:
    lines = dump_text.splitlines()
    start = None
    end = None
    addr_re = re.compile(r"^\s*([0-9a-f]+):")
    for idx, line in enumerate(lines):
        if "<dot_loop>:" in line:
            start = idx
        if "<dot_loop_end>:" in line:
            end = idx
            break
    if start is None or end is None or end <= start + 1:
        raise RuntimeError(f"failed to locate dot_loop in {arch} dump")

    body = [line for line in lines[start + 1 : end] if addr_re.match(line)]
    if not body:
        raise RuntimeError(f"empty dot_loop body in {arch} dump")

    start_addr = int(addr_re.match(body[0]).group(1), 16)
    last_addr = int(addr_re.match(body[-1]).group(1), 16)
    loop_bytes = (last_addr - start_addr) + 4
    normalized = [re.sub(r"^\s*[0-9a-f]+:\s+(?:[0-9a-f]{2}\s+){1,8}", "", line).strip() for line in body]
    return len(body), loop_bytes, normalized


def summarize_case(length: int, repeat: int) -> dict:
    arm_bin, arm_dump = compile_binary("armv9", ARM_SRC, length, repeat)
    riscv_bin, riscv_dump = compile_binary("riscv", RISCV_SRC, length, repeat)

    arm_times = measure(arm_bin, "qemu-aarch64")
    riscv_times = measure(riscv_bin, "qemu-riscv64")

    arm_dump_text = arm_dump.read_text(encoding="utf-8")
    riscv_dump_text = riscv_dump.read_text(encoding="utf-8")
    arm_inst, arm_bytes, arm_loop = extract_loop_stats(arm_dump_text, "armv9")
    riscv_inst, riscv_bytes, riscv_loop = extract_loop_stats(riscv_dump_text, "riscv")

    return {
        "length": length,
        "repeat": repeat,
        "mac_operations": length * repeat,
        "armv9": {
            "binary": arm_bin.name,
            "avg_ms": round(statistics.mean(arm_times), 3),
            "min_ms": round(min(arm_times), 3),
            "max_ms": round(max(arm_times), 3),
            "runs_ms": [round(v, 3) for v in arm_times],
            "loop_instruction_count": arm_inst,
            "loop_bytes": arm_bytes,
            "loop_body": arm_loop,
        },
        "riscv": {
            "binary": riscv_bin.name,
            "avg_ms": round(statistics.mean(riscv_times), 3),
            "min_ms": round(min(riscv_times), 3),
            "max_ms": round(max(riscv_times), 3),
            "runs_ms": [round(v, 3) for v in riscv_times],
            "loop_instruction_count": riscv_inst,
            "loop_bytes": riscv_bytes,
            "loop_body": riscv_loop,
        },
        "speed_ratio_riscv_over_arm": round(statistics.mean(riscv_times) / statistics.mean(arm_times), 3),
    }


def write_markdown(results: list[dict]) -> None:
    lines = [
        "# Benchmark Results",
        "",
        f"- ARM source: `{ARM_SRC.name}`",
        f"- RISC-V source: `{RISCV_SRC.name}`",
        f"- Runs per case: `{RUNS}`",
        "",
        "| Vector Length | Repeat | MAC Operations | ARMv9 Avg (ms) | RISC-V Avg (ms) | RISC-V / ARM |",
        "| ---: | ---: | ---: | ---: | ---: | ---: |",
    ]

    for item in results:
        lines.append(
            f"| {item['length']} | {item['repeat']} | {item['mac_operations']} | "
            f"{item['armv9']['avg_ms']:.3f} | {item['riscv']['avg_ms']:.3f} | {item['speed_ratio_riscv_over_arm']:.3f} |"
        )

    lines.extend(
        [
            "",
            "## Core Loop",
            "",
            f"- ARMv9 loop: `{results[0]['armv9']['loop_instruction_count']}` instructions, `{results[0]['armv9']['loop_bytes']}` bytes",
            f"- RISC-V loop: `{results[0]['riscv']['loop_instruction_count']}` instructions, `{results[0]['riscv']['loop_bytes']}` bytes",
            "",
        ]
    )

    RESULT_MD.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> None:
    results = [summarize_case(item["len"], item["repeat"]) for item in CASES]
    RESULT_JSON.write_text(json.dumps(results, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    write_markdown(results)
    print(json.dumps(results, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
