// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

// DATE "06/14/2014 19:04:16"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module lab3_chip (	clk,
	reset,
	i_valid,
	i_data,
	o_data);
input 	clk;
input 	reset;
input 	i_valid;
input 	[7:0] i_data;
output 	[7:0] o_data;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("lab3_v.sdo");
// synopsys translate_on

wire modgen_counter_counter_anx59247z7;
wire modgen_counter_o_data_anx32510z14;
wire modgen_counter_o_data_anx32510z10;
wire modgen_counter_o_data_anx32510z8;
wire modgen_counter_o_data_anx32510z2;
wire modgen_counter_counter_anx56256z1;
wire clk_acombout;
wire clk_aclkctrl_outclk;
wire reset_acombout;
wire i_valid_acombout;
wire modgen_counter_counter_anx51271z1;
wire modgen_counter_counter_anx58250z3;
wire modgen_counter_counter_anx59247z17;
wire modgen_counter_counter_anx59247z16;
wire modgen_counter_counter_anx52268z1;
wire modgen_counter_counter_anx59247z15;
wire modgen_counter_counter_anx59247z14;
wire modgen_counter_counter_anx53265z1;
wire modgen_counter_counter_anx59247z13;
wire modgen_counter_counter_anx59247z12;
wire modgen_counter_counter_anx59247z10;
wire modgen_counter_counter_anx55259z1;
wire modgen_counter_counter_anx59247z9;
wire modgen_counter_counter_anx59247z8;
wire modgen_counter_counter_anx59247z6;
wire modgen_counter_counter_anx59247z4;
wire modgen_counter_counter_anx58250z1;
wire modgen_counter_counter_anx59247z3;
wire modgen_counter_counter_anx59247z2;
wire modgen_counter_counter_anx59247z1;
wire modgen_counter_counter_anx2038z1;
wire nx7124z2;
wire modgen_counter_counter_anx57253z1;
wire modgen_counter_counter_anx59247z5;
wire nx7124z3;
wire modgen_counter_counter_anx54262z1;
wire modgen_counter_counter_anx59247z11;
wire nx7124z4;
wire nx7124z1;
wire modgen_counter_o_data_anx58250z2;
wire modgen_counter_o_data_anx32510z16;
wire modgen_counter_o_data_anx51271z1;
wire nx22349z1_afeeder_combout;
wire nx22349z1;
wire modgen_counter_o_data_anx32510z15;
wire modgen_counter_o_data_anx52268z1;
wire nx23346z1;
wire modgen_counter_o_data_anx32510z12;
wire modgen_counter_o_data_anx32510z13;
wire modgen_counter_o_data_anx53265z1;
wire nx24343z1;
wire modgen_counter_o_data_anx32510z11;
wire modgen_counter_o_data_anx54262z1;
wire nx25340z1;
wire modgen_counter_o_data_anx32510z9;
wire modgen_counter_o_data_anx55259z1;
wire nx26337z1;
wire modgen_counter_o_data_anx32510z6;
wire modgen_counter_o_data_anx32510z7;
wire modgen_counter_o_data_anx56256z1;
wire nx27334z1;
wire modgen_counter_o_data_anx32510z4;
wire modgen_counter_o_data_anx32510z5;
wire modgen_counter_o_data_anx57253z1;
wire nx28331z1_afeeder_combout;
wire nx28331z1;
wire modgen_counter_o_data_anx32510z3;
wire modgen_counter_o_data_anx32510z1;
wire nx29328z1_afeeder_combout;
wire nx29328z1;


// atom is at LCFF_X44_Y35_N11
cycloneii_lcell_ff modgen_counter_counter_areg_q_5_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx59247z7));

// atom is at LCFF_X45_Y35_N7
cycloneii_lcell_ff modgen_counter_o_data_areg_q_1_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_o_data_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_data_anx32510z14));

// atom is at LCFF_X45_Y35_N11
cycloneii_lcell_ff modgen_counter_o_data_areg_q_3_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_o_data_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_data_anx32510z10));

// atom is at LCFF_X45_Y35_N13
cycloneii_lcell_ff modgen_counter_o_data_areg_q_4_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_o_data_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_data_anx32510z8));

// atom is at LCFF_X45_Y35_N19
cycloneii_lcell_ff modgen_counter_o_data_areg_q_7_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_o_data_anx32510z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_data_anx32510z2));

// atom is at LCCOMB_X44_Y35_N10
cycloneii_lcell_comb modgen_counter_counter_aix59247z52927(
// Equation(s):
// modgen_counter_counter_anx56256z1 = modgen_counter_counter_anx59247z7 & !modgen_counter_counter_anx59247z8 # !modgen_counter_counter_anx59247z7 & (modgen_counter_counter_anx59247z8 # GND)
// modgen_counter_counter_anx59247z6 = CARRY(!modgen_counter_counter_anx59247z8 # !modgen_counter_counter_anx59247z7)

	.dataa(modgen_counter_counter_anx59247z7),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_counter_anx59247z8),
	.combout(modgen_counter_counter_anx56256z1),
	.cout(modgen_counter_counter_anx59247z6));
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52927.lut_mask = 16'h5A5F;
defparam modgen_counter_counter_aix59247z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_P2
cycloneii_io clk_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(clk_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam clk_ibuf.input_async_reset = "none";
defparam clk_ibuf.input_power_up = "low";
defparam clk_ibuf.input_register_mode = "none";
defparam clk_ibuf.input_sync_reset = "none";
defparam clk_ibuf.oe_async_reset = "none";
defparam clk_ibuf.oe_power_up = "low";
defparam clk_ibuf.oe_register_mode = "none";
defparam clk_ibuf.oe_sync_reset = "none";
defparam clk_ibuf.operation_mode = "input";
defparam clk_ibuf.output_async_reset = "none";
defparam clk_ibuf.output_power_up = "low";
defparam clk_ibuf.output_register_mode = "none";
defparam clk_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at CLKCTRL_G3
cycloneii_clkctrl clk_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,clk_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(clk_aclkctrl_outclk));
// synopsys translate_off
defparam clk_aclkctrl.clock_type = "global clock";
defparam clk_aclkctrl.ena_register_mode = "falling edge";
// synopsys translate_on

