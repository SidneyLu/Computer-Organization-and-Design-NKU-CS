# Benchmark Results

- ARM source: `1012-2414015-鲁昕宁-arm.s`
- RISC-V source: `1012-2414015-鲁昕宁-riscv.s`
- Runs per case: `7`

| Vector Length | Repeat | MAC Operations | ARMv9 Avg (ms) | RISC-V Avg (ms) | RISC-V / ARM |
| ---: | ---: | ---: | ---: | ---: | ---: |
| 256 | 20000 | 5120000 | 31.076 | 24.029 | 0.773 |
| 1024 | 20000 | 20480000 | 78.783 | 61.942 | 0.786 |
| 4096 | 20000 | 81920000 | 288.155 | 203.980 | 0.708 |

## Core Loop

- ARMv9 loop: `5` instructions, `20` bytes
- RISC-V loop: `8` instructions, `32` bytes

