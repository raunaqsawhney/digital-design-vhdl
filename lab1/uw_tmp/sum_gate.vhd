
-- 
-- Definition of  sum
-- 
--      Mon May 19 01:24:00 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity sum is 
   port (
      i_a : IN std_logic ;
      i_b : IN std_logic ;
      i_cin : IN std_logic ;
      o_sum : OUT std_logic) ;
end sum ;

architecture main of sum is 
   signal rtlcs1: std_logic ;

begin
   rtlcs1 <= i_cin XOR i_a ;
   o_sum <= rtlcs1 XOR i_b ;
end main ;