// atom is at PIN_D13
cycloneii_io reset_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(reset));
// synopsys translate_off
defparam reset_ibuf.input_async_reset = "none";
defparam reset_ibuf.input_power_up = "low";
defparam reset_ibuf.input_register_mode = "none";
defparam reset_ibuf.input_sync_reset = "none";
defparam reset_ibuf.oe_async_reset = "none";
defparam reset_ibuf.oe_power_up = "low";
defparam reset_ibuf.oe_register_mode = "none";
defparam reset_ibuf.oe_sync_reset = "none";
defparam reset_ibuf.operation_mode = "input";
defparam reset_ibuf.output_async_reset = "none";
defparam reset_ibuf.output_power_up = "low";
defparam reset_ibuf.output_register_mode = "none";
defparam reset_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io i_valid_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_valid_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_ibuf.input_async_reset = "none";
defparam i_valid_ibuf.input_power_up = "low";
defparam i_valid_ibuf.input_register_mode = "none";
defparam i_valid_ibuf.input_sync_reset = "none";
defparam i_valid_ibuf.oe_async_reset = "none";
defparam i_valid_ibuf.oe_power_up = "low";
defparam i_valid_ibuf.oe_register_mode = "none";
defparam i_valid_ibuf.oe_sync_reset = "none";
defparam i_valid_ibuf.operation_mode = "input";
defparam i_valid_ibuf.output_async_reset = "none";
defparam i_valid_ibuf.output_power_up = "low";
defparam i_valid_ibuf.output_register_mode = "none";
defparam i_valid_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X44_Y35_N0
cycloneii_lcell_comb modgen_counter_counter_aix59247z52932(
// Equation(s):
// modgen_counter_counter_anx51271z1 = modgen_counter_counter_anx59247z17 $ VCC
// modgen_counter_counter_anx59247z16 = CARRY(modgen_counter_counter_anx59247z17)

	.dataa(vcc),
	.datab(modgen_counter_counter_anx59247z17),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_counter_anx51271z1),
	.cout(modgen_counter_counter_anx59247z16));
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52932.lut_mask = 16'h33CC;
defparam modgen_counter_counter_aix59247z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X44_Y35_N26
cycloneii_lcell_comb modgen_counter_counter_aix58250z52923(
// Equation(s):
// modgen_counter_counter_anx58250z3 = i_valid_acombout # reset_acombout

	.dataa(vcc),
	.datab(i_valid_acombout),
	.datac(vcc),
	.datad(reset_acombout),
	.cin(gnd),
	.combout(modgen_counter_counter_anx58250z3),
	.cout());
// synopsys translate_off
defparam modgen_counter_counter_aix58250z52923.lut_mask = 16'hFFCC;
defparam modgen_counter_counter_aix58250z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X44_Y35_N1
cycloneii_lcell_ff modgen_counter_counter_areg_q_0_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx59247z17));

// atom is at LCCOMB_X44_Y35_N2
cycloneii_lcell_comb modgen_counter_counter_aix59247z52931(
// Equation(s):
// modgen_counter_counter_anx52268z1 = modgen_counter_counter_anx59247z15 & !modgen_counter_counter_anx59247z16 # !modgen_counter_counter_anx59247z15 & (modgen_counter_counter_anx59247z16 # GND)
// modgen_counter_counter_anx59247z14 = CARRY(!modgen_counter_counter_anx59247z16 # !modgen_counter_counter_anx59247z15)

	.dataa(vcc),
	.datab(modgen_counter_counter_anx59247z15),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_counter_anx59247z16),
	.combout(modgen_counter_counter_anx52268z1),
	.cout(modgen_counter_counter_anx59247z14));
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52931.lut_mask = 16'h3C3F;
defparam modgen_counter_counter_aix59247z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X44_Y35_N3
cycloneii_lcell_ff modgen_counter_counter_areg_q_1_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx59247z15));

// atom is at LCCOMB_X44_Y35_N4
cycloneii_lcell_comb modgen_counter_counter_aix59247z52930(
// Equation(s):
// modgen_counter_counter_anx53265z1 = modgen_counter_counter_anx59247z13 & (modgen_counter_counter_anx59247z14 $ GND) # !modgen_counter_counter_anx59247z13 & !modgen_counter_counter_anx59247z14 & VCC
// modgen_counter_counter_anx59247z12 = CARRY(modgen_counter_counter_anx59247z13 & !modgen_counter_counter_anx59247z14)

	.dataa(vcc),
	.datab(modgen_counter_counter_anx59247z13),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_counter_anx59247z14),
	.combout(modgen_counter_counter_anx53265z1),
	.cout(modgen_counter_counter_anx59247z12));
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52930.lut_mask = 16'hC30C;
defparam modgen_counter_counter_aix59247z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X44_Y35_N5
cycloneii_lcell_ff modgen_counter_counter_areg_q_2_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx59247z13));

