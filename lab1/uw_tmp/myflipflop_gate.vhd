
-- 
-- Definition of  myflipflop
-- 
--      Thu May 15 20:30:02 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity myflipflop is 
   port (
      i_clock : IN std_logic ;
      i_d : IN std_logic ;
      i_ce : IN std_logic ;
      i_reset : IN std_logic ;
      i_sel : IN std_logic ;
      i_d2 : IN std_logic ;
      o_q : OUT std_logic ;
      o_q_a : OUT std_logic ;
      o_q_b : OUT std_logic ;
      o_q_c : OUT std_logic ;
      o_q_d : OUT std_logic) ;
end myflipflop ;

architecture main of myflipflop is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   signal GND, o_q_c_4n1ss1, o_q_d_5n1ss1, PWR: std_logic ;

begin
   GND <= '0' ;
   o_q_c_4n1ss1 <= i_d2 when i_sel = '1' else i_d ;
   DFFPC (i_d,GND,GND,i_clock,o_q) ;
   DFFRSE (i_d,GND,i_reset,PWR,i_clock,o_q_a) ;
   PWR <= '1' ;
   DFFPCE (i_d,GND,GND,i_ce,i_clock,o_q_b) ;
   DFFPC (o_q_c_4n1ss1,GND,GND,i_clock,o_q_c) ;
   DFFPC (o_q_d_5n1ss1,GND,GND,i_clock,o_q_d) ;
   o_q_d_5n1ss1 <= i_d OR i_sel ;
end main ;

