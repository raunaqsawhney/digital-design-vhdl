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
    signal row          : unsigned(3 downto 0);
    signal col          : unsigned(3 downto 0);

	signal cur_mem_in_use : std_logic_vector(2 downto 0);
	signal counter      : unsigned(7 downto 0);
	
    -- P and P counter (P counter is written to output)
    signal p_counter    : unsigned(7 downto 0);
    signal p            : signed (8 downto 0);
    signal start_count  : std_logic;            -- BOOLEAN YES OR NO

    -- Memory signals
    signal mem_address  : std_logic_vector(3 downto 0);

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

    memA    :   entity work.mem(main)
        port map (
            address => mem_address,
            clock   => clk,
            data    => std_logic_vector(i_data),
            wren    => cur_mem_in_use(0),
            q       => mem_out_data(0)
        );

    memB    :   entity work.mem(main)
        port map (
            address => mem_address,
            clock   => clk,
            data    => std_logic_vector(i_data),
            wren    => cur_mem_in_use(1),
            q       => mem_out_data(1)
        );

    memC    :   entity work.mem(main)
        port map (
            address => mem_address,
            clock   => clk,
            data    => std_logic_vector(i_data),
            wren    => cur_mem_in_use(2),
            q       => mem_out_data(2)
        );

	process begin
        wait until rising_edge(clk);
        
        if (reset = '1') then
            -- Initialize global counter;
            counter         <= to_unsigned(0,8);

            -- Initialize memory index  --
            cur_mem_in_use  <= "001";

            -- Initialize Row and Col counters --
            row             <= to_unsigned(0,4);
            col             <= to_unsigned(0,4);

            -- Initialize P and P coutners --
            p               <= to_signed(0,9);
            p_counter       <= to_unsigned(0,8); 

            -- Initialize start count --
            start_count     <= '0';

        else
            if (i_valid = '1') then

                counter <= counter + 1;                             -- Received valid data, increment count
            
                if (col < "1111") then
                    col <= col + 1;
                end if;

                if (col = "1111") then
                    row <= row + 1;
                    col <= to_unsigned(0,4);                                  -- reset col to 0 after reading 1 row
                    cur_mem_in_use  <= cur_mem_in_use rol 1;        -- rotate virtual row (mem) 
                end if;

                if (p >= 0) then
                    p_counter <= p_counter + to_unsigned(1, 1);
                end if;
            end if;
        end if;
    end process;

    process begin
        
        -- Read the values, and calculate P
        if (counter > "11111") then
            case cur_mem_in_use is
                when "001" => -- a-b+c
                    p <= signed('0' & unsigned(mem_out_data(0))) - signed('0' & unsigned(mem_out_data(1))) + signed('0' & unsigned(i_data));
                when "010" => -- c-a+b
                    p <= signed('0' & unsigned(mem_out_data(2))) - signed('0' & unsigned(mem_out_data(0))) + signed('0' & unsigned(i_data));
                when "100" => -- b-c+a
                    p <= signed('0' & unsigned(mem_out_data(1))) - signed('0' & unsigned(mem_out_data(2))) + signed('0' & unsigned(i_data));
                when others =>
                    --
            end case;
        end if;
    end process;

    -- Output the value of p_counter
    o_data <= p_counter;

end architecture main;

-- Q1: number of flip flops and lookup tables?
--

-- Q2: maximum clock frequency?
--

-- Q3: source and destination signals of critical path?
-- 

-- Q4: does your implementation function correctly?  If not,
-- explain bug and how you would fix it if you had more time.
-- 
