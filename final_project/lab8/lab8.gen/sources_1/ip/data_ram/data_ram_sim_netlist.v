// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Jun  7 17:14:20 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1012/final_project/lab8/lab8.gen/sources_1/ip/data_ram/data_ram_sim_netlist.v
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
