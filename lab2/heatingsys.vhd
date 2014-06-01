library ieee;
use ieee.std_logic_1164.all;

package heat_pkg is
  subtype heat_ty is std_logic_vector(1 downto 0);
  constant off  : heat_ty := "00";
  constant low  : heat_ty := "01";
  constant high : heat_ty := "11";
end heat_pkg;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys is                           -- finite state machine
  port(i_cur_temp       : in signed(7 downto 0); -- current temp
       i_des_temp       : in signed(7 downto 0); -- desired temp
       i_reset          : in std_logic;          -- reset
       i_clock          : in std_logic;          -- clock
       o_heatmode       : out heat_ty            -- mode
      );
end heatingsys;

architecture main of heatingsys is
  signal state : heat_ty;   
begin
	statemachine : process
	begin
		wait until rising_edge(i_clock);
		if (i_reset = '1') then
			state <= off;
		else
			case state is
			when off =>
				if (5 <= (i_des_temp - i_cur_temp)) then
					state <= high;
				elsif ((3 <= (i_des_temp - i_cur_temp)) and ((i_des_temp - i_cur_temp) < 5)) then
					state <= low;
				end if;

			when high =>
				if (3 < (i_cur_temp - i_des_temp)) then
					state <= low;
				end if;
				
			when low =>
				if (2 < (i_cur_temp - i_des_temp)) then
					state <= off;
				elsif (7 <= (i_des_temp - i_cur_temp)) then
					state <= high;
				end if;

			when others =>
				state <= off;
			end case;
		end if;
	end process;

<<<<<<< HEAD
	-- Assign state to output
	o_heatmode <= state;

=======
	o_heatmode <= state;
>>>>>>> simar
end main;

-- question 1
  --insert answer here
<<<<<<< HEAD
  --TODO: ANSWER HERE 
=======
>>>>>>> simar

