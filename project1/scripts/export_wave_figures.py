from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
from typing import Callable, Dict, Iterable, List, Tuple

import matplotlib.pyplot as plt


ROOT = Path(__file__).resolve().parents[1]
WAVE_DIR = ROOT / "build" / "xsim" / "waves"
FIG_DIR = ROOT / "report" / "figures"


@dataclass
class SignalDef:
    name: str
    width: int


class VCDParser:
    def __init__(self, path: Path):
        self.path = path
        self.id_to_signals: Dict[str, List[SignalDef]] = {}

    def _parse_header(self) -> None:
        scope: List[str] = []
        with self.path.open("r", encoding="utf-8", errors="ignore") as handle:
            for raw in handle:
                line = raw.strip()
                if line.startswith("$scope"):
                    parts = line.split()
                    scope.append(parts[2])
                elif line.startswith("$upscope"):
                    if scope:
                        scope.pop()
                elif line.startswith("$var"):
                    parts = line.split()
                    width = int(parts[2])
                    code = parts[3]
                    name = parts[4]
                    full_name = ".".join(scope + [name])
                    self.id_to_signals.setdefault(code, []).append(SignalDef(full_name, width))
                elif line.startswith("$enddefinitions"):
                    break

    def collect(self, wanted_names: Iterable[str]) -> Dict[str, List[Tuple[int, str]]]:
        if not self.id_to_signals:
            self._parse_header()

        wanted = set(wanted_names)
        code_to_names: Dict[str, List[str]] = {}
        for code, signals in self.id_to_signals.items():
            matches = [signal.name for signal in signals if signal.name in wanted]
            if matches:
                code_to_names[code] = matches
        traces: Dict[str, List[Tuple[int, str]]] = {name: [] for name in wanted}
        current_time = 0

        with self.path.open("r", encoding="utf-8", errors="ignore") as handle:
            for raw in handle:
                line = raw.strip()
                if not line:
                    continue
                if line.startswith("#"):
                    current_time = int(line[1:])
                    continue
                if line.startswith("$"):
                    continue

                if line[0] in "01xXzZ":
                    code = line[1:]
                    if code in code_to_names:
                        for name in code_to_names[code]:
                            traces[name].append((current_time, line[0]))
                elif line[0] in "bBrR":
                    parts = line[1:].split()
                    if len(parts) == 2:
                        value, code = parts
                        if code in code_to_names:
                            for name in code_to_names[code]:
                                traces[name].append((current_time, value))

        return traces

    def width_of(self, name: str) -> int:
        for signals in self.id_to_signals.values():
            for signal in signals:
                if signal.name == name:
                    return signal.width
        raise KeyError(name)


def bits_to_int(bits: str, width: int, signed: bool = False) -> int | None:
    lowered = bits.lower()
    if "x" in lowered or "z" in lowered:
        return None
    padded = lowered.zfill(width)
    value = int(padded, 2)
    if signed and padded[0] == "1":
        value -= 1 << width
    return value


def step_window(
    events: List[Tuple[int, str]],
    t_min_ps: int,
    t_max_ps: int,
    converter: Callable[[str], float | int | None],
) -> Tuple[List[float], List[float]]:
    if not events:
        return [t_min_ps / 1000.0, t_max_ps / 1000.0], [0.0, 0.0]

    events = sorted(events, key=lambda item: item[0])
    current = converter(events[0][1])
    for time_ps, raw_value in events:
        if time_ps <= t_min_ps:
            current = converter(raw_value)
        else:
            break
    if current is None:
        current = 0.0

    times = [t_min_ps / 1000.0]
    values = [float(current)]
    last = float(current)

    for time_ps, raw_value in events:
        if time_ps < t_min_ps or time_ps > t_max_ps:
            continue
        converted = converter(raw_value)
        if converted is None:
            continue
        times.append(time_ps / 1000.0)
        values.append(float(converted))
        last = float(converted)

    times.append(t_max_ps / 1000.0)
    values.append(last)
    return times, values


def plot_digital_stack(
    ax,
    traces: Dict[str, List[Tuple[int, str]]],
    labels: List[Tuple[str, str]],
    t_min_ps: int,
    t_max_ps: int,
) -> None:
    y_ticks = []
    y_labels = []
    for idx, (signal_name, label) in enumerate(labels):
        base = (len(labels) - 1 - idx) * 1.4
        times, values = step_window(
            traces[signal_name],
            t_min_ps,
            t_max_ps,
            lambda raw: 1 if raw == "1" else 0,
        )
        stacked = [base + value * 0.9 for value in values]
        ax.step(times, stacked, where="post", linewidth=1.8)
        y_ticks.append(base + 0.45)
        y_labels.append(label)
    ax.set_yticks(y_ticks)
    ax.set_yticklabels(y_labels)
    ax.set_ylim(-0.4, len(labels) * 1.45)
    ax.grid(True, axis="x", linestyle="--", linewidth=0.5, alpha=0.5)


