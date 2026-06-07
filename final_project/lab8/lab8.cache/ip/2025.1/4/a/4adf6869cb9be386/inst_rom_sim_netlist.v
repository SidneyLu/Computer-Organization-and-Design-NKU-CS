// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Jun  7 17:17:55 2026
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
ImSr/g==
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
