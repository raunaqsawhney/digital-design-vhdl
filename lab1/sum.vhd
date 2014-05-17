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
  -- There are two logical XOR gates, wherein, the first XOR gate (ix1) takes in
  -- input input two signals, i_cin and i_a with the output signal being 'out'
  -- This output signal from ix1 is fed into XOR gate 2, ix3 as in[0] and 
  -- another signal i_b is also fed into second XOR gate, ix3 as in[1], with
  -- the output being the signal, o_sum

