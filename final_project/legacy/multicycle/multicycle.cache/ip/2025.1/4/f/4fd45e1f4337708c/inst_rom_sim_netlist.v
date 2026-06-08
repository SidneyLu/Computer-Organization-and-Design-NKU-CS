// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 18:28:16 2026
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
2YChTA==
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
