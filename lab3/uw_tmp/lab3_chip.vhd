-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "06/15/2014 01:06:38"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	lab3_chip IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	i_valid : IN std_logic;
	i_data : IN std_logic_vector(7 DOWNTO 0);
	o_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab3_chip;

ARCHITECTURE structure OF lab3_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_data : std_logic_vector(7 DOWNTO 0);
SIGNAL clk_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL modgen_counter_counter_anx59247z7 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z14 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z10 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z8 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z2 : std_logic;
SIGNAL modgen_counter_counter_anx56256z1 : std_logic;
SIGNAL clk_acombout : std_logic;
SIGNAL clk_aclkctrl_outclk : std_logic;
SIGNAL reset_acombout : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL modgen_counter_counter_anx51271z1 : std_logic;
SIGNAL modgen_counter_counter_anx58250z3 : std_logic;
SIGNAL modgen_counter_counter_anx59247z17 : std_logic;
SIGNAL modgen_counter_counter_anx59247z16 : std_logic;
SIGNAL modgen_counter_counter_anx52268z1 : std_logic;
SIGNAL modgen_counter_counter_anx59247z15 : std_logic;
SIGNAL modgen_counter_counter_anx59247z14 : std_logic;
SIGNAL modgen_counter_counter_anx53265z1 : std_logic;
SIGNAL modgen_counter_counter_anx59247z13 : std_logic;
SIGNAL modgen_counter_counter_anx59247z12 : std_logic;
SIGNAL modgen_counter_counter_anx59247z10 : std_logic;
SIGNAL modgen_counter_counter_anx55259z1 : std_logic;
SIGNAL modgen_counter_counter_anx59247z9 : std_logic;
SIGNAL modgen_counter_counter_anx59247z8 : std_logic;
SIGNAL modgen_counter_counter_anx59247z6 : std_logic;
SIGNAL modgen_counter_counter_anx59247z4 : std_logic;
SIGNAL modgen_counter_counter_anx58250z1 : std_logic;
SIGNAL modgen_counter_counter_anx59247z3 : std_logic;
SIGNAL modgen_counter_counter_anx59247z2 : std_logic;
SIGNAL modgen_counter_counter_anx59247z1 : std_logic;
SIGNAL modgen_counter_counter_anx2038z1 : std_logic;
SIGNAL nx7124z2 : std_logic;
SIGNAL modgen_counter_counter_anx57253z1 : std_logic;
SIGNAL modgen_counter_counter_anx59247z5 : std_logic;
SIGNAL nx7124z3 : std_logic;
SIGNAL modgen_counter_counter_anx54262z1 : std_logic;
SIGNAL modgen_counter_counter_anx59247z11 : std_logic;
SIGNAL nx7124z4 : std_logic;
SIGNAL nx7124z1 : std_logic;
SIGNAL modgen_counter_o_data_anx58250z2 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z16 : std_logic;
SIGNAL modgen_counter_o_data_anx51271z1 : std_logic;
SIGNAL nx22349z1_afeeder_combout : std_logic;
SIGNAL nx22349z1 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z15 : std_logic;
SIGNAL modgen_counter_o_data_anx52268z1 : std_logic;
SIGNAL nx23346z1 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z12 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z13 : std_logic;
SIGNAL modgen_counter_o_data_anx53265z1 : std_logic;
SIGNAL nx24343z1 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z11 : std_logic;
SIGNAL modgen_counter_o_data_anx54262z1 : std_logic;
SIGNAL nx25340z1 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z9 : std_logic;
SIGNAL modgen_counter_o_data_anx55259z1 : std_logic;
SIGNAL nx26337z1 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z6 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z7 : std_logic;
SIGNAL modgen_counter_o_data_anx56256z1 : std_logic;
SIGNAL nx27334z1 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z4 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z5 : std_logic;
SIGNAL modgen_counter_o_data_anx57253z1 : std_logic;
SIGNAL nx28331z1_afeeder_combout : std_logic;
SIGNAL nx28331z1 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z3 : std_logic;
SIGNAL modgen_counter_o_data_anx32510z1 : std_logic;
SIGNAL nx29328z1_afeeder_combout : std_logic;
SIGNAL nx29328z1 : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_i_valid <= i_valid;
ww_i_data <= i_data;
o_data <= ww_o_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