def export_relu_figure() -> None:
    parser = VCDParser(WAVE_DIR / "tb_relu_s20.vcd")
    x_name = "tb_relu_s20.x_s20"
    y_name = "tb_relu_s20.y_u8"
    traces = parser.collect([x_name, y_name])

    t_min_ps = 0
    t_max_ps = 10000
    x_width = parser.width_of(x_name)
    y_width = parser.width_of(y_name)

    x_t, x_v = step_window(
        traces[x_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, x_width, signed=True),
    )
    y_t, y_v = step_window(
        traces[y_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, y_width, signed=False),
    )

    fig, axes = plt.subplots(2, 1, figsize=(9, 4.8), sharex=True)
    axes[0].step(x_t, x_v, where="post", label="x_s20", linewidth=1.8)
    axes[0].set_title("ReLU Basic Module Waveform")
    axes[0].set_ylabel("x_s20")
    axes[0].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[0].legend(loc="upper left")

    axes[1].step(y_t, y_v, where="post", label="y_u8", linewidth=1.8, color="tab:orange")
    axes[1].axhline(0, color="gray", linewidth=0.8, linestyle="--")
    axes[1].axhline(255, color="gray", linewidth=0.8, linestyle="--")
    axes[1].set_ylabel("y_u8")
    axes[1].set_xlabel("Time / ns")
    axes[1].set_ylim(-5, 265)
    axes[1].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[1].legend(loc="upper left")
    fig.tight_layout()
    fig.savefig(FIG_DIR / "wave_relu_basic.png", dpi=200)
    plt.close(fig)


def export_mul8_figure() -> None:
    parser = VCDParser(WAVE_DIR / "tb_mul8.vcd")
    a_name = "tb_mul8.a_u8"
    b_name = "tb_mul8.b_s8"
    p_name = "tb_mul8.p_s16"
    traces = parser.collect([a_name, b_name, p_name])

    # Zoom in around the first a_u8 transition so the multiplication response is visible.
    t_min_ps = 252000
    t_max_ps = 260000
    a_width = parser.width_of(a_name)
    b_width = parser.width_of(b_name)
    p_width = parser.width_of(p_name)

    a_t, a_v = step_window(
        traces[a_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, a_width, signed=False),
    )
    b_t, b_v = step_window(
        traces[b_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, b_width, signed=True),
    )
    p_t, p_v = step_window(
        traces[p_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, p_width, signed=True),
    )

    fig, axes = plt.subplots(3, 1, figsize=(9, 6), sharex=True)
    axes[0].step(a_t, a_v, where="post", label="a_u8", linewidth=1.8)
    axes[0].set_title("Mul8 Basic Module Waveform")
    axes[0].set_ylabel("a_u8")
    axes[0].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[0].legend(loc="upper left")
    axes[0].axvline(256.0, color="gray", linewidth=0.8, linestyle=":")
    axes[0].text(256.15, max(a_v) if a_v else 0.0, "a_u8 = 1", fontsize=9, va="bottom")

    axes[1].step(b_t, b_v, where="post", label="b_s8", linewidth=1.8, color="tab:orange")
    axes[1].set_ylabel("b_s8")
    axes[1].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[1].legend(loc="upper left")

    axes[2].step(p_t, p_v, where="post", label="p_s16", linewidth=1.8, color="tab:green")
    axes[2].set_ylabel("p_s16")
    axes[2].set_xlabel("Time / ns")
    axes[2].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[2].legend(loc="upper left")
    axes[2].axvline(256.0, color="gray", linewidth=0.8, linestyle=":")
    axes[2].text(256.15, max(p_v) if p_v else 0.0, "response to a_u8 = 1", fontsize=9, va="bottom")
    fig.tight_layout()
    fig.savefig(FIG_DIR / "wave_mul8_basic.png", dpi=200)
    plt.close(fig)


