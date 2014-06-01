------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
<<<<<<< HEAD
=======
begin
>>>>>>> simar
	signal des_temp, cur_temp : signed(7 downto 0);
	signal reset 			  : std_logic;
	signal clock 			  : std_logic;
	signal heatmode 		  : work.heat_pkg.heat_ty;

	constant period  : time := 20 ns;


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
