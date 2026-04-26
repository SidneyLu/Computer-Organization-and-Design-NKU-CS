param(
    [ValidateSet("all", "basic", "system", "mul8", "add8", "relu", "div4", "mulcompare", "simdcompare", "cnn")]
    [string]$Mode = "all"
)

$ErrorActionPreference = "Stop"

function Resolve-VivadoBin {
    if ($env:XILINX_VIVADO) {
        $candidate = Join-Path $env:XILINX_VIVADO "bin"
        if (Test-Path (Join-Path $candidate "xvlog.bat")) {
            return $candidate
        }
    }

    $roots = @("C:\Xilinx", "D:\Xilinx")
    foreach ($root in $roots) {
        if (-not (Test-Path $root)) {
            continue
        }

        $candidate = Get-ChildItem $root -Directory |
            Sort-Object Name -Descending |
            ForEach-Object { Join-Path $_.FullName "Vivado\bin" } |
            Where-Object { Test-Path (Join-Path $_ "xvlog.bat") } |
            Select-Object -First 1

        if ($candidate) {
            return $candidate
        }
    }

    throw "Vivado bin directory not found. Please install Vivado or set XILINX_VIVADO."
}

function Invoke-Checked {
    param(
        [string]$Executable,
        [string[]]$Arguments
    )

    & $Executable @Arguments
    if ($LASTEXITCODE -ne 0) {
        throw "Command failed: $Executable $($Arguments -join ' ')"
    }
}

$root = Split-Path -Parent $PSScriptRoot
$build = Join-Path $root "build\xsim"
if (!(Test-Path $build)) {
    New-Item -ItemType Directory -Path $build | Out-Null
}

$vivadoBin = Resolve-VivadoBin
$vivadoRoot = Split-Path -Parent $vivadoBin
$xvlog = Join-Path $vivadoBin "xvlog.bat"
$xelab = Join-Path $vivadoBin "xelab.bat"
$xsim  = Join-Path $vivadoBin "xsim.bat"
$waveScript = Join-Path $root "scripts\xsim_capture_waves.tcl"
$glbl = Join-Path $vivadoRoot "ids_lite\ISE\verilog\src\glbl.v"
$wavesDir = Join-Path $build "waves"
$logsDir = Join-Path $build "logs"
if (!(Test-Path $wavesDir)) {
    New-Item -ItemType Directory -Path $wavesDir | Out-Null
}
if (!(Test-Path $logsDir)) {
    New-Item -ItemType Directory -Path $logsDir | Out-Null
}

$expectedPass = @{
    "tb_mul8"             = "tb_mul8 PASS"
    "tb_add8"             = "tb_add8 PASS"
    "tb_relu_s20"         = "tb_relu_s20 PASS"
    "tb_div4"             = "tb_div4 PASS"
    "tb_mul_compare"      = "mul8 vs booth/wallace: PASS"
    "tb_simd_mul_compare" = "tb_simd_mul_compare PASS"
    "tb_cnn_core"         = "ALL TESTS PASSED."
}

$designFiles = @(
    (Join-Path $root "src\baseline\mul8.v"),
    (Join-Path $root "src\baseline\add8.v"),
    (Join-Path $root "src\baseline\relu_s20.v"),
    (Join-Path $root "src\baseline\div4.v"),
    (Join-Path $root "src\optimized\mul8_booth_wallace.v"),
    (Join-Path $root "src\optimized\mul8_dsp48e1.v"),
    (Join-Path $root "src\baseline\cnn_chain_core_base.v"),
    (Join-Path $root "src\baseline\cnn_compare_base_top.v"),
    (Join-Path $root "src\optimized\simd_add8x4.v"),
    (Join-Path $root "src\optimized\simd_mul8x4.v"),
    (Join-Path $root "src\optimized\simd_mul8x4_dsp.v"),
    (Join-Path $root "src\optimized\simd_relu8x4.v"),
    (Join-Path $root "src\optimized\simd_avgpool2x2_8bit.v"),
    (Join-Path $root "src\optimized\cnn_conv3x3_simd_core.v"),
    (Join-Path $root "src\optimized\cnn_chain_core_booth_simd.v"),
    (Join-Path $root "src\optimized\cnn_chain_core_booth_simd_pipe.v"),
    (Join-Path $root "src\optimized\cnn_chain_core_booth_simd_pipe_dsp.v"),
    (Join-Path $root "src\optimized\cnn_compare_booth_top.v"),
    (Join-Path $root "src\optimized\cnn_compare_booth_simd_top.v"),
    (Join-Path $root "src\optimized\cnn_compare_booth_simd_pipe_top.v"),
    (Join-Path $root "src\optimized\cnn_compare_booth_simd_pipe_dsp_top.v")
)

