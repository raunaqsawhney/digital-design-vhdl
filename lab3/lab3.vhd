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
    
    hex0,
    hex1,
    hex2,
    hex3,
    hex4,
    hex5,
    hex6,
    hex7      : out   std_logic_vector(6 downto 0);     -- hex display

);

end entity lab3;

architecture main of lab3 is

	-- both mem_address and mem_data are 7 downto 0 as listed in mem.vhd
    signal mem_address  : std_logic_vector(7 downto 0);
    signal mem_data     : std_logic_vector(7 downto 0); 
    signal mem_out_data : std_logic_vector(7 downto 0);
    signal mem_wren     : std_logic_vector(2 downto 0); --for 3 mem banks


    -- ECE327: Code 4 Note
	-- setup mem_out_data for 3 mem banks, each holding 8 bit data vector
    subtype data is std_logic_vector(15 downto 0);
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
            clock   => i_clock,
            data    => mem_data,
            wren    => mem_wren(2),
            q       => mem_out_data(0)
        );

    memB    :   entity work.mem(main)
        port map (
            address => mem_address,
            clock   => i_clock,
            data    => mem_data,
            wren    => mem_wren(1),
            q       => mem_out_data(1)
        );

    memC    :   entity work.mem(main)
        port map (
            address => mem_address,
            clock   => i_clock,
            data    => mem_data,
            wren    => mem_wren(0),
            q       => mem_out_data(2)
        );

    -- ECE327: Code 3
    process begin
		counter = 0;
        wait until rising_edge(clk);
        while counter < 15 loop
			if (i_valid = '1') then
            	mem_out_data(0) <= i_data;
				o_data <= mem_out_data(0);
				counter = counter + 1; 
        	end if;
		end loop;
	-- TODO: we need a signal assignment here that maps the computer o_data to an output port,
	-- like it's done on slide 12 of hnatyshyn-finite.
		
    end process;

	-- ECE327: Code 4
	process begin
		column = 0;
		row = 0;
		signal cur_mem_in_use : std_logic_vector(2 downto 0);
		cur_mem_in_use(0) = '1';
		wait until rising_edge(clk);
		while column < 15 loop
			while row < 15 loop
				if (i_valid = '1') then
					-- ECE327: Code 4 Note
					-- setup mem_out_data for 3 mem banks, each holding 8 bit data vector
					-- subtype data is std_logic_vector(15 downto 0);
					-- type mem_out_array is array (2 downto 0) of data;
					-- signal mem_out_data : mem_out_array;
					mem_out_data(mem_out_array(cur_mem_in_use), row) <= i_data;
					o_data <= mem_out_data(mem_out_array(cur_mem_in_use), row);
					
				  -- A function to rotate left (rol) a vector by n bits
				  --function "rol" ( a : std_logic_vector; n : natural )
				  --	return std_logic_vector
				  --is
				  --begin
				  --	return std_logic_vector( unsigned(a) rol n );
				  --end function;
					cur_mem_in_use = rol(cur_mem_in_use, 1);
				end if;
			end loop;
		end loop;
	-- TODO: we need a signal assignment here that maps the computer o_data to an output port,
	-- like it's done on slide 12 of hnatyshyn-finite.
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