// atom is at LCCOMB_X44_Y35_N6
cycloneii_lcell_comb modgen_counter_counter_aix59247z52929(
// Equation(s):
// modgen_counter_counter_anx54262z1 = modgen_counter_counter_anx59247z11 & !modgen_counter_counter_anx59247z12 # !modgen_counter_counter_anx59247z11 & (modgen_counter_counter_anx59247z12 # GND)
// modgen_counter_counter_anx59247z10 = CARRY(!modgen_counter_counter_anx59247z12 # !modgen_counter_counter_anx59247z11)

	.dataa(modgen_counter_counter_anx59247z11),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_counter_anx59247z12),
	.combout(modgen_counter_counter_anx54262z1),
	.cout(modgen_counter_counter_anx59247z10));
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52929.lut_mask = 16'h5A5F;
defparam modgen_counter_counter_aix59247z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X44_Y35_N8
cycloneii_lcell_comb modgen_counter_counter_aix59247z52928(
// Equation(s):
// modgen_counter_counter_anx55259z1 = modgen_counter_counter_anx59247z9 & (modgen_counter_counter_anx59247z10 $ GND) # !modgen_counter_counter_anx59247z9 & !modgen_counter_counter_anx59247z10 & VCC
// modgen_counter_counter_anx59247z8 = CARRY(modgen_counter_counter_anx59247z9 & !modgen_counter_counter_anx59247z10)

	.dataa(vcc),
	.datab(modgen_counter_counter_anx59247z9),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_counter_anx59247z10),
	.combout(modgen_counter_counter_anx55259z1),
	.cout(modgen_counter_counter_anx59247z8));
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52928.lut_mask = 16'hC30C;
defparam modgen_counter_counter_aix59247z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X44_Y35_N9
cycloneii_lcell_ff modgen_counter_counter_areg_q_4_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx59247z9));

// atom is at LCCOMB_X44_Y35_N12
cycloneii_lcell_comb modgen_counter_counter_aix59247z52926(
// Equation(s):
// modgen_counter_counter_anx57253z1 = modgen_counter_counter_anx59247z5 & (modgen_counter_counter_anx59247z6 $ GND) # !modgen_counter_counter_anx59247z5 & !modgen_counter_counter_anx59247z6 & VCC
// modgen_counter_counter_anx59247z4 = CARRY(modgen_counter_counter_anx59247z5 & !modgen_counter_counter_anx59247z6)

	.dataa(modgen_counter_counter_anx59247z5),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_counter_anx59247z6),
	.combout(modgen_counter_counter_anx57253z1),
	.cout(modgen_counter_counter_anx59247z4));
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52926.lut_mask = 16'hA50A;
defparam modgen_counter_counter_aix59247z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X44_Y35_N14
cycloneii_lcell_comb modgen_counter_counter_aix59247z52925(
// Equation(s):
// modgen_counter_counter_anx58250z1 = modgen_counter_counter_anx59247z3 & !modgen_counter_counter_anx59247z4 # !modgen_counter_counter_anx59247z3 & (modgen_counter_counter_anx59247z4 # GND)
// modgen_counter_counter_anx59247z2 = CARRY(!modgen_counter_counter_anx59247z4 # !modgen_counter_counter_anx59247z3)

	.dataa(vcc),
	.datab(modgen_counter_counter_anx59247z3),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_counter_anx59247z4),
	.combout(modgen_counter_counter_anx58250z1),
	.cout(modgen_counter_counter_anx59247z2));
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52925.lut_mask = 16'h3C3F;
defparam modgen_counter_counter_aix59247z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X44_Y35_N15
cycloneii_lcell_ff modgen_counter_counter_areg_q_7_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx59247z3));

// atom is at LCCOMB_X44_Y35_N16
cycloneii_lcell_comb modgen_counter_counter_aix59247z52923(
// Equation(s):
// modgen_counter_counter_anx59247z1 = modgen_counter_counter_anx2038z1 $ !modgen_counter_counter_anx59247z2

	.dataa(modgen_counter_counter_anx2038z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_counter_anx59247z2),
	.combout(modgen_counter_counter_anx59247z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_counter_aix59247z52923.lut_mask = 16'hA5A5;
defparam modgen_counter_counter_aix59247z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X44_Y35_N17
cycloneii_lcell_ff modgen_counter_counter_areg_q_8_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx59247z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx2038z1));

// atom is at LCCOMB_X45_Y35_N22
cycloneii_lcell_comb ix7124z52924(
// Equation(s):
// nx7124z2 = reset_acombout # i_valid_acombout & modgen_counter_counter_anx2038z1

	.dataa(vcc),
	.datab(reset_acombout),
	.datac(i_valid_acombout),
	.datad(modgen_counter_counter_anx2038z1),
	.cin(gnd),
	.combout(nx7124z2),
	.cout());
// synopsys translate_off
defparam ix7124z52924.lut_mask = 16'hFCCC;
defparam ix7124z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X44_Y35_N13
cycloneii_lcell_ff modgen_counter_counter_areg_q_6_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx59247z5));

