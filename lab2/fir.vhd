------------------------------------------------------------------------
-- finite-impulse response filters
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir is
  port(
    clk     : in  std_logic;
    i_data  : in  word;
    o_data  : out word
  );
end entity;

architecture avg of fir is

  signal tap0, tap1 , tap2 , tap3 , tap4
             , prod1, prod2, prod3, prod4
                    , sum2 , sum3 , sum4
       : word;

  constant coef1 : word := x"0200";
  constant coef2 : word := x"0300";
  constant coef3 : word := x"0400";
  constant coef4 : word := x"0500";
  
begin

  -- delay line of flops to hold samples of input data
  tap0 <= i_data;
  delay_line : process(clk)
  begin
    if (rising_edge(clk)) then
      tap1 <= tap0;
      tap2 <= tap1;
      tap3 <= tap2;
      tap4 <= tap3;
    end if;
  end process;
  
  -- simple averaging circuit
  --
  -- Note that mult is a quick 'n' dirty multiplier
  -- However, a multiplier is NOT built in hardware because one input is a particular
  --  constant allowing optimizations to be done.  If you had to multiply by 2 or 4 or 16
  --  in hardware could you do it WITHOUT any adders, shifters or multipliers?
  --
  prod1 <= mult( tap1, coef1);
  prod2 <= mult( tap2, coef2);
  prod3 <= mult( tap3, coef3);
  prod4 <= mult( tap4, coef4);

  sum2  <= prod1 + prod2;
  sum3  <= sum2  + prod3;
  sum4  <= sum3  + prod4;
  
  o_data <= sum4;

end architecture;

------------------------------------------------------------------------
-- low-pass filter
------------------------------------------------------------------------

architecture low_pass of fir is

  -- Use the signal names tap, prod, and sum, but change the type to
  -- match your needs.

  constant num_taps	: natural := 17;

  signal prod 	: word_vector(1 to num_taps);
  signal sum	: word_vector(2 to num_taps);
  signal tap	: word_vector(0 to num_taps);
  
  signal tap, prod, sum : std_logic;
  
  -- The attribute line below is usually needed to avoid a warning
  -- from PrecisionRTL that signals could be implemented using
  -- memory arrays.  

  attribute logic_block of tap, prod, sum : signal is true;
  
begin
  
  
  tap(0) <= i_data;
  process begin
  	wait until rising_edge(clk);
	for i in 1 to num_taps loop
		tap(i) <= tap(i-1);
	end loop;
  end process;

  LPF_GEN: for i in 1 to num_taps generate
  	tap(i) <= tap(i-1);
  end generate LPF_GEN;

  MUL_GEN: for i in 1 to num_taps generate
  	prod(i) <= mult(tap(i), lpcoef(i));
  end generate MUL_GEN;

  SUM_GEN: for i in 3 to num_taps generate
  	sum(i) <= sum(i-1) + prod(i);

  -- there are no sum0 or sum1
  sum(2) <= sum(i-1) + prod(i);

  o_data <= sum(num_taps);

end architecture;

-- question 2
-- For one adder, we would need at most two LUTs as the input to adders are
-- themselves the combination of two inputs. So for a worst cast e.g.:
-- sum2 <= prod1 + prod2
-- we would expand prod1 as prod1 <= mult( tap1, coef1)
-- needing two LUTs for each prod1 and prod2.

-- question 3
-- For one multiplier we would need at most one LUT as the multiplier is formed
-- from two inputs and they can in total have atmost 4 possible combinations which
-- can be stored in a 2x2 lookup table. 
