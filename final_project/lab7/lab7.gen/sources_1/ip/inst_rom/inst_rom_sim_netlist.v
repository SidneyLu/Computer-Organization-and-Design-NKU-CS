// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Jun  7 15:51:39 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1012/final_project/lab7/lab7.gen/sources_1/ip/inst_rom/inst_rom_sim_netlist.v
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
