// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Jun  7 15:44:38 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1012/final_project/lab7/lab7.gen/sources_1/ip/data_ram_1/data_ram_sim_netlist.v
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
UzSrgoiksizASqDSid8SBcHSxOHcGhuzEOzZNdqYvcPpidyly8lJO5TYQlNLoCf6LvgfofHLsxD7
ix7MH0spVLVK/no1LswfsALkMFYDjRkDbLMGieU1mH2U3D+329gcopJgWFZn2CmzO15lGCn+fWJ5
RM1k7CyLHzY+XZ2VTqvY5/Ly+Njt4LYfQAZemuiCw2uPzQcHeO7k7KSyYXE/zYnPGVH+CwSDIO9L
YXOW5whpbkT+pJSpkM787WyGMf13koquhwjq/MaIdONO9Lw2YUDnZy/6twZBUuJq7Du9R5PkwI1O
4y8Cs46G82GFbcn9HwGLiq3Pri0VMXgzAruz/odzC0KH0eZL/aVDJsj4P9VLsILN4wD83LnuHBPe
O8rxvBpHby1fGhTuWNuB1/do9ThMsUVIDG6d6+ETTgXMq+ITUqePDHE/j9Wj47SA9TpXCctXdlx8
5bRntmyTF0ljerKsWVeTjQalCHDn/Inl4YUHcoIQjtVUgeuJ3utwX0AI05enOrEO3GqU6HpX7CdL
oxE/mvkU9pjJfG/RkJcb98U49qclTILBugAg3uxdGhpgAPSvHdHkEH/iNoHRMPL89YBCXhLvtD0W
z/B+9PZSESJ81P18C7GlK2d4CDDz//xMd5n5WlJlhCX3FfdQDvC49pxFAwNQnRN0uK+piTLlS4rO
p+F+w8F9QdKrd6ftSqkDmCUysAZoH36catRDTvHAX1vyOOkC2Nu8Z9QggeNqNy+Wz27nkfDfc8AQ
lIw/bKFZ3JfvA2yxpXt5lteTESpSbK1yRuCsmCADuEOWNLW7k4H7t80xgDllngnCHIA2Jsb+Idr1
5NHV7aRFuNEz52/H+JLq2ojWcZ4qjqbJJ+erWN7bnTkbbTPL3xQ9ykDl6dBjkqhoPYzOMzD8MyZ9
uMZBWflilMs8NY6fXF6Y3wtWXEMINTNjEcP10SAhRVjn/25NlNh8G7IYaIBmgeQBVq+B8iBsYV5f
zeTaX6ttKTGajxYEmVqKXGFmUx+xkq2U9vcFmzPKVTUymRAkp8DvVAeEJaEkKi5pFyUlmimi0G1U
pZhL531gvZE5p4X5lZDQke/ecy9Aes6FluJhqw58+sKX+dUwG45aaJpCBF4Xco7CIKGoiSVmjlzF
YlDXlm70lHokE1y4skgYzPmKnG8BYu+NItKnj7JnrpJGDBTWiX8Qx49atPX/21up45VebggeDVfu
BrnqvnobMRokpPd9B2HlFrIxhicTJ5kt1GWCgfpoGW5pR0s9IaGglBY4PnCQ4KqZhPyNXbR4nsNs
zIcufId8OT067KvKKItlpR+h+gCsyPq8bAFK2CCy7Q2Rpok+rc+7v7GHvoFK0DrpGqcSnIaEkV62
uoo62aNrBsV6hTpi2mnsz4Vx9TJRRrGI1tb/cGmlnM3UvcBOdljQ+vacIW/J6bRnzbXv88YgxJk3
BmEeuLBjOIPOFt2FAJfJgKS1rzJ9qN+qyzOodjqdubyYT01mUCQSYjO7aKQdrDpy2bMgrF1NzpMW
CXprphYZmRH2JG1jX4PbDjqmNY4qJoeSM4H71wWyF/KyI3OCbxoXF4K78V658ddMbBjqiMGaruaI
e3bbZtqpscWB4FRvVPot6YnFS4UyEY5v9sO2QK/TngXC0S2E3jxjpcdeFk3NYQMGCCvX9Nj2f/UI
S5N15Z/1p3kG6sreJzgYtbTFYrb8nL0dswRAXjHvJj3CpsIL0bWo6SJhLA0xHhja8C4k+k2EGgMB
Rf34b7QdtTAQ5b4EOIV+JSTdf//vxBC/d39msGXTjVF2imka30bg1tcP5QFQxXVcm9KOu5CTCcpD
0fGD6qcOIwWZDsRjHKs0aWplrkso7tn0W6eXSNgjXvVN2yl4HDUbjZLPFqhFb1dtEndir1mEzGT6
ZFc312E+XxH0FPnMqqkCKwHL1nclohmPgGqu6U8W6T13H3dqv/JvARct1j+OZrN1SXytGK0Kn8jB
qB98QQeA4qzS4nqwh1BIu6j3Xlt+K1W28SLpe0hCimcbgI3g4K5AGbGihV5sLLZLHn+K5X9NHD+H
M1aLOPEW/TxgndyvtWh76ZXXJ/CoezZ9OZUE/G8VoLx+cw+yIlITDNtgy38NeNIDNRhnXA0i9MXu
N9GGvmDlS0BDbAieEXu3SlEp6YNyM8HKJ9Uw6Ld+r0B4JxQ6E/wijkzdQC3KlOJNY0pVcPpGmC50
XFRdHGwm/ffhskxO2vmbhLLX7lYwL2B78xqoucEtY4Ly26MfljRIw4KBH3wmCTG+3ITi3uPCqfq/
MP217RDemdi37/7Bn6j3JbhXdhefwZOKE1gfM3uTb2Q/9V7olhPTyGAi1f0kq56rGwG65gk5bgg2
tx0UWZtiCS1o8bGC7vYA2FdJOf1bSq7JVZvlz5pxe9+O81WhEFHte/wEcXQPK0zI+7i4VjDzKYMg
9Mxms9P/Kd8CRGLl3PckwIrIAtgI/O2pXwefsoO4c1flX+ETts5UOY2dQYg3M7T3G6V/kltswW9J
fThZhQlbzM8rI70J6g1/HQ8u1osYnZuYHHCxHLhjegZUjkdzHtTO5hF5egwkcsGSKrADYHS5fY1/
vkEjif+pK8WsxNGWTvE8yBmw+eupCpNLPQhcvRTfPSpCFCzU2JmRi37Sj61gX9CQRMSHXkj/ljHB
BzC1D2J8jF34/97NXBBPtaHlNsVGb1rsf9gIbJyjJDCeZ45RiH5lAjmF+v/rUF6hDueXx2WnF6uY
myasKTZ3j8r6LhJcgBosncHXqdPv1hvWuvnXYCKYjInEIsKmpohVYq8QXc+Qpy+FIsf/YnlR7w+m
SciEnVpSB3NZy0YNU9rR6Nh+ZxnJ5U9PNBmvbDliT3B29FxSIiOJ24/3nrcNrJxwhTJ7kHfpmiVK
ONSvV0o/dE7JsgYRE5SMaWo9rDwIPEa3d3Xhn+ZCF6tn8oH97uAJ8Qc9jnCVaLYcB5jMfjDOjDze
VgF5olVp3MNu7rcal6nbcuumFsbCBseGsP6ppdIDQQCx3zXt+cjVSj7sB8dT14UXGU8Ni7DdUZ0L
Z+cKV0xLrrJFviNB8CzL0wQUAHB+g+isntfw0K5+pRUU+l+gWWFsyE1CMSurHQRLUB5t4IdR/u8t
VQ66CqnFfM+rdZzL8kiI+7j1Dx4sKJ1f3L3bTA0GwE/LGHUgAeuWpKPsaBhUetIYyqfpcHYTzFPH
wGjPmq5GM5p9gz1uYOFTeEFlpqZFSjWF0yGMtBUhlQxPL858OpoMz9ceNNsnsAqYaiEg2VyhhC4M
kBPUHGBx23Cs6pxJePu6gDEZ5rsKOxBDndawaKdSDpqL8m4DC35J9NWwVt05LoPqDU/sXvriLv0B
2Ied6N4oT9Qz42kuSJKoAQJhRSiM0hElJ2JD+K3Np8NxU+OYvLmHovnJaF1bB4kg1b+cAn8sjPr/
GCiZ0OQEZ9PIrCjENHhAIgmcSv6UGeIZrzjxLo5suJRd7W1pr0Ys+Myvlh3D/G0azcceTYdJ1Di+
iRpeB3PolwyskcWh6Zjz2laGLAbaI+eZPA3ZhSdaW6JUa7kFA4CA/09AhJGJjhEdLa6NFFM2yazP
baBLfdqUJE6uVayRHr7rRD6J6H2LGdn3J/N6txSkr3aDScLL53EeQXSMlOmhjwOvgW+7j3Na0JP0
/p5EQ4kRyKqZXsflFMEjd2Yyqw8HswTJHYg5JP2A1EuwsNsRQ0xlFeE5y+y/7CKOtivxW+6Ee/69
l3j+seQr6lwTjCeJ9+t0KljDjduQAhiN7p7ZwctUuji9az8fqvpRrpxiwscG8cCWDDBvgDqm1R3y
psUKxP6bNRJgH/KMsTsrQddzujdolH7jICNEIFM/sH6k2iZLzqGvSEZzylnVglDJr1TZ1G8MKOYy
SV8eCA1t2pZLB7AMnqHAGnb2Q+XvCD7CwLxLMMMWVRQuOtv+Ow6Gjh9ilhKNjlTexHLbu6+3tLOc
DPttYp2+R6nXp+sRJCtL6HckBfwPrexKTHC4KLMfsKCqgz2lJF15YshVcNEASzLD5k9ot/wvD+Gr
knOLsBAvL3wchvqQLbM45Ct0n0Ua6kHtCyJIbT4gazNT91FYIuw4a7pjSeP/9x0O1BPisH252+sH
XBi/ln0KRAhRYPxN5k2BUqa7B77I1Lz0PkmQtdAjWixBGp56V8U3lWLj1q0pxO/AzgqNv8BnK95c
OoGM3datXnxr39gvKrM0CXP59DO/h2vyxLGUetvTc2nyhDMBt5jpLX5UyHfd1jWSB14HbBCDtTeR
jNAFjf27v5HDLuJWda48MtdnvqsPvw/BNmjJZI2JTRsb1x4Xiqax8QFlLO2gxsl970qGXAm2Bvh2
8WAg5/kl6qgkvgA/OBnBBpkuw9yEqd0OJJSb3H5+XtNlzM4cZQl+WqIkUtQAEuKbE4aqu2dQPpZ4
HIESKFJWYxX9k00X9dZwxp/8lsjfzHRJPStx8i6KDFt5mK7H8wu8tGnnsN8xbXIfWvHkloj0fi/g
R/7edkpC9+IyGti+aEW0K2TjnMu1E4DOug7KVDnyB39/LihOy/3kE7CU3/u0F3vsCVjHfS6T+jJo
kwnMyHVUlrXkA3jTZtzQACn8hdnnyiUtlVOBbKflBWcI4RH/MHk+57huZ3WjiuVH1i+q2/YqDdxI
26GPzmWDJwpqqC4kls5Cyx/GdqY9iRd6McYWSd2i2p2IukVLIR5xfK5n7E50/c6axd+ldd9sOgnj
FGRUSUALWvw00Kw+rBksHkaJl59xrtdoraWILhh/AJggAMpAWP27p+uj935JTjCGeTvwzFZGC5uB
DMjCc6VmPVpenPCqcK1V2aigV0Mo4LDAL3H7A7D/kkrtPHNqXb/dd5opOaRFxWxF53F4oBMOHwTb
/qvIufLtPTKb3lJLAHHqq9BMBXMZHxh666qFaMnoEDXcpEjRDM05bfbJd1GP5wXFDpDVoLLAA5gx
s79svUf/U2akuF8d25DU1r6W1VDGqrlVGWoA1+86mZc8M48F0cL0NsypB6iGlQwTf30Zrs2GWpT5
LuDF5sXxhJUaM3pS5/CSo5qsmrVIgY65W94T+dYikVC9sE04qDI1tXd1j4UKWa8SomM8+ecgjwua
/HoUZxbaP58/MBVGdus4wpDHzw3Ut05LTmUCeczjl9KCxJQ5hRaYfbnwg8S7vNsboZYXkRfHgVOm
oWlwU8ChVjtLKrfaKzjIjeqL57EU8a+4yny13DZdX2EJwsvwmFgmrphYxZEVlsqX6BvCPhW6619E
SKIqKmt/eNDvRzlgxDCx8tn8Y17Kh2em3pCYISGjRhhYw7TrPlD1nFzYXQszUWB2nrpgGevunkvW
HwY85n9V3Uy/2ZYs0xBAZQmxpFnbRxX4gFhNGGFm1WPSXQOvKIAwQACVV4VyUGl6eCiHtaVjny5e
SGe2eXc10A8UbUjyWXMc2oJPExUGc5C8NQ0EZRz8ai0i2HjEzq6d03E3FBEYCfw1fDC5gvgoFXy7
ebV37fxodM/fajE0rb2PhkrwF1rVdjru+y0/2DBsVYzCHrhwCCsMlEWC96df2D0M1/Q9u4pbp9h3
ZLJr9S1Ge6VCCqrMnA9IUn6If6an7XxanVcCRaL8T334aVkNr1IiqCAV4sL0wL+fRlr1UDA7XAZR
5mQEN2X2aIpNf5/jIUdzIGnn/dLMuf4PfdhBKWmRUVRK1PDqyYCGOxmHhYpdVYeO2XQ+qTyGB5jf
OoEWoG6vKUh05gjDrAEcu4hBOBO5nwDC7XrHrSpwN8Q4m5GTou5GkuxSrxsxIPz8B3CB6tvD8J4E
vfRAo7bm+KOJT6fl5v/P5jiVhw2z8AB7mOUNFFB4SrXzB/1Im3gVA/EYaYnQemYoaUAjSEZiCY+T
WE0QHwX+HSRRN26VtioE7vPV9x4PsImAULKiCMbzK8WuTj5qNOtt60TO07h0ngYPsjqLeBrUV7iV
pOx0B3jV60Qlh36m/yrLJ/u4aYQSJr9+CYTSoNIwm9cvYQRC6bizc+MpQiiJpCwQDv02fbMR8ORT
KbHZCzDcLH8a7JySDER3aeRf/cmhbBIyrBlg282ow8hv9JrIDBjtU8giVxaZk1QTFGzn86gbdSl2
SEWiLxjK/0v8lJkrrHCWkxRGAZ02lasAyf1DMN00zfPvyDMcWCA1k37/HKW3MZCi3gOuzfS3Luid
p6tr++11my61B6NGT83BcAoCNRC7PvV6kXH6MB27UU89XUFebWmezPr7/rr8siwCn2ogZgzySjfR
JwjzaUy7BnBVdJnw7ao42DtpI0TckNMRF2ZdQ/2x2qtDnsVJovRGspq+a9qBZJNCKv57JJiC7iLZ
yNaePkcN/CIiSL3Ms/gO/uSEFBGwpzMUmM9CXnAtLPt3Hl2uWv+jXXu+i7R3jlGDFITM1fkYzNIB
dtiQT0O4Lka0q/T+0YTPRim0CMrcLhXd+UlCTrK5/XMH0NoYvlA8SoHpc8t6cg9JA3hRa1EwrNbf
8wpsHdgNnjkYa04nlw5caLQNZSHoq9z/bejA0laPey7MjXa4+MjIIxX9F1Iof7n0od2HsdRZ2kOG
Y9zj/bzX9V41qa9NJtnbI8Q8k2PlWS3gGdPyOjnhTPS4kyE8qFIRU//KDNCg1oJ8iBVYpd8JzgOD
oQ6ey8dY8SoD4bCcXnOwoO16+NNfsXa5RAy5tTaWem/bcw9U/A0ilv9oWJsgtm5RNUzuoNq6Abfz
xiZoUTz6AJrTdRLt1BZY99WsyXy7hQ677tbSF04qim0S1NuFwMc/32/lDnvxuyo4ACmZryEC6SbU
FXtHK/yrzRsM6+khReSeazjsodrl6mBM9P57SRBduaW3CgSPpAqiTGmZyqqnjkHHpIfhC5oG+YfA
JIJc27Rkl861W8yPzlX/S55KM3VxfPIe31/kRoZHcS0SClai730Sl8VNmr8fU9sNJR4ASbTKfCIR
5F8/6o30w6kDQRnMJQTvf9G9HWSbSYAHprUiDrWmAxS+M+tPGasn1CfaY6bNjQfhsCAEaXMsBxFi
w9wsSPZbp3jt6+33tJDEDza1v91HhWer0/DYbtLL3iV2cHOxvofJZqEaTI1bbpcnFsR9EnCmMjiT
f/axBrX+0+w1JNDMoh6wKkOj0zPVH0zj7tP+FluzdSad/BtrnT6HItAAvJmCPL0Ktq7wRLgkcQNJ
N9N8NM4tadMV+xlWFDBroAYDJtOvpFANwrb+mAJuFLMLYbCS/hNjLrzWPp36xl0q03Xz/FCjZtu8
cldE2d8buwG5kReeE9FYLaA/3ha6mGV5qgQeoJJ91UbeIWXcgzV/TKvMJGpA0XGTKKgO9kN81Vka
FTBxC0i5TsEHpei0Le4/NBWzwiDLpzCLDxE6Tavpvoh3hvCw5qKwxl7pvdojoFbsTgNex08UcaQk
TVX9s6/CSk8dYeM9QB/mHpwrUARLRkA8SMIf9MMO0oO9QmXacGybCuDmfYFTz/UdLhdSFHapKmZT
c2abQa1/IIZRbB0Lk41oviazbt7XIqbnex2d9wUQomsvqSuGl/TOjFGM9QNGElsRZVjlQsLjSytU
CjSFpGutbZAsezLn5Dg0GQDUtwteaGp3VMmguFm+ecORLsUPiCAfGAtPiE+1oKLZ+6TFb8KNcsOa
tvqFlT93L0MUIAnRygdpso8bwA3moTiUifK+CZzpdRwPaG22qBap3PQJhvJ7NYXgfmWYNiV8ekU0
LTzqI386VvXKVeOZmGSXwnrvfus1wIJBRwj0iEA58Yisqhjj/nPSedJ8bQyfS/F3Y7Djx05AzM6X
mIUsvkUMHMzUN8ZLRr8nbqGL5FrS9tATd6F0rdxnRx6n+z3h6+Q6ult1AFSMzAV6UzUZ38+vDqJv
X7uI1kIzL5uQZm0Qyd3Zv256AhfmAmxVH1t4sEGjKPyDVHQk79i61LlpH5zInEu19I6uNzLcWscP
nZZwxXqLCMZvcWBQNFkw2RwagWFnFN3C5JcrEWdqhndllDhYeojHPMF+A4I/ZXgLCQFSo7qAIr97
BoMolFso1lp8Y4m/yxjUACCwMrfbH3Abaut4lyf/KjYzwcVbD26xH5RQ2uHkHijtEN29XtbxQaEP
2eNRqAMivJSOpgprUES659upkowfciar+4d/Vh5ZX0rOCYfhLBmW1iFU+kQox6Oj1B2YGJqKdVXP
KKWTl/+XMRw0np2aqiZ/6Je2kB+LG3aVo4QbhCpxWQ1mXeqLXur6saJTrWk52H2tX7/HyN+TAcqm
YR++FL5dSjmCoRUmCU7HDnS2LAMd4wVLVV1Lpw2+DZzfFONaBct9TI1ccHmIDBVqVQUKJCamPlbk
KdliK7mDOeHTMn9v9vtRU7llHC1J+AGqRKh/UEQ/KNM/Sr1tu7AQ0WeUGqMycMYdbTdRndiGMNsl
X0GuCFLONelgaRx/lgJb8n+n2/IRF3HEfOMDqPCUKaaW/nsnUBF9UeTRyG7XtGnRYpCer7u+kIIB
PpDeoJUvb54SahZRuV8yIz7NhUBoku3XzV4d+22/+jNtT+K9Gax+/aBF275xt3ETmawH42g+Wx7g
OIIipJArcZF2iRSbytjVy60vtsDssn0isrPQ+PgHYwCm0dmcSmjWd0jMJ75mRbH23YhWZPKf83vA
GFU9b69X7v7faFFnmzoOG7s4OWpjGwRGLr2IfTA/QZiTj8SpzVA1yOH3hTY2TkPhgNFE3EgdNxei
5KLxg/bermlUNQTBa2SzUBj/fFmVgFSkyyagbp/JLx5gqja0Tne81xF7WrS6JYgUZqgNBlO7UGbI
idz1DMzmSrzDVnIb7UJRdJEjHE2DzMHN7tqShrBZETOud56boUehKo6L360woodI29pez2eHlmLj
fqzdCom5SUx11DU+ho/Qy3TaA3vaF7aLZ1JXN+ogt75HtMzE4D/ITF9QeBwTfkL0y7sUIuKkzwRn
fiW/+uVQuH6YAgD+OcaGh7I5HZCB6ptOJ7J7YdmMxx+4kVt9MW7Dgru0Wby+LcvyKA8udfHN7WdC
hY/2kcb2nOZZwZvBgtpbesu4eCdQdwudj7TabeSTg7bYKru8xcUXtKb0+yNIKJbAEGEeHhr97fsX
RBcLmkwnLXZhya6jjTT1rLbSoYn4cusI4lGrianRT78nHMtboYPAlA6HGn5Wk+e26q0pv4wDPR5m
8PSqKKcF5MRs56uuou21/fPIrvCRiWl2qUHMz0G1zwcZwepe3xRnOt+d7iaxXYbnvZCvTONLDjq9
imxJn9FFKWxHn2cphjLAZiLbrvx47IrdnGJKeqZApvXnXC/vYzG115h1CM44/sMmYbwmS+rSJpvQ
4MgkFyIh9Mv2o1ZAkx/h31S+4Jn/Ppvnc3naw/T1/efka2vvWU/Acs3vwXTWcxM6K/+E8x/zYoRW
fmhPm88VvJdB0pDXIXCIpIdFNDf6ILu6feayHJBCQxNQgrIyz97EbGSfRZkBiwy7S/iiD61QhWak
LinZWG2Y99EcRmRGPZv/dgBV1xV5MmdhFZV5uMPUogcQs0eSPYJxLmhaK5F3X/viteUqlsc+fPeM
QMQqG45PoBG7ofxHlc92eJZbCAW15fzvsVqCzQIxfIxath//MNJno3sdJe6h71iU80qPLXquvoCl
RSFzev3XV0fxktWCnsee/eAmLEp0IeYh+2j530notAcb7dlPlaOAcAKt08ZYtpcPe38oJnYx9ZBy
ElBGQmXU5BWq5R220X2+BKdgdK1ov68+INd4N2vR5FoYDEjrdHyHzFw+y4hunT+zEzyanvCF/jEM
YeC3kFgDy+60yG0e7F/eI6SYB3mpvEJnSOSR4G1HjrEUw2G6B7nJoj6DnxpSoZjzNBAabidiGb24
xd2cQveckM7PAcbovtuQdg+sIiNte9H3Wb1ngeNAlc2d963ItTnsNQvaV5VyUxiEwZjLw3VISeF0
3lOw+pSME7WQu4hqr1t/0XzqunICwjGzhzN02h1UcogJsH5IejuqPCKLgrOcLsOfp7rdjrczwgL6
/zDCYf0WPN3DskFUk8ymhzT1BgTzQffYyXkue6mtABbT/piztsdFYKcZNr4rDcRkQ3wM+n8+cAIQ
SfsYIevV2by3kO96XB4VopiTrorgPmuoSB+KYfh57X2/iHEWll5ZToGLfadZPQRXDOY6fbAlOJ+y
aspkIly0NuTRrqVCwzxlI2AL2MizXHMo6J8ZtYrrSQaA0Gw4006LWowgAgRXsHBV37yKCT7EWURm
ZQKsf0y+TM4Pg0LoCs9FBDBbrdnrJcy3tKUrrk3OkuwXuN8JVzFq14unp0IVHMZkSoaU/mFbN1Vk
A8vffJIlHcLvA48OLAPM+xX3OG2HKRMe5PeiFJJznCZMTuKjXNyey636RDBOgI2q2CeoQzixC1IV
3KmV/sRhPBpeZ5lqPV14bMnfN7YlDaNET87X7XKzLjFm8eHIrsxPYMq1Gh1bNfQsp4zTGBCmuRUG
hG2GU2XoEIlyIbsqARw6kZ4z3Dws4ixsbLRP+RxHQp84zFVSYaWrM1PnxjhfOyQLQLAnvaKskrja
rejbCNCxMt7wTF4FPs9YD8lNpErITphr8Tv2kucZ2jSLcpXXsx75dqEzP2v2X/5kC3/mm3PMqyEe
S9slBSR7TWR4s9JJw6DdPC1AMjTtZJeGp0t5RFWnGkeldwke60fZqP1ngQ50TTPxEPyzDwSG3E9X
QoHbxAN8/puS1wAXp0TPBJQUZbrNhs8iYs/9Nc0uJDlozWhJehgapdf/1KHa18czDbeYBFkjFmJr
jN24FvjyukP8eT1LgbddQfZj7rlFEwB6FSkecBbEm8lzGzxscW9bKqg/b1FWkP4oAwXISJomrb1q
Vk9kz2Rt+hf6w++Wtw2dNGG+mKvqFZajeLkj39FsOozlGTp0jXzQF58aWFUY/4bWT+paQezfFvFj
qPMxV2cuOm6jqtw2PUWdtQnReF7n4kdVr4a+6cEP/lelSmI2+2mPe7x6JJfEW4vaN7M42g3fmeXV
y0xRiF3jvtI8/xFHvwMpkhoQwX1E7wFGmtWWqZK+yxKgxlBm3/NV4/J6RZo42nml+TO0xI+aPC9z
KGivcs2HgC9KZDPKzKivh/UHfiX4ryUGueBwT0BnTzlh/Wsdk6av8f7sr863h7ZngndRbT0SHZ9L
UQaRk8aYD0j4pHRf4IgQbIaGBMUkaWI5QrxVU/HWMxKALPiikjjS0br2jxNedSD8sy+BmCzzhATs
qtqvIt452j6GUFUjOcH5p/fvWoXWd5A5GqZGyXNJoIVgWfXrQWYqQK8IeMs/M+odIkQY17HD8fTY
ciGo1JCp1kkk5y9Wh+J/2xpxXXx2VY8jdyt8HLQGeptGgqjIyJRkDawc1ITWqS8tAKKVXdlBP9OM
kz/9intPwS+y8Lw39hL35opxsvbENP1RKB2ENXK0yDnp39epXAxFPGyhY6Lqc3qoHKIE/sAwPERt
L89UM9MmbistJROoYVWAPc9hZoRGL0PoDn4B/fzIXfe+3Y+ZudlE7VqkLsgriYtt9PIPj9wHABPL
SrhbM1fcsMGCCiaZMGD6AxEo6plAdQ9sIUJS/GT419Qytj7iM8CTj0+QQ4i/XmKIp6G5/ODnZagt
E6B1YiylKXfyEMGKsdXG3jD/rviduMJVo9NBLLK9hV9WMXrw4hdnq2N/sMBHusQeiADCOpmOlRi5
crY22EqZsACYfefjERrRTkC2t8BeMhpMZvg267JSk8/AFYLqjdfp6A7P5/SP+b7XVAMXsDTHI29L
IJNu8Zprwm9RFTzfLwC2TB7XKqRW8hGEoE1aOO7QKbT43kE8NYCEjAmSB4FNaGSzkHAFnB30UyiX
Sp4f5qT6n3EJQIt30+riTIqNQD4DsV8mCvhobkJ4Zxys2Ou2LjZCLL79LfMlLpuZky9vIkfMtwEX
ii4DhW4t4sBcZI51XmICR84TrouBj0RC8S22vgaOVQ3bvq6S4AUBtSE49fDSbw+qil5WIxaxhs+V
oVSz+RPfLN07+Y/dJZlhDqPKxHddkxmnKraSMTWDzTTHF3I2RUVpFea9YctVSDXIx4khMTA/NhhJ
c4agaCOzfmBuKQcSyxHI/KQCk9cfa3t4QSl4ST2rVe4ODJDhchFFbHceDOm5+lVC0uf8g5HEEu5j
bFPj9LEy/wacEO4DTiFJFIs2RJq8pLt25MDigjlHeylvwipQGYPy0FM2dQQmp36C8HvvCgl1lVZv
X1CvvtOzC7qLWaiGaMZkvImIXSuFAkYURUSIuiljCPT5uXq2ncBRGDmaapoYLVISjZ30iIQAp2ys
Wy4rWFY9kHWEoAN8vLp4FGTiDA2FRCIpwBLci6mU4oMPtJvx9XVnFhA0Khg4EvhbvaFar/Qrn4lh
PLnGfByRedbFnSC/3AovRsJVTrR5WK8m0UgiLR36cSD1qzI3gT3eMg/S04/izEX9Ry2/UpBRGsX2
NCyLz1R25txRiiAE6OIb8u0N7nGR8m1LBPodaq0Y7kLW3LWE8NbjpixYwf17Fjd/DFoAum3MYFL3
FGP81u/fx6TNsOPYqr+M2icqNKTG9Xpy4m0s6CBkWy5GYxaw4XxD2moFezFQzBNvimBVSFx+A5rS
ProI0gW+PRETloZU9fwyVwPJqIaH0oW+A0FhdZalbkm0G6ckjkH5wVJBLazWFwZqaKaFVwELtnQa
bX38Cq+b20HPNRXlFMMRNDKyx2hl9lP4zAc+ZysDRFK52MRsKgLMKRVPSfaPUbMxQ+uUD7RgdL8h
v03/tGr+f/30tGqCu9ULSNXZuOkAJ06xqrvdk5ZWIx6Y5dVXvKTnoIeGpIAibSFVkgX5XTtmtlOo
brs8uWpgtPair5pZXKFswD5+kQK5wJ7noz2cr7fH9xM1ab1u8Q0HLPss49SOihrqo4Ei0UsrF/8Q
+TWU77j7FNLYW/ueZpMBMqDn4XJYe3AU6lWBZcgT2JHEua084vU4MMLyMp+Op8UNQlhEwbfgKQe4
3ozJuwXHcUlpa+z6Zo2XvQnt80lIYKof2cBJpb3olMl4iVzv9nSzBSXNgNavtVqHDfvsVhTCFNpf
rNrKEpvgNMl1/jbbNueOjqoBKz82HS4VvZ3gI1dBh7b0x8nDIPYQHUv3N/FkOxdwYyXQ68vfx+mR
r+XNDIQtAYY0KqLtjJWNaETa1vPwMcNqDNt29RV9e+C1DaLkZgBS2g7mD8EBZutAqqn0xY2m4GNy
fgmVgf8RyDpYQgSpTH/H/gNR5+zADj+NQoQ6owi/qU4VUa/4mTHmlEz2T44OtM4S8pPp624A7DML
Wt7zVjeU5NFX7RAF4UDwVdaawUynYCuQrz2T6mge13gRNCFIfTYs2FL5Uou1aRkDSBTLxyByFggt
RDeJ3WS4URsgqFRbYmPASIS+MpTmtC/uinWrveDFlWXN2ZQ64fIIsk/X4Q2DIaAMRjPEdWpnk7gq
UQrEu0Pi3LdrW2SlHn1YQhYCLyxaytMbdX/gTvtkx3a4283OfED58rFO/Y6uoVsZ1ZHtv32ihvlD
D5yHDZVm45NaDRrRwAm6bfKiHTfDYqaqV9PdDyAJJts1iy6CtRI5+PUnWxrJi7ojapY76S58cepo
YVnpZtG/OF5kDeJfZeT0YAMJU/Nkq1U13MNvzV6lYSBZ6fLlQoNYpt/lut0rV7EPToSBWPzPY9hs
v1hqUTes8pjwMVoF4hhcRNLvRoWab06HBsMngWDVi699WSEKE9gMKc7x4SW4/6qhbaqvV5/kjQYj
XVyjjAPmdBF702OUQeBKNRbjcw2eJF3OCI/aonrPtWbaincxUZEyIwRJxZgnJ0eVeYxNoX1CypwM
skBVna13GmN08iViunjI2r+/pmSwMhKscPWDy9xYYrSUmcL6YxfVm/cD9MBXxQENfYRquHWJKape
MwlB8lOPqaCxEGCnKipRDMWwCoPjR8XcUAXUKF/rNX8dqFUAoWAKBxmpoDS7TAh2Voq65mY16XBc
71IiMShFhyjzQc8/5k6+aLnutwGneBI/L21McP4OgoRXfufEKQW7cdMTc+7NuexRnioegtSLn0/l
K5abV4NJjJPg+0OLHGD4Yc3/VLACKD4ZPK3nClOo2vqBmJ1Tmewy5yjL8WL6VeiTQ90md/pa57hf
x9d+8FwfWxggXjVxjEMU+dYEE9g3u0QjsDIStPw0ZUTM6HI1+S2JAWGDOgY/7X6LZWJ/2k72EKHv
mYf67jBxZlsxY/XV08HWKeHS7QvedyFvVOU2XV19ZD/Eh/PVUawU3jfZ/NIiiUxC3sJHcoVe+LuT
VwTtB+03xb/eGnARxpEUousNJp4iv98HlUJjpiwogxTI1ONM55XGHQlL5YLSg44WfoxUNsSmgaRg
U0FexbTrjgOrdU9et+Vzf88Cv3TDqsmJKqAaPWWVqiARLcIYYnYHuX0vaoM+HJ9wi+1st+6iwa3K
1SrfO54TLXImddSe5abq5bjKONq8DHOUaq+K7g9W2XF2xCusZDJYaSteKvAblDq18kSfUc7ZFhcU
qbOo9O9+Rxi/7Cx/g1M+qGRWGyZoiDB8WlBGgUyX5POyfniUy7GuE4jDjL128pkkEgL0pq86cwuX
rZvkJdKWYfKoLd4hr69O+2W4cJ1AUDxj/Q67gh72dtmFH/wtKJJKl9Y2+JeVhusq910BeM4pVbvz
X3AVUv6TmG6mYhyP/YJB6+ZlfhdvX07Wl3kTlHmKBCx3IiieaaXdoXS4/FVUOcprCcX7KNXdVd8R
UM2bG9YwddAMdqNK6kmqHvnzUTjKwhN/o2a9R7/xMRC8CH3Aot19p397RBgzozPWhXn4QIurZs4o
UBG922/zYMy0N3DTMAcSaOGGcf79w5WWeF0XUexfSJdMPIwCGJjvOcqKAIQnYKn+Abo/wjORU82e
4N4+Bz3aAUcdvdxzrs3uyf3Tf0CBFj3w15/fKhtb6d72SwIdp3i7thP4i7Sj9Gxbq4vQnWuH4eBv
KwoYqx/drmYuYHpISEU1JAMfVC6QTTeT0ukJatsYxsCYq0z+WWxoHHvEbbOs4lszDOgtB+JqfL1I
LdlXXtVNYOJ8VuP4xbk7j3k7Bg/BCxoyMazENKIDnsE6HvdQ30NNdJtpfq28zkvKQTLVQuuZvV5Z
nLaqkKO0wJgvRYqU0BhhWUdy/IYWjqUGfru7ED8Da7+ntaRmvvnGU/5FoWyhsic66ILq0eGJ4G+f
LcNTEkM1I6JV63cTt5OmHeWXkHOsrLYiIngJU+yAQys1OQmRF2ryZIyF+wuf/cMZi8dNSFEr8Rkm
Un7mS/RCf0Jg98Lv+LeMt2e4Zy28GrdKWAZgrPdRFzeg/sfaU5qRZLUZQcyL9XcGof1CLJFHns0e
JzbQkvvYpFJl0+FrXMAM5lzkLdVN/7sIQ6nkgUW7tmBBGtFSdoAGHQzYr1b0g4fOSSDlFkuUSrmn
88YmSUKcN34XqriNYoiEkVanlpCse49BGg8L4Xbnshzga43+E9gSmGDUnH4YdjNDlrOL7kVKZLK/
3vu+zf8MfkTByPrpddD53CDhUJBsgdAik6VwYfwnvSajk7qQGMqi3+jLjHaXd0u8YYf4SYgaU1R+
lSDvbNG3vc+28Qdk0Tebz2zMNBFf3IsauJA/edgjB0IzhKsyIW/OG16aKe0Bhf/TL+rwwDjztJng
X6FIKKeVZw4fwHt6MgHJ/Rif6XJyHsm/aa5vWX/uAjbygUvWUzdDd0n5MCKDdEEEBxezfawNGMUJ
VpEhLQMzbn5PAaKM8j2s1mfznctEeyqPk1FlCJVSVdq3NClpcA12Q+ze3rtvXcoBwUDP2vjICbWX
LxEKwM+N5OtaAT0z+sX2O7+4b6QzuFN6U5HUIUQSHR+8+UHY++H/IDBSL0x5Pc8ktXj5e+7iMM69
Ycp8t3/BVVg8DNVHwQUuccsF2Qh8REViRKUjWmHGOWA9Du+OHkFZfVof0GHDmksjiZrlvZ/Pg3wP
4fOAZrjbqDzeJ5yqKvGQFHkpakkP5Ylwp/reqAxYiAkQza1uTi0e+cNkHg4UwgXnb1QT09ZPMuti
nhS8r0EKxzsZwn6mQWBGb1YBiTu9G9nBzYadHx03V3g4XWv9w+kL8jx7A9txCtKudSmPclJiIPDH
b42mA/EEUD4UM+o4xMGjYEvaj79SyfppQepY8Ws4oKfD9aDnqS4RngqV3r6AyfAGzMzDlJIlUW6t
14WS7UwwsUxoPqY04rqz6jya9ofw/TrcEL39Ely+/9yBNnAFA0oZQ0XmCsxfg+wR9tjqmk/WKqjU
5WmsGQ/vsnVIQrp0B50octst+krzN2cpaBizFT6AM7vSloYdGAzOcwWnysHICNsikyQvjAVoigYY
F6NwPOrmJ4oUtoHJZkg8oG/nT+Wec4TsnWaD0l1FULDelnrzZHkY4zZ9r0hGgw2S9TePcaY9EKvU
vuvxNHr44xTgjthpAhTr8kOoaAFJ7VQ0MY18p7ZXxDGTYiWB20K1OFH5JqhfQyKxmfCZsAE8RYgL
fapqs72pKBALBvn+b8tRX+l2Nj09JcXlvfUe7kPy7osd+K7HMCZtJyV6ASLp3+pZP1kIzNVePhxt
P9Rt9MRa7fNyhjlw4QceF+7x+0ocnBQGX0BR/KB1rGmG9QbbcYepjbX+OXEUaP3TciNiwvw8I+gM
tBz9DBpeKECajOFk0EHx0kNWtRqZGyQdz9dwfJGLKlerI9axis/M3e4p0qh4Di+SVoR5OdmvtD5K
5uK+8JhBU9R0u5AnKsnlgupU1jW+YJWeqgx6IJwSCJbFqIa8YAcSm2kA7QauY6lreud/4Q4Q1DB5
OAAVAaLF562FD3URginoljIDAyHtdNgFvTb0iqSGQapVG2HsT6+6bX9bNZCuknANgXUupmAGGKlU
TmY0FHhmDdj256HxWsCgh2f5ch5jZPImdVwpWG6sRu/E/dOA8i8wehaF3Gj4MJttpBTjb0nQEMY2
/Q15j+60VI2mMvFFO86F5LZ0sIyV/Ll05OxCpnO5Is2RwXHZbdScCynfTDhNLsLKR7THRFkZ1cuB
1TmOgACPds+3DI4dGQdU7SqXaeQR5nk0QA5u3GCpZNAKy+ZQA+4dguiTIgXKvvg8QJSIG56N/2m0
aPhLPNzYp+sd1n2fXcj28xGwEEAsw4dB0VsU+9hR4FjsN3+VgqebHxYaEKXnFl3+qrRLjVgh0Cca
1tvhCAkRKD5aQzQA/itG1f0ufGALSxFEUROjIIZTlUxUjpa1E1ymDdamdPtqikB540uNFHia1wEC
qUNmUh94Gvxm2njyRdMq5IbQa8DxKpmsFH8o24POufuddFUAeQwSD7i+oHytoAhdJUpY65yq8TJH
gjSoS/U7kkjnbriTfFNPiKm+Q/58vQ1I8OyiUWqkesoWjScayOdR9YTGYH69d8cF+RUhQW6tkE81
57l2e/wIw0RfnkB1YWtzWBh4jYMAzRcFXp6nomhoU/2SA544cXsUAyzSEFLaYoQjayXBWimLbF/I
JAkdX6bYuML56qBqhMZKv++KYZVBsV2Wd44vQz74YZSZ82Q44rtdey/KY17BKLYP7iCiyrqSaeLq
Jz2/610SixgKnzeT0ujsnLST3oprrdeyxHva6f9YLgahhLJP/i5Fxr6Tsm/uep6IkYU7uBmFMP5x
dR72aB/BvsETA83CcjH9iE7dhdvOoYnWtCQj3Ek8I61siW8Vo6wTdqpywI+5/793bqclE/Jm/Kr+
FFPtdFS8LAcD917M6yjk8AbuQ8jOTDYGRuo5Jp4SUL/geihCtruFyscTzHQCM1KkWxYLk+LTHTlY
wiJNI7/itlajgrW613bG2/49OPZPHOan/iWJtbV2xHMykTqYsjG/oKrn0a285W+N2JkLbKO5tSic
BpodxxpTpjz0ZabwFVh5UXanox/TfAIp2XhRk8qCCLrqNLzQl3wa436KAZ4GuAk5eZy5Urz0b1vS
LdLaP8jdIB8+zdXHnyYPp/1WLeXlMcBxCfuVKcLytWJG3QIBIDnDeimHS16UuwhzKdrWh9v5rq2n
VvZ9FG32RMVnHlWTv/gCceQiKg0t00g0CPb/JniesEu8Qw8vqXzc4j1Dv4uxM9Mygrlw2eKdIaLr
Tqgw5XpddO8TxfaeqJjYmd0mN44u93qJ0RSVh5+98r0JANQL6rNOw55LsL/BKPQ1vMfsgTBIcmzh
QSFrpqLIWlL0fpAvyk2IcbeLkKTbYCF5538p0g77Yy2elrSk/aD0vUANBISxXc3GMwfIH+xZd5oI
7qsVRYaMaCtxtOk/cYgp93cMGCmb0wqQVt0+jJh1cGhOUHqJ5B92yw8W7VQxAOwlGKVX+BlbwaIZ
diILMOZg7DNuhOdoWS2phlShcQf5K0BcmVK2k3n3cFQsdcFJyWRALURITNvrmm1iREWHn8kSQdrx
f6DBzT0uAS6qj8oIybNYJVCv7gXafddrFfQukNocXCwdEeQwLZ0AL5oSmzLAR6x9eVAxXNL9GQGP
1yZ9JUx99ir2G5sN+KSrOVJ+0KfMI3qJmBa9cCL0stoQSjJ7rsUqptEzQ6fmTOkPUMhtfhrM155D
bXr9lVKaTYdNuGvuqLuRpQxaxSf1DLH2Nn5ZQj8yLc9aTUcPOl0WxYoONguqDpGTXwooBrQzI6Co
1H/MWc2mQx6xGmTPSrZhojYYAR/wpuhuIodIaJTk3IXPkLXz++71WYlczfWnaeJxQAf5sgFgtEIs
iV2eoaYJ0XFVuI3totSnj8ZfZs/QSChekltN+5CZkL3biA6vQtlwWuMeSuflLZWR5V0v/7Lh/qxg
Z2BWqkMAA9XMnGgk6WwMBfZlVMCTfqZSte0zXfqrmvbgU1YwgW+49zRJp1ctejF1G85Hr6L+2p43
X3nTM+qj9bVxYSuFslWgdRprtrQww7C0a51Y8zvrLQWnTY8UaNFx0zfL4z594yfkzxjKCWfh4ROc
4R4d7lAVyXuEevTYJmINxfoYWfX69QuOjBjYggR4Qfcs+e7VjQ+X8mi5Qx01ENBNVOmb/rwi/xLI
Qw+A6uz6QoORw62RxXAymziHFp+ismwLgQJ+fKLdrG9QgTd5ZCbJP+pcso88ELCWej/m+lOQV0Yk
Kmp6PR8U9/zwT1CHQpWhwX7sOdjZmg8mykXZGEy1Tq9Vt5Ys7z/3o719qv5uMncbK5my/hfueI4t
fnoyTBeXeX09owPVm6eI5zzc5NGAzggr29XAGQgpFD2CxdXKz8k1W784lKz7A/1q+50zsyFdELYJ
8UrehRVpcpT5a2Fa8SZsXPZSz5l6DI8OJrgUz8oHMUZGTErVHEP8AmhBTtGGupmMynf+/TVViaoc
QlPauMXMnQFbtrO1N3tHWmUxsZTflyGHNdHVgrxiUokRk07Bk3sX/8tAwGCVaC4lBnbqk5g+wTwV
stQCb07NW6N8VswrbRkzKe6tXUExTc6wmoLw+2lLI62j1eiY2pxOP9WL+Hdj3J8sFAdfAMshmbn3
fNfX4F40Fu9+vdARDq/7SwGnLDcbwQ5K8Aa3fdRx7nw3Lt0MZ5+fQWoyouCfTGlMobvpOTYhWG4i
XAYAwjEX9FcekV/UPuYXjFQYzxCIMtKkd2wj6o9CuLXF02JzCCL07cdjSEEEbSHYGKwZnx/kqf+M
GnQTXnsWLGkmg/GUE2VpnSKDfvllpJj8qB8lOxoclfAx4nWed8rEaEw5x6vuvr7+hEc4mUS5EF1e
Xcj9sTePO+nL8w8mpglGhWViytaGqnkOoFP+L6/dMWaiJsL36Ke9tfDcwYPaA0q/y4pKoE0Ps2QH
wByvsuHKMb50bdt2Bw3OOPJs2VjpRquaKiTdTRI1ZlnTbgXh6fTBTk5ZFx8w55n92MwMGIPU6Un3
AB9ofpl+gl1fHyuUFa4C5pEAFmgh8PivO+/F1qTfKsDeLBn3XiWx1UNHnm78ioFEXYLVfDer22Dc
iGtDqfKYLAnXYxOqV3WckGAgW/f/qaS0yo3b8DjAw3GAZBxpqO4vBjHTATKZZW6O+CXpIfpkR5GR
ywuacMDQjrmOIfheyGMuXG5o6BDodUmVfYjknHugla6QHTVgjbktg+zmDwqV0gJahAqSe/MBvzNh
lBOI8HmK3EYq6/D0h1GX1KNfDHl5hGgJ0l5yecZ4EqkC5Ct7GD9OyW0K/cJTzjkErRzv5M5O+kD8
tbH4qPSXzcQnU99C/2HlLtnKE0q8XILZY/O+dr8V3O0Km3LsznGkQOmejBqlwH9bJicKhKXWbbMf
rJWTBqkUwSXFqqXbHlRvpBKMURUJSCm7CRg2POYmPJuBHb+8om9Vm7q2YAMtUqPbRN+KDL+EOp99
zDZX9QLtxqQ1AH3mqXfzOEuALk+1bhK0tcHSanfNCRRrDMhfcVpQTNKc4OaLJB2JNLkTFgJnta27
cbyA4e1CM2hHRF1LTes6HBnVWuXQxUETa9ykZvcnibiG+B2+lnP9402nAtaHjLX16ob1NGXgThuu
BFgflNS1dKFDVWe2Adz5NCwebRhz7H89ymFKpN1ry2CM8yEB+W3xuGAK5W2iJG6WqoR6qlaio/Nq
A/DedghLao3VCms03k2Wu8viSmX8BnYkke9OhcZcRjSvm7LGypJVCugxzJWpCIXBmnU1BT37S7JN
9DRHWA1xOTaeLGz1LjeSz2OWTgn3dXl29hCxkMZ4YROYi7MLAbepdMz6rSXwXkToKBwhXZ8ICDjS
SAV02XuyRnMtnSvs8TiTfbjgoWbD/10a2R1+67UYgfV1A2KaU+kJY12bwvIvqIwL/3QpSKviznc2
eeD3lEMbB+CEqk9NT3AMfTBC3E0kGBxbQ3H8OGvDwVxhgm3K9hM3Z7c+tqJTFmEB1eVMhArHs1Pp
xP8mFRzrUvZjPHbFa8dziCTOuhOlDpKIi4ADmSmz6exZaLMeRfPOAK5osKeZCP7+Xis7/b7dhJQF
tUEIe8N4qT+6OpAaIYqK6/iNJcBXR6KfMtgjEIaZIc6OGfU+fq5v3JburO0whVvOg7oWAlYNha3P
OtlQFgRAUVioYuUghl2KV4A5s/L/KUHRlpNoYx5U+fh4Pwoaoo32fAGh9NWFruuWUQLA1xMNOjbT
inc1/TCll96X8vW72h465IAgjP1U8TphlEXpBDV1PYyY60hvYfnZ0jxDTlUreRXoTSaqJXfQB8w0
+v6Q7WjztAY8pfZcLsNFGhmkoAXCwxc64iICgF6RavfuaV5Wu/LXwjJjwho/d0GYdRvuOdXBBNgy
7T8YL3uhHRLRD9vTCYLasmbk66eeXINBraZVo6tP8Ujj9aTAhA9rkYtpmjXb+GBPpPm+K6qlM4dZ
7bc9hjo2IjYW7zsCDIuQKnSqKnqP8Q+cAbe37pt9s9LTIUJJuLJoEKHRdKXCXfmZppih/L6S6vjN
579VPDamg/Vj8EBN1XlGM8Y+Ua6A05gr2ZOFpvtvFgZCwoO86xiyZXCEmra8VZHKFjAoIZ5fKfV9
UX3wU5gs5kFI3evgalm8hzglrJzSrZrwnpa/+WQf5B/El/CwNnPz2AGOGWWSjaR5lhtppQSWGhpI
4wAuTV4ekz08fzdjzBEmiwJ7orhbOrLzTbgq7YV+7mspkVjJry7gdADb+oy9Jb4U4Es+orkTXZZj
pD7tg3xX+pOkxFYeWLSfhsS57oE2CLaxEmNtRXmG+9YlAYB91VIw66xx7fp+hIqp4IiNWvpTsEk8
47LGBcTpNB7yskKGbkCkNThysV1CKFZO9mgIBFy6khYwvfvMGPgoUb8zHW887R6784yvWUUC5mQn
mAo4acYyV6+mVKai413mqVtN6QYTpVuoct+DNZS0o71j8T86ejC2N4NUdw+LDjvEKwkW0ND91DDq
1T6Dm8LNZ7tn7x5oKCfj2PYNtYZSxGs7XhlAahG00y9CVjCDn7Vfj456NJtxTFeREIR5B6YY7Tw5
49c+LCN6H9AwgiM++/jWJ2gE+ojBa77wtm4KD42+a7ApbDlVOJGE3KJixM2WjunBqOtHgPzlmOQo
2oo2AWLLZ9YZCMsWdWWf3/lpmdNU9IF7LNIFkaexSYJj+20zetKpvk2usL6QY5kqLZw8r407NlpD
KoFCG5pc8vjroRabSeDSExMJXTLFK5GZ5cngos57JZbGmrT8vMAEi7JTCUDRU5K6fgQ9bSYFYjio
bsIcwQuxrRjLfgXFOwqSAaK/U1Yu1re7yZUApG+ZbR3rVvhwqp4/XQQdBiTfV05JDLT57b5J8WgA
NNVlCIo65nBnoy714SHKTf3nwPzx32iF2K8V2vx/aMhWBvatxOL3ybqNk0KsWeTPLt7iukaZKY1b
/rHck2ggrFgYrMUGsMxyE5FIbvS2PdARgl5zy/TVe948PTKnl4rwkefW5DgNmNw/kBtMjv9Zt3uP
3S2YMCy9clQmnR9jnjAzB1eY4hRROgF9Y9T0DUsNjoEiRYzIGrzPLiDq63PzXwqF+xvKx/ge9fT2
7gh57ibNeNfmwrM32r7KOgXgYHSIzqnfV8ykW1Tz6jfhu4zqdlepPRZTdDVDWtRSko1uo2QDEJJo
FoXnxO5rs7p1u9/s/VTlUX5v4oQzpIhhQAHpcW8UEF8yFG+O2/g355GdjPxe41KQ4M7Sw69Lm3zB
mcF9G6U6fNnyshgGsu0vCqBmquKUSw3kLCL3bukvc6ouFnCF5WwWfuBRl3TSREMwn/ehuWZZ9+0H
SrhyIdi7Ps4GRIeiadyzuzLbeUReEYN3DbOoX+ou5t2yOWyqqqTcKR8cmG7pUFYqCQm5sufAopfm
B39//a6dbEMs1WPVMUmlVr9LIW1j8lHnjWHQAy/haM4MupJxGULoVueZDIeLK+7YmI0DIOWJSLoP
XZ/IJLJW1t0b4H4j4Ahps2P93dc5bhoNM3ppuPXQoyfjMdTWwrJ+tlk9rN6ukkC10Wk0UKjZLLkT
ucSmAHU149s8PhMr6bn6QPGYEQ94juFB31QfAFw3FikX+zQtcqf6gQAQe393MlIsf9m6FVg3mxqf
8J52VW+bH6mAaShDa2keDZAbYqUWpmqibYsFdTTx384a5MN66UpsxMDS6T1pt8IF4tQ6k3YQdN/0
TAZSzHRFDVyrHhc4oBkWzO1NS7Jnw6brZdkaK4ZofE6RJlVEj0LDP9TznufKunrWT2snO26CTfTr
ZfEbF5Ru3p51hyU6qr+fpHhGxOnVpnt86R3DPbRIsmb6jVYR0WciGoPrD3cgc7drPzg1rY/XBpa0
mSxiq7Bm8Gf6HbZYNEJC9jEEPAresQJEnsbsDIJVb5lqKqJa4utG6VcyqmDUpRCOt9nanlib/B0N
Ybs0HUz+LsBhWtcEZ4/MckuOxMlsBVJN8iRhf+4Z9bklixj5vz7I4arEC/eBe05P59HzvfXw6x+q
TVEqmKUmX+S26e4Dyl3WP/+Ib5g3I0VAc382gDIavMryGNH3hHH2b7yR3Zrz0tgi9cND++VNX+lY
TpbooNjmDZjTADJJtOL6bRnA/RmF3LHd0JeRu1Om6xYoMqaSYOZc0YYo0IVKN+3UlJ6prYv9qcpc
6WjABTNqdlZL2HM4X08BRK1z/wN+has4M7DO6lYynPvILXT23/InISDV5WP40TX6f9mQxwGQNiID
lHwJH+B9iJL2Jgbx6/crkOniw8caeFpLOEJXU2mfc5o4Q1clYmVlS1NGZr5yYXc6xL5IbMjQwjaT
yyXRUzFYywblimPgzzys8RkH3Z9/4hsWz6Kof3WMkyCWZOkWgAbt6GVoOxzpetUi/4l7qAnUhyxl
Cjlf4KFUuyafFcem9LIcCj987s8Tao5RaJZ0o16BomhKxbuswWtyk2Roz9QA5aHo0B5CIoIQEzwt
usXV8h9hlIo7xd5BQI+PoSv4hNoobM1a8N/bns8tvCWva5gPTJH3hUo/6XH5cEB9VwfTUDQDZAAW
uwxTcSadyT/RgalpNUpzw7mF7N3ULjBf9OmGthvG9peVqq+MY0hHn05qQwO6T9n/ZvURtAXXlRo1
5eY0l7fxaQwTRx4xJNPEfniAaDrEy7LlyVuBN6MSpWfrlxA4DByiRqdnSkc3niAB7QjHmfxDvmVi
J9XW0Pua9uR4kPw0gXiJ2YjviKrwq0HECqb4JUDDXLIBD900In2ax+jw8aquhx4+wmCNNYVDbM9l
w4jLkmVVJTCRARih2pSxPkMd30mvzWAthat30KFhkSZ5EQrttVn/P6L24Gb8b7J19zqgT55PT4eo
9AcRYV52sMPFua6a73jwVDjRyAIjYc0RiufGwNOtpHRIUGjBukT/iZ8ZqmEISG0KXeuG8C87yQyy
FjwqzN6Libk13D6eXJrxWYHPhusSbcprqVIxtiJNJUGOqvxHI6M2askVUZf79MPCRELFG4zXmmwA
mEyRC9W5eIGIDkAwzFOEhATgnyXrt9QXnpmb1ZKNTOOCj2LmQb3cLe/FE6/v4/pA6UHzOqLOuoNI
H4U+y+6TDBHy05b95j82k5Qq+44M/eencM1dlRKgM0mUJRkspzmnb5G718f5CqHobjFWd+gRmUdR
TxSjWezd6smhGbqlgfCnLuBC+zwjrNz26JuPkmZCa74Q4M0gHm4Brj9y7nys15xoOGE31DoACetH
Pe8yMR9raMxqnsKmc5D7Px4H9hq4nmd8dUx30gn/x8UghIeWrFqGZlgshOT3ICYNtp6Y7A/hL7Kc
8NjoxnphApnCl0fRlXg21WK1ULXvNuewmfZdc2i62QmPBFS3dBsarohh7lpd/iktcrNGCwyNRu00
mtqhcLhiRD5Uj/f6WjiTiWJOyW41OLD/SGbjHkYDRZe+cTFVa3xRMa6buXmHz9ZMaYLUh+R/WlsK
LXo9uri2ynRrA6k/fk91jQupKy5qoH/k5kXGx2pra38C59rvih3++U3YRvviPSP/+9k8Tg1MrcMa
yE8WwC9EJsv06x/LSMtGUKEUenoBqyJ2erUudJLr/ee9Vido0YdFSD/lI6xkmA0dYCFtb2Vy0Rxw
9tpIFJoj05h+iEy+9hblhIvgIPPmG9eoNTsd+g4McTq8mYvMOvoHZaDsdUr/neP21gOgX5E8kkUH
jcI6SRWXKbr95uZaaiIg+M7Zbgre4P35cYOUc0htkHuZzBsHlSMiUyEX7eq9m1JImUEyEUvf4zCI
Y07BjVSFtOM/+pdJRJa+7i5PUIm0Ei5pUlzn6ZwyWrfSpS3CsdjmylpbsoUFXffZKxBSE8pegusM
pHlxeJKUulhuNL5Xc/JzwH9heP2CUiTXTF2LNcSfgn5+whyQ2c4quXwMG1DrscK0hSxjgH8QkEkX
Q/5FUQO8ZVnilNtphsw6Hnt7aPgKlwS7wJSg71ZRlhPpCsO4aahWCeTTcAJYeXMq8XsMvUYHpFtP
BqOZZCkjXOS0fFQ/e77kXd/KQsRcaWUb7LaA431kJQpketSNlO8GM0UYdx14ezLBXmvkJh1bLGHN
9WUrUZ4iYz2plNYen6tdSQwZk4sbTGNe/frVXAIUjGg911vaimZZLWMWtHq8I2+uqmcxBpuTDB6S
ExuA+bnyUSEft+mJFNEDMXKV3Fk4zGVK1/ySwWfFUxmbpUE/fe+/2QUztXs0wfNUIJVzk5I5z5Rj
VMCF/xZKG+vw9fKbdoZqb0hcC54+PpKcX02xPA3pqPTrzFWsm9NWkHmm/W2acE78zSmWdLZCJjFZ
R+uQnqRRxdVKY6wSkmO/51eFRnCyU1vw56ZT6Qnm9EuJWAPG/C+AI9v0ANk784mpLYHQlw7cc1Cc
QHcN53Xbw3uE7r+zM39dh5wAShmikbL2aV09a57aUs8zxpGrsYptCFA6KxT0gPCDeVWS2pmvKuhK
62y2Q0Qccw1aaveV8vIeX9VYQ/WzUzDDmPif4081By0OqrRZVb/taA9jCeb0UtKMPt68yg5M6BUj
XQ57iUNU9XBA9hdhClA/qtbz4aqhYUpbTTAmyEoiEN7k2e+blcD7xucIr6rBvEjM97jXB2MLHkzx
b2IcE4n/gYx+O/eTCCimJKX8krn5/MJsJ+gqdGYrl2uZ8dosaVKp4KLmlIDVkxoQ7hwUDe448sJX
LVCPCySJVSOx+eSvKCPWV7JlbNb54caaLeNnQVhcU/HQKWoXyS0/kC3fo9GAP/Fkpj3/gpIN6bHr
flbGcx3Sd90hO5MTgzlg1BNAj419J8ObFkgk9Qwr00gDgZQkVZRqTnoSiMZwxAzRZQ+nhOBwgRJb
gPFfrEYdNpEAxZg8tYeNYUDnrztWuIH0qvIELLeY5krdl0x5xB87U/G7Es/GGr53Xgefp2FyUL6R
Z62+GyC8aoouQU6AzqPvNrokwgL9XdCc7qtfY3jL1Dc4FOUocKZtB5no+70SThakOkCSrOPKPmRO
YwP3Jo1BsOhyKnTT8LK3mc5NwrtM0j52h2Xe/pMTd7pVWIVB3QNi5vrGDbkSCO0pQXwIUZIZLGq6
9vlYgscR9sC17xfhWTMUiI2KCWCk9eRY217XAqfYB+zw0Q7CG9jEenNxYfRPDY2JztdEXXtK+L2A
08nWDzFqRqUqWsbhm51yI4ermGp1PUODLfJcpbocuxtTgeFy5EqESchFImAqOlTF1T6V6j/O/IDn
/NvhPlhXAmisb4Mv+LVEK3sL10WoXzscIEaa3HrB/0l48foU1u5dcWOuvmrUGv6TTjBwUtKlORFl
eaL2XB0wLpqLKXCvJr2VYVClSM5DtupdPNpQf/xmzTvdcMzKjAvysij5qpzvu6/wlz4FRxXzvGgo
hNB89Pt8/82eCyNYm+29d0OXSif8R0vXOW/9xLK8vy7geR57WfnhpVyhw3AxwSXfIMrrzOO4EioL
gq5lAuG5+rCD61pnndKjiQx1YKtDJUIiEl+bGM5Ul8vgMPTfgqNteOi4q1hNewun1bnriIifdRk2
w/3atvDmQwGP6dy6MaGtN9W/UyHRMGoUI/2nGRVe1dxGq3FANS31nGIEaS8cr3CghaaweFWxdclc
5j5cuR+nyVdR42ox7DlrD2NLl6dQ1hyyfEF20A5/QIxjstmlsXDAr4I48AgjGU4xnMbjNiVgP38J
Vw++OGZiX3xMDKDXT2gAAn8ltL5Z3/aokafEHzUWpkvwQKQ8GkfEfShViKnht4t7Seo5fxKyCk7h
3S1IXwtAiQizUs1WjPHR5Jwv3VBk4DOux4H61PNtyEvyawV+WPwNg3PKNuGmCPvYxDPVh77K6vi7
EqVOOzMtC/9hfQd8uKr64XTycuFX8rxp8zz/AlP3G4NgRNp2jV1vGDx0Ch4AS/ta/XWClKiwosQF
0eJedO0LfCw0Cv1oWXYGXjeao8pvn2XoyprHHCVtyvg1/vuX/dT1W7kffjYmMmD1wWhp4DbJ+JO+
99yKA1YdJ5UQPWXk6pGvYHPeIxPC6Fv28YuL6ltG+iLV1pl58J43Cfg2e/Hr7KIeXgKVOB7J4QZa
ky7UkI2yKRozVU2WUVqIJOvEGTRDV6MTyy6mU+8SM0KWiazC3YnP/iL7hJlfHJ28r2LysxSVikGZ
crdLo8FrxuziI5mMPhvUGmmNvTLiczfPvvX2gtYYl0s64/9LVHSFY+yQXK1LVCgKO5cs0wKIwvif
QIb7Rd5sQsy36czuYbgS6Z0AgG25cNKkmlD5Q7QY4eyXRhgeFquzG/vxzk/mfQAHUwCfI1gAUCeH
zcP8TNbeUNdOee5a88Uux7+87erTWsBv52xnHeLgAcNaKwGdqH+dVLVNjV9lgXkJz/DDi/g3vITL
8GWZ2e2ZMTp4nnwWv/zLGzzq5Ffve64B3XrZv21cbp3XQfswWmeiejFHjOtwBfJIf4xfSY/WOeKl
P5v6JbhK4NEIlYKMj/a7XsBxYJccA9HLlbocbSXHCHtaguxfdtAxjGcHoAgL8uqgxi7LfYaWNAah
1+1LEjNFHYrP8v4Cg4zLDco90sNsbyA6L4DFD/ie0Qd6IpOmYgSnlZJdHA/XsNEwrzGB0GoGyJU7
krBDagMjwGeXTPYjmc/41Z71gDrB7WnY9dX0Yks45U7NGFjZyZZDYePHicWvhttXeX1DLBM89iDY
16swp5+f9FDnoPlkp9xSPQMf0E2N8EuiNKoUh3yYZzR2rExd/iec9fbQDgQgffQIEWfjJvdImzC0
HGKJyUWfPsw8w4SLLmhZQOMhxInGqoiVsjd5J71ICL5HwrqO5Yob5+Xi7e911c5i4Kq1iskujg88
y1hevF/oQWBeDJkyyu4jbF8lZaJ9UkEruLy2UMe19H+wVBh2Ur+ScoPRae+4gBDEgYmEqzwSOwEo
Dd5uO5QLiJZOZ0y2ZBCpnCGFMu26Hmmvmg+Y3Xe6GcpjNq/F7N9eeGb4vJ+QRY2zVxGi04CX/oHo
VZfqLS0jCq+LzOl4bJu7mEgyeqWTPGVp6Sr5QizGbGPltfZhdettHl7UR4JthK94VQkVJU0faF1b
0vc3lw9Ys/AOQ4ekq8r8Ieb9wziCV5cpRy7NJN1UBb09BL3T74sXSWgm1OVdGkpk9lbADV2YoliO
USHtauc4afNGVcQfC4aUtUtpyaSDTFocG6uHzOKASg/ljVkgnYgsKuJmsWRYmEaJ9r80JjoXnPly
bpiRTs7wtFEkyTG7egnXkk4GIqkL29lYTfGETEmRosFeSdTbo5IBrtZs3CAKEw3WjwV1v11naEPC
UFr2JK3ShFj3AbHuqS5AyVF+8uPtIjhAiEF98nuDoIxkeNQQkkI2J+4Sq2y6aNJjOd7LMRY1f5eA
GsdP9ADDFS/TmYZgruW+BVHejGZbYe0KPV2OKBOTNDlqEXI3TscPNKXdVAcW5ipmXySSlwaw2e6d
zLjgqkU5Odqi1RJTRxRdri/8rd7ZaRMhmMc/4DGfboBSMKMdovVldwzjklQ63OmBqWg2PbbHWOzB
7XvYPFa6wjwwlWZKkYI4BLd2B/Dfe1baiakAv0iefCqJ7HuFpNSUiYeoMxmxDI5XjEqTz5WxP6TN
JoGCfgQX5+5byQ/jCwPbtyVF2pzq+fJsqVjEiehXePBP0FOgJV4PPT9VcDFwJmsWVUCmw7UhAizU
+Fu3Eib2KqKnOIUzR4JHLrR35QayCCxhAezTXX3A3u223UVa300bu7+Qhk/CyEIYeSlm6t4mgL2e
fPiPW+r9DNGYVlj4sluMhc8ZWr+HG3e6Jp/KDPsGzbnM4Xcbdyrtzx3k1KlqqPpFkqQ0/i6veOyT
PrSTVUvKx+SQNpQpz5j9f6kTleIWwdZpgdxinC6xPr5heYZohXrsUByIjOknrvsiCDMfwbMlLQNN
iZ+kqeAm7otGykpLeU/YDvmQAg4lkc6YRcNtOWwUPVR1ADSAYFY1g35V8D1AspX7g0IsG4rZtRkn
1nheqkREOXjkEvMVjoCTLT2L6XnnmEgGtNCWuk7zomWKGdiOgZgqqzNOrwnuNhkCbBfltkiS46k1
Mbgdwqw4ClH6aPpvdukcRrNaQyjzARg2raKBUB2wWSoJ0o/CSxGeFNRMT3pg5q+6POoI2iVF2e0r
U9+rW01UB/FmzF6oQcWQw2ZcJqXUSK4glpoHvXdfo5EzOsk04Xj4ajoTfc4hreUsmp5ar9MIBwWN
7zLw9qFXsSLl723OjpVDfm6RVOiOJzQerE3hORtg5hV4HxSGejlxCozNgcMcGrgjQ1tXnUAJGNkr
OuN7sE/bCu2C6WxppiJGTD9vE3Do/D98fWMXiXkb1LEOK2eYXoBrkXtMeSiIyMRwV9sggnMz7zfy
7zK7c21K9+fofHMVk+N9p0rc72wDDpFkv0JYMZLLNzKMph5nuiA5eGgjawfcsWw9LH4BdQLd/suL
6TvNQZLhwIntCqQRRJ3VAtsCI6ORLznXWJSM1PWm3AmNmelBG49IN1lMEyUKv0E6cDaGe4WQ8S00
FfepDz0RwKdsXFANHrS8yc/2bnZOVkzkVX0b0T9d8eU+K3LOGpcNz/qldFqskBDEy11vfcn0F8HV
wV5a5F2/XOJawYG5XjuwDnqIuPrzqmrG2zsJmWovlBI8glDEfz9b0ZXjWk30snOYdtDOTXpPmeji
EVXAK6f5RM3X27yW6z0uZs1OkTzbDFV8YnbJQISbwolpbTZze0Lm+4R25uot45Sqtnq1kacsuBYU
r3hSayce/QAH+d5aupGBVGDAIMxFMIz662lpP/ZfbKAkxg0NBDyWtnuH/jPkVGOqK0KKWeiVtlEF
WnpeWfnc8dWvdhGU9LidFFuEi9ANy3Vk0abpd6n678Uj52stqmyAftWc4DD4STQ9C6qR2aFlayj3
9dSujirjmnulbxPhBXjjz0biIUqRA51Rky7ghjcVU574oPmCdI6A3g3FAC9uWYVR6UbAWQTbx1qi
WLiMsTAsmR1K7R/ebM7wJcuq30XMpRpFKAwMGO0uvH3IAYUrpKhh65wIDkpwgTSN3fnIagbmoi8W
lTrBXuHYCSnIvrpSSlPQWkju72dvp+x/mkI5hVDM9lqTxsfWmILvpGs6bAVXrXyGE60QG1F5VHMh
hlPsdMVXs3CH/nkdcycUqiegOdfP35Njnv+jQFdDg79oO3/0GGWmJMeDttmzJxvm28GwAvpjjUeJ
ZpSFGExwSZSgz146/HiLs3s6EKcSh8g02GC5ZKrlgViN8YzvNzaK7F/yhfsp8WmwSxdwlCpGUtvB
V+rghXxjp+ai/qdUXUleDHlOGPd7OSnipSV33ju/LpI7L2jyHRLOgwlEaCzd5SJ0xXl6nG3jL0LV
02wkFV3T7g1qF/0ZXfVMrjPck130uEhwnXeJoa2iplMhEqIzcbaQZLuLigv2jjgXwEyHr1do4ilR
27iJahy5W+9WjXhda3fuPazUz+hPNVVWeqP2KNYFVJk78HbI+4rrnZVJyfqCsmLhad5IZgFXagkI
Z+OmN9+dO7tVkghe0JD+/wrTZHVhWgTZmOscKa++nF0NG18gNOxC3WtpOT88mD+Ge0G6Yd0mdwZq
d72HNa8hdiSaEAMRLRJATYjMBZsL2KanpI3CD8EQkXZaMt59USbM49cxAXZcH7/HD566DoIivPQo
lxYqDnqKBszbcCVGlLmBJ474qAJDuUXy/ZQ+g1f5/CLCWw7AahpeaAF6ZA4EtGVNRNDw1a1R79gr
Cu8Gkzijx6aoKFEaeO5eGPC989BdK27sWTnxV3dowXiUzNOcHMzx4RV0+5GHyhHfzdzC0OyUj1AA
qYk3asU3HBJQqMc2ckIzAgnox94pJHny1udNHE83QIIqPDphpDtVmQewY/st6sJPXe7EgTftvfSr
+9BOOKOrJQ5Lpp1X2Yb+Rh5k/KDGSdk1kGw2EnHvczX9JzyGkuDFhZT5j66+QiN/xL3cJ5hh0S8F
dE6y9GFlXWFEqnFQADDcjWdojQeOlJQyUJIkdXaQCzehz3zFuA63Pzh0dEEmaaHuTgqZK6FVooe6
D0CmRVZYSwGneDCSQ4J5KbBkLBQd7Nh80xDyGU2vjitZVWreBvlRkQ7XrYaKF+5iNZMtdAwh1Axs
RpdJwEtUsu7OwhYwpPyN9I7Nvvmo/G5jiwrzQKiVkZqAQGs8PhtAi4Aam+XNwEAjkiEhhfUEyikg
jsI+OBI+Rxy9J2xA8Rbfdfg2zofOSUys5nw6m6PasRnfOtLEMJx6s8WZqXetj+pj0HJYgX6FiXme
FfThWj5947ctPOtEi73yIc3nZdEegpJOx3V75ToyuvRjKfR5A6aaO9bNDAuHGU7Pvn20Zf9CxELb
QX0wxkJ0yJ19tgA/58kW1nt73V5J6GzL6f/XAl3LgWTi86/2pU1di7E+cgv9ZwST388HdfsErpgt
3UCOdp90kPtfllQQp+GHJVt+gRtuUSDcsLtgvEYeUtcT5uFYhb70OKyYD2zbk7J+jUQ8IHubQ9HV
zmrIbeu27/4Mhb63AfbvdKXsyR6hrgh+GNkO61x0FVk//FH/TZbjrPD6GMcqp5TOPTC5m6gfH8Kn
xMxgFwoUNMgJUifBDQZVyFeH0+Hb6nNZAvltjq8/hH8urD+CrXqXjtfo0ldJz+LUgsXVHXcOdtNT
7zwsuEVRV6Q9OzO8ZGm8T6WIRFYXNDtHM7AaLIjzj1xFjUf2plYhG/CzH1UQer2pO4GKafIHmK1c
kUFySp03go/9DZlgo4bOBKKHQxLCACvQVoYQsCou6xqgLfvJSrvSl8kEOnYBV0c17F/3MW/guJlJ
fRwbq/xlGQvuJIlISV391fKE8zFI8TF7ivfFMGUA6dHeRwRnjTNavUFQnw+dnzquY7BMXfpmLw/w
yvmDDm2qoZVEBjFPEbUjdtKGS5ztVajgKXfT+rgDiaY1inZNtrcBxrCnsMAdpmqIo530W/Pd3Jmy
1dLC8sV8gMblFYTA626vDcC9nDhA1N0YKrEjtomtHSgjJItucAtzZact8vCxSsBkhHNHOhswkDiK
fz8udJFlT+UMtmi4JxD3p+EQSFq4J1GdS29PVoFZ0foDA2xfnNGG8WKHgaYBP6kzdtlBqHkjyoUS
eLTmYnIxBmdOyL7JwRhTZ0NOv4Mb4lFdtpQgV9plIGA0XkXemsVsh8eETkA+M4U0Q7Y2dBJWid7j
vA69UQ7myuhjtTVnJyLK3qZhVGl0PKE6KJYOhC9itMkBbZhCIDIudswBEjSc0L42lXv2xt46Nznl
ma8QQvR/TiB7bIEFCgGhNHbH7QZuepnxP91T5ru4BU7qDKVVEWZpTy746QvsQtxEK9Xd6HAwATvA
4GcEbpjH/auOy5bY2n5Ap5+wQlY7axFQPQH5+Us/gtluMOoN9LnxPPsscrbKpIwkdyAPhj8iiFRg
FBiW7bMuBrCsjUUWKtr23MOJzCBskWJfvwDtPcYZ4/W9vstxJcJYXAnMYoqFMkjdDO/PNtuZxSpv
+XmFJ7VHdmNvrDnPiR576ffzfmQNcxrQpBm8atzlRpxlJkMV8+fpWE9aoN9bK+yjAnmHe3T4PkUE
UqYv1ZqmJq4L8lMOPIr4JQvdrtFtjkUH4jqh6LEdU+f+bwKPIovrea1aLw/tB0Usjwva3+WIbzSv
Fv7kpJUIL82fYjwisbNL3vN2L7cEzEpaT85N5I3TojXicNlKILaqOSDYn8UJOM4uXDUGgtj/bgER
YjESWb6zAzcXVfElR0hlNjeUui9qPQr1xIf1COW0fOqISFY6XRxkOSL4anaC4/gFTNuGc/061frm
RmuskPUtmrNCEbtV/0p9FgF1bYXx80KRoFMdC7dOasiX1yiHPFgYMLKV+jAYIGe5pwHgBESVf+U8
Qw2vdLPcMhKHw/9XZZryWPQSInRtWW5UeuAs+Zmtfjw6suf0jYXnDIUhBjXHY8j5EV66U/qtARA+
Ycof/WdVpCwFMwMS16hWkazlitwdWTxrkN087pRFe8BFc5tLUE3tpw3FbrHTVXSpYChqZE3StWgf
WnLIgyyUKVAxBv4H85D0EID6gr9GUyRdbuIbdcb/sZCSBCTxoCszTkfNkX4mGRwMtW1+EKnj/Gch
K8Wj9Ua0vuBjc36e4a6R9vinmPCACmeN4ptwZ6xqeB6jIkbM7DUO1oC80YpTY4VC3RNz1NliKHIX
DiXm9Ks7tUVPvTJqFmJny+En8sHyyQHYoqeL8JQtKa/mMUj/BoFU7VEjZ+frb+lgbZFk/7tdOjO5
VHwizHUbZvuC8yiQneo9cFgHV2ry+bGfXb4bmp2HVYqu87CXTdMqKFqONaUvy4/UdihNU5jmd8+G
wLAbZlcYmUaLTIqpzBXypREma/LdLcMicf3MahDbEpjPgbAjKp+7WU/hODyv/MtCoNuS7PmFSVyk
SP+VXqsQqOogdfRnHhv5FK87Hy8tKeUSTZ18vQlVO6Jkm6o9PpkR6/coF8UC9NNppLPWMDow8QCC
gtcqXwzp3ZhdbDrs1pw8rsVvbl1crLq/qucVrRPC/ftGyWwFiEtmeBx1C9j1TGgCDvU5CJhM1Hhe
XAlXEFaAOKTV0LcQGmBztsZYhGNm7oCm8/bwgUsIQh+zGJXUL4ndygzq989Zk0ib7mDsPMuDUWVt
hY3eTPhF6Mg7wpD+tHaSMXGFwu3Sc+eMTkJTphqzJC7oy//2j+PfrNeBdVQA15oQoTzCbG5Hj2zy
weAvaPFtiiecnOP9WVozvmmiFu3TPnn4n8ORIOhBEbahMJUgMIyT9FFBPXy5vywcmu3fynbNVA3H
/x4SLfwnH6Uw9XcROmVFoMzImT/7N9AZwn0Jg7HKPcEtFcBqKgsjFH+KDBM+8XzJGb30UYS4wpnS
p6xhTYhFI59Jl5dnzRzBLOz/bzPFl57VZECEZ5T6r/XxHrDMT5TLvVvsz48x/vQ/rU2v3YIWMqK4
Hinru61DSE3PlafkiaweSUg4vwe76nv9265fFop2985jJk0nD+DKJoym6WkblQm7l+F/HJRKSSI3
oKD5AXt2oMlU0d4r2s1AO0t3jRmZT6pBhOH8OqPm35m0vnsLTDwS74Hl3MxUkaKFhUjfFmgv7XzW
E6MTjtnKGiOB8iswX+8zp4AQZJyvIShw/eKWszzH9oK9YzuJVxktjyS65OqQlPhcmyCw3D1ZVgfQ
t/XwRAKZfpxffbhNJRZ8obcDTR4PFPk//BDQcyL8hAC++B5e8gHyYsY7v1INvtQBQomgCokBKQVk
DbeVeClTTVNSDBqryTNcseim59f3axtBVrUiMosyPM/tMDiEn3zFZnE8+v2cE7J4xbDfeGnCRmXq
A7JhzNsycYph/S+PXvRPYBf2Pdj0EyD8xV/y2q37XpBjQaJLxeLx9L7cnT/L1MJt6YQiPO0Q/pJi
EN04md4YKvl0FkO5T89ThtIYNbVvxgbQJARCRmlOaf+bP/+ZHJyGmYWwVDN+31TOXJ/uSYWY3Iug
vlCr+4sklEC/nyCbj4h5uc5BwO+6Z6baAqu9HK93FIGub2KNsLFwn/KfHEiAjjzajRT47qMd9g74
T+Jt4nw1K38uAgxlTHPfBG5yUawlTwEI3Y6yyRrC5PLlXLjQBrhDvEQH9OJ/jKkkPcg+QM45pWTx
Dlkdk0B1TLiKfp+zVYRdfqAYtuomzSnf7b7lu4DvPty+bB6+4q4b14VQsSKxibbuzlK4cN0Lw7l1
hC93E72HIR8yGp3/cEohsq+XE+2mo02d4ca0KVzPvLq0UJW4KsmxEETnzxJHzIifXHE5YaG1t/jX
kVXCkoOnW3xXiq9bNBLpqvM6yPcEqX5cyKqCvSVSL90vsD7ruPXLPqVEKa+zdLNRsCQMIHwEu3S5
j3pkliZAAU7MkyZiosrvjUUVoJS6oTjAPUgCZlk8j8GGVj1yCNh+vxfThiBxIIl9ItMHccii3m/M
ujpetl6lDtJ6JtyE7jZBBgD/8ODOtLozTEqtH11CTXvxrqzT2deb0OVHH0u6nvY9oEYQoi4CDSQM
RVPmn8g4/3xsr1aSXnGsnbOEQbKWCzAFevmqsok9Y7ea3bzB3OgGUMGPfncXvDz33+qF08DbjCTH
5KEu2FxWyJN88T5iLrTb50d3vDkJbpXNyO41tdE0ML2MKPRRpQfx1z8pfDZVAfkis5+RN5q7vaTH
0c9kESyLf6VhoEea5V6FMU7qoum/qUnX+J66xK1HQxk1MapESP3E6Vy7AHSkHuFymFG/IGfSwp0P
UMgPwAGjYpuOq6ru9jwXDEZF4g11gZWpXsWELW82NMJOWUJfGLlyEKwO7P7mGaTWErXITIw8YItw
1SL22HfIa5quKGMXU2R8rdTLDQ6pbyNfuKh5IwwFr2xu6tS+7POEuaLAd7KkQ3IUAD7T3BpD9apj
6pzBpVUdIDGNu5cmyy2FQCGKG8+YlzPIpyFTLSHFWTyET/kfaTU9eWQ6gtPsszaKGc/d7xj4NYtM
5X0LyVdskvebcSPXjbM7kriWJnLUnXuRCvNW8TevYmo07nohOXlcZUpizxFjH55KTdISzRyYnkOE
8+5ioC9ex9BVZBpWAn9wMonCc6+gIko5SD8lncmwFE+3UZk7vkeLWD78IVnHRyOF5IRx8PYfKx7P
1x5a9QOKKv6kQZHaxItojlKoYI+t5FvfxlzaJ27LxLYD0JMyxrQGuFkwcVfC5jUxK/cb3Y9tq2fl
wSu572F7Ag6Om/CJ0DBlhPLoZ14R1qvI/JaWQxzEYi9FHu3eQFmiAveO/H0Z76NNIDi69wQoKDKq
w6N0Y7EVSCtpvMtk95dY+PPcrJLxtYdikDfqq83T3KZk7QdTotNZJyMxRs68jXx1arX+TvQoDyo0
+XzvdytxMKNYVeWEELP8ynS+VDwbs+UN0EiOoQagG9r1ZSfu6fFR9vKxoMw63HeaF1PiQQnFDNta
VNx38JkMPMKxHEbYlt5CfM9X9tktHc+oD0Fv4SpgK9jwMHLhoWzPRr4ADSOiXnPMu6gnKrsqanTA
4ABqpkvqmgHjM2+eVW75Fp6NJ43VOexDeiIx0syweDPJ+D8KNzkGfmtYU3ptwnpuELPi37LkNcpX
+6natn1+/1kmWIuzNQXDYjp7KQEHtEUk4zKlDVQEecp65Netq/fSJicLbeP8OkdQwY/miqQsSc/K
h+ju49ZCJN2OEGF1pGw7rIULaBQf54u6xdNH7e8GyL+8ncgYWx8IJAP0N7UZ17C/wCF6SMWRjJJa
3DgQiuaeSumSp8uxq46bnSA+JgqIDhh6YaZGF/AjiqzKhEAS2nlHpahWlTMgf5Gkg+LgZJdAWZW7
ux07qPq4mCuZmwbLT6kpihMnZM9WcvkJRY/86Y8Pi/bpelKcIJKs8RrIe5ZI5XrGo6wlUejAk80u
XMV97z7W2tYhMnyzDBep3WQdZafT8Hponp8rxigab85oNkv8tmcaXf/JDmbFUxwSunboTH2cLk8c
bgICyLot5ILJrDJsufvfRL/hXufGPbDnp7EG0vGbcySmUuPIwmgpjZhDVS4nI/BPWx7ysA9e8g0I
Svil5Df04m+NenF+M9bIBIqb8xykmZs0iZiz9/9HwH4arrTTK2zaVhZLPOO9ACC8Ic0UszvsMIqO
Xl3y6iy3CNvZ8xbBUvSaNNyTnRPsEx9FwSuM7yTc2jK7J75LndNNzTyNU5ie3syZ70X3ezqz49iu
N39DbToYip4jjioYIPxP6mO+US/o0zSRGlfm2JYXXPw/okiWWUPMYrOMwuxX/XMIV/NvQPTnt26e
E+IvwvuWfu5SQ6DhrDlIgMVlpJLUWgFZYblCtDcNJXVLL2hKqgal1lJ2u/1UM11wrGy42NwEj9rg
pjjF1cWl//uv3Lzv1ta9BJWtr1r+vsswvUqSpNit+8nVS1RdBwFklxH68nj+9RCT03zLIqznXnUn
0qbRjiUR9CtPK/fUcPmKbkqBqzhpXMH8WOvwMaD9A2TanLujfRHqnNzv+VJUzSfHPHbYC330ZfKS
Ijb2LCu/TccWT8hmD3pAMrsZ+WDvTKrhPvY+uGXSDUeIyfGekBKmVnhhz/ohbF09FmIi/5kifjf2
WR/tYeEhecYLz+RPalMXoVzOZFsmO9LrGalYd8TYVoRS59y9PsgZixarnVkuqMoRmG4IBP2C3EmB
xwrQFxh/Uumchmnuq7uo8B3x2Ms6MKhnq1Iw0Drzfqa/nKwhZMyCPtNvQG/eELGBBJYSjWkwRGA3
234FkO6czHylAoT4HlNMLRjC6O9y+Gdck0jpu1mmunsFqjBU3IGgZtBuoYpdj7OMJBHVOZ+aMfW0
C7bzZaE5Lea5YrkL3j2akRw3KY2CSuTb3/2GuCmwWfyqUq68BR2ZJzHFFXl/9U72WuSPNC2A0QbT
KLyjBVJRriUTHLE/5u/daeBVcgE2+QteBb5tnIlBP09hyyxtTrByrFHtQyxFd/5mPtZLqE7BFel+
hAQunlNjiAWRPB2KELURpF9uj70cml2n9KPfxZ0lC5k+mpaiCXVq7JFsmAN9gFfUAsOlGXh8mQC0
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