clk_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & clk_acombout);

modgen_counter_counter_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx56256z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx59247z7);

modgen_counter_o_data_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_o_data_anx52268z1,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_data_anx32510z14);

modgen_counter_o_data_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_o_data_anx54262z1,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_data_anx32510z10);

modgen_counter_o_data_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_o_data_anx55259z1,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_data_anx32510z8);

modgen_counter_o_data_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_o_data_anx32510z1,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_data_anx32510z2);

modgen_counter_counter_aix59247z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx56256z1 = modgen_counter_counter_anx59247z7 & !modgen_counter_counter_anx59247z8 # !modgen_counter_counter_anx59247z7 & (modgen_counter_counter_anx59247z8 # GND)
-- modgen_counter_counter_anx59247z6 = CARRY(!modgen_counter_counter_anx59247z8 # !modgen_counter_counter_anx59247z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_counter_anx59247z7,
	datad => VCC,
	cin => modgen_counter_counter_anx59247z8,
	combout => modgen_counter_counter_anx56256z1,
	cout => modgen_counter_counter_anx59247z6);

clk_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => clk_acombout);

clk_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clk_aclkctrl_outclk);

reset_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => reset_acombout);

i_valid_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_valid,
	combout => i_valid_acombout);

modgen_counter_counter_aix59247z52932 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx51271z1 = modgen_counter_counter_anx59247z17 $ VCC
-- modgen_counter_counter_anx59247z16 = CARRY(modgen_counter_counter_anx59247z17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_counter_anx59247z17,
	datad => VCC,
	combout => modgen_counter_counter_anx51271z1,
	cout => modgen_counter_counter_anx59247z16);

modgen_counter_counter_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx58250z3 = i_valid_acombout # reset_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_valid_acombout,
	datad => reset_acombout,
	combout => modgen_counter_counter_anx58250z3);

modgen_counter_counter_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx51271z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx59247z17);

modgen_counter_counter_aix59247z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx52268z1 = modgen_counter_counter_anx59247z15 & !modgen_counter_counter_anx59247z16 # !modgen_counter_counter_anx59247z15 & (modgen_counter_counter_anx59247z16 # GND)
-- modgen_counter_counter_anx59247z14 = CARRY(!modgen_counter_counter_anx59247z16 # !modgen_counter_counter_anx59247z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_counter_anx59247z15,
	datad => VCC,
	cin => modgen_counter_counter_anx59247z16,
	combout => modgen_counter_counter_anx52268z1,
	cout => modgen_counter_counter_anx59247z14);

modgen_counter_counter_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx52268z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx59247z15);

modgen_counter_counter_aix59247z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx53265z1 = modgen_counter_counter_anx59247z13 & (modgen_counter_counter_anx59247z14 $ GND) # !modgen_counter_counter_anx59247z13 & !modgen_counter_counter_anx59247z14 & VCC
-- modgen_counter_counter_anx59247z12 = CARRY(modgen_counter_counter_anx59247z13 & !modgen_counter_counter_anx59247z14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_counter_anx59247z13,
	datad => VCC,
	cin => modgen_counter_counter_anx59247z14,
	combout => modgen_counter_counter_anx53265z1,
	cout => modgen_counter_counter_anx59247z12);

modgen_counter_counter_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx53265z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx59247z13);

modgen_counter_counter_aix59247z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx54262z1 = modgen_counter_counter_anx59247z11 & !modgen_counter_counter_anx59247z12 # !modgen_counter_counter_anx59247z11 & (modgen_counter_counter_anx59247z12 # GND)
-- modgen_counter_counter_anx59247z10 = CARRY(!modgen_counter_counter_anx59247z12 # !modgen_counter_counter_anx59247z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_counter_anx59247z11,
	datad => VCC,
	cin => modgen_counter_counter_anx59247z12,
	combout => modgen_counter_counter_anx54262z1,
	cout => modgen_counter_counter_anx59247z10);

