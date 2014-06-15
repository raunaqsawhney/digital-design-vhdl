
-- 
-- Definition of  lab3
-- 
--      Sun Jun 15 01:06:15 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic ;
      px51 : OUT std_logic ;
      px20 : OUT std_logic ;
      px46 : OUT std_logic ;
      px42 : OUT std_logic ;
      px17 : OUT std_logic ;
      px13 : OUT std_logic ;
      px9 : OUT std_logic ;
      px5 : OUT std_logic ;
      px1 : OUT std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx58250z2, nx32510z2, nx32510z4, nx32510z6, nx32510z8, nx32510z10, 
      nx32510z12, nx32510z14, nx32510z16, nx51271z1, nx32510z15, nx52268z1, 
      nx32510z13, nx53265z1, nx32510z11, nx54262z1, nx32510z9, nx55259z1, 
      nx32510z7, nx56256z1, nx32510z5, nx57253z1, nx32510z3, nx32510z1, 
      nx_modgen_counter_8_0_vcc_net: std_logic ;

begin
   px51 <= nx32510z1 ;
   px20 <= nx58250z2 ;
   px46 <= nx57253z1 ;
   px42 <= nx56256z1 ;
   px17 <= nx55259z1 ;
   px13 <= nx54262z1 ;
   px9 <= nx53265z1 ;
   px5 <= nx52268z1 ;
   px1 <= nx51271z1 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx32510z2, datain=>
      nx32510z1, clk=>clock, ena=>nx58250z2, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx32510z4, datain=>
      nx57253z1, clk=>clock, ena=>nx58250z2, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx32510z6, datain=>
      nx56256z1, clk=>clock, ena=>nx58250z2, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx32510z8, datain=>
      nx55259z1, clk=>clock, ena=>nx58250z2, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx32510z10, datain=>
      nx54262z1, clk=>clock, ena=>nx58250z2, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx32510z12, datain=>
      nx53265z1, clk=>clock, ena=>nx58250z2, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx32510z14, datain=>
      nx52268z1, clk=>clock, ena=>nx58250z2, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx32510z16, datain=>
      nx51271z1, clk=>clock, ena=>nx58250z2, sclr=>sclear);
   ix32510z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx32510z11, dataa=>nx32510z12, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z13);
   nx_modgen_counter_8_0_vcc_net <= '1';
   ix32510z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx32510z1, dataa=>nx32510z2, datad=>
      nx_modgen_counter_8_0_vcc_net, cin=>nx32510z3);
   ix32510z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx32510z3, dataa=>nx32510z4, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z5);
   ix32510z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx32510z13, dataa=>nx32510z14, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z15);
   ix32510z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx32510z5, dataa=>nx32510z6, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z7);
   ix32510z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx32510z7, dataa=>nx32510z8, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z9);
   ix32510z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx32510z9, dataa=>nx32510z10, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z11);
   ix32510z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx32510z15, dataa=>nx32510z16, 
      datad=>nx_modgen_counter_8_0_vcc_net);
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx58250z2, dataa=>cnt_en, datab=>sclear);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_9_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (8 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (8 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_9_0 ;

architecture IMPLEMENTATION of modgen_counter_9_0 is 
   signal nx58250z3, nx2038z1, nx59247z3, nx59247z5, nx59247z7, nx59247z9, 
      nx59247z11, nx59247z13, nx59247z15, nx59247z17, nx51271z1, nx59247z16, 
      nx52268z1, nx59247z14, nx53265z1, nx59247z12, nx54262z1, nx59247z10, 
      nx55259z1, nx59247z8, nx56256z1, nx59247z6, nx57253z1, nx59247z4, 
      nx58250z1, nx59247z2, nx59247z1, nx_modgen_counter_9_0_vcc_net: 
   std_logic ;

begin
   q(8) <= nx2038z1 ;
   q(7) <= nx59247z3 ;
   q(6) <= nx59247z5 ;
   q(5) <= nx59247z7 ;
   q(4) <= nx59247z9 ;
   q(3) <= nx59247z11 ;
   q(2) <= nx59247z13 ;
   q(1) <= nx59247z15 ;
   q(0) <= nx59247z17 ;
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx2038z1, datain=>
      nx59247z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx59247z3, datain=>
      nx58250z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx59247z5, datain=>
      nx57253z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx59247z7, datain=>
      nx56256z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx59247z9, datain=>
      nx55259z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx59247z11, datain=>
      nx54262z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx59247z13, datain=>
      nx53265z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx59247z15, datain=>
      nx52268z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx59247z17, datain=>
      nx51271z1, clk=>clock, ena=>nx58250z3, sclr=>sclear);
   ix59247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx59247z12, dataa=>nx59247z13, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z14);
   nx_modgen_counter_9_0_vcc_net <= '1';
   ix59247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, dataa=>nx2038z1, datad=>
      nx_modgen_counter_9_0_vcc_net, cin=>nx59247z2);
   ix59247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx59247z2, dataa=>nx59247z3, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z4);
   ix59247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx59247z4, dataa=>nx59247z5, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z6);
   ix59247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx59247z14, dataa=>nx59247z15, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z16);
   ix59247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx59247z6, dataa=>nx59247z7, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z8);
   ix59247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx59247z8, dataa=>nx59247z9, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z10);
   ix59247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx59247z10, dataa=>nx59247z11, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z12);
   ix59247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx59247z16, dataa=>nx59247z17, 
      datad=>nx_modgen_counter_9_0_vcc_net);
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx58250z3, dataa=>cnt_en, datab=>sclear);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity lab3 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_data : IN std_logic_vector (7 DOWNTO 0) ;
      o_data : OUT std_logic_vector (7 DOWNTO 0)) ;
