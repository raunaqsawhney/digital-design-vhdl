-------------------------------------------------------------------------------
-- top_lab3.vhd
-- top level code for lab3
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.lab3_pkg.all;

entity top_lab3 is
  port ( nreset       : in  std_logic;  -- reset pin
         clk        : in  std_logic;  -- clock
         rxflex     : in  std_logic;  -- rx uart input
         txflex                       -- tx uart output
       , ctsflex    : out std_logic;  -- cts uart output
         o_sevenseg : out std_logic_vector(15 downto 0)  --sevensegment ouput
  );
end top_lab3;


architecture main of top_lab3 is

  signal reset
       , pixavail : std_logic;
  signal pixel
       , result   : std_logic_vector (7 downto 0);
  
begin

  reset <= not( nreset );
  
  u_uw_uart: entity work.uw_uart(main)
    port map (
      clk        => clk,
      reset      => reset,
      rxflex     => rxflex,
      datain     => pixel,
      txflex     => txflex,
      o_pixavail => pixavail
    );
  ctsflex <= '1';                       -- permanently enable
  
  u_lab3: entity work.lab3(main)
    port map (
      clk      => clk,
      reset    => reset,
      i_valid  => pixavail, 
      i_data   => pixel,
      o_data   => result
    );

  o_sevenseg <=
      to_sevenseg( unsigned(result(7 downto 4)), '0' )
    & to_sevenseg( unsigned(result(3 downto 0)), reset )
    when rising_edge( clk );
  
end main;
