------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is

	constant period  : time := 20 ns;


begin
  	process
   	begin
   		---------off to high-------------
   		wait until rising_edge(clock);
		des_temp <= to_signed(9,8) ; cur_temp <= to_signed(2,8); reset <= '0';

    	---------high to low-------------
		wait until rising_edge(clock);
    	des_temp <= to_signed(4,8) ; cur_temp <= to_signed(12,8); reset <= '0';
    	
		---------low to high-------------
    	wait until rising_edge(clock);
		des_temp <= to_signed(12,8) ; cur_temp <= to_signed(4,8); reset <= '0';
    	
   		----------RESET-----------------
		wait until rising_edge(clock);
    	des_temp <= to_signed(3,8) ; cur_temp <= to_signed(6,8); reset <= '1';
		
		---------off to low-------------
    	wait until rising_edge(clock);
		des_temp <= to_signed(6,8) ; cur_temp <= to_signed(2,8); reset <= '0';

		---------low to off-------------
		wait until rising_edge(clock);
   		des_temp <= to_signed(4,8) ; cur_temp <= to_signed(7,8); reset <= '0';

		---------------------------
	end process;

   -- clock

    process
    begin
        clock <= '0';
        wait for period/2;
        clock <= '1';
        wait for period/2;
    end process;

end architecture;