def export_add8_figure() -> None:
    parser = VCDParser(WAVE_DIR / "tb_add8.vcd")
    a_name = "tb_add8.a_u8"
    b_name = "tb_add8.b_u8"
    y_name = "tb_add8.y_u8"
    traces = parser.collect([a_name, b_name, y_name])

    # Use the same zoom window as mul8 so the carry-free addition trend is easy to compare.
    t_min_ps = 252000
    t_max_ps = 260000
    a_width = parser.width_of(a_name)
    b_width = parser.width_of(b_name)
    y_width = parser.width_of(y_name)

    a_t, a_v = step_window(
        traces[a_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, a_width, signed=False),
    )
    b_t, b_v = step_window(
        traces[b_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, b_width, signed=False),
    )
    y_t, y_v = step_window(
        traces[y_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, y_width, signed=False),
    )

    fig, axes = plt.subplots(3, 1, figsize=(9, 6), sharex=True)
    axes[0].step(a_t, a_v, where="post", label="a_u8", linewidth=1.8)
    axes[0].set_title("Add8 Basic Module Waveform")
    axes[0].set_ylabel("a_u8")
    axes[0].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[0].legend(loc="upper left")
    axes[0].axvline(256.0, color="gray", linewidth=0.8, linestyle=":")
    axes[0].text(256.15, max(a_v) if a_v else 0.0, "a_u8 = 1", fontsize=9, va="bottom")

    axes[1].step(b_t, b_v, where="post", label="b_u8", linewidth=1.8, color="tab:orange")
    axes[1].set_ylabel("b_u8")
    axes[1].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[1].legend(loc="upper left")

    axes[2].step(y_t, y_v, where="post", label="y_u8", linewidth=1.8, color="tab:green")
    axes[2].set_ylabel("y_u8")
    axes[2].set_xlabel("Time / ns")
    axes[2].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[2].legend(loc="upper left")
    axes[2].axvline(256.0, color="gray", linewidth=0.8, linestyle=":")
    axes[2].text(256.15, max(y_v) if y_v else 0.0, "y_u8 follows b_u8 + 1", fontsize=9, va="bottom")
    fig.tight_layout()
    fig.savefig(FIG_DIR / "wave_add8_basic.png", dpi=200)
    plt.close(fig)


def export_div4_figure() -> None:
    parser = VCDParser(WAVE_DIR / "tb_div4.vcd")
    x_name = "tb_div4.x_u10"
    y_name = "tb_div4.y_u8"
    traces = parser.collect([x_name, y_name])

    # Show enough samples to make the x>>2 staircase obvious without crowding the axis.
    t_min_ps = 0
    t_max_ps = 64000
    x_width = parser.width_of(x_name)
    y_width = parser.width_of(y_name)

    x_t, x_v = step_window(
        traces[x_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, x_width, signed=False),
    )
    y_t, y_v = step_window(
        traces[y_name],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, y_width, signed=False),
    )

    fig, axes = plt.subplots(2, 1, figsize=(9, 4.8), sharex=True)
    axes[0].step(x_t, x_v, where="post", label="x_u10", linewidth=1.8)
    axes[0].set_title("Div4 Basic Module Waveform")
    axes[0].set_ylabel("x_u10")
    axes[0].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[0].legend(loc="upper left")

    axes[1].step(y_t, y_v, where="post", label="y_u8", linewidth=1.8, color="tab:orange")
    axes[1].set_ylabel("y_u8")
    axes[1].set_xlabel("Time / ns")
    axes[1].grid(True, linestyle="--", linewidth=0.5, alpha=0.5)
    axes[1].legend(loc="upper left")
    axes[1].text(40.0, max(y_v) * 0.85 if y_v else 0.0, "y_u8 = x_u10 >> 2", fontsize=9)
    fig.tight_layout()
    fig.savefig(FIG_DIR / "wave_div4_basic.png", dpi=200)
    plt.close(fig)


def export_system_figure() -> None:
    parser = VCDParser(WAVE_DIR / "tb_cnn_core.vcd")
    labels = [
        ("tb_cnn_core.start_base", "start_base"),
        ("tb_cnn_core.done_base", "done_base"),
        ("tb_cnn_core.start_booth", "start_booth"),
        ("tb_cnn_core.done_booth", "done_booth"),
        ("tb_cnn_core.start_simd", "start_simd"),
        ("tb_cnn_core.done_simd", "done_simd"),
        ("tb_cnn_core.start_pipe", "start_pipe"),
        ("tb_cnn_core.done_pipe", "done_pipe"),
        ("tb_cnn_core.start_dsp", "start_dsp"),
        ("tb_cnn_core.done_dsp", "done_dsp"),
    ]
    traces = parser.collect(name for name, _ in labels)

    t_min_ps = 0
    t_max_ps = 2085000

    fig, ax = plt.subplots(figsize=(11, 5.4))
    plot_digital_stack(ax, traces, labels, t_min_ps, t_max_ps)
    ax.set_title("System-Level Latency Comparison Across Five Independent Tops")
    ax.set_xlabel("Time / ns")
    ax.annotate("96 cycles", xy=(995.0, 12.9), xytext=(860.0, 13.6), arrowprops={"arrowstyle": "->"})
    ax.annotate("96 cycles", xy=(1965.0, 10.1), xytext=(1830.0, 10.8), arrowprops={"arrowstyle": "->"})
    ax.annotate("1 cycle", xy=(1985.0, 7.3), xytext=(1910.0, 8.0), arrowprops={"arrowstyle": "->"})
    ax.annotate("3 cycles", xy=(2025.0, 4.5), xytext=(1945.0, 5.2), arrowprops={"arrowstyle": "->"})
    ax.annotate("3 cycles", xy=(2065.0, 1.7), xytext=(1985.0, 2.4), arrowprops={"arrowstyle": "->"})
    ax.text(1600.0, -0.2, "All outputs converge to 0x9087635A", fontsize=9)
    fig.tight_layout()
    fig.savefig(FIG_DIR / "wave_system_latency.png", dpi=200)
    plt.close(fig)