modgen_counter_counter_aix59247z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx55259z1 = modgen_counter_counter_anx59247z9 & (modgen_counter_counter_anx59247z10 $ GND) # !modgen_counter_counter_anx59247z9 & !modgen_counter_counter_anx59247z10 & VCC
-- modgen_counter_counter_anx59247z8 = CARRY(modgen_counter_counter_anx59247z9 & !modgen_counter_counter_anx59247z10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_counter_anx59247z9,
	datad => VCC,
	cin => modgen_counter_counter_anx59247z10,
	combout => modgen_counter_counter_anx55259z1,
	cout => modgen_counter_counter_anx59247z8);

modgen_counter_counter_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx55259z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx59247z9);

modgen_counter_counter_aix59247z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx57253z1 = modgen_counter_counter_anx59247z5 & (modgen_counter_counter_anx59247z6 $ GND) # !modgen_counter_counter_anx59247z5 & !modgen_counter_counter_anx59247z6 & VCC
-- modgen_counter_counter_anx59247z4 = CARRY(modgen_counter_counter_anx59247z5 & !modgen_counter_counter_anx59247z6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_counter_anx59247z5,
	datad => VCC,
	cin => modgen_counter_counter_anx59247z6,
	combout => modgen_counter_counter_anx57253z1,
	cout => modgen_counter_counter_anx59247z4);

modgen_counter_counter_aix59247z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx58250z1 = modgen_counter_counter_anx59247z3 & !modgen_counter_counter_anx59247z4 # !modgen_counter_counter_anx59247z3 & (modgen_counter_counter_anx59247z4 # GND)
-- modgen_counter_counter_anx59247z2 = CARRY(!modgen_counter_counter_anx59247z4 # !modgen_counter_counter_anx59247z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_counter_anx59247z3,
	datad => VCC,
	cin => modgen_counter_counter_anx59247z4,
	combout => modgen_counter_counter_anx58250z1,
	cout => modgen_counter_counter_anx59247z2);

modgen_counter_counter_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx58250z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx59247z3);

modgen_counter_counter_aix59247z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_counter_anx59247z1 = modgen_counter_counter_anx2038z1 $ !modgen_counter_counter_anx59247z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_counter_anx2038z1,
	cin => modgen_counter_counter_anx59247z2,
	combout => modgen_counter_counter_anx59247z1);

modgen_counter_counter_areg_q_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx59247z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx2038z1);

ix7124z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx7124z2 = reset_acombout # i_valid_acombout & modgen_counter_counter_anx2038z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_acombout,
	datac => i_valid_acombout,
	datad => modgen_counter_counter_anx2038z1,
	combout => nx7124z2);

modgen_counter_counter_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx57253z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx59247z5);

ix7124z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx7124z3 = modgen_counter_counter_anx59247z7 & modgen_counter_counter_anx59247z5 & modgen_counter_counter_anx59247z3 & modgen_counter_counter_anx59247z9

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_counter_anx59247z7,
	datab => modgen_counter_counter_anx59247z5,
	datac => modgen_counter_counter_anx59247z3,
	datad => modgen_counter_counter_anx59247z9,
	combout => nx7124z3);

modgen_counter_counter_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_counter_anx54262z1,
	sclr => reset_acombout,
	ena => modgen_counter_counter_anx58250z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_counter_anx59247z11);

ix7124z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx7124z4 = modgen_counter_counter_anx59247z15 & modgen_counter_counter_anx59247z11 & modgen_counter_counter_anx59247z17 & modgen_counter_counter_anx59247z13

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_counter_anx59247z15,
	datab => modgen_counter_counter_anx59247z11,
	datac => modgen_counter_counter_anx59247z17,
	datad => modgen_counter_counter_anx59247z13,
	combout => nx7124z4);

ix7124z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx7124z1 = nx7124z2 # i_valid_acombout & nx7124z3 & nx7124z4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx7124z2,
	datac => nx7124z3,
	datad => nx7124z4,
	combout => nx7124z1);

modgen_counter_o_data_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx58250z2 = i_valid_acombout # nx7124z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_valid_acombout,
	datad => nx7124z1,
	combout => modgen_counter_o_data_anx58250z2);