// atom is at LCCOMB_X45_Y35_N24
cycloneii_lcell_comb ix7124z52925(
// Equation(s):
// nx7124z3 = modgen_counter_counter_anx59247z7 & modgen_counter_counter_anx59247z5 & modgen_counter_counter_anx59247z3 & modgen_counter_counter_anx59247z9

	.dataa(modgen_counter_counter_anx59247z7),
	.datab(modgen_counter_counter_anx59247z5),
	.datac(modgen_counter_counter_anx59247z3),
	.datad(modgen_counter_counter_anx59247z9),
	.cin(gnd),
	.combout(nx7124z3),
	.cout());
// synopsys translate_off
defparam ix7124z52925.lut_mask = 16'h8000;
defparam ix7124z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X44_Y35_N7
cycloneii_lcell_ff modgen_counter_counter_areg_q_3_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_counter_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_counter_anx58250z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_counter_anx59247z11));

// atom is at LCCOMB_X45_Y35_N26
cycloneii_lcell_comb ix7124z52926(
// Equation(s):
// nx7124z4 = modgen_counter_counter_anx59247z15 & modgen_counter_counter_anx59247z11 & modgen_counter_counter_anx59247z17 & modgen_counter_counter_anx59247z13

	.dataa(modgen_counter_counter_anx59247z15),
	.datab(modgen_counter_counter_anx59247z11),
	.datac(modgen_counter_counter_anx59247z17),
	.datad(modgen_counter_counter_anx59247z13),
	.cin(gnd),
	.combout(nx7124z4),
	.cout());
// synopsys translate_off
defparam ix7124z52926.lut_mask = 16'h8000;
defparam ix7124z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X45_Y35_N28
cycloneii_lcell_comb ix7124z52923(
// Equation(s):
// nx7124z1 = nx7124z2 # i_valid_acombout & nx7124z3 & nx7124z4

	.dataa(i_valid_acombout),
	.datab(nx7124z2),
	.datac(nx7124z3),
	.datad(nx7124z4),
	.cin(gnd),
	.combout(nx7124z1),
	.cout());
// synopsys translate_off
defparam ix7124z52923.lut_mask = 16'hECCC;
defparam ix7124z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X45_Y35_N30
cycloneii_lcell_comb modgen_counter_o_data_aix58250z52923(
// Equation(s):
// modgen_counter_o_data_anx58250z2 = i_valid_acombout # nx7124z1

	.dataa(vcc),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(nx7124z1),
	.cin(gnd),
	.combout(modgen_counter_o_data_anx58250z2),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_data_aix58250z52923.lut_mask = 16'hFFF0;
defparam modgen_counter_o_data_aix58250z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X45_Y35_N5
cycloneii_lcell_ff modgen_counter_o_data_areg_q_0_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_o_data_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_data_anx32510z16));

// atom is at LCCOMB_X45_Y35_N4
cycloneii_lcell_comb modgen_counter_o_data_aix32510z52931(
// Equation(s):
// modgen_counter_o_data_anx51271z1 = modgen_counter_o_data_anx32510z16 $ VCC
// modgen_counter_o_data_anx32510z15 = CARRY(modgen_counter_o_data_anx32510z16)

	.dataa(vcc),
	.datab(modgen_counter_o_data_anx32510z16),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_o_data_anx51271z1),
	.cout(modgen_counter_o_data_anx32510z15));
// synopsys translate_off
defparam modgen_counter_o_data_aix32510z52931.lut_mask = 16'h33CC;
defparam modgen_counter_o_data_aix32510z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X45_Y35_N0
cycloneii_lcell_comb nx22349z1_afeeder(
// Equation(s):
// nx22349z1_afeeder_combout = modgen_counter_o_data_anx51271z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_data_anx51271z1),
	.cin(gnd),
	.combout(nx22349z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx22349z1_afeeder.lut_mask = 16'hFF00;
defparam nx22349z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X45_Y35_N1
cycloneii_lcell_ff reg_out_o_data_obuf_0_(
	.clk(clk_aclkctrl_outclk),
	.datain(nx22349z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx22349z1));

// atom is at LCCOMB_X45_Y35_N6
cycloneii_lcell_comb modgen_counter_o_data_aix32510z52930(
// Equation(s):
// modgen_counter_o_data_anx52268z1 = modgen_counter_o_data_anx32510z14 & !modgen_counter_o_data_anx32510z15 # !modgen_counter_o_data_anx32510z14 & (modgen_counter_o_data_anx32510z15 # GND)
// modgen_counter_o_data_anx32510z13 = CARRY(!modgen_counter_o_data_anx32510z15 # !modgen_counter_o_data_anx32510z14)

	.dataa(modgen_counter_o_data_anx32510z14),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_data_anx32510z15),
	.combout(modgen_counter_o_data_anx52268z1),
	.cout(modgen_counter_o_data_anx32510z13));
// synopsys translate_off
defparam modgen_counter_o_data_aix32510z52930.lut_mask = 16'h5A5F;
defparam modgen_counter_o_data_aix32510z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X46_Y35_N1
cycloneii_lcell_ff reg_out_o_data_obuf_1_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_data_anx52268z1),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(vcc),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx23346z1));