def export_pipeline_figure() -> None:
    parser = VCDParser(WAVE_DIR / "tb_cnn_core.vcd")
    names = [
        "tb_cnn_core.start_pipe",
        "tb_cnn_core.done_pipe",
        "tb_cnn_core.u_pipe.u_booth_simd_pipe.vld_pipe",
        "tb_cnn_core.u_pipe.u_booth_simd_pipe.conv_blk0_reg",
        "tb_cnn_core.u_pipe.u_booth_simd_pipe.relu_blk0_reg",
        "tb_cnn_core.u_pipe.u_booth_simd_pipe.out_flat_u8x4",
    ]
    traces = parser.collect(names)

    t_min_ps = 1995000
    t_max_ps = 2035000

    vld_width = parser.width_of("tb_cnn_core.u_pipe.u_booth_simd_pipe.vld_pipe")
    conv_width = parser.width_of("tb_cnn_core.u_pipe.u_booth_simd_pipe.conv_blk0_reg")
    relu_width = parser.width_of("tb_cnn_core.u_pipe.u_booth_simd_pipe.relu_blk0_reg")
    out_width = parser.width_of("tb_cnn_core.u_pipe.u_booth_simd_pipe.out_flat_u8x4")

    fig, axes = plt.subplots(4, 1, figsize=(10, 7.2), sharex=True)

    plot_digital_stack(
        axes[0],
        traces,
        [
            ("tb_cnn_core.start_pipe", "start_pipe"),
            ("tb_cnn_core.done_pipe", "done_pipe"),
        ],
        t_min_ps,
        t_max_ps,
    )
    axes[0].set_title("Pipeline Timing of Booth-Wallace + SIMD + Pipeline Top")

    v_t, v_v = step_window(
        traces["tb_cnn_core.u_pipe.u_booth_simd_pipe.vld_pipe"],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, vld_width, signed=False),
    )
    axes[1].step(v_t, v_v, where="post", linewidth=1.8, color="tab:orange")
    axes[1].set_ylabel("vld_pipe")
    axes[1].set_yticks([0, 1, 2, 4])
    axes[1].grid(True, axis="x", linestyle="--", linewidth=0.5, alpha=0.5)

    c_t, c_v = step_window(
        traces["tb_cnn_core.u_pipe.u_booth_simd_pipe.conv_blk0_reg"],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, conv_width, signed=False) & ((1 << 20) - 1),
    )
    r_t, r_v = step_window(
        traces["tb_cnn_core.u_pipe.u_booth_simd_pipe.relu_blk0_reg"],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, relu_width, signed=False) & 0xFF,
    )
    axes[2].step(c_t, c_v, where="post", linewidth=1.8, label="conv0_reg[19:0]")
    axes[2].step(r_t, r_v, where="post", linewidth=1.8, label="relu0_reg[7:0]")
    axes[2].set_ylabel("Stage data")
    axes[2].legend(loc="upper left")
    axes[2].grid(True, axis="x", linestyle="--", linewidth=0.5, alpha=0.5)

    o_t, o_v = step_window(
        traces["tb_cnn_core.u_pipe.u_booth_simd_pipe.out_flat_u8x4"],
        t_min_ps,
        t_max_ps,
        lambda raw: bits_to_int(raw, out_width, signed=False) & 0xFF,
    )
    axes[3].step(o_t, o_v, where="post", linewidth=1.8, color="tab:green")
    axes[3].set_ylabel("pool0")
    axes[3].set_xlabel("Time / ns")
    axes[3].grid(True, axis="x", linestyle="--", linewidth=0.5, alpha=0.5)
    axes[3].text(2025.5, max(o_v) * 0.85, "out_pipe = 0x9087635A", fontsize=9)

    for axis in axes:
        axis.set_xlim(t_min_ps / 1000.0, t_max_ps / 1000.0)

    fig.tight_layout()
    fig.savefig(FIG_DIR / "wave_pipeline_timing.png", dpi=200)
    plt.close(fig)


def main() -> None:
    FIG_DIR.mkdir(parents=True, exist_ok=True)
    export_mul8_figure()
    export_add8_figure()
    export_div4_figure()
    export_relu_figure()
    export_system_figure()
    export_pipeline_figure()


if __name__ == "__main__":
    main()
