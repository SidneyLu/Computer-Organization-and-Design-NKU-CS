// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 18:28:17 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1012/final_project/legacy/multicycle/multicycle.gen/sources_1/ip/inst_rom/inst_rom_sim_netlist.v
// Design      : inst_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_rom,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module inst_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]douta;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "inst_rom.mem" *) 
  (* C_INIT_FILE_NAME = "inst_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  inst_rom_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18848)
`pragma protect data_block
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
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
