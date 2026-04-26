# Project1 8-bit Fixed-Point CNN Chain

## Directory Layout
- `src/baseline`: serial baseline modules and `cnn_compare_base_top`
- `src/optimized`: BoothWallace, SIMD, pipeline, DSP variants and their top wrappers
- `sim`: Vivado/XSIM testbenches
- `constraints`: XDC constraints
- `scripts`: simulation, synthesis and waveform export scripts
- `build`: generated Vivado and XSIM outputs
- `report`: LaTeX report and exported waveform figures

## Independent Experiment Tops
The project uses five independent top modules. There is no mode-select implementation anymore.

1. `cnn_compare_base_top`
2. `cnn_compare_booth_top`
3. `cnn_compare_booth_simd_top`
4. `cnn_compare_booth_simd_pipe_top`
5. `cnn_compare_booth_simd_pipe_dsp_top`

## Vivado Simulation
Run all module-level and system-level simulations:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\run_vivado_sim.ps1 -Mode all
```

Useful subsets:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\run_vivado_sim.ps1 -Mode basic
powershell -ExecutionPolicy Bypass -File .\scripts\run_vivado_sim.ps1 -Mode system
```

Artifacts are kept under:

- `build/xsim/waves/*.wdb`
- `build/xsim/waves/*.vcd`
- `build/xsim/logs/*.xsim.log`

## Vivado Synthesis
Run synthesis for the five tops on `xc7a200tfbg676-2`:

```powershell
& 'C:\Xilinx\2025.1\Vivado\bin\vivado.bat' -mode batch -source .\scripts\run_vivado_multi_synth.tcl
```

Generated reports are written to `build/`:

- `*_utilization.rpt`
- `*_timing_summary.rpt`
- `*_clock_utilization.rpt`
- `*_synth.dcp`

## Report Waveforms
Export the representative waveform figures used by `report/project1.tex`:

```powershell
python .\scripts\export_wave_figures.py
```

Images are written to `report/figures/`.
