------------------------------------------------------------------------
-- lab3 test bench
------------------------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.lab3_unsynth_pkg.all;

entity lab3_tb is
  generic ( test_num     : integer   := 1;
            mode         : string    := "prog";
            result_file  : string    := "sim_result.txt"
          );
end lab3_tb;

architecture main of lab3_tb is

  --------------------------------------------------------------
  -- clock cycle

  constant period       : time := 20 ns;
  constant hold_time    : time := 0.1 * period;

  --------------------------------------------------------------
  -- name of test file

  constant test_name    : string     := "test"& integer'image(test_num);
  constant test_file    : string     := "tests/"& test_name &".txt";

  --------------------------------------------------------------
  -- number of invalid input data between valid data
  
  constant bubbles      : natural    := 3;

  --------------------------------------------------------------
  -- upper and lower bounds on indices for input data
  
  constant row_min      : natural    := 0;
  constant row_max      : natural    := input_height - 1;
  
  constant col_min      : natural    := 0;
  constant col_max      : natural    := input_width - 1;
  
  --------------------------------------------------------------
  -- signals to interface to lab3.vhd
  
  signal clk            : std_logic;
  signal reset          : std_logic;
  
  signal i_valid        : std_logic;
  
  signal i_data         : unsigned(7 downto 0); 
  signal o_data         : unsigned(7 downto 0);                      
  
  --------------------------------------------------------------
  -- 2-d array for input data
  
  signal input_matrix : input_matrix_ty;
  
  --------------------------------------------------------------

 
begin

    ----------------------------------------------------
    -- use circuit
    
    uut: entity WORK.lab3 port map
      (clk        => clk,
       reset      => reset,
       i_valid    => i_valid,
       i_data     => i_data,
       o_data     => o_data
      );

    ----------------------------------------------------
    -- clock

    process
    begin
        clk <= '0';
        wait for 0.5 * period;
        clk <= '1';
        wait for 0.5 * period;
    end process;

    ----------------------------------------------------
    -- read input data from file, then send to circuit

    process
    begin
      ----------------------------------------
      input_matrix <= read_input( test_file );
      ----------------------------------------
      reset   <= '1';
      i_valid <= '0';
      i_data  <= ( others => 'X' );
      ----------------------------------------
      wait until rising_edge(clk);
      wait for 2 * period + hold_time;
      reset   <= '0';
      ----------------------------------------
      for row_idx in row_min to row_max loop
        for col_idx in col_min to col_max loop
          i_valid  <= '1';
          i_data   <= input_matrix(row_idx, col_idx);
          wait for period;
          i_valid  <= '0';
          i_data   <= (others => 'X');
          wait for bubbles * period;
        end loop;
      end loop;
      ----------------------------------------
      wait;
      ----------------------------------------
    end process;

    ----------------------------------------------------
    -- wait until done, then print output value

    process
      variable spec_val, impl_val : integer;
    begin
      ----------------------------------------
      -- wait; -- delete this line to enable execution of remainder of process
      wait for (10 + input_height*input_width*(1+bubbles)) * period;
      impl_val := to_integer( o_data );
      case test_num is
        when 1       => spec_val := 188;
        when 2       => spec_val := 183;
        when 3       => spec_val := 196;
        when 4       => spec_val := 178;
        when 5       => spec_val := 201;
        when others  => spec_val := -1;
      end case;
      ----------------------------------------
      -- if test_num = 1 and mode = "prog",
      -- then overwrite result_file,
      -- else append
      if  impl_val = spec_val then
        ------------------------------
        if test_num = 1 and mode = "prog" then 
          write_file( result_file, test_name &"_"& mode &" = PASS" );
        else
          append_file( result_file, test_name &"_"& mode &" = PASS" );
        end if;
        ------------------------------
        report( test_name &" "& mode & " PASS" );
        ------------------------------
      else
        ------------------------------
        if test_num = 1 and mode = "prog" then 
          write_file( result_file,
                        test_name &"_"& mode &" = FAIL, "
                        & integer'image(impl_val) & ", "
                        & integer'image(spec_val));
        else
          append_file( result_file,
                        test_name &"_"& mode &" = FAIL, "
                        & integer'image(impl_val) & ", "
                        & integer'image(spec_val));
        end if;
        ------------------------------
        report( test_name &" FAIL impl="& integer'image(impl_val)
                              &"; spec="& integer'image(spec_val));
        ------------------------------
      end if;
      ----------------------------------------
      wait;
      ----------------------------------------
    end process;
    
end main;

