// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 18:25:36 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1012/final_project/legacy/multicycle/multicycle.gen/sources_1/ip/data_ram/data_ram_sim_netlist.v
// Design      : data_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module data_ram
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
  data_ram_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28272)
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
