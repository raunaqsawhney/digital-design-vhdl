library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is
begin	
	o_sum <= i_a xor i_b xor i_cin; 
end architecture;

-- question 1

-- We can see the following pins as described below:
-- Gate ix1:
-- i_cin --> in[0]
-- i_a 	 --> in[1]
-- out(ix1) --> i_cin xor i_a

-- Gate ix3:
-- i_b --> in[1]
-- out(ix1) --> in[0]
-- out(ix3) --> i_b xor out(ix1)

-- Final:
-- o_sum <-- out(ix3)
