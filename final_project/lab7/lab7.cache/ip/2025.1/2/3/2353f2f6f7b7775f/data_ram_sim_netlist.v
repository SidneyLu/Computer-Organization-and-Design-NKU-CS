// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Jun  7 15:44:38 2026
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9299 mW" *) 
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
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
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
sjAJKsRN+KbTDX76t40d85kTiNljw5Y=
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
