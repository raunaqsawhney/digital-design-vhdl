
-- 
-- Definition of  heatingsys
-- 
--      Thu May 22 10:49:57 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity heatingsys is 
   port (
      i_cur_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_des_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_reset : IN std_logic ;
      i_clock : IN std_logic ;
      o_heatmode : OUT std_logic_vector (1 DOWNTO 0)) ;
end heatingsys ;

architecture main of heatingsys is 
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
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
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_heatmode_EXMPLR22: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, GND, not_rtlc1n650, rtlc1n154, not_rtlc1n557, rtlc1n209, 
      rtlc1n257: std_logic ;
   
   signal rtlc1n279: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc1n742, rtlc1n313, rtlc1n392_7, rtlc1n392_6, rtlc1n392_5, 
      rtlc1n392_4, rtlc1n392_3, rtlc1n392_2, rtlc1n427, rtlc1n554, 
      not_rtlcn0, rtlc1n557, rtlc1n642, not_rtlc1n642, not_rtlc1n279_2, 
      not_rtlc1n279_1, not_rtlc1n279_0, rtlc1n647, rtlc1n648, rtlc1n649, 
      rtlc1n650, rtlc1n739, not_rtlcn1, rtlc1n742, rtlc1n796, 
      not_rtlc1n392_7, rtlc1n845, rtlcn0, rtlcn1, rtlcn30, rtlcn47, rtlcs0, 
      rtlcs1, rtlcs2, not_o_heatmode_1, not_o_heatmode_0: std_logic ;
   
   signal DANGLING : std_logic_vector (3 downto 0 );

