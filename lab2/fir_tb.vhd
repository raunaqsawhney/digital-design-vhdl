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

<<<<<<< HEAD
    signal input : in word;

    constant coef1 : word := x"0100"
    constant coef0 : word := x"0000";


begin

    FIR : entity work.fir(avg)
    port map (
       i_data => input
    );


    constant coef1 : word := x"0100";
    constant coef0 : word := x"0000";

    process 
    begin

        TAP :
            for i in 0 to 3 generate
                input := coef0;
            end generate;

            fir j in 0 to 1 loop
                input := coef1;
            end loop;

            input := coef0;
    end process;
=======
  
begin

  
>>>>>>> simar
end architecture;
------------------------------------------------------------------------

