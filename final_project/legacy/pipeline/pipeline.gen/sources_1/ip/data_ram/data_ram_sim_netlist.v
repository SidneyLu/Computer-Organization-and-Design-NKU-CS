// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 15:10:07 2026
// Host        : DESKTOP-JH0OJSQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1012/final_project/legacy/pipeline/pipeline.gen/sources_1/ip/data_ram/data_ram_sim_netlist.v
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
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [1:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [1:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire enb;
  wire [1:0]wea;
  wire [1:0]web;
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
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0617 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WEA_WIDTH = "2" *) 
  (* C_WEB_WIDTH = "2" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
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
        .enb(enb),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19824)
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
