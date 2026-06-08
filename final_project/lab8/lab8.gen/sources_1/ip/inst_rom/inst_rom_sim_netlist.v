// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 15:35:21 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1012/final_project/lab8/lab8.gen/sources_1/ip/inst_rom/inst_rom_sim_netlist.v
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
7b+e6Fp3r3m7F1RK+eA+o6XqgfbO8HFn1YxQhcfb9OTLWDMuppPcVNQBeU3Ytm88OIL2wdkv2/Q2
5ufVlKV/Wj+jkS/zmSvjZMM9D3qg7Jwqgb0HRTHQyGlYuhQMf0sZvKrP44JUapbHSZF/aTF04bKG
3+rIIWvZryNZzIjbfkqNIN6BQh2nWLIGdj+soFi+FvpblXszrtLn2HzeAyhhUcp1AihQSebms9a+
bARsCDh0Ts+KsFOQ0syhC8RAQqTjF+redoUgbO9HT2WZf1yAqlOGMaAQ3nX1mRnyF5oqnRrfqx2X
r1+PRCxttEIluG6zp54ZSZtiPNuu6Svdp2vxzwa9alIwcSS7FHiYWMVckerQ2k8CqcEEDh3vuYzo
MnqSiIDGqlTbuHcXEaEdKetGySgSbnZkAe9/pHDZPsgsKnm9WqLRBUxOPdp2Vxgtb4aNCK6pQ5Uo
ge3dWqSP60h/S8UFMwKokCh/0bZqq6uvG8zs9XSwHSR6Krk1RZlCAW7ShonzuwCweUlydv32NedO
X5ukegeFyEmVsremHiC5qGfOcWrsPG1gYacbzZmwJhSpupGtxdBWwkObNHp8Ky8+Rb0VZNbuJGrM
uBSyD7s8dGQ2hy2WjY0zCOJJxR3S4vGG5dZ//PBauPlUXXNlCEtKL5YiQPwc8h1MrPUJGhdaQJWl
wU3zAjTI7D3zTQWuEuWNERV9Ic+6pw8oQWXyS5c8AAI4qfXXbpXEcDM7Z7LMZuPOmSIZmKkY3AUy
NeNL4oe2APyHCFWNEg69oPuOuRj3xAVhvkIc5cSG/r+5FGrEtb5DgBgfg+RxVxP+J0CoP8YICvv/
SaMVzBtprfy58qhEQQNCtyODxzbXx93iwEZ54DsLIeDk0Px+QnxzGkbjszECpYB9TQqEHDlwsrmI
j0zqq92fUb71c90sX74fb/9qYYzf36lHphhNAKc+j0eHkicLNZW0C63gFmzufwcU7mH19I4uUSA8
fIVUb71UWbd9rDM6gt8BpW2KJQO/v+HeYpPZZS3BQlThV0jtkRopGKSfClmb/uVXGx8PySOx8PE5
eA9FRIQcUFD66fmSmRgDL5ksAys1LLWU9HsOTIhh6Q6wLXq4A39IDlbpjtwDgP+7O5/4m7cy5ipg
cHJSi7umEVXq3CPFNaYlEAMM0abpXyPwoStJULRBiJYyBkeg/Sp+mUws2DPiiA8m+BxMCpOeRs46
q/O5wrkK8qVRu0uM7Lau11g93CMY3/GVxckPdbMiKVPMlX90ogJKr5eCvPm7YRfBF/zuwZd2L9Mp
dqFok26YV2nDesZKGEWg29Lowbevh52isPbFs8A5BcydF3uXwamSA5fKtb3FMW4f3Fn/3i+pdNMz
ZOoJcQnV2ZeGEQfqklhiQevhFaWV51Y4ePjoFN7eNmuvMlpWUsaugHBQXoyTDjeZjygYJFrd1hnS
gp66i3m2qwude4MbPeiwL9IsDwcZhilwKgLY8xD21x/5vmkeEGnE6Cwc3kz/mD/nfNZIW6xfZkxD
7LbCK+MZh03qznd+iTfheHnB/o6aiOBdV4KLJ46XVR7+POvTQb4ZS6eyHZZqN7wM85/vQVqgsyre
+skMTwDacFsKIm7kNv4lz0WWPu3+fbmyXWW7uAFf/DTJRV8hRBOmF623afeCHWOr6zuJgbVI47JT
nCOBNJqTQ4CzW6Id06rS2bdgxDIC+9ct4aoUM4HHvwns+G0oEyyyIULC8wyjn/Kot+qpe3EpmD8+
/4JeykVd6+DBChoJ2IrMkBkmMeUvw8ZyS8Zo6l2y6lEv82B7fcRoncDJ6Q/v4Cf+rkqJhITXlcyU
Wic2dLr7Of88sCcJRatmCSS2BUxEe1a2hFnVFi9OCk0o++IIOVXR3OTNpEd9C24JWx0gtFSewNn4
ATXI6THLkSf3wMqG7W2+kBHiMijPmhv50cTOLddGbZRs7NpjSDRyTGGNsZzAEFZfqO9LreUikyJ4
Sk8VuQ69Vvdo9pLriYblMFIoHuuUDKpCuDWZDEDto2cdMmdyG/Z5uZZejtSZLHeXg19XNvWutdFz
pkZzJ7Z6u39VP00pZnKhR7Ak2KO4dj1yABfKbCYOap/ZSgaz8e9xyFG+xYNM0/V053OmCIe3qg6T
pKUTmMFzWarT6JYGu5fSSkRfCLggCMKB4fBTVetiHis3795bkrAAljF50Z6/+AG6oS/2ROTbUCUC
wTiR5DJnm+sQHpKHF3eWaLslV5xBhF+9cA2G+JyEZRTCHJGT9obe4wTQugiH+ALUINH/pXXs8UkX
UvSlicM1mjaVvspIQOT5P+zC1NApIk/NviatDxosev2F8XIGv1dbenFxEBbCPD8ebJv+noDaCDVa
FxIc/Yh8/vgu/NHJii0EuDfts58gQjDcvctZxwtgrjg80g5v93LAcvy1D5IcCYvxTEQWs8p0IHnL
WjEWIP56XKFJ/QUOv+IuNPcV54bcxegCmuMBo1MatTC6YxzJr+kQl4M3QfXjBj0LsdfG4oc4wIez
6bo1berQZOYSFM9xgdCdvo2IwyC6bY64rsNtullmbJi9mz+5D00eecRgZ/gX6uN4jrzi8/e9MU9+
uWzHrvHADWTSofn77cFpfuXO5qyVs9cVSc5QOv/etzVBjC2KDewsHRxUk9kxAwXcsD2bEztl0NSb
DOege7kARVav0sAMGodf0lomyTAk7mrsywmgwV9VDUpZhmxCHOgY6szoiAvR8zgkwJPq1vF0npEH
d5Blmd63SvIe2KXxhnzhnWzKKiBIuQCcZGQo9A33PEW+BWemM6VC8ndStBRg5q3kDFApZfy72tRE
IfEVnWmaQ+B6yg63s8z0ajrg6q6TJsiae/nyM+rXAFS5EgF1D0NbvEx852mdjgGMIhOpyog3ZT53
8zPRy354SKNwKQdodHuBRE8D3N7/kOHCJIh+vlVpXMOCta9QPqPurjO/W9txnBI0L4EZxP+6udTd
94aW5D3MxbWljjdZTwktzw5HWUfDhDPboNt8zWlLc2Z44iE9P4u0C+pUIWlKgaB+K44kqYEk4mcY
58yBoEhHDsHaKHegtEGz5sTxRveXfcITKFYiZcvyO+zQTx2RoCg0iYbfCUPpOy716wk/oHttVs8z
MllXwwBXFr8R5CSRg8HtFuNxC4ozy05nzwFKQJHq1bvyiz0cQFgTppx0H9KElzG40f6srby1a8QY
1T2fLVe4EzDoC08YV6Gh+Cu24Za3HOVMvYiT2Lgk3er/ZVwgj6P779ctAwTuxB+z4MaDjGSO9QWz
q8BHB5oH6DCnpMnwqAg6KMKKC5ZPmQq+Dl1G3ux4Eud7/AcrJXjx5fnsom3c+YlBU7ZIlQT5fsqr
4eAQqEejtMzXKjrOaxuKPJAqg1PuRpa/3cOWuf8zx4QqZg19VmXBRKwGndBzvruWsgjhEiLEospq
IrCxNZsoLpnyEhdF08QhVVBJHf6DUlYQ+5br8swn7uBdLBfERS5Y8FDW28SOHTwdL9fTiObqN1Jc
oHlDeKHdc0aneu1B9qlQuD19Pef5pjoUq6dK7947/JYQ0eSZSslh8YRlrXd1nHVH8jgoevq9v77c
T45BL7vqSMBm3T+aE77YEMTg0iIvPTbvH0YKlOiw7nXI+tamndzOYMPlaRk7s9oGhL5Ooa4fAy66
DFvdlOzkBQeJOWk1rRDi88X726q1RaiBoBbGQuJaMkhC6h5l1tYGeqdhTmjtSaw/Ogj0zU1tpFDj
ANDtpzyF9ov6ex8Aih2cmwn8gBLJ45YbjpI10c4hIczSeGJU3qNPmRDmYTrqjcvxtn/Hiwh/XsJd
W6OcyIiovoXwaYJDvd4QwIgFK6cQPnego5HGk1cjl/WOmbY1WzPQSecqPSA+lBrvhTIBQ88dTCEN
MT9vCRSuMKZF/lb5IMmE92yWSB6/sjN15c2i3RiliS3XRCtGyteYcGc/uXvOxos9Uh8UW0YKVDSo
o865N6FQLGmexBSWpqyNjDebvm/FSVYsdmGkTkjGyApCPeQS9mGmZ0VfCBLiR52ZBKOi1/RZWoSy
B3W934mblCgubm6K2NxBfFtY9QtgYDAM0dtY7dGuSHXL5lLJ80ojhJ4Bz6Ubho0w2+Ov9XT4hjSJ
Q3rb46kGPKG0Le8ayDGXxnyrqr+3hXT4a2LTwrAJGw0b/cNBowTk6hACMP+0IFVK/MuKx1icS32V
X/Nfm+a1sxLYnWr5JOfROKGZCJngJhcR/LkOvN1dMsZMIXRzzPYo5IBfzkjtgwbRTTSZzLHhMywB
me4axU6b7NDaRhRHQ9+U+I2phAC98lOMmPU96TOmV/VO7DCzVQ7TP2wuZ3sYZwcUEIPu8u8sFNQr
gRdnHja5AXD5fckPz65InBqtmnzhfH+Sr5oG77fibtJ7mDlEw1haC0JGv8WO5oQ3HsSdXlLujfGs
8rydtVZm5mK4Zte6XMNSli+ShDuT7V2XlEA969SDyvU70HLYW/ph1WK3yu9ynuf1NkJrTFA0vfiU
MtthI3y+zZ74TezZKm+CjhY3sH59p1MRE4aa8Pu+gsqmHPPULaoa8XKVm2iz16me0JE7SlynwWog
X7WawAdP8U0WjXKrRT5sCL9eEU968eZjJerTGwFn5TFhAXG01wMI5vzxvvPw8BqfSePspf4noian
lFN8KVF+Ms1MaBr2xZkxorEpwNNeTu0fc6atI+PX52IAHb79xz3kNQqbaprCk1mBtFnzCZroLnXA
EPo1QR6KpnpVlFEHkGLBoB8RsLb3/iAzdZ5xYWcWYyruPLesghex+aBTL9Xocytjhw2c1xZLHhn6
DtE5yczNfohB/fotASpmSzUazChz3OTTu5Aj5DEiHqgQtagkLKhMnKiSQD86/OzvuRv7aJtlza9u
tK/EQA7ovmAfk5NtqshbXRKtDBGzf3nbIuUDb4yem5dRmnK07ZJhmKRAI6yS8usIfupZYy4ZagBQ
Arkis5lxU/8Q9+u2iSWd+FYonj41aGAZxUM/bh5nl1+5NiZaR0O8eKVdtEEhLwb/wDqpvRy4nuN2
GZS+75v+6dpSCXh9ASoyfN4M5iDUZ2Ww6JQrVdHqpgyTC23K45SUnYhwwyVNxfAsAt06E90SAMGw
RhNC1TBAioIR3M2XXXlzUaZgFLi8GIy6m5qmLIOCge2dF+iV2KpMQ2ktGkN8ay35S3sn8LM3svgw
EUBjhLR4rzax6e3tuWRshDGxOOvapywTq68p1vCGMXcdeoyMjHnES8YjlRZG09IIGZ/nTiuuHzBb
5TPIknTZOL/d5lhFtktXvoyS+py20QUmELfKetIP0CV0VNAbzVIptJoDMQN20Fb+grC8bM0hJqF2
4Dvr6e/sTB/m0S2i8fPviwbmZMINijnyIN/q+K57r/K/ppiIyuPHIe1lvDcTt0dPNeVWgp6K8PBN
CBAwfBcueJJ4JOsBIH5svQeP8GouwVh6bxw4AYXjLzCKFjbEZ9MNQd4EUNom/eHrlT1+zHJspwmk
vGYIF1hy12r/aqx0ZDYgbAU87+3ll4vVtq5cIDAsKe0i+GMNbKaMI4KqkmgDu/vZlRtF8ssYOeNw
WbKGFNLJfAn/aHx0E5oME/7rmXtub4ziYdqO1lV2ChCkzli6MQtD+W6JM0zXELBNgpyFtqxxq59s
Lg0/PekAH6CaL6bAAbG5WDXLb3erRxeHkevO0iOzjMqU1dHnOpiWJkBOeirv6X0WwMXcVz4v5uNX
vXPKcDUx15wOlFWifsIUoRwZiLMAlwthKHPxY/0k5EWYACfzvHWNxIBOcXJ63WZW8tgjr3iVd5V0
BuGR84OBk/Ph4i8Y/bAN8UtgaAILHy5jyi7Y1BL4dkjn/O85wH2LRdjA2oxY0cbeXqxvz3/c3u3k
V2/N3mCe3l/MITddwybDisiu7izVyuGjY7z7IJFhS2WxW+oXfVUKqHHaZLr3nMOqcf6o853cBDZY
rtm3BqssC6dL3hHHGMybDqqXD1N7T/z8HPnd+LEa6ugze7iyUpg1g5D0YORoeY99S3I2eobQJNpC
nga/i1//FCLxE7OnVJHGZaB8B6MYZEymsqC6oXSB3NKTQqxIKH+qR/2Xm0PacXHAsPgrz16tTpba
B75aH52oclDXSHsUC4PO3vwKRNqrsm8KYrKfigDrxCu1hLDA5INTj3r0d347aoYK97yj7NBhgezP
gwDwDvblY/EdXqjMzBQHYvCOpAm8yCYpKuG5PgK3scenSub3QVrQnFPXMXweAr/KtsaVJ1RJGCRZ
dfzSMxrvCY0PWQH75TOE1rJXPZjKXI5Bu8UCsijW53Lk84MlH6f+yJrNzMr5/jYcIvT/qgii2clV
+sI/LCf4GOb143eYIg2b9nWyV742iT973dO8KKvKo0/0tN1sn5R+jQTx5rAaHX69bCdwo0mXnkMi
MPwlOtCKLnDf6+fO6+tu0cwBIBzINusILrIlKAmn26QsUHuMCPK99gZVby7oDTk7gx8M+1PO3Qdb
If7leCUSALB2Ax6bONRX1kRLa2SmutE55ssFeyNFGjGZ3sUp63gFHxxX7APqVOiS8KMecXVwFkaQ
fUQrlJfeq/UFIMoQRkVn3E2ls29XOL2KdhuEeYHAJbFbr3hf76gG2vLg7I+tLEGZmPjBH+eiHeCQ
f7mXU6Z7L8dmDAEGrnz5B9WGjRW8ISrCrMGjfE5ayeArZ7bOZElluzaU+R3Aeaf6JRzh9tc56Wxz
g0HD9wGh03cZC5+DYwZOXITRRstPN5sI5TMtetwO60tYBjW0YTdJUxliGm55sp7d5Iwc+oZf9JWh
IKgMxTSCWLHpYNu9qk6+W0lB8fVGT71USac6sLpO3tQS/6jdz7v3olgQo3EYf/r0RnS9KfOvxNRv
TuXtl2IO74FerDxRk8RuLF9ST9x+R6wjgiZ/1TR1roPQu0Odm7zbjQ3VyRqo6ZowIBaLjYubWLXY
W5qnIlV3kJGUhtTZb2xYg0LlBUVcfM+7IG0+Itjrv1Tf34pzcRjBov6nBryBlDy37kDb51bWwh4c
8m12APY7HGmdxcVfHbia2VDGt5cy8KzQDRu+1IK//l1O2ddj/rRStQrjVJGFvqqfU/P7ygy2NCDK
aJhYPLVt9zITbVst/GTkCNmPFU/6/5KoBV9KsRVU2fAA8ChI1q603aA3VkWNql4xqAspRKduZ2w5
s/Pq60fGK4vzqSMdV4JFdVEZS3nfX6KUL7yG1CQIfWAzVecw8d28NUerPrI/5YOAzxeH4McHUl9Z
aRMBiXBtu86DqDP/thTWnOfXguIs7LmMD1T6byOiaWlDjGgAhFY1SVK8GkAIybivhjLXRttBK/T7
Icnbg9TzYM017c54ovbw8Laa/5xdGdf83C0PuHr14dttHP4vhOEXeB5KiTRT1T77oe/n/cs1oQ2y
z23WUO74juwKYDKJBKgccQxn3/VP7f2wcoysJ9ce/NuhztM9BfbHyKusGPSAbcNoi3Tn6veDq7Y5
F8PXvTDiqIhWjjARqD5mZUuP1V/F8wUv73lvaZiLCyOXY/9QrhXzMmVexjqQrtHQyTcUzX6FfvUN
upoHwxULFYOyTeQMH+dhWj3OTC8VPBwNlm+34xjr0dJwcz3/Sm1cvadGttcUOwN/JTl2iW14esW0
aofChb4XspcCT4hRoRFKStcUQx25kOFhU0XFgU1su1zXPK+cy2a1VqpUeKYUJEM4B9Xye/+jlRAA
tp1nxOJN7ciMBH/YRAg3z/YpGBtmjNpbTDBXBVrQn5D+BeQ/vLSbkQR3gM9oCF2Ws+1unsiigCam
H5P9SBqq+9dKDjqcj7n+vQa6dpcoP04ggPY802V//PNADfyH1Wv2ww11bpJGNoVqVkvGoYLSYoiE
7HzMN/0EC/5Sfk8/Dan1CGEeIVf+SppnIyrEzK2Wk7fxrof8ECpIr0rNU9EyFOuiywD4g9qtBdPu
sRhcp8HI2Tizupddsr0S1Hl8nOKhW3RkNme7Znw2p/nEXe8eabuOkUK0PLj+xUVvU64PkQ8nGBd7
z2cgLf/GdR+ekrQi+Afe1KLjzkNoL7DBIs/gH0hCZsmlG0c4nqpo24qGTvzUnwWxRT8hREh2JK22
lZ0iFpIy2aV1p//9mdxcjY86AlU20kFI1t1fcNfGRhrfoERB1lqSSVcuI9nYibDIdzeW1dNBNe/l
rxkBsGiM8jyx5ucsTVikRP3VR+bPffYl6gXDzuvxVWTeRNmf8Ze1d5a0D95JfFy1CeyLjQ3kpjs3
aa+xxRs4z6Q8lJfvwjyMZ4vYO7SpH8XSwqhduHF6bOeSlpWWqrq45J2kKzMRKt7n/gMluI0Y5KAr
7odmFTCIf1QT63PBVOPhyxry2/b5yneviK2BFy1/hdyVkSWpxfMVRa6+avx52NEXmgqsbBovxWy9
HdSIAJO6gCISXazTNUmA9VOiBwAqkt7aYqQrc81Kmyx9pmkBdYO2dmpuBOB7PR9HkchVreaqsL6h
g5M0mub+x2mX9dfzqTp7hXjVASzKDClVF4U33HHlSk3tjPZfidZ7RayaA3eHU7R69W6FzHKz9Yiq
BG9u3UJ4EHs+f3mGBdWmwtxEQD4l30u+du8/EUj7wslCSr/0aINcwLmy8CRUyjViEJALlrIBUqnb
YAMQlQ/Z7A04nQWum9EiRUZctIZXnrJViTben3gck3kF7E1NDyLngu9asIEo0jOrZTSY+WvLl1o8
R6YlL9usU5mrLqR0esquoF7cM+Z1+MTiTc0tfy08xBMY9P3HH/XI4fk+tWWFDbhgs1mGg7fVmMp+
TZZfsiWta4tprgOOFn+hw8bPUWDxjddqvceWuzOmV8vK7/71BXSE2JEhmpXNPbFPft0WmtG5E95t
9/4Luh3IVQ+pqm2ObmGSz0XCs5w/M4aFlZWt100hgU+Kt1paQllQEcCFhEmG3KTjtFyoyDatSTfh
lkT4VSKdyqgr8Rn7FqHm5E4MLGqqFmMHcK43cT5bxl4WM23dkLAnr9zFKtNwTjaouNYzqKw6O9G6
31phX+4BE37OD9hCH6+ewzHANhHyYv70GrpYcyVx/ILdnmjocLitFGqDa7AZCuwRFdu2oTRQXTG5
jJ5auFyhFkTIIKVyCUUEqIUTPHk6niEKWR6rFrK5qRB9O4GS1gGJuymxkDbXY7zJRvabmJnGhyXf
1IaL2sCPfiqGjZHkCLS4CKKiQIfvh7hpRxLG2K9S/GJcpJKlkv3CoKcPW91I5Y7ofOPbuhTWBsFP
lU9sK33z4Na48E4nqj6TKOCxnGLg6stW+KUq+UM2MXpeS1oHeoLoMACxZ6uCiHOEhDx4e/I/0tDH
F1DAeD0cB7KxSdrml9E8Hq0BoXIbv7X7K9k7cJ/WmRRS0Cob/9CCSNQEdc7V5gD7xkuXpwI/FYMX
1isueg/jJIXcE+MmwRaJsTxjGlt0X9olnhy4qHDJFhyhUr/KA6XvLzmnAZU7vxFeVD05RxSgAnO5
ry5dJLS3v1x/AIqFHDUyfaRvX/Cx1kLvgukiC8QJPnLyM3ylFhOn8N2Zmk/KUeSjnY/dfiXvhQpH
1fmSYg69lsmsft5px1aggsS7GTt9+5WUpFr3KPgoXOTxM4cgGc9OsrQnOSoWMLDBe4SAtOBMk627
ke1EKA/XgHkGrdKL/gtrdpzEWduFT6Aywh//O3Q1gNYEgPl1iQiCHgqb9+XRbC499d5AvK8E+fjI
UJXlLBeiLa0qPvXdIW0ogtc5nHJPt6hMV+FQlcfx0wQ93AVxYll2w/f79zqVGnkLkJKbryZSxi41
fUJEYwN9Uy4b6utfPCngwbL4qH4ONCwdfQWE9ZtMu4Rol8pO9jybRyboK4n8fmV20tszwS8HblXp
t326SbJrvgCbgkONNDWYe7W2p+4edPNzIPmD7ejwhCeGNZUDxLBj2DpLqIcy8svi/DC6VZqBF2H/
xPNjb9fvd0YErB8Aiw9dmxGu0LT3wy6TjuN6W5o1x22VfiubQa3sW2cS3y+tMqwjWuPrvbV62CFL
xvuiBy1aVazqhcr1Attj4hVOeDb9+pZkk9jePCpdxHMsbDUrE9rBuWU5cI59MkoTgHeozdJ7TgmW
kO+l3JDcejKvoygWMd2LT+RBCZuKlNtGH2ZrryBj1XNGX7KAqYbRzmugDTNQ/4cPiR//bXmGVaN8
Zq8BByemYu7JqNikoZGoeOagXL3LyyVhKvaHMAuKi+w1++G+aIMvTcpNLzaoAowU/h4nR9lbial/
PRj6md5M89eSbvznAhx3aDRva3S9pghr4lH95FvIIhA+kCua9a1bh6N7cZ68kRP4NIS1IxIANm+C
oui4lRfBFJKeGbl/vffs2BVmoBOtyUaJGSK724xgDVKbdJj4kspF9pshZzgX2RxIDkACOqkhpk+U
487rd3kwvLAHvt9SN1RA9zSmfM7MXzuZ7+14PpyPbOXzdPAHsGZCLW0TiVARZGLBQ/vLkgNGmj1i
CftcuAnW//f2KPoM/Rtg1G38JCOrK4ODuG3Yhzw77cAb7RB1xrJ3qvCrcXPJMI2dpzZd8rlv72DY
x1tbNULcrYcZLXpuQAxRdnYkR+wMcHeY8KIA3FftoXj/UkZELZ9aJ2OxQHbJO/4C2L25NUjbOKCO
x+M0j33/Exh/idOG2fRPbYATHQuu6KFfj3l5qxv58KCTPjC8Z7b1RkFKXte9ezMenvb4CBz6R6+e
LRYMssD3zbe9KoAjmN0DurpVi2yEocmbGSyOC8MTKMIYzomw65lLUFOHmKU0UsncN5yW/OQeJEB8
aUvIJ33hBf07WghheleUyeCXxEUFCzxHNW2eonsjacneyo6MLkPk4nuLQR7g5HcE9qwouWIhtsLj
atULxYlsRjW7xqLHR4IP2YW6PXL/D4jVzExQYPkuujzpu+bSJ5a4SiL5LN0tEL+YPT8yBmtrhKnk
uuqoybN+2+OqNvBtlEnRCyGLSsl0ZkbCym2LfGJzZxtMYo9PrT/f5/wmV5TTce/Fe3zngkTR7Zbq
63yWlwKcdGwrWgsMgGSZLqckhGNwa4GgFYhT1ekyrQy8gVJlgcIB/JxDEXeViNfbtciNB0yjiMDE
a+1mZoH2UlxWrPxfWaNSyLJgHtXhoC3U+/cbu4O5txEpoYoOsOgM3aJTWmGnmRPlJj7cTgKts7sT
z3KFn09UiFcz0+dyQEc5qXQCOYkmSLAOv/Xb/tzNFnb5F8N3ylzYFAw32Df8MU2hJReW8z8282uj
X8mJuWIyk9P8cgagxHwDYS2anBTTJ9Vt1A+0fY82zzZAGwrQ+XGzZXjIdMq2Suo2hTT03Q7qxxLP
OZ1Pl8+cwYDpAmxOiigc4HiNLXIP59oRIZ7aO3vHH0zP51PeVIB7RKLZljl8kdVoC+KnCbRwUc3D
smsXzFjdZ3StBb1h2wmZ3qM7rAVm2LkCLzMU1CLC/YB6IB4cLS6IvtCJFzC+PeJWKfB50vTBaUsA
Cn25m4GcPNszFritxG1HxDu78CTGsid/MgWgah7Wx4AMciRztXHCAVNtizyJ7WrcSXGbwu/mFkRO
w5dmH7mR0fM+ZHlqyiHAp7W2cHNbWotRVePe/HSmzCJAqxP+YYEYIWjYxDyD45R2JzpM6n/LBRnZ
3PJ0zWDxNtKzLks1b9DoSm5HIWwiAAZOAnkfwn/TALcC58FuiPV3uyVUdsd54bMenBx2BZeIXcwV
s0mQkPN/lZcd/dBolC3XOx3bv+oSP1jrwhIXgtYBTTFSF7mBUiAHUQ5LXB4T8zhAFdXCsbqi+buP
AMH4bQURZipnwvWMrEd5I8FDUcehnjPZIqixp9XPmlDjUfnKKeEISc59hh8obhkUB8bheN3mJPCJ
t4YAhXY7J+YqshrvBghx9DNFudGLS0KnCrl15ejimxILpuj6gZ8O89dGszVMYZ1AvvisQPztYePM
reu+1kYCfwnzPWuelWbYqY3VbyJMybdexh3s0S8qKmQUNI67EFw2h+flVemtJnTPAgjxgoExgU//
aslGhwB97sbUl3I6CDZyVSweuzMvxx8ceUzDnd5HY0POueXfWHILSuXejZ8JuIm1utlSbqtsplnq
IdP2rj9k94FN1BrjB5yipsjwziOlaAXyCMwEixDRxvp3tHd4paHaVry/XZfVEdCmA0u6mi3+rB8Q
OWdkvTIuZTMHBWY9kVXYoLaiiXka4AhjXaWVqoMKcGoru2jJXCmJbrd9svLg1qBXma99IUxUbvKy
Y2ZAvkNPZU7D/GYnt0snI4/QCx4xatBq9N1yfoMvEWmaHU1hv+3NH1cK8/rdGlhUJFzOuVbMe41y
HvQOm3YKBZnsAkFpruQN+z2qjFvbPP07HKatlFkYhJQrRTajyFkXPgqvkPLhkDap0VDOb4hqcmFU
59hj/sJTz93j/+Pkhk+X73TFZX9CL+HGkyoCZhEG60WfwuPBCiYDLC5NlqZLny9nZQLNLOqxetUs
T61O32zykKRuH/yK66SOeAJff6CmhIKdXU9EaVXrJqDnT1xYYVvzh2bNAGMff13wL393eqT/UsoF
jjonbmtq35cZFipBRqbKq0hE8BXB8my3sP65W4Z9ggidbxGbi037lEZTWZVZRWkg5bAinc1ESLR/
loTakFUhCxq8lNcPrjVbu2HC5NnKwYKebo87+5HOAmXZBAa9frOUBO25xKHTsMmkr6evS+mG6T4V
WfvSgbmcQB/y0s8wSREXbxajqqzmJM2MsHx+fGggrAE7prS2zqF3AG8v8wZInpymGWj79lfXZtPZ
MZj6/9c/+/ZwU0n2BMYuTW6isuxq27Wajtd8niGZYMI2CDC0g/baP+rXADpiTwuCyzS6/y7UQChG
OWkOhXw3uwLY54Q10auPakZ/X2FLFUb9EU2XWeOYhaVyUu1vPb1t+/oxbSETBn9pSzT4foneGbhG
3ISd4vmct9KFCuYkc52NCG+HjddUqGiBWWmuSDv1QE4Y3kS8d7GKeo8gYvpRQacGqANp+0wLE0hB
i5OZn7Sm+iuwUaES0giEzyN1ih+Fgb3ZMjo+3d163o0hqum9DWNZpy94dJNF/ZeaCTOoJZp5n6zO
EYanuO9LoElNvXNaZVqwG3M3fUcobFbGF60RcsvWnTAslx+Xrmt0f9qsITi/rAC+KVXZD8MJv0CV
l8Ro7MLwUTCRHdv89PcBjHQ0VZD2nPzrwp6cmTSKWKFzrK9KzPDCKdz7GIsWERTngqTjPq2D7ua2
ykgHXuACnQ1Ral4ZWRmJ2VeWelKTYiNXskJB2+u8o3vT5fZqYdda+A4aebysID3POrX+PkDljbLs
UCHJrIRYGcD9P7ekzw7cVyxAPFXRWuCAMudvUNqFI4EqEyKtEbXxchLDKQD9jXRFqMzFwn49yq6p
OrGR9OBB/YSPVJYwMtnkjCqYo+Gb+m7EHAJ7fUg3DnFlQC3zvb3r52OJKX/8l1kwE1DXe1YkBCgi
IY5AnDwhgGbSqwTwXoMj4LQ1vhkWVhTiE2k40J3oAI/o8U+yCBALIMXPFk3MtjJ3bQJ72WpHYmGs
tQ8OhYbEjih9YltT/pJBd1pjY170//u5faAFHrHuRUBvPNepYtqP1Nue9apVxyjtMjlhhBUgFZET
CEcwkwVI6T/M9JKU4u5n6rHNR5SN9ypkIUnRswtNyKu27+gNjHMMTPQWej6f+Fy8VRB6ppERj5z9
jhD7Ehqw6f8J6Q9Q5P+xfwaZxpbKtgGGEXNfcodWl+HcWkXiUOfKo1SNA4aukdT+w2sz5p17DVed
hidzNDPUCeLvFDlTCVvxhlvdOVQAYa+8smvlwldfYxOxIrFTtJAv8aXzI6krwHbA3sFMKi6S3snL
hJ6ppmMQ9pL9MDxO5rL5QmOJIHWAdzh6HRpJGWRXwghKHCrwsIV8+ZMHyeGd77PTOcRy2A5cYSfQ
HXTChZzMovo5cXVzoTiYlu7vcOzeweVjT5Ee+N4Ble8K4/MZHRMF5jiFiH/5Hffbb/g62DfW6sp1
TfyYHB5XuA8vE/+Yt/5TTtUOoqajADtQDJUo8bBj+ZV4kgIAgodsFTxrepEIT7nYx+QhP99MbnN3
DYW1NTNaL7qPDTWOUjDDsfbryT57MKcxwGtwV1eRfmdmTiDjZ7fY3SV19jab+N1chCOlJ33ivvev
0qA0BjTJOK0VSFdJGXZccuDJ34Oj1viiD44i8VgApOQl39MRe4Wxikukp7CMf96UbDJIlKSXufP2
0qMddlYkat2tuS36BuTVTeFu8k+MZCMGJ2PLrJXb86xPX775BpUmQAJsBCV1auk05cDPi8psbDYb
8NXldojiuy8wQUrFIHfDCneAWpSc2aifda+Ik8fsXdC21uNZ3WnehCowMHnGzYpvqgn+DCvfyAim
NOcLvXkf7P2dTQRZnptuUwDol8qGXVLEudMgMsgitajcrGcbMkLP65k02odKJt/F6X7qu8ij8iCf
Po+P3/g+3snjYTLoeqH1HWY7nm0XWlZprc00xPDa21CP9536oNurId+SWilAM2NQ+N9IbKBcGxJH
7uK/vhldN3m04m4ECailYubV1kuUS0j3PLGaUbPa7PNeb2fAf6PEVv2B4yF1JYCEFwErCI6STv9M
MsNoK4ccwMN+6EROi1mBtckwI0Wv+elH25znRFz2TCz9yRJSr8jEIqxabQjltszKkItfX/1LhW7B
n3WmaKEQNTkhDW3KqE+heLNdNTODWFhPnh138vltSgLYz9BaCMRDhn/M3fb1KLRpRYduhyolPELB
Cg0fq6zWjv2P7sqBRF1dWLpQsX3wr3WlTMu07sbKsCYwCcXsZt+WquSD03L6v54Sts19B+2vBnZk
mIsmCUlYOMNpm4PAEMZvnGxpgx8UjOygGM2n1W7O6eoxCPKdIBSB7dMMymoMXIc4K5f6r0UMUJNX
yTREpJa2Xuw3/0FV/gH/tG7PjoRL4FN8SSwSXXeeJacsQbPq80HCamQzdtfCjSvFv+ziGvsVuPhb
9lIinQ5LC+GAdHWgxy7mI1gdKdb15wEfDiwwbSIuu+/gBIwJiHEfSU/R/5xTCiTc8xeXZFP96WVn
PcyRpMM8sRujKp9K/M3ooTg3RoaUqLuN2BeHrYL/UATPaJ89U1HMCZIpYF2OvWY+TgERCuUOvj/v
9xJQi1Cux5F1ialWBd5me9IOCTYKF6+Ra6LVWhSF5n3M4iCQ4bTeFxSCKqRyIylJpXkjFE9qLYN+
vVVlzn/vi3kSDikRSVIyTf97MiIh7cXiKKIeO41ewLyPMvQRCFx+qHULN3HPrSyQwdA0eXj30NhJ
17oWPK+8n8KWEa3jt8dejRTCxCLEvReoNyzqEToZF4eUylIX05aEssUS3+n/vjL+j/3KAceQw5bo
Ozw7l7usek5hurvpP6Xf+lwpVRgV/Wi/YKJXOEv5bv+I9+F/CRn4Vw1U4alVqHSZXFGkK8Ze74zl
bkCxIxXtm4bb9mkojFBTRF7tCfHXFonV3I1H5tKAPRSHi5LcJn7RqThz/TdVf2XXoZkFqHbdBdBz
ONVKoN7GXOvwM+ESjJl6WsZDmqto8s8JAs4GC4ooaxgidNtUGMrKk+lY2BUmRvOC99HmkIi1hX+/
wlFaBzgE02awSvDbQstCEvvBRlCXg0fVy87Y7q6TP9fAScdUCwdFKKgW+2hG9pF5k7wD0R0OYSWE
c5EoOyxoKmZX8mtdt9+xLGz+MQCF0/qMimJSt5gQkWtgxTA27+MVtm8gE9cBpxrT3e3+TeLljexF
MJ3GSJwZaSn7aB35ujo6h7vCL9M+Dw8usgAgn5btMlCrNYFKaWawZZ0cLCu0r4gHHdkY8YEyGHpg
6fOIBGrJt5Ca1RRbLMmfMyPTaHc1new7G1TACmdAV2ZTdi3KSOOkbSVNmA1+WxXeCewpUHWHk67v
0RSzKPdWkmlQIC8XeETAU/r5KqxUgA09IsXiv7ebcQrWHN5oN7Hd+7YVIUKu/GOLTKzUAqySgqNm
xOzRIg37l6k5u5zXCVJ+U+YzVoAYePZFzGTvhmc2Bz7ak0ac5sQ/PjmE9ooDDirDye9MrKo+Aac8
CblyjU36mM4ssQaE/zURcnFxfgUmOW4jFr8qz26rglKLfl/B7dweTuynz4lylr9mwuARfZAovgGC
VFYq7PAkYV1vOoqOygg1GPxOzvKp/GsdQolVQOFOUTYmoI732GYVbD27tib7sRA+o+R3dALSZLx0
MavSN6SzWPFI8V7k6ezupE58dMZM1qnXf6qPF36NWoOzDuyrUCqRsaHqqzychDgg+FqEO69BsHAj
Us48YS1paIUU39Ozki9va3yGXskx432MCXGAlpAFy9CRSVL2Pph2kQ7HpQDW+gqS++lYdB3KNnbm
v8ZLdvIIQW0Lo0d8SlRnIx2QnUB1bsNqe0AThY5plDv42aIlXkrUl2truSxJ+TGvk3OUsM3ggeDm
2V6V0/oyvoOTz8b9zpws7TPWD9mjkZrs1l/bI9D9XZF9LIG+PyufoRqwj44FYzqf8+zzVKJge/VX
KhnwzEHqc9jTjdk2r9ymawTsLrMB/VwAF+vldVaHKcormOySifwblHUU5SnDS2GXooGFiIsDvvCH
Sd2Tl//v+V6YXstF1l9t6mq0hjsA+xfBxmSrDGuzj4Tbp1A23NPMg2FvXTK2hqI18ZEBuzugQrw+
H86Ua4GnaGmk3hSxb58t2k84JQYJzOTd4Htsn7l7ytxAKga1XyxLggouLRZgO/qQBwwvWqbjKHPZ
Ou9X79tYTEGnLYNlrTqNP/PheCQxEUjmZ6iuBGi4kU4AmvL2JNc22x3X9CvvL/+NM92EkhImVW5B
LFOBmhhL0830FdjNoklOiklFD947EsIJTazsG5FOfAJQjfwiStYjaiYTEoIymsOhY+4HQiAIjiLI
aQCPEjS49b47hOk+eoEJY2CXTnnTeyIt5xAtVBEjUFkGRupV1Jyooud10cL/jB7b56I7mSD4w5MQ
RVMArX3XgafjG/K+Xc0yGYPOAVH7nZcrmQnB8Z8ifrGkvz1EnOYNZX159XALKGYUQRbZ/SPjcYRz
52eA1+1xSkd3fG1NrH3dYXaniqp6XHe43SKM3FqdJ/SNdUm0hDTUaiIdIvbKll8GTBHWQfht+jw4
InIKFXNZdWjBZuMsSCQOTOen1cCJ7H+oxpJpV9MO02IUz50DB/jPHxuvHuQ+EQ3XLSAaEs+n29sT
B2xbi59sWzeJonVx45grsBM8dB+fo/AKFbzQHH8ZjUoy0y12KHojY0TmhKO3XN9c4Bc5BPM+hInK
P56tqjgVylrEm8rXhQLv/4k+WkqBstkpylFmPoSTBlEtOgiekNOFR8jXjOuCc3d7ZSSjwq1peyy9
M0VYuP09JHlitTOxMA1N/leSdLbW8NNe+a9gsmcjlS0LLxFr8oj9oYMAwbZXkc+looCjOAvESUJ2
y4P6IrhIbUj6a9BmOjCZZWWfDhhgUzpXNrKWbgCbq4CnkCBpE2VzYSKQ8XzNVrFIJQmE4SnaGZCm
SBkRCyyYOy+IClJIFbdZOZ+slpCJrN1Pq3BdjrWKXx5IzAZUdDapZjIc6jEbdO1oo6qsQLESqX6t
GDkmzuTToG8jvpyDbcJbRpGsD6pHiZCmQQBNQe2VJCnOtDY6vRXFibnZZdwJtPzEyOTGmdIFYTOc
TF45SXIZE9rsFVxzXViWZ/ZaAHi592X8yfz4Xx7eoUQKhLMAyQJPoynE+mdKRS7bhmghuIBRHBSx
xDQVdpR+IXYtEjhZe1fa+Xyt0ObWwHMmQNrmLmXkWBb4gV7Czoablvg9qc+SzhRcnFsWwrZgEUXN
veOmRmcHbf/h0LX0JtctdFHPSBxA5q3kk+mkfdTpZLRrPVesqzgiYkXzP4J2c4FTu7yBHBBq5x0g
Jd4hItG7M82HMarli8WvtIUg4C8VJx0gInNTrX4qVvpz2UTyvbNrPLTZx/DpuYZ+y1WcJM3l0tQl
JKkBbWVjthH3yPoK4hp9hiPIfIYKyBmJD0HfTbYT20iyu8xgZEaZsi6jkn3tZT5FxHu4sGyq9cL3
3pEHIb7LrE4goTmaeh82WvEulOTWjX822LnUSri+PVLw1Jq6RMlVM78JkUz7zQHsGgIAPt4rstNW
xTlRs3wZ1Boi551bTJK5asJw5v5a54R/nMVRb5z3UL3QGeJf8PT9TOfq2lkm00ARKKIDzYf+8Ixm
H0ek9H72WphOYv014u5KZCZoUl3i2ESm9nXy7TwoBemKFEL2hez7Liiu4eXYwj6/znBRmGz0Lk6J
1+kD2OiwBQUw/cc5FCuaWGnS757s1yzRF22qLzW92BfXu1NCDesoA9JM44Ckw9Y3+vdOR44UOYKf
RrX4T+gb4i8jHz1oFIVneubBts/+NfTU2BNYglj+t8AO4LcTIszXMD2j5odLFnGeb6DCSfQEtejv
ZcmcV22yNF4znYpwsQ6O/U+Vo/3yyUANr8ghV0zHWWRcA1Yf9lVbW7SeEC1YTWeyrXthnOhhD+QU
qA94SFVIthOrRIGGFyemQkayj+ikAyBDWv05YDj81NQkjVWCBqCm5XgFbL4YL3oa6AiEg2BOA9W/
TdTAURU9t+B3SLZMVSP1SmKvDFRFunMh4doUpYwirg3Vae2ykhCcBS4Tz4iS50OWrwBwF9OtSw4N
gneexocl6LlVdOFWTGd2JcTDL342DYXcjWA6H82muFo5ixwxo8EfHQa6/0JTMS+enG/4ZF59v3B+
du24WNHpvSUjuckFyLdb4gNMWKt5Jw/ClwRVJ/BSbUKGCYRv4NXDCnzbQU9BmIcd+a0pbOYAcF8n
c64WdqzEDQ1n0BTOTkNX7ZKL3TZxdzaCpRs0T4ohhVwd2RctBZP9TdG4WooDatbLsby1y/Sxrial
nTGvrFFgadI4XE7/gEYgXKf82r4SKhmdUBJaaxfhstfcE+zbxujxhNNqtPXsaZaOhgcFaBYaCdeQ
iLYMLb2Ll2VSOz+dI5hFE2TyXBQzM/fPIr/kUwJFuIrwCL+cSQzQn4kiVnJJ3k8nT0Ug9mJK9+5m
UPB0X9fsKNvA5d+r56VvcVEe3PBcGb1J3udboGj8YGZYcV+54yRWzQLP6IvG8elvsVLwTJy3z5Ym
00cAqBhDfopuOp5yGCxp38mHgZszkr+2Dm7WwlJraXs6RDjFHaQN9xIg1vS6vIBW2o/VJ/oYYTrE
pCcv+1AZ1+NOxAVw1mSsM1jN/wnt046Ptb2Y/U7X3XzwNYEmd53YXnsNWU7/xx+rkQLy6A7x7ofX
oc7Si9UY/q3bOj9Rfs2SKQ5SYE6EmDfsWPMCQSUo19YgiehxatfWMUcX8ZsLA75WJX3Z9Hei/Pc4
9IaY3H7AlPbcngAqUOnEqH+FVW+9u4cObrK7kZO0KZBMvFoPxp9f6965okgcNInilOQv/3in1R4r
5f87Ejt7M2nBe0QnAf/pw1vH0UbrqFFuRRe7p44ayBUh0dpQ0VoGoSu2osw98acoOleg1k6uaIbD
HdbNGKrScnpqwWxsbP2D3mg0AuWbLMp4fF+l9AywKOYxsE/iqdWHuTIvNKOh6a8mkdIOxwcHP9Q4
rh99A8si1fXa4PFzWSw0PBhh7dHTAVl6GnQnRqMbY7Keim9LpLXG7CrUT3UlmSL58P3GVnXr+xwK
t4zFysC7D2CMpnDlSc7acSKwbTu3eNqKqXPpvYSHsRl8VCkoTms5ushwc7WMbil8F6P6FbpqRfHD
SQhbrTdvmvYzZKsF0xDuaw5HoYKit/H9X8d1KUlZIHbOrb2rYHla2EIcWfoN+jy6V4BVxoAPYsWL
MMsog4ZLT4WJMFR3d7obufwLmEwJ22w3S32T4wxv0L3ZbVhkO8RRVFBjar/QpQXmIIlx02XM8DHx
1A1V+MNeVWuOPT4HSlifdjJ1EW/2D/mCCEibq0vPt82A9Rvz8r8oE4gfFiZqze6wAkwVWCXhVtF9
QoX2WMRBq+ayx5Hfg/x61Q0/b/MG6DGbH3eSfe4PFMwXNZJBtp+NkrmkrVKWWSejDogfmPQWxUTD
G73LA7HVXlr3+SHocfbGPK6LlD+U8O7whDV0K9chepMNoqLJ7NoNgODn/0+vD7eEXWAV9OCh+nQW
onL12ccoh63knFILJTEOrYXQYsgJ/m54PyTJ8N71ZaTrg8+qy64wao87EDAoyGPSY8lcHYWjjn6I
7mVVD6beTGhxaULt2H8FfDUgHZzhT5iAwKAZYxIWRMJvTAlxfWOHS9oJn6UmTbnYUkabPIUtflaR
M7WbFxdX/Q/1IEK57HK4bYzUf7jMQwTivsPT2ivxqkkq/C3GiETM+yCl3FHQJhvtyQIcym+nNm5Z
ar41u1mOAmejvuHOaDqEF5EtGHFW7i7ZK0T17e0KOGLqzwxF1ylqurgVBgt7NAY1pFI0l0SLA9e/
1OfuBWTjXg5mOg27y1PSIk2xLefpWl57oayqTReu035R9vKIrq9u8u23YhXAz5nbsu1Y3alr7h25
3quNJ8VmiyF2VhMsIZGbYAPKdQsfIGrw1jrnQYJ/qruAnzNXrpB0pNlvom+lUpx8bJzDtR/aqUlX
tw7syaQeWQaK9HOR1MNxT5ThXnX3fCIfPiQd04t2ygAZ/u4kLuCrk/JDv9XUk8UJcgCQB4LcEs72
Pje5bK/nD4jNhFqfRQC7+iOsTM2Kdto7uI+PPuWA1e9w0GvYtrKf25YwoOWW8ICNfUk0bOgl9pNe
ik6Y8VGMYhFmVK02i5Bx3GLwiDxtIel6FmgVrpEcNjbHTZyKNs6Usmw1ei/+02IGMg6Zi5kuWIV5
o78TD4FgQWf638uVobq1cas70NCxdVAET4O5Z64zBJrvw8AMaHTPBxC/bvXTNnZBX3Cw/jh3Mo4V
UDBzqqSrjWYce7wyHbPatJnsfYjKbrLDFrJY8AuyWWMYaix/VB/1421mZMuuq8FLkj4iRUb+9NCT
zir83ssJIc3YRmkk8g6hn23zX8di5d8MKchuCyycj7RNKDnf8I5W+T0VLC6nlNp88OcEYnWAT0S1
b2Ggk+AIjMT222c2Vis8DyOhRVUmPbb/9pznh3BQKkO9gqxslH9fKG0sYqODBtLtBmkgEAL0xdr5
/rv7ZNKiM40Lms8DdDmI3R6sggtwMGNbgDXHJgy/xMKb8k8l21zWzwFBdZzQE3jDs2ZwkSVnUuaU
lCjyO/zNb9oCNdtArdyOyNcERA/iTOOkvkwayuBT2yu+sorARV087BCfFGVGvVb2hUQMffIDTlWD
OTJ6BD4ge+cC2Z4MuLgNTuP4HB1LcsGdiCZG8SdDdD9X2KmDz4Z+35zuxvN8MyBH5mAe6d72XXUJ
NYqdX6OhsX3z9dRoTlLolDCoGte4dp65S7dRJmETggagk05aaxviUE3A4u/XoswmhlM9w/Ys9OJL
nHdV7mRCHhgmaF2D76/ZHYNQ7MfiG7EFgS/uQlQAmpEwzkVDrLJGrGOrnzRhKCW17QM7wp5j683N
ETppeVvMUAjt1QCvlvWy3stUIYLP6I+2gq0QBhAU5+kX2uoA8fNOHA7KA3/4wQcEdsRnnuuxf3I3
7JBfXdwMlQoP1ru77ICboHcoOpGWbDZqo58YNf8IpeXPQvD5TT+T9/Y1fXxZ8kKPw7eHHTsJR021
YiJ4b8rxR3TXOcoVoRTRDwmFr5+kyzgtiL/SkA790owuzMqJXxZQ7PQmNKd/m9nL0j2SHyuAqCNH
XTUo+UnnJqOkw7U6BGaguDpSjzdxtVfpClae1aUJ4j8lg/PF5CO/4LDvKi7KLlD1Ce9rNzNqPX2N
MnCtb+7so8v4LI6qV3S0w5fyLtMjBHhMXAv42GB9wP46SGnFfzz/CFNeGzEh6aRMt4CauXcfisd3
a91HPxf+xMt9KOFun8dXtQKupjINI4ik5JzVXx7NfImtxyemVd8hQKUbdjPDUNSCpk7PncOj+2Uc
RJO7qaKfec0ItS69u6Xf36747B0SVJw5DCo8ijy0pX106C+ZnR0+mjK1KNS+lxnIhP28PJknCOaK
EJGdDcXMxO+lAvQ8NpbmHy++ASjfG8nSbAVPrJsv9d6A+nV83/pdP6OXRsNyPEK0pUgn9RXo4pQO
HjE0NHoj0feXZ71SxF1wwBWXahgNpB5QUGNlFgVRaqRwC8VzrGAk9Cg7aZeQ6diBKq6jC153a4/l
T/xPvCGafYW3hriDORF1UBo0aZ8oYlZ6spOe+eYIZWPx+W6I+QMU2Pe8s3RFeVehd6JrU4nFf/Ys
dBUXh1OUnXhL1XfnsTfj6F1jdpv0DjPD1XnwhDrOVN1t5mpVo3wYHg0FIb4YaLd0CcCiuMP3Gq68
YbUYS1z3nQ6005vMszT0Uq65pqlW+azRkG7ZCUmndwJfzMVbF3DGHbztVd4aYIeSbW/4cW0MozLV
hvF72oDXWOXhbVNCI+q7jPux5Qt8+Vg59XzigtwV2Rxrl0USVfULcSQ9qZMDMUH0ZmwFtRcr7+AL
AyxvzLHXivyYXJCxLnTT3F0uQQ59FMgJKZQfEzWP5HB2FQbuLVkGW8P7fEBQSZQkiRJvnspLGHKD
5mpXjfPuU8kTetQOJkfEC+cqslsjoUN3O4pKJ83o9cNpCgHvv7dc0jT8KXyz3naclSygy7TJ+pg/
51SXyoPTz6VdhFuzKsDyVfIc8yk86HLSI9P+5D6SsqjZxGX0Kyg+2FDWnN/TnCBozv3N6p+R7bhF
YZ0OIfQ3HX8zLhazj2h7CDphxstqyK5AQrXa9q8vJKWqG38enNZ/Z7tjP7xR1LbM3kp6PNXGoyar
k6Gz6KP/MBnIEEnP9tJ7tLZnA4g2/ZChfegrlcYWiTt1AJvABGpOTz9K0IGySOxcbLwl40A1Qmc8
D4pT91q6uBnWOaVFb2jrunGIsiBgLKCKXFWM/ut8aGTVQDb3PSGEnLt2/iFVH+/dvqiSYmIVXrIz
pRDjxdo1pLaHbOi1mVDnBFLLIavLbRz30FqpxLZRCXjqgrddF6tjZGHdfoTLsqY0dDod3b3N3AvV
sy+bmLB6RJPT8kyU7hM0r+89/HFbsh/AH8jDnWYTp0oP1eUitwQsnpGDzUpgXh7cEj4ZIoNwob5p
1urFkpRTkk85V9H3m48/n/iqs9CUZJcigBLzfzuWwwUHfuNJ667mHMzGzkmvQEL+PS0SIISwTO/M
8eNKxZWthnuPqTHNWlDsrV8XOTdeSmNaNQhuMYmffOeTAI64tq+aKL9bTtNroOcE+n49kTua2th8
5taqYQgWD8TrLl+51EXU09i+dtaWA/J/fBZct9UUp266fxyI9flqFRM/4pzgplDQZQajUpd9WLXu
+ee36xGkhqloL5B7lRUM6Jl1FBne/itqo0yng+KVzMg0zGgeHZb33q3i9w8vZaJ2AN7jV1Qfl5ek
qfRSFDiQgd5SPWpKcmF6AFU6C0YxOKk2/5NzC1N/ssUejItGDDNgSUUNj0BBmI4kWqBnMypvTd1r
C5C94BnL4ylc/DzpI88zpkek8CJHOswIkFWpKHU30DNcMLb7THn/aYQRAN/VW4F8s0xpPfOfesob
a5did4xDBHsBo7JGf1rPW4DxfDxAvzsc7fNX55vitp8xnJbRYKZ9jV6CVrrwZFX1j2o1KVncVxdt
T7IrqDHQL0ieABgsRlhQVMRIn25Y0U66PZxMGSMiZYUyxoMZpr7IykhP9NdRmAHBkkc5dpuCjSMZ
EBwDslmx7gl1ycMXKGOwkdtJw1/gGew946FYYGqR4koa1mRdG4qKQQRV/l7wp8Vhmm7i0bgHLmbl
uVKNoev4z2be6oABT3qdBgqS6ZxXY9KrDngKOB/x17/f0v6o9gKj/P36WixbmzHtfC48pRoPZgRP
tY2gHxDeOS7EAFZR0rBWkjfQ2vZnhWb3+1ApsnLTYScy6XKnniHyaeKPi7ZaePoQrs6ydkouxN8B
J3cQLjrM/NW7we9InsanqQQnIuDSVOYx3OIS7n53NnMzyJEEPXdkdtPkJYqtWHIpI9ZUg5tFAt36
oeq/2kgKlO92mikVx4qLlcGdGc9RsQwlmYTU3numxPNuOnewSDKwB6680VzAl73emVsZ5NvoXie4
51RYHj+V2SIx+a+9UeJq3qp0PyL2+IbgSxId/tO9CCZ1RATSIrYz87MTsij6rfpBzWSTIcYlW1K4
gallPy1VWviQKPsE7VjNTT7RJZlknijDnDG6edYyfrFC8WKiTVRFUA0dY80aW/ASfPJ+9hz938qO
KSGOf9uCfDSDcSD37547VYa9msAZpLDESVFvFGBOKNTfL3X7Wenx+9mhaolevkhmaZM3Mpjkb1W0
17t9yLBtIY/kO2/w+hDEdrUfT23KUmtH7qb7rY3O2qU/troALLfPQbgONnSbx8Y52q45d2WmFc9H
813vYM9JkplAtSb6FnvjtdLHydOs/ZijJ6DdESoCIzaa/3Zj7JtNJegCgP09U5dMiSRroQ3/KeXs
diby4KNU8T8vr2X7ozBkXNzTIJhasPyWpPBit6KJuPgDKxp5yZP5B2TwWWaN1J5dQakmgqKYed+e
6qb+q4U3sqzi/gQw0tmSn/bpaKNsNVU7GbKTjWIOXsAnIhtxgwLTkKnUCq+sKYcts8JAl/jBi859
dEWpsYqaI5cehzyQlVilswGF7hbrl0UZ31QTWxDOTNZkzMSk8MXujKRx2NHUzakBtz3/BBI/+WXj
xrpSTfz6QtLNsg0AnIjtPJkfK6WubeqrJ461YFUqsyIKkr/J3zRu9WzLztNtbSVVftA+lOPCJk3m
Zh566ZCpp6lblrzDUb1e9jAV13fRqqXK5i/DO6MDOiZAmeF+JTYSnvgHWUAuTmli+GlrORL633RC
aa7Q7pe/BpJ3Qlw2R3DmaU3u9C4f0njDPz8s4CLLcI6o9pJ8wzvmdC2bY1c47arRQK2vsPGvfwrV
q1JpwkffAsiWYIzRaOsMYIWfwCHd29bnNyggp0gCG0xyWCsx3An+Tu+wxoqaBPQzFNaiw+5DIstS
gTZk+fHnyZooYZ5TnYtFrri/kBSMH4MXaKmtm9jOQ3X/ruDuyY7+2wBEpcpAdiyh7aZvY8sj7lPP
26lrxprOXhqY29ijBU1q7+A8z3elN+8vhr1asMp3LVWWuPaB8QdnM4footJMR052PcpHtdx2AkYo
EmO2LRLUnQjcs3rHllJW0EqHf4H3sjAGcLfR3dg5h7nO26eIWPLPyhk7CQhmYUB+TJnLcI3Kuakr
6JY0R+0ybKehtYjCXQi2dkNk/vKZKddhL19y7aLjv378Gt9DkME=
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