// atom is at LCFF_X45_Y35_N9
cycloneii_lcell_ff modgen_counter_o_data_areg_q_2_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_o_data_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_data_anx32510z12));

// atom is at LCCOMB_X45_Y35_N8
cycloneii_lcell_comb modgen_counter_o_data_aix32510z52929(
// Equation(s):
// modgen_counter_o_data_anx53265z1 = modgen_counter_o_data_anx32510z12 & (modgen_counter_o_data_anx32510z13 $ GND) # !modgen_counter_o_data_anx32510z12 & !modgen_counter_o_data_anx32510z13 & VCC
// modgen_counter_o_data_anx32510z11 = CARRY(modgen_counter_o_data_anx32510z12 & !modgen_counter_o_data_anx32510z13)

	.dataa(vcc),
	.datab(modgen_counter_o_data_anx32510z12),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_data_anx32510z13),
	.combout(modgen_counter_o_data_anx53265z1),
	.cout(modgen_counter_o_data_anx32510z11));
// synopsys translate_off
defparam modgen_counter_o_data_aix32510z52929.lut_mask = 16'hC30C;
defparam modgen_counter_o_data_aix32510z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X46_Y35_N3
cycloneii_lcell_ff reg_out_o_data_obuf_2_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_data_anx53265z1),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(vcc),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx24343z1));

// atom is at LCCOMB_X45_Y35_N10
cycloneii_lcell_comb modgen_counter_o_data_aix32510z52928(
// Equation(s):
// modgen_counter_o_data_anx54262z1 = modgen_counter_o_data_anx32510z10 & !modgen_counter_o_data_anx32510z11 # !modgen_counter_o_data_anx32510z10 & (modgen_counter_o_data_anx32510z11 # GND)
// modgen_counter_o_data_anx32510z9 = CARRY(!modgen_counter_o_data_anx32510z11 # !modgen_counter_o_data_anx32510z10)

	.dataa(modgen_counter_o_data_anx32510z10),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_data_anx32510z11),
	.combout(modgen_counter_o_data_anx54262z1),
	.cout(modgen_counter_o_data_anx32510z9));
// synopsys translate_off
defparam modgen_counter_o_data_aix32510z52928.lut_mask = 16'h5A5F;
defparam modgen_counter_o_data_aix32510z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X46_Y35_N29
cycloneii_lcell_ff reg_out_o_data_obuf_3_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_data_anx54262z1),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(vcc),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx25340z1));

// atom is at LCCOMB_X45_Y35_N12
cycloneii_lcell_comb modgen_counter_o_data_aix32510z52927(
// Equation(s):
// modgen_counter_o_data_anx55259z1 = modgen_counter_o_data_anx32510z8 & (modgen_counter_o_data_anx32510z9 $ GND) # !modgen_counter_o_data_anx32510z8 & !modgen_counter_o_data_anx32510z9 & VCC
// modgen_counter_o_data_anx32510z7 = CARRY(modgen_counter_o_data_anx32510z8 & !modgen_counter_o_data_anx32510z9)

	.dataa(modgen_counter_o_data_anx32510z8),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_data_anx32510z9),
	.combout(modgen_counter_o_data_anx55259z1),
	.cout(modgen_counter_o_data_anx32510z7));
// synopsys translate_off
defparam modgen_counter_o_data_aix32510z52927.lut_mask = 16'hA50A;
defparam modgen_counter_o_data_aix32510z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X46_Y35_N23
cycloneii_lcell_ff reg_out_o_data_obuf_4_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_data_anx55259z1),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(vcc),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx26337z1));

// atom is at LCFF_X45_Y35_N15
cycloneii_lcell_ff modgen_counter_o_data_areg_q_5_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_o_data_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_data_anx32510z6));

// atom is at LCCOMB_X45_Y35_N14
cycloneii_lcell_comb modgen_counter_o_data_aix32510z52926(
// Equation(s):
// modgen_counter_o_data_anx56256z1 = modgen_counter_o_data_anx32510z6 & !modgen_counter_o_data_anx32510z7 # !modgen_counter_o_data_anx32510z6 & (modgen_counter_o_data_anx32510z7 # GND)
// modgen_counter_o_data_anx32510z5 = CARRY(!modgen_counter_o_data_anx32510z7 # !modgen_counter_o_data_anx32510z6)

	.dataa(vcc),
	.datab(modgen_counter_o_data_anx32510z6),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_data_anx32510z7),
	.combout(modgen_counter_o_data_anx56256z1),
	.cout(modgen_counter_o_data_anx32510z5));
// synopsys translate_off
defparam modgen_counter_o_data_aix32510z52926.lut_mask = 16'h3C3F;
defparam modgen_counter_o_data_aix32510z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X46_Y35_N9
cycloneii_lcell_ff reg_out_o_data_obuf_5_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_data_anx56256z1),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(vcc),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx27334z1));

// atom is at LCFF_X45_Y35_N17
cycloneii_lcell_ff modgen_counter_o_data_areg_q_6_(
	.clk(clk_aclkctrl_outclk),
	.datain(modgen_counter_o_data_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_data_anx32510z4));