modgen_counter_o_data_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_o_data_anx51271z1,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_data_anx32510z16);

modgen_counter_o_data_aix32510z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx51271z1 = modgen_counter_o_data_anx32510z16 $ VCC
-- modgen_counter_o_data_anx32510z15 = CARRY(modgen_counter_o_data_anx32510z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_data_anx32510z16,
	datad => VCC,
	combout => modgen_counter_o_data_anx51271z1,
	cout => modgen_counter_o_data_anx32510z15);

nx22349z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx22349z1_afeeder_combout = modgen_counter_o_data_anx51271z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_o_data_anx51271z1,
	combout => nx22349z1_afeeder_combout);

reg_out_o_data_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => nx22349z1_afeeder_combout,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx22349z1);

modgen_counter_o_data_aix32510z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx52268z1 = modgen_counter_o_data_anx32510z14 & !modgen_counter_o_data_anx32510z15 # !modgen_counter_o_data_anx32510z14 & (modgen_counter_o_data_anx32510z15 # GND)
-- modgen_counter_o_data_anx32510z13 = CARRY(!modgen_counter_o_data_anx32510z15 # !modgen_counter_o_data_anx32510z14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_data_anx32510z14,
	datad => VCC,
	cin => modgen_counter_o_data_anx32510z15,
	combout => modgen_counter_o_data_anx52268z1,
	cout => modgen_counter_o_data_anx32510z13);

reg_out_o_data_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => modgen_counter_o_data_anx52268z1,
	sclr => nx7124z1,
	sload => VCC,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx23346z1);

modgen_counter_o_data_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_o_data_anx53265z1,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_data_anx32510z12);

modgen_counter_o_data_aix32510z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx53265z1 = modgen_counter_o_data_anx32510z12 & (modgen_counter_o_data_anx32510z13 $ GND) # !modgen_counter_o_data_anx32510z12 & !modgen_counter_o_data_anx32510z13 & VCC
-- modgen_counter_o_data_anx32510z11 = CARRY(modgen_counter_o_data_anx32510z12 & !modgen_counter_o_data_anx32510z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_data_anx32510z12,
	datad => VCC,
	cin => modgen_counter_o_data_anx32510z13,
	combout => modgen_counter_o_data_anx53265z1,
	cout => modgen_counter_o_data_anx32510z11);

reg_out_o_data_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => modgen_counter_o_data_anx53265z1,
	sclr => nx7124z1,
	sload => VCC,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx24343z1);

modgen_counter_o_data_aix32510z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx54262z1 = modgen_counter_o_data_anx32510z10 & !modgen_counter_o_data_anx32510z11 # !modgen_counter_o_data_anx32510z10 & (modgen_counter_o_data_anx32510z11 # GND)
-- modgen_counter_o_data_anx32510z9 = CARRY(!modgen_counter_o_data_anx32510z11 # !modgen_counter_o_data_anx32510z10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_data_anx32510z10,
	datad => VCC,
	cin => modgen_counter_o_data_anx32510z11,
	combout => modgen_counter_o_data_anx54262z1,
	cout => modgen_counter_o_data_anx32510z9);

reg_out_o_data_obuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => modgen_counter_o_data_anx54262z1,
	sclr => nx7124z1,
	sload => VCC,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx25340z1);

modgen_counter_o_data_aix32510z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx55259z1 = modgen_counter_o_data_anx32510z8 & (modgen_counter_o_data_anx32510z9 $ GND) # !modgen_counter_o_data_anx32510z8 & !modgen_counter_o_data_anx32510z9 & VCC
-- modgen_counter_o_data_anx32510z7 = CARRY(modgen_counter_o_data_anx32510z8 & !modgen_counter_o_data_anx32510z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_data_anx32510z8,
	datad => VCC,
	cin => modgen_counter_o_data_anx32510z9,
	combout => modgen_counter_o_data_anx55259z1,
	cout => modgen_counter_o_data_anx32510z7);

reg_out_o_data_obuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => modgen_counter_o_data_anx55259z1,
	sclr => nx7124z1,
	sload => VCC,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx26337z1);

