library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
  port ( i_a, i_b, i_cin     : in  std_logic;
         o_sum, o_cout : out std_logic
  );
end fulladder;

architecture main of fulladder  is
begin
  u_sum : entity work.sum(main)
    port map (
	  i_a   => i_a,
      i_b   => i_b,
      i_cin => i_cin,
      o_sum => o_sum
    );
         
  u_carry : entity work.carry(main)
    port map (
	  i_x   => i_a,
      i_y   => i_b,
      i_cin => i_cin,
      o_carry => o_cout
    );
end architecture;