// atom is at LCCOMB_X45_Y35_N16
cycloneii_lcell_comb modgen_counter_o_data_aix32510z52925(
// Equation(s):
// modgen_counter_o_data_anx57253z1 = modgen_counter_o_data_anx32510z4 & (modgen_counter_o_data_anx32510z5 $ GND) # !modgen_counter_o_data_anx32510z4 & !modgen_counter_o_data_anx32510z5 & VCC
// modgen_counter_o_data_anx32510z3 = CARRY(modgen_counter_o_data_anx32510z4 & !modgen_counter_o_data_anx32510z5)

	.dataa(vcc),
	.datab(modgen_counter_o_data_anx32510z4),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_data_anx32510z5),
	.combout(modgen_counter_o_data_anx57253z1),
	.cout(modgen_counter_o_data_anx32510z3));
// synopsys translate_off
defparam modgen_counter_o_data_aix32510z52925.lut_mask = 16'hC30C;
defparam modgen_counter_o_data_aix32510z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y35_N2
cycloneii_lcell_comb nx28331z1_afeeder(
// Equation(s):
// nx28331z1_afeeder_combout = modgen_counter_o_data_anx57253z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_data_anx57253z1),
	.datad(vcc),
	.cin(gnd),
	.combout(nx28331z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx28331z1_afeeder.lut_mask = 16'hF0F0;
defparam nx28331z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X45_Y35_N3
cycloneii_lcell_ff reg_out_o_data_obuf_6_(
	.clk(clk_aclkctrl_outclk),
	.datain(nx28331z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx28331z1));

// atom is at LCCOMB_X45_Y35_N18
cycloneii_lcell_comb modgen_counter_o_data_aix32510z52923(
// Equation(s):
// modgen_counter_o_data_anx32510z1 = modgen_counter_o_data_anx32510z2 $ modgen_counter_o_data_anx32510z3

	.dataa(modgen_counter_o_data_anx32510z2),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_data_anx32510z3),
	.combout(modgen_counter_o_data_anx32510z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_data_aix32510z52923.lut_mask = 16'h5A5A;
defparam modgen_counter_o_data_aix32510z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X45_Y35_N20
cycloneii_lcell_comb nx29328z1_afeeder(
// Equation(s):
// nx29328z1_afeeder_combout = modgen_counter_o_data_anx32510z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_data_anx32510z1),
	.cin(gnd),
	.combout(nx29328z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx29328z1_afeeder.lut_mask = 16'hFF00;
defparam nx29328z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X45_Y35_N21
cycloneii_lcell_ff reg_out_o_data_obuf_7_(
	.clk(clk_aclkctrl_outclk),
	.datain(nx29328z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx7124z1),
	.sload(gnd),
	.ena(modgen_counter_o_data_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx29328z1));

// atom is at PIN_G16
cycloneii_io ix22349z43919(
	.datain(nx22349z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[0]));
// synopsys translate_off
defparam ix22349z43919.input_async_reset = "none";
defparam ix22349z43919.input_power_up = "low";
defparam ix22349z43919.input_register_mode = "none";
defparam ix22349z43919.input_sync_reset = "none";
defparam ix22349z43919.oe_async_reset = "none";
defparam ix22349z43919.oe_power_up = "low";
defparam ix22349z43919.oe_register_mode = "none";
defparam ix22349z43919.oe_sync_reset = "none";
defparam ix22349z43919.operation_mode = "output";
defparam ix22349z43919.output_async_reset = "none";
defparam ix22349z43919.output_power_up = "low";
defparam ix22349z43919.output_register_mode = "none";
defparam ix22349z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F15
cycloneii_io ix23346z43919(
	.datain(nx23346z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[1]));
// synopsys translate_off
defparam ix23346z43919.input_async_reset = "none";
defparam ix23346z43919.input_power_up = "low";
defparam ix23346z43919.input_register_mode = "none";
defparam ix23346z43919.input_sync_reset = "none";
defparam ix23346z43919.oe_async_reset = "none";
defparam ix23346z43919.oe_power_up = "low";
defparam ix23346z43919.oe_register_mode = "none";
defparam ix23346z43919.oe_sync_reset = "none";
defparam ix23346z43919.operation_mode = "output";
defparam ix23346z43919.output_async_reset = "none";
defparam ix23346z43919.output_power_up = "low";
defparam ix23346z43919.output_register_mode = "none";
defparam ix23346z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B18
cycloneii_io ix24343z43919(
	.datain(nx24343z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[2]));
// synopsys translate_off
defparam ix24343z43919.input_async_reset = "none";
defparam ix24343z43919.input_power_up = "low";
defparam ix24343z43919.input_register_mode = "none";
defparam ix24343z43919.input_sync_reset = "none";
defparam ix24343z43919.oe_async_reset = "none";
defparam ix24343z43919.oe_power_up = "low";
defparam ix24343z43919.oe_register_mode = "none";
defparam ix24343z43919.oe_sync_reset = "none";
defparam ix24343z43919.operation_mode = "output";
defparam ix24343z43919.output_async_reset = "none";
defparam ix24343z43919.output_power_up = "low";
defparam ix24343z43919.output_register_mode = "none";
defparam ix24343z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C17
cycloneii_io ix25340z43919(
	.datain(nx25340z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[3]));
// synopsys translate_off
defparam ix25340z43919.input_async_reset = "none";
defparam ix25340z43919.input_power_up = "low";
defparam ix25340z43919.input_register_mode = "none";
defparam ix25340z43919.input_sync_reset = "none";
defparam ix25340z43919.oe_async_reset = "none";
defparam ix25340z43919.oe_power_up = "low";
defparam ix25340z43919.oe_register_mode = "none";
defparam ix25340z43919.oe_sync_reset = "none";
defparam ix25340z43919.operation_mode = "output";
defparam ix25340z43919.output_async_reset = "none";
defparam ix25340z43919.output_power_up = "low";
defparam ix25340z43919.output_register_mode = "none";
defparam ix25340z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D17
cycloneii_io ix26337z43919(
	.datain(nx26337z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[4]));
// synopsys translate_off
defparam ix26337z43919.input_async_reset = "none";
defparam ix26337z43919.input_power_up = "low";
defparam ix26337z43919.input_register_mode = "none";
defparam ix26337z43919.input_sync_reset = "none";
defparam ix26337z43919.oe_async_reset = "none";
defparam ix26337z43919.oe_power_up = "low";
defparam ix26337z43919.oe_register_mode = "none";
defparam ix26337z43919.oe_sync_reset = "none";
defparam ix26337z43919.operation_mode = "output";
defparam ix26337z43919.output_async_reset = "none";
defparam ix26337z43919.output_power_up = "low";
defparam ix26337z43919.output_register_mode = "none";
defparam ix26337z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A18
cycloneii_io ix27334z43919(
	.datain(nx27334z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[5]));
// synopsys translate_off
defparam ix27334z43919.input_async_reset = "none";
defparam ix27334z43919.input_power_up = "low";
defparam ix27334z43919.input_register_mode = "none";
defparam ix27334z43919.input_sync_reset = "none";
defparam ix27334z43919.oe_async_reset = "none";
defparam ix27334z43919.oe_power_up = "low";
defparam ix27334z43919.oe_register_mode = "none";
defparam ix27334z43919.oe_sync_reset = "none";
defparam ix27334z43919.operation_mode = "output";
defparam ix27334z43919.output_async_reset = "none";
defparam ix27334z43919.output_power_up = "low";
defparam ix27334z43919.output_register_mode = "none";
defparam ix27334z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G15
cycloneii_io ix28331z43919(
	.datain(nx28331z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[6]));
// synopsys translate_off
defparam ix28331z43919.input_async_reset = "none";
defparam ix28331z43919.input_power_up = "low";
defparam ix28331z43919.input_register_mode = "none";
defparam ix28331z43919.input_sync_reset = "none";
defparam ix28331z43919.oe_async_reset = "none";
defparam ix28331z43919.oe_power_up = "low";
defparam ix28331z43919.oe_register_mode = "none";
defparam ix28331z43919.oe_sync_reset = "none";
defparam ix28331z43919.operation_mode = "output";
defparam ix28331z43919.output_async_reset = "none";
defparam ix28331z43919.output_power_up = "low";
defparam ix28331z43919.output_register_mode = "none";
defparam ix28331z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F16
cycloneii_io ix29328z43919(
	.datain(nx29328z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[7]));
// synopsys translate_off
defparam ix29328z43919.input_async_reset = "none";
defparam ix29328z43919.input_power_up = "low";
defparam ix29328z43919.input_register_mode = "none";
defparam ix29328z43919.input_sync_reset = "none";
defparam ix29328z43919.oe_async_reset = "none";
defparam ix29328z43919.oe_power_up = "low";
defparam ix29328z43919.oe_register_mode = "none";
defparam ix29328z43919.oe_sync_reset = "none";
defparam ix29328z43919.operation_mode = "output";
defparam ix29328z43919.output_async_reset = "none";
defparam ix29328z43919.output_power_up = "low";
defparam ix29328z43919.output_register_mode = "none";
defparam ix29328z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA14
cycloneii_io i_data_a0_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[0]));
// synopsys translate_off
defparam i_data_a0_a_aI.input_async_reset = "none";
defparam i_data_a0_a_aI.input_power_up = "low";
defparam i_data_a0_a_aI.input_register_mode = "none";
defparam i_data_a0_a_aI.input_sync_reset = "none";
defparam i_data_a0_a_aI.oe_async_reset = "none";
defparam i_data_a0_a_aI.oe_power_up = "low";
defparam i_data_a0_a_aI.oe_register_mode = "none";
defparam i_data_a0_a_aI.oe_sync_reset = "none";
defparam i_data_a0_a_aI.operation_mode = "input";
defparam i_data_a0_a_aI.output_async_reset = "none";
defparam i_data_a0_a_aI.output_power_up = "low";
defparam i_data_a0_a_aI.output_register_mode = "none";
defparam i_data_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K16
cycloneii_io i_data_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[1]));
// synopsys translate_off
defparam i_data_a1_a_aI.input_async_reset = "none";
defparam i_data_a1_a_aI.input_power_up = "low";
defparam i_data_a1_a_aI.input_register_mode = "none";
defparam i_data_a1_a_aI.input_sync_reset = "none";
defparam i_data_a1_a_aI.oe_async_reset = "none";
defparam i_data_a1_a_aI.oe_power_up = "low";
defparam i_data_a1_a_aI.oe_register_mode = "none";
defparam i_data_a1_a_aI.oe_sync_reset = "none";
defparam i_data_a1_a_aI.operation_mode = "input";
defparam i_data_a1_a_aI.output_async_reset = "none";
defparam i_data_a1_a_aI.output_power_up = "low";
defparam i_data_a1_a_aI.output_register_mode = "none";
defparam i_data_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC7
cycloneii_io i_data_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[2]));
// synopsys translate_off
defparam i_data_a2_a_aI.input_async_reset = "none";
defparam i_data_a2_a_aI.input_power_up = "low";
defparam i_data_a2_a_aI.input_register_mode = "none";
defparam i_data_a2_a_aI.input_sync_reset = "none";
defparam i_data_a2_a_aI.oe_async_reset = "none";
defparam i_data_a2_a_aI.oe_power_up = "low";
defparam i_data_a2_a_aI.oe_register_mode = "none";
defparam i_data_a2_a_aI.oe_sync_reset = "none";
defparam i_data_a2_a_aI.operation_mode = "input";
defparam i_data_a2_a_aI.output_async_reset = "none";
defparam i_data_a2_a_aI.output_power_up = "low";
defparam i_data_a2_a_aI.output_register_mode = "none";
defparam i_data_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE3
cycloneii_io i_data_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[3]));
// synopsys translate_off
defparam i_data_a3_a_aI.input_async_reset = "none";
defparam i_data_a3_a_aI.input_power_up = "low";
defparam i_data_a3_a_aI.input_register_mode = "none";
defparam i_data_a3_a_aI.input_sync_reset = "none";
defparam i_data_a3_a_aI.oe_async_reset = "none";
defparam i_data_a3_a_aI.oe_power_up = "low";
defparam i_data_a3_a_aI.oe_register_mode = "none";
defparam i_data_a3_a_aI.oe_sync_reset = "none";
defparam i_data_a3_a_aI.operation_mode = "input";
defparam i_data_a3_a_aI.output_async_reset = "none";
defparam i_data_a3_a_aI.output_power_up = "low";
defparam i_data_a3_a_aI.output_register_mode = "none";
defparam i_data_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V11
cycloneii_io i_data_a4_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[4]));
// synopsys translate_off
defparam i_data_a4_a_aI.input_async_reset = "none";
defparam i_data_a4_a_aI.input_power_up = "low";
defparam i_data_a4_a_aI.input_register_mode = "none";
defparam i_data_a4_a_aI.input_sync_reset = "none";
defparam i_data_a4_a_aI.oe_async_reset = "none";
defparam i_data_a4_a_aI.oe_power_up = "low";
defparam i_data_a4_a_aI.oe_register_mode = "none";
defparam i_data_a4_a_aI.oe_sync_reset = "none";
defparam i_data_a4_a_aI.operation_mode = "input";
defparam i_data_a4_a_aI.output_async_reset = "none";
defparam i_data_a4_a_aI.output_power_up = "low";
defparam i_data_a4_a_aI.output_register_mode = "none";
defparam i_data_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V13
cycloneii_io i_data_a5_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[5]));
// synopsys translate_off
defparam i_data_a5_a_aI.input_async_reset = "none";
defparam i_data_a5_a_aI.input_power_up = "low";
defparam i_data_a5_a_aI.input_register_mode = "none";
defparam i_data_a5_a_aI.input_sync_reset = "none";
defparam i_data_a5_a_aI.oe_async_reset = "none";
defparam i_data_a5_a_aI.oe_power_up = "low";
defparam i_data_a5_a_aI.oe_register_mode = "none";
defparam i_data_a5_a_aI.oe_sync_reset = "none";
defparam i_data_a5_a_aI.operation_mode = "input";
defparam i_data_a5_a_aI.output_async_reset = "none";
defparam i_data_a5_a_aI.output_power_up = "low";
defparam i_data_a5_a_aI.output_register_mode = "none";
defparam i_data_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A14
cycloneii_io i_data_a6_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[6]));
// synopsys translate_off
defparam i_data_a6_a_aI.input_async_reset = "none";
defparam i_data_a6_a_aI.input_power_up = "low";
defparam i_data_a6_a_aI.input_register_mode = "none";
defparam i_data_a6_a_aI.input_sync_reset = "none";
defparam i_data_a6_a_aI.oe_async_reset = "none";
defparam i_data_a6_a_aI.oe_power_up = "low";
defparam i_data_a6_a_aI.oe_register_mode = "none";
defparam i_data_a6_a_aI.oe_sync_reset = "none";
defparam i_data_a6_a_aI.operation_mode = "input";
defparam i_data_a6_a_aI.output_async_reset = "none";
defparam i_data_a6_a_aI.output_power_up = "low";
defparam i_data_a6_a_aI.output_register_mode = "none";
defparam i_data_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD22
cycloneii_io i_data_a7_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[7]));
// synopsys translate_off
defparam i_data_a7_a_aI.input_async_reset = "none";
defparam i_data_a7_a_aI.input_power_up = "low";
defparam i_data_a7_a_aI.input_register_mode = "none";
defparam i_data_a7_a_aI.input_sync_reset = "none";
defparam i_data_a7_a_aI.oe_async_reset = "none";
defparam i_data_a7_a_aI.oe_power_up = "low";
defparam i_data_a7_a_aI.oe_register_mode = "none";
defparam i_data_a7_a_aI.oe_sync_reset = "none";
defparam i_data_a7_a_aI.operation_mode = "input";
defparam i_data_a7_a_aI.output_async_reset = "none";
defparam i_data_a7_a_aI.output_power_up = "low";
defparam i_data_a7_a_aI.output_register_mode = "none";
defparam i_data_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
