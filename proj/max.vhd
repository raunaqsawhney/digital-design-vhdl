library ieee;
use ieee.std_logic_1164.all;

entity max is 
    port (i_v1, i_v2, i_d1, i_d2    : in std_logic;
            o_val, o_dir            : out std_logic
    );
end sum;


architecture main of max is
begin

    o_val   <= i_v1 when i_v1 > i_v2 else i_v2;
    o_dir   <= i_d1 when i_d1 > i_d2 else i_d2;

end architecture;
