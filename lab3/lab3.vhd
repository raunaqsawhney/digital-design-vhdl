library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port (
    clk       : in  std_logic;             -- the system clock
    reset     : in  std_logic;             -- reset
    i_valid   : in  std_logic;             -- input data is valid
    i_data    : in  unsigned(7 downto 0);  -- input data
    o_data    : out unsigned(7 downto 0);   -- output data

);

end entity lab3;

architecture main of lab3 is

    -- Row and Column counters
    signal row          : std_logic_vector(2 downto 0);
    signal col          : std_logic_vector(3 downto 0);
    

    -- P and P counter (P counter is written to output)
    signal p_counter    : signed (7 downto 0);
    signal p            : signed (7 downto 0);
    signal start_count  : std_logic;

    -- Memory signals
    signal mem_address  : std_logic_vector(3 downto 0);
    signal mem_data     : std_logic_vector(7 downto 0); 
    signal mem_wren     : std_logic_vector(2 downto 0);  --for 3 mem banks
    signal mem_out_data : std_logic_vector(7 downto 0);

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
            data    => mem_data,
            wren    => mem_wren(2),
            q       => mem_out_data(0)
        );

    memB    :   entity work.mem(main)
        port map (
            address => mem_address,
            clock   => clk,
            data    => mem_data,
            wren    => mem_wren(1),
            q       => mem_out_data(1)
        );

    memC    :   entity work.mem(main)
        port map (
            address => mem_address,
            clock   => clk,
            data    => mem_data,
            wren    => mem_wren(0),
            q       => mem_out_data(2)
        );



	signal cur_mem_in_use : std_logic_vector(2 downto 0);

	-- ECE327: Code 3 part2

	process begin
		cur_mem_in_use(2) = to'1';
		row = '0'
		col = '0'
		wait until rising_edge(clk);
		if (i_valid = '1') then
		while row < 16 loop
			while col < 16 loop
					mem_wren(to_integer(cur_mem_in_use)) <= '1';
					mem_out_data(mem_out_array(cur_mem_in_use), col) <= i_data;
					o_data <= mem_out_data(mem_out_array(cur_mem_in_use), col);
					
					if ( row = '2' AND col= '1' ) then
						start_count <= '1';
					end if;

					if (start_count = '1') then
						mem_wren(to_integer(cur_mem_in_use)) <= '0';
						P <= signed(mem_out_array(0, (col)) - signed(mem_out_array(1, (col))) + signed(2, (col));
					if ( P >= 0 ) then
						P_counter = P_counter + 1;
					end if;
					
					
					col= col + 1;
			end loop;
		row = row + 1;
    	cur_mem_in_use = to_integer(rol(cur_mem_in_use, 1));
		end loop;
	end process;
  
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
