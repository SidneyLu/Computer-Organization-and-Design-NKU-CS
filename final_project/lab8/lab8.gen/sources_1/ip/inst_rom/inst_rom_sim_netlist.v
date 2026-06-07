// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Jun  7 17:17:57 2026
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
