// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 15:00:58 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ data_ram_sim_netlist.v
// Design      : data_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "data_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20832)
`pragma protect data_block
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
Og6HJu0/7oYmaUG2Gezlqapd5EF+9vN/YyM+
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
