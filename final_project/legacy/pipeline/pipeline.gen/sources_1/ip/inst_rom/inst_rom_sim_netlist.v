// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 15:09:17 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1012/final_project/legacy/pipeline/pipeline.gen/sources_1/ip/inst_rom/inst_rom_sim_netlist.v
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