$simFiles = @(
    $glbl,
    (Join-Path $root "sim\tb_mul8.v"),
    (Join-Path $root "sim\tb_add8.v"),
    (Join-Path $root "sim\tb_relu_s20.v"),
    (Join-Path $root "sim\tb_div4.v"),
    (Join-Path $root "sim\tb_mul_compare.v"),
    (Join-Path $root "sim\tb_simd_mul_compare.v"),
    (Join-Path $root "sim\tb_cnn_core.v")
)

$tops = switch ($Mode) {
    "all"        { @("tb_mul8", "tb_add8", "tb_relu_s20", "tb_div4", "tb_mul_compare", "tb_simd_mul_compare", "tb_cnn_core") }
    "basic"      { @("tb_mul8", "tb_add8", "tb_relu_s20", "tb_div4") }
    "system"     { @("tb_mul_compare", "tb_simd_mul_compare", "tb_cnn_core") }
    "mul8"       { @("tb_mul8") }
    "add8"       { @("tb_add8") }
    "relu"       { @("tb_relu_s20") }
    "div4"       { @("tb_div4") }
    "mulcompare" { @("tb_mul_compare") }
    "simdcompare"{ @("tb_simd_mul_compare") }
    "cnn"        { @("tb_cnn_core") }
}

foreach ($file in ($designFiles + $simFiles)) {
    if (!(Test-Path $file)) {
        throw "Simulation source not found: $file"
    }
}

if (!(Test-Path $waveScript)) {
    throw "Wave capture script not found: $waveScript"
}

Push-Location $build
try {
    Invoke-Checked $xvlog (@("-nolog", "-work", "xil_defaultlib") + $designFiles + $simFiles)

    foreach ($top in $tops) {
        Write-Host "=== Running $top ==="
        $wdbPath = Join-Path $wavesDir "$top.wdb"
        $vcdPath = Join-Path $wavesDir "$top.vcd"
        $logPath = Join-Path $logsDir "$top.xsim.log"
        $jouPath = Join-Path $logsDir "$top.xsim.jou"
        $waveScriptUnix = $waveScript.Replace("\", "/")
        $wdbPathUnix = $wdbPath.Replace("\", "/")
        $env:XSIM_VCD = $vcdPath.Replace("\", "/")
        Invoke-Checked $xelab @("-nolog", "-L", "unisims_ver", "--debug", "typical", "--timescale", "1ns/1ps", "-s", $top, "xil_defaultlib.$top", "xil_defaultlib.glbl")
        Invoke-Checked $xsim @($top, "-wdb", $wdbPathUnix, "-tclbatch", $waveScriptUnix)

        if (Test-Path (Join-Path $build "xsim.log")) {
            Copy-Item (Join-Path $build "xsim.log") $logPath -Force
        }
        if (Test-Path (Join-Path $build "xsim.jou")) {
            Copy-Item (Join-Path $build "xsim.jou") $jouPath -Force
        }
        if (!(Test-Path $logPath)) {
            throw "XSIM log was not generated for $top"
        }

        $logText = Get-Content $logPath -Raw
        if ($logText -match "FAIL|TIMEOUT") {
            throw "Simulation reported failure in $top. See $logPath"
        }
        if ($expectedPass.ContainsKey($top) -and
            $logText -notmatch [regex]::Escape($expectedPass[$top])) {
            throw "Simulation for $top did not emit expected PASS marker. See $logPath"
        }
    }
}
finally {
    Remove-Item Env:XSIM_VCD -ErrorAction SilentlyContinue
    Pop-Location
}
