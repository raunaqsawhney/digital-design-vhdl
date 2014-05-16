library ieee;
use ieee.std_logic_1164.all;

entity carry is
	port ( i_a, i_b, i_cin : in std_logic;
			o_carry : out std_logic
		);
end carry;

architecture main of carry is
begin
	o_carry <= (i_a and i_b) or (i_a and i_cin) or (i_b and i_cin);
end architecture;
	 
-- insert your code here


