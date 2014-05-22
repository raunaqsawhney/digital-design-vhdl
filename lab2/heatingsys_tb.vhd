------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
	signal des_temp, cur_temp : signed(7 downto 0);
	signal reset 			  : std_logic;
	signal clock 			  : std_logic;
	signal heatmode 		  : work.heat_pkg.heat_ty;

begin
	heat : entity work.heatingsys(main)
     port map (
       i_des_temp    => des_temp,
       i_cur_temp    => cur_temp,
       i_reset 		 => reset,
	   i_clock 		 => clock,
	   o_heatmode 	 => heatmode
    );

  	process
   	begin
   	---------off to high-------------
   	des_temp <= to_signed(9,8) ; cur_temp <= to_signed(2,8) ; clock <= '1'; reset <= '0';
	wait for 10 ns;

    ---------off to low-------------
    des_temp <= to_signed(6,8) ; cur_temp <= to_signed(2,8) ; clock <= '1'; reset <= '0';
    wait for 10 ns;

    ---------low to high-------------
    des_temp <= to_signed(12,8) ; cur_temp <= to_signed(4,8); clock <= '1'; reset <= '0';
    wait for 10 ns;  

    ---------high to low-------------
    des_temp <= to_signed(4,8) ; cur_temp <= to_signed(12,8); clock <= '1'; reset <= '0';
    wait for 10 ns;

	---------low to off-------------
    des_temp <= to_signed(4,8) ; cur_temp <= to_signed(7,8); clock <= '1'; reset <= '0';
    wait for 10 ns;

    ----------RESET-----------------
    des_temp <= to_signed(3,8) ; cur_temp <= to_signed(6,8); clock <= '1'; reset <= '1';
    wait for 10 ns;

    ---------RESET-------------
    des_temp <= to_signed(4,8) ; cur_temp <= to_signed(7,8); clock <= '0'; reset <= '0';
    wait for 10 ns;
	---------------------------

	end process;
end architecture;
