library ieee;
use ieee.std_logic_1164.all;

entity add2 is
	port ( i_a_0, i_b_0, i_a_1, i_b_1, i_cin	: in std_logic;
			o_sum_0, o_sum_1, fa0_cout, o_cout	: out std_logic
	);
end add2;

architecture main of add2 is
begin
	sum_0 : entity work.fulladder(main)
		port map (
			i_a	=> i_a_0,
			i_b => i_b_0,
			i_cin => i_cin,
			o_sum => o_sum_0,
			o_cout => fa0_cout
		);
	
	sum_1 : entity work.fulladder(main)
		port map (
			i_a	=> i_a_1,
			i_b => i_b_1,
			fa0_cout => i_cin,
			o_sum => o_sum_1,
			o_cout => o_cout
		);
end architecture;
