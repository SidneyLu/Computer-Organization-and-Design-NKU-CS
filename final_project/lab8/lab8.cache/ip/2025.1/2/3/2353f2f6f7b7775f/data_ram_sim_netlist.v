// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Jun  7 17:14:19 2026
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
BLtL8FVIXXRuGG7LkHgYNzhzmCobHHE=
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
