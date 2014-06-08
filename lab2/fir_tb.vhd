------------------------------------------------------------------------
-- fir test bench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir_tb is
end entity;

------------------------------------------------------------------------

architecture main of fir_tb is

    signal input 	: word;
	signal output 	: word;
	signal clk		: std_logic;


begin

    TEST_BENCH : entity work.fir(low_pass)
    port map (
		clk 	=> clk,
       	i_data	=> input,
		o_data	=> output
    );

	IMPULSE	: process begin
		input 	<= x"0000";
		wait for 170 ns;
		input	<= x"1000";
		wait for 10 ns;
		input 	<= x"0000";
		wait;
	end process;

	CLK_CYCLE	: process begin
		clk		<= '0';
		wait for 5 ns;
		clk 	<= '1';
		wait for 5 ns;
	end process;

end architecture;
------------------------------------------------------------------------

