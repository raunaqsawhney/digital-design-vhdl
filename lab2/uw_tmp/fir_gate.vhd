
-- 
-- Definition of  fir
-- 
--      Wed May 28 10:45:09 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity fir is 
   port (
      clk : IN std_logic ;
      i_data : IN std_logic_vector (15 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end fir ;

architecture low_pass of fir is 
   signal GND: std_logic ;

begin
   GND <= '0' ;
   o_data(0) <= GND when GND = '1' else 'Z' ;
   o_data(1) <= GND when GND = '1' else 'Z' ;
   o_data(2) <= GND when GND = '1' else 'Z' ;
   o_data(3) <= GND when GND = '1' else 'Z' ;
   o_data(4) <= GND when GND = '1' else 'Z' ;
   o_data(5) <= GND when GND = '1' else 'Z' ;
   o_data(6) <= GND when GND = '1' else 'Z' ;
   o_data(7) <= GND when GND = '1' else 'Z' ;
   o_data(8) <= GND when GND = '1' else 'Z' ;
   o_data(9) <= GND when GND = '1' else 'Z' ;
   o_data(10) <= GND when GND = '1' else 'Z' ;
   o_data(11) <= GND when GND = '1' else 'Z' ;
   o_data(12) <= GND when GND = '1' else 'Z' ;
   o_data(13) <= GND when GND = '1' else 'Z' ;
   o_data(14) <= GND when GND = '1' else 'Z' ;
   o_data(15) <= GND when GND = '1' else 'Z' ;
end low_pass ;

