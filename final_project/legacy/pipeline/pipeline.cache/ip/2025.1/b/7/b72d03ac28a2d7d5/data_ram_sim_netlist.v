// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Jun  8 15:10:06 2026
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19904)
`pragma protect data_block
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
2ZwHjQayIVZ0eNU=
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
