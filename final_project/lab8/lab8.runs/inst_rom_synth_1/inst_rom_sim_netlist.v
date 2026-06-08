// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 15:35:20 2026
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
XfiyAA==
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
