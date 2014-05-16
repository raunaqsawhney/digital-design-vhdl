
-- 
-- Definition of  carry
-- 
--      Thu May 15 21:00:33 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity carry is 
   port (
      i_x : IN std_logic ;
      i_y : IN std_logic ;
      i_cin : IN std_logic ;
      o_carry : OUT std_logic) ;
end carry ;

architecture main of carry is 
   signal o_carry_0n0s3, o_carry_0n0s4, o_carry_0n0s2, o_carry_0n0s5: 
   std_logic ;

begin
   o_carry <= o_carry_0n0s2 OR o_carry_0n0s5 ;
   o_carry_0n0s2 <= o_carry_0n0s3 OR o_carry_0n0s4 ;
   o_carry_0n0s3 <= i_x AND i_y ;
   o_carry_0n0s4 <= i_x AND i_cin ;
   o_carry_0n0s5 <= i_y AND i_cin ;
end main ;

