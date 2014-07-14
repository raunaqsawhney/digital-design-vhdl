library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port (
    clk       : in  std_logic;             -- the system clock
    reset     : in  std_logic;             -- reset
    i_valid   : in  std_logic;             -- input data is valid
    i_data    : in  unsigned(7 downto 0);  -- input data
    o_data    : out unsigned(7 downto 0)   -- output data
  );

end entity lab3;

architecture main of lab3 is

    -- Row and Column counters
    signal row          : std_logic_vector(3 downto 0);
    signal col          : std_logic_vector(3 downto 0);

	signal cur_mem_in_use : std_logic_vector(2 downto 0);
	signal counter      : std_logic_vector(8 downto 0);
	
    -- P and P counter (P counter is written to output)
    signal p_counter    : std_logic_vector(7 downto 0);
    signal p            : signed(8 downto 0);

    -- setup mem_out_data for 3 mem banks, each holding 8 bit data vector
    subtype data is std_logic_vector(7 downto 0);
    type mem_out_array is array (2 downto 0) of data;
    signal mem_out_data : mem_out_array;

  -- A function to rotate left (rol) a vector by n bits
  function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
  is
  begin
    return std_logic_vector( unsigned(a) rol n );
  end function;

begin
    
    o_data  <= unsigned(p_counter);

    memA    :   entity work.mem(main)
        port map (
            address => std_logic_vector(col),
            clock   => clk,
            data    => std_logic_vector(i_data),
            wren    => cur_mem_in_use(2),
            q       => mem_out_data(2)
        );

    memB    :   entity work.mem(main)
        port map (
            address => std_logic_vector(col),
            clock   => clk,
            data    => std_logic_vector(i_data),
            wren    => cur_mem_in_use(1),
            q       => mem_out_data(1)
        );

    memC    :   entity work.mem(main)
        port map (
            address => std_logic_vector(col),
            clock   => clk,
            data    => std_logic_vector(i_data),
            wren    => cur_mem_in_use(0),
            q       => mem_out_data(0)
        );

	process begin
        wait until rising_edge(clk);
        
        if (reset = '1') then
            -- Initialize global counter;
            counter         <= "000000000"; 

            -- Initialize memory index  --
            cur_mem_in_use  <= "100";

            -- Initialize Row and Col counters --
            row             <= "0000";
            col             <= "0000";

            -- Initialize P and P coutners --
            p               <= to_signed(0,9);
            p_counter       <= "00000000"; 


        else
            if (i_valid = '1') then

                -- If p (which holds the calculation) is greater than 0, increment
                -- the p counter which is returned to o_data
                if (p >= 0) then
                    p_counter <= std_logic_vector(unsigned(p_counter) + 1);
                end if;

                -- Check to ensure that counter resets for data over 255 items 
                -- Since there are only 256 total cells to fill
                if ( unsigned(counter) >= 255) then
                    counter     <= "000000000";
                    cur_mem_in_use  <= "001";
                    row     <= "0000";
                    col     <= "0000";
                    p       <= to_signed(0,9);
                    p_counter <= "00000000";
                end if;

                -- A global data count is used to count how many columns have been filled
                counter <= std_logic_vector( unsigned(counter) + 1 );         
                
                -- For column count less than 16, keep incrementing the column count
                if (col < "1111") then
                    col <= std_logic_vector( unsigned(col) + 1);
                end if;

                -- If reached the end of the row (i.e., all 16 cols have been filled)
                -- then, rotate the rows and reset the columns for the next row
                if (col = "1111") then
                    row <= std_logic_vector( unsigned(row) + 1);
                    col <= "0000";                                  -- reset col to 0 after reading 1 row
                    cur_mem_in_use  <= cur_mem_in_use rol 1;        -- rotate virtual row (mem) 
                end if;
            end if;
        end if;
    end process;


    -- Process computes the value of p
    -- It does so by reading from two memories, and from the current input (i.e. i_data)
    -- For each value of cur_mem_in_use (i.e. 001, 010, 100), there is a correspoding 
    -- different calculation
    process (counter, p, cur_mem_in_use, i_data, mem_out_data)
    begin
        -- Read the values, and calculate P
        if (unsigned(counter) > 33 and unsigned(counter) < 256) then
            case cur_mem_in_use is
                when "001" => -- a-b+c
                    p <= signed('0' & unsigned(i_data)) - signed('0' & unsigned(mem_out_data(1))) + signed('0' & unsigned(mem_out_data(2)));
                when "010" => -- a-b+c
                    p <= signed('0' & unsigned(mem_out_data(0))) - signed('0' & unsigned(i_data)) + signed('0' & unsigned(mem_out_data(2)));
                when "100" => -- a-b+c
                    p <= signed('0' & unsigned(mem_out_data(0))) - signed('0' & unsigned(mem_out_data(1))) + signed('0' & unsigned(i_data));
                when others =>
                    --
            end case;
        end if;
    end process;

end architecture main;

-- Q1: number of flip flops and lookup tables?
-- 23 LUTs, and 25 Flop Flops

-- Q2: maximum clock frequency?
-- Fmax = 257.4 MHz

-- Q3: source and destination signals of critical path?
-- reg_out_o_data_obuf_7 /clk -> o_data(7)


-- Q4: does your implementation function correctly?  If not,
-- explain bug and how you would fix it if you had more time.
-- No, we were not able to get the implementation functioning correctly.
-- If given more time, we would use a proper dataflow diagram to map out
-- the datapath components, as well as, use an FSM approach as opposed to the
-- current implementation. An FSM would improve performance by synchronizing all
-- possible states of FSM. Although, the current implementation compiles, simulates, and 
-- synthesizes, it does not produce the correct results required by the test cases
