# Benchmark Results

- ARM source: `1012-2414015-鲁昕宁-arm.s`
- ARMv9 SVE2 source: `armv9_sve2_benchmark.c`
- RISC-V source: `1012-2414015-鲁昕宁-riscv.s`
- Runs per case: `7`

| Vector Length | Repeat | MAC Operations | ARMv9 Scalar (ms) | ARMv9 SVE2 (ms) | RISC-V (ms) | SVE2 / Scalar | RISC-V / Scalar |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 256 | 20000 | 5120000 | 154.281 | 170.006 | 125.276 | 1.102 | 0.812 |
| 1024 | 20000 | 20480000 | 199.683 | 291.633 | 167.765 | 1.460 | 0.840 |
| 4096 | 20000 | 81920000 | 388.482 | 830.929 | 295.108 | 2.139 | 0.760 |

## Core Loop

- ARMv9 loop: `5` instructions, `20` bytes
- RISC-V loop: `8` instructions, `32` bytes

