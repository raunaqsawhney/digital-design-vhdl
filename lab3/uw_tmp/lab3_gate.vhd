
-- 
-- Definition of  lab3
-- 
--      Sat Jun 14 19:03:51 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8 is 
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
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8 is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx23, nx24, nx25, nx26, nx27, nx28, nx29, nx30, nx31, 
      nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, 
      nx44, nx45, nx46, PWR, NOT_nx19: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx24 ;
   q(6) <= nx26 ;
   q(5) <= nx28 ;
   q(4) <= nx30 ;
   q(3) <= nx32 ;
   q(2) <= nx34 ;
   q(1) <= nx36 ;
   q(0) <= nx38 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sclear ;
   DFFPCE (nx23,GND,GND,nx20,clock,nx24) ;
   DFFPCE (nx25,GND,GND,nx20,clock,nx26) ;
   DFFPCE (nx27,GND,GND,nx20,clock,nx28) ;
   DFFPCE (nx29,GND,GND,nx20,clock,nx30) ;
   DFFPCE (nx31,GND,GND,nx20,clock,nx32) ;
   DFFPCE (nx33,GND,GND,nx20,clock,nx34) ;
   DFFPCE (nx35,GND,GND,nx20,clock,nx36) ;
   DFFPCE (nx37,GND,GND,nx20,clock,nx38) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx24, a(6)=>nx26, a(5)=>
      nx28, a(4)=>nx30, a(3)=>nx32, a(2)=>nx34, a(1)=>nx36, a(0)=>nx38, d(7)
      =>nx39, d(6)=>nx40, d(5)=>nx41, d(4)=>nx42, d(3)=>nx43, d(2)=>nx44, 
      d(1)=>nx45, d(0)=>nx46, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx19 <= NOT sclear ;
   nx23 <= nx39 AND NOT_nx19 ;
   nx25 <= nx40 AND NOT_nx19 ;
   nx27 <= nx41 AND NOT_nx19 ;
   nx29 <= nx42 AND NOT_nx19 ;
   nx31 <= nx43 AND NOT_nx19 ;
   nx33 <= nx44 AND NOT_nx19 ;
   nx35 <= nx45 AND NOT_nx19 ;
   nx37 <= nx46 AND NOT_nx19 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_9 is 
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
end counter_up_cnt_en_sclear_clock_0_9 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_9 is 
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
   component inc_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx22, nx25, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, 
      nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, nx50, nx51, PWR, NOT_nx21: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(8) <= nx26 ;
   q(7) <= nx28 ;
   q(6) <= nx30 ;
   q(5) <= nx32 ;
   q(4) <= nx34 ;
   q(3) <= nx36 ;
   q(2) <= nx38 ;
   q(1) <= nx40 ;
   q(0) <= nx42 ;
   GND <= '0' ;
   nx22 <= cnt_en OR sclear ;
   DFFPCE (nx25,GND,GND,nx22,clock,nx26) ;
   DFFPCE (nx27,GND,GND,nx22,clock,nx28) ;
   DFFPCE (nx29,GND,GND,nx22,clock,nx30) ;
   DFFPCE (nx31,GND,GND,nx22,clock,nx32) ;
   DFFPCE (nx33,GND,GND,nx22,clock,nx34) ;
   DFFPCE (nx35,GND,GND,nx22,clock,nx36) ;
   DFFPCE (nx37,GND,GND,nx22,clock,nx38) ;
   DFFPCE (nx39,GND,GND,nx22,clock,nx40) ;
   DFFPCE (nx41,GND,GND,nx22,clock,nx42) ;
   inc : inc_9u_9u_0_0 port map ( cin=>PWR, a(8)=>nx26, a(7)=>nx28, a(6)=>
      nx30, a(5)=>nx32, a(4)=>nx34, a(3)=>nx36, a(2)=>nx38, a(1)=>nx40, a(0)
      =>nx42, d(8)=>nx43, d(7)=>nx44, d(6)=>nx45, d(5)=>nx46, d(4)=>nx47, 
      d(3)=>nx48, d(2)=>nx49, d(1)=>nx50, d(0)=>nx51, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx21 <= NOT sclear ;
   nx25 <= nx43 AND NOT_nx21 ;
   nx27 <= nx44 AND NOT_nx21 ;
   nx29 <= nx45 AND NOT_nx21 ;
   nx31 <= nx46 AND NOT_nx21 ;
   nx33 <= nx47 AND NOT_nx21 ;
   nx35 <= nx48 AND NOT_nx21 ;
   nx37 <= nx49 AND NOT_nx21 ;
   nx39 <= nx50 AND NOT_nx21 ;
   nx41 <= nx51 AND NOT_nx21 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity lab3 is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_data : IN std_logic_vector (7 DOWNTO 0) ;
      o_data : OUT std_logic_vector (7 DOWNTO 0)) ;
end lab3 ;

architecture main of lab3 is 
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8
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
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_9
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
   signal counter: std_logic_vector (8 DOWNTO 0) ;
   
   signal PWR, GND, rtlc1n354, rtlc1n621, rtlcn0, rtlcn1: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   PWR <= '1' ;
   GND <= '0' ;
   rtlc1_203_and_1 : and_8u_8u port map ( a(7)=>counter(7), a(6)=>counter(6), 
      a(5)=>counter(5), a(4)=>counter(4), a(3)=>counter(3), a(2)=>counter(2), 
      a(1)=>counter(1), a(0)=>counter(0), d=>rtlc1n621);
   rtlcn1 <= i_valid AND rtlcn0 ;
   rtlc1n354 <= reset OR rtlcn1 ;
   rtlcn0 <= counter(8) OR rtlc1n621 ;
   modgen_counter_o_data : counter_up_cnt_en_sclear_clock_0_8 port map ( 
      clock=>clk, q(7)=>o_data(7), q(6)=>o_data(6), q(5)=>o_data(5), q(4)=>
      o_data(4), q(3)=>o_data(3), q(2)=>o_data(2), q(1)=>o_data(1), q(0)=>
      o_data(0), clk_en=>PWR, aclear=>GND, sload=>GND, data(7)=>DANGLING(0), 
      data(6)=>DANGLING(1), data(5)=>DANGLING(2), data(4)=>DANGLING(3), 
      data(3)=>DANGLING(4), data(2)=>DANGLING(5), data(1)=>DANGLING(6), 
      data(0)=>DANGLING(7), aset=>GND, sclear=>rtlc1n354, updn=>PWR, cnt_en
      =>i_valid);
   modgen_counter_counter : counter_up_cnt_en_sclear_clock_0_9 port map ( 
      clock=>clk, q(8)=>counter(8), q(7)=>counter(7), q(6)=>counter(6), q(5)
      =>counter(5), q(4)=>counter(4), q(3)=>counter(3), q(2)=>counter(2), 
      q(1)=>counter(1), q(0)=>counter(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(8)=>DANGLING(8), data(7)=>DANGLING(9), data(6)=>DANGLING(10), 
      data(5)=>DANGLING(11), data(4)=>DANGLING(12), data(3)=>DANGLING(13), 
      data(2)=>DANGLING(14), data(1)=>DANGLING(15), data(0)=>DANGLING(16), 
      aset=>GND, sclear=>reset, updn=>PWR, cnt_en=>i_valid);
end main ;

