library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port (
    clk       : in  std_logic;             -- the system clock
    reset     : in  std_logic;             -- reset
    i_valid   : in  std_logic;             -- input data is valid
    i_data    : in  std_logic_vector(7 downto 0);  -- input data
    o_data    : out std_logic_vector(7 downto 0)   -- output datay

);

end entity lab3;

architecture main of lab3 is

    signal mem_address  : std_logic_vector(3 downto 0);
    signal mem_data     : std_logic_vector(7 downto 0); 
    --signal mem_out_data : std_logic_vector(7 downto 0);
    signal mem_wren     : std_logic_vector(2 downto 0); --for 3 mem banks


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

    -- ECE327: Code 3
    process
    begin
        wait until rising_edge(clk);
        if (i_valid = '1') then
            for i in 0 to 15 loop
                mem_data <= i_data;
                mem_out_data(0) <= mem_data;
            end loop;
        end if;
    end process;


    o_data <= mem_out_data(0);

    
  
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