end lab3 ;

architecture main of lab3 is 
   component modgen_counter_8_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic ;
         px51 : OUT std_logic ;
         px20 : OUT std_logic ;
         px46 : OUT std_logic ;
         px42 : OUT std_logic ;
         px17 : OUT std_logic ;
         px13 : OUT std_logic ;
         px9 : OUT std_logic ;
         px5 : OUT std_logic ;
         px1 : OUT std_logic) ;
   end component ;
   component modgen_counter_9_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal clk_EXMPLR68, reset_EXMPLR69, i_valid_EXMPLR70: std_logic ;
   
   signal counter: std_logic_vector (8 DOWNTO 0) ;
   
   signal clk_int, reset_int, i_valid_int: std_logic ;
   
   signal o_data_EXMPLR79: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx7124z1, nx7124z2, nx7124z3, nx7124z4, nx62259z1, nx62259z2, 
      nx61262z1, nx60265z1, nx59268z1, nx58271z1, nx57274z1, nx56277z1, 
      nx55280z1, nx22349z1, nx23346z1, nx24343z1, nx25340z1, nx26337z1, 
      nx27334z1, nx28331z1, nx29328z1: std_logic ;
   
   signal DANGLING : std_logic_vector (34 downto 0 );

begin
   clk_EXMPLR68 <= clk ;
   reset_EXMPLR69 <= reset ;
   i_valid_EXMPLR70 <= i_valid ;
   o_data(7) <= o_data_EXMPLR79(7) ;
   o_data(6) <= o_data_EXMPLR79(6) ;
   o_data(5) <= o_data_EXMPLR79(5) ;
   o_data(4) <= o_data_EXMPLR79(4) ;
   o_data(3) <= o_data_EXMPLR79(3) ;
   o_data(2) <= o_data_EXMPLR79(2) ;
   o_data(1) <= o_data_EXMPLR79(1) ;
   o_data(0) <= o_data_EXMPLR79(0) ;
   modgen_counter_o_data : modgen_counter_8_0 port map ( clock=>clk_int, 
      q(7)=>DANGLING(0), q(6)=>DANGLING(1), q(5)=>DANGLING(2), q(4)=>
      DANGLING(3), q(3)=>DANGLING(4), q(2)=>DANGLING(5), q(1)=>DANGLING(6), 
      q(0)=>DANGLING(7), clk_en=>DANGLING(8), aclear=>DANGLING(9), sload=>
      DANGLING(10), data(7)=>DANGLING(11), data(6)=>DANGLING(12), data(5)=>
      DANGLING(13), data(4)=>DANGLING(14), data(3)=>DANGLING(15), data(2)=>
      DANGLING(16), data(1)=>DANGLING(17), data(0)=>DANGLING(18), aset=>
      DANGLING(19), sclear=>nx7124z1, updn=>DANGLING(20), cnt_en=>
      i_valid_int, px51=>nx62259z1, px20=>nx62259z2, px46=>nx61262z1, px42=>
      nx60265z1, px17=>nx59268z1, px13=>nx58271z1, px9=>nx57274z1, px5=>
      nx56277z1, px1=>nx55280z1);
   modgen_counter_counter : modgen_counter_9_0 port map ( clock=>clk_int, 
      q(8)=>counter(8), q(7)=>counter(7), q(6)=>counter(6), q(5)=>counter(5), 
      q(4)=>counter(4), q(3)=>counter(3), q(2)=>counter(2), q(1)=>counter(1), 
      q(0)=>counter(0), clk_en=>DANGLING(21), aclear=>DANGLING(22), sload=>
      DANGLING(23), data(8)=>DANGLING(24), data(7)=>DANGLING(25), data(6)=>
      DANGLING(26), data(5)=>DANGLING(27), data(4)=>DANGLING(28), data(3)=>
      DANGLING(29), data(2)=>DANGLING(30), data(1)=>DANGLING(31), data(0)=>
      DANGLING(32), aset=>DANGLING(33), sclear=>reset_int, updn=>DANGLING(34
      ), cnt_en=>i_valid_int);
   reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>reset_int, padio=>reset_EXMPLR69);
   reg_out_o_data_obuf_7 : cycloneii_lcell_ff port map ( regout=>nx29328z1, 
      datain=>nx62259z1, clk=>clk_int, ena=>nx62259z2, sclr=>nx7124z1);
   reg_out_o_data_obuf_6 : cycloneii_lcell_ff port map ( regout=>nx28331z1, 
      datain=>nx61262z1, clk=>clk_int, ena=>nx62259z2, sclr=>nx7124z1);
   reg_out_o_data_obuf_5 : cycloneii_lcell_ff port map ( regout=>nx27334z1, 
      datain=>nx60265z1, clk=>clk_int, ena=>nx62259z2, sclr=>nx7124z1);
   reg_out_o_data_obuf_4 : cycloneii_lcell_ff port map ( regout=>nx26337z1, 
      datain=>nx59268z1, clk=>clk_int, ena=>nx62259z2, sclr=>nx7124z1);
   reg_out_o_data_obuf_3 : cycloneii_lcell_ff port map ( regout=>nx25340z1, 
      datain=>nx58271z1, clk=>clk_int, ena=>nx62259z2, sclr=>nx7124z1);
   reg_out_o_data_obuf_2 : cycloneii_lcell_ff port map ( regout=>nx24343z1, 
      datain=>nx57274z1, clk=>clk_int, ena=>nx62259z2, sclr=>nx7124z1);
   reg_out_o_data_obuf_1 : cycloneii_lcell_ff port map ( regout=>nx23346z1, 
      datain=>nx56277z1, clk=>clk_int, ena=>nx62259z2, sclr=>nx7124z1);
   reg_out_o_data_obuf_0 : cycloneii_lcell_ff port map ( regout=>nx22349z1, 
      datain=>nx55280z1, clk=>clk_int, ena=>nx62259z2, sclr=>nx7124z1);
   ix29328z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR79(7), datain=>nx29328z1);
   ix28331z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR79(6), datain=>nx28331z1);
   ix27334z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR79(5), datain=>nx27334z1);
   ix26337z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR79(4), datain=>nx26337z1);
   ix25340z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR79(3), datain=>nx25340z1);
   ix24343z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR79(2), datain=>nx24343z1);
   ix23346z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR79(1), datain=>nx23346z1);
   ix22349z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR79(0), datain=>nx22349z1);
   i_valid_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR70);
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR68);
   ix7124z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx7124z4, dataa=>counter(3), datab=>counter(2), 
      datac=>counter(1), datad=>counter(0));
   ix7124z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx7124z3, dataa=>counter(7), datab=>counter(6), 
      datac=>counter(5), datad=>counter(4));
   ix7124z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx7124z2, dataa=>counter(8), datab=>reset_int, 
      datac=>i_valid_int);
   ix7124z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eccc") 
       port map ( combout=>nx7124z1, dataa=>i_valid_int, datab=>nx7124z2, 
      datac=>nx7124z3, datad=>nx7124z4);
end main ;

