// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 18:25:36 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ data_ram_sim_netlist.v
// Design      : data_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire [3:0]wea;
  wire [3:0]web;
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
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.108651 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "data_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28352)
`pragma protect data_block
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
hFZUqNiJTBpkqXroczwWD8d9I1pEHjs=
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