begin
   o_heatmode(1) <= o_heatmode_EXMPLR22(1) ;
   o_heatmode(0) <= o_heatmode_EXMPLR22(0) ;
   PWR <= '1' ;
   GND <= '0' ;
   not_rtlc1n650 <= NOT rtlc1n650 ;
   not_rtlc1n557 <= NOT rtlc1n557 ;
   not_rtlc1n742 <= NOT rtlc1n742 ;
   rtlc1_27_sub_0 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_cur_temp(7), 
      a(6)=>i_cur_temp(6), a(5)=>i_cur_temp(5), a(4)=>i_cur_temp(4), a(3)=>
      i_cur_temp(3), a(2)=>i_cur_temp(2), a(1)=>i_cur_temp(1), a(0)=>
      i_cur_temp(0), b(7)=>i_des_temp(7), b(6)=>i_des_temp(6), b(5)=>
      i_des_temp(5), b(4)=>i_des_temp(4), b(3)=>i_des_temp(3), b(2)=>
      i_des_temp(2), b(1)=>i_des_temp(1), b(0)=>i_des_temp(0), d(7)=>
      rtlc1n392_7, d(6)=>rtlc1n392_6, d(5)=>rtlc1n392_5, d(4)=>rtlc1n392_4, 
      d(3)=>rtlc1n392_3, d(2)=>rtlc1n392_2, d(1)=>DANGLING(0), d(0)=>
      DANGLING(1), cout=>DANGLING(2));
   rtlc1n427 <= rtlcs0 AND rtlc1n845 ;
   rtlc1_43_sub_1 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_des_temp(7), 
      a(6)=>i_des_temp(6), a(5)=>i_des_temp(5), a(4)=>i_des_temp(4), a(3)=>
      i_des_temp(3), a(2)=>i_des_temp(2), a(1)=>i_des_temp(1), a(0)=>
      i_des_temp(0), b(7)=>i_cur_temp(7), b(6)=>i_cur_temp(6), b(5)=>
      i_cur_temp(5), b(4)=>i_cur_temp(4), b(3)=>i_cur_temp(3), b(2)=>
      i_cur_temp(2), b(1)=>i_cur_temp(1), b(0)=>i_cur_temp(0), d(7)=>
      rtlc1n279(7), d(6)=>rtlc1n279(6), d(5)=>rtlc1n279(5), d(4)=>
      rtlc1n279(4), d(3)=>rtlc1n279(3), d(2)=>rtlc1n279(2), d(1)=>
      rtlc1n279(1), d(0)=>rtlc1n279(0), cout=>DANGLING(3));
   rtlc1n313 <= rtlcs1 AND not_rtlc1n742 ;
   rtlc1n209 <= rtlcs2 AND not_rtlc1n557 ;
   rtlc1n257 <= rtlc1n209 AND rtlc1n650 ;
   rtlc1n154 <= rtlcs2 AND not_rtlc1n650 ;
   rtlc1n557 <= not_rtlcn0 OR rtlc1n279(7) ;
   rtlc1_121_or_3 : or_5u_5u port map ( a(4)=>rtlc1n279(3), a(3)=>
      rtlc1n279(4), a(2)=>rtlc1n279(5), a(1)=>rtlc1n279(6), a(0)=>
      rtlc1n279(7), d=>rtlc1n642);
   not_rtlc1n642 <= NOT rtlc1n642 ;
   not_rtlc1n279_2 <= NOT rtlc1n279(2) ;
   not_rtlc1n279_1 <= NOT rtlc1n279(1) ;
   not_rtlc1n279_0 <= NOT rtlc1n279(0) ;
   rtlc1n647 <= not_rtlc1n279_1 AND not_rtlc1n279_0 ;
   rtlc1n648 <= not_rtlc1n279_2 OR rtlc1n647 ;
   rtlc1n649 <= not_rtlc1n642 AND rtlc1n648 ;
   rtlc1n650 <= rtlc1n649 OR rtlc1n279(7) ;
   rtlc1_134_and_4 : and_3u_3u port map ( a(2)=>rtlc1n279(2), a(1)=>
      rtlc1n279(1), a(0)=>rtlc1n279(0), d=>rtlc1n739);
   rtlc1n742 <= not_rtlcn1 OR rtlc1n279(7) ;
   rtlc1_170_or_5 : or_6u_6u port map ( a(5)=>rtlc1n392_2, a(4)=>rtlc1n392_3, 
      a(3)=>rtlc1n392_4, a(2)=>rtlc1n392_5, a(1)=>rtlc1n392_6, a(0)=>
      rtlc1n392_7, d=>rtlc1n796);
   not_rtlc1n392_7 <= NOT rtlc1n392_7 ;
   rtlc1n845 <= rtlc1n796 AND not_rtlc1n392_7 ;
   rtlc1n554 <= rtlc1n279(1) AND rtlc1n279(0) ;
   not_rtlcn0 <= NOT rtlcn0 ;
   not_rtlcn1 <= NOT rtlcn1 ;
   rtlcn1 <= rtlc1n642 OR rtlc1n739 ;
   rtlcn30 <= rtlc1n154 OR rtlc1n313 ;
   rtlc_61_or_6 : or_4u_4u port map ( a(3)=>rtlc1n154, a(2)=>rtlc1n257, a(1)
      =>rtlc1n313, a(0)=>rtlc1n427, d=>rtlcn47);
   not_o_heatmode_1 <= NOT o_heatmode_EXMPLR22(1) ;
   not_o_heatmode_0 <= NOT o_heatmode_EXMPLR22(0) ;
   rtlcs1 <= not_o_heatmode_1 AND o_heatmode_EXMPLR22(0) ;
   rtlcs2 <= not_o_heatmode_1 AND not_o_heatmode_0 ;
   rtlcs0 <= o_heatmode_EXMPLR22(1) AND o_heatmode_EXMPLR22(0) ;
   DFFRSE (rtlcn30,GND,i_reset,PWR,i_clock,o_heatmode_EXMPLR22(1)) ;
   DFFRSE (rtlcn47,GND,i_reset,PWR,i_clock,o_heatmode_EXMPLR22(0)) ;
   modgen_or_0 : or_7u_7u port map ( a(6)=>rtlc1n279(2), a(5)=>rtlc1n279(3), 
      a(4)=>rtlc1n279(4), a(3)=>rtlc1n279(5), a(2)=>rtlc1n279(6), a(1)=>
      rtlc1n279(7), a(0)=>rtlc1n554, d=>rtlcn0);
end main ;

