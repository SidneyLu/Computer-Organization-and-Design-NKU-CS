// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 15:09:16 2026
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
nZii3Q==
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
