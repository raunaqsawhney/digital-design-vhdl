library ieee;
use ieee.std_logic_1164.all;

entity add2 is
	port (i_cin	: in std_logic;
              o_cout	: out std_logic;
              i_a, i_b	: in std_logic_vector (1 downto 0);
	      o_sum 	: out std_logic_vector (1 downto 0);
              fa0_cout 	: inout std_logic
); 
end add2;

architecture main of add2 is
begin
  -- addr1 instantiation
  u_fa0 : entity work.fulladder(main)
	port map (
	  i_a	 => i_a(0),
	  i_b	 => i_b(0),
          i_cin	 => i_cin,
          o_cout => fa0_cout,
	  o_sum  => o_sum(0)
  );

  u_fa1 : entity work.fulladder(main)
	port map (
	  i_a 	 => i_a(1),
	  i_b 	 => i_b(1),
	  i_cin  => fa0_cout,
	  o_cout => o_cout,
   	  o_sum  => o_sum(1)
  ); 

end architecture;

