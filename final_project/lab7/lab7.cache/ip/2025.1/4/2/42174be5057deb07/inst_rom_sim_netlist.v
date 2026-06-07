// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Jun  7 15:51:38 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_rom_sim_netlist.v
// Design      : inst_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_rom,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
lfkGyw==
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