modgen_counter_o_data_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_o_data_anx56256z1,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_data_anx32510z6);

modgen_counter_o_data_aix32510z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx56256z1 = modgen_counter_o_data_anx32510z6 & !modgen_counter_o_data_anx32510z7 # !modgen_counter_o_data_anx32510z6 & (modgen_counter_o_data_anx32510z7 # GND)
-- modgen_counter_o_data_anx32510z5 = CARRY(!modgen_counter_o_data_anx32510z7 # !modgen_counter_o_data_anx32510z6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_data_anx32510z6,
	datad => VCC,
	cin => modgen_counter_o_data_anx32510z7,
	combout => modgen_counter_o_data_anx56256z1,
	cout => modgen_counter_o_data_anx32510z5);

reg_out_o_data_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => modgen_counter_o_data_anx56256z1,
	sclr => nx7124z1,
	sload => VCC,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx27334z1);

modgen_counter_o_data_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => modgen_counter_o_data_anx57253z1,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_data_anx32510z4);

modgen_counter_o_data_aix32510z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx57253z1 = modgen_counter_o_data_anx32510z4 & (modgen_counter_o_data_anx32510z5 $ GND) # !modgen_counter_o_data_anx32510z4 & !modgen_counter_o_data_anx32510z5 & VCC
-- modgen_counter_o_data_anx32510z3 = CARRY(modgen_counter_o_data_anx32510z4 & !modgen_counter_o_data_anx32510z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_data_anx32510z4,
	datad => VCC,
	cin => modgen_counter_o_data_anx32510z5,
	combout => modgen_counter_o_data_anx57253z1,
	cout => modgen_counter_o_data_anx32510z3);

nx28331z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx28331z1_afeeder_combout = modgen_counter_o_data_anx57253z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_data_anx57253z1,
	combout => nx28331z1_afeeder_combout);

reg_out_o_data_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => nx28331z1_afeeder_combout,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx28331z1);

modgen_counter_o_data_aix32510z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_data_anx32510z1 = modgen_counter_o_data_anx32510z2 $ modgen_counter_o_data_anx32510z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_data_anx32510z2,
	cin => modgen_counter_o_data_anx32510z3,
	combout => modgen_counter_o_data_anx32510z1);

nx29328z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx29328z1_afeeder_combout = modgen_counter_o_data_anx32510z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_o_data_anx32510z1,
	combout => nx29328z1_afeeder_combout);

reg_out_o_data_obuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => nx29328z1_afeeder_combout,
	sclr => nx7124z1,
	ena => modgen_counter_o_data_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx29328z1);

ix22349z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx22349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(0));

ix23346z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx23346z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(1));

ix24343z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx24343z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(2));

ix25340z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx25340z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(3));

ix26337z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx26337z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(4));

ix27334z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx27334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(5));

ix28331z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx28331z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(6));

ix29328z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx29328z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(7));

i_data_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(0));

i_data_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(1));

i_data_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(2));

i_data_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(3));

i_data_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(4));

i_data_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(5));

i_data_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(6));

i_data_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(7));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity lab3 is
  port (
      clk  : in STD_LOGIC
    ; reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_data  : in UNSIGNED (7 downto 0)
    ; o_data  : out UNSIGNED (7 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of lab3 is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.lab3_chip
    port map (
        clk => clk
      , reset => reset
      , i_valid => i_valid
      , i_data(7) => i_data(7)
      , i_data(6) => i_data(6)
      , i_data(5) => i_data(5)
      , i_data(4) => i_data(4)
      , i_data(3) => i_data(3)
      , i_data(2) => i_data(2)
      , i_data(1) => i_data(1)
      , i_data(0) => i_data(0)
      , o_data(7) => o_data(7)
      , o_data(6) => o_data(6)
      , o_data(5) => o_data(5)
      , o_data(4) => o_data(4)
      , o_data(3) => o_data(3)
      , o_data(2) => o_data(2)
      , o_data(1) => o_data(1)
      , o_data(0) => o_data(0)
    );
end architecture;

