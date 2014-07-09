
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity kirsch is
  port(
    ------------------------------------------
    -- main inputs and outputs
    i_clock    : in  std_logic;                      
    i_reset    : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  std_logic_vector(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out std_logic_vector(2 downto 0);                      
    o_mode     : out std_logic_vector(1 downto 0);
    o_row      : out std_logic_vector(7 downto 0);
    ------------------------------------------
    -- debugging inputs and outputs
    debug_key      : in  std_logic_vector( 3 downto 1) ; 
    debug_switch   : in  std_logic_vector(17 downto 0) ; 
    debug_led_red  : out std_logic_vector(17 downto 0) ; 
    debug_led_grn  : out std_logic_vector(5  downto 0) ; 
    debug_num_0    : out std_logic_vector(3 downto 0) ; 
    debug_num_1    : out std_logic_vector(3 downto 0) ; 
    debug_num_2    : out std_logic_vector(3 downto 0) ; 
    debug_num_3    : out std_logic_vector(3 downto 0) ; 
    debug_num_4    : out std_logic_vector(3 downto 0) ;
    debug_num_5    : out std_logic_vector(3 downto 0) 
    ------------------------------------------
  );  
end entity;


architecture main of kirsch is
begin  

  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');

  -- Custom Functions
  function "rol" (a : std_logic_vector; n : natural)
    return std_logic_vector
  is
  begin
    return std_logic_vector(unsigned(a) rol n);
  end function;
  
  -- Defined Signals
  signal col        :   unsigned(7 downto 0);
  signal row        :   unsigned(7 downto 0);
  signal mem_wren   :   std_logic_vector(2 downto 0);
  signal count      :   unsigned(17 downto 0);
  signal busy       :   std_logic;

  -- Memory Array
  type mem_array is array (2 downto 0) of std_logic_vector(7 downto 0);
  signal mem_out    :   mem_array;
  
  -- Memories
  mem0  :   entity work.mem(main)
    port map (
        address => col,
        clock   => i_clock,
        data    => i_pixel,
        wren    => mem_wren(0),
        q       => mem_out(0) 
    );

  mem1  :   entity work.mem(main)
    port map (
        address => col,
        clock   => i_clock,
        data    => i_pixel,
        wren    => mem_wren(1),
        q       => mem_out(1)
    );

  mem2  :   entity work.mem(main)
    port map (
        address => col,
        clock   => i_clock,
        data    => i_pixel,
        wren    => mem_wren(2),
        q       => mem_out(2)
    );

  -- Stage 1
  process begin
      wait until rising_edge(i_clock);

        if (i_reset = '1') then
            count     <= x"00";
            col       <= x"00";
            row       <= x"00";
            busy      <= '0';
            mem_wren  <= "001";

        else
            if (i_valid = '1') then

                -- filled all columns in a row 
                if (col = '255') then

                    -- rotate mem_wren to point to next memory
                    mem_wren <= mem_wren rol 1;

                    -- increment row counter
                    row <= (row + 1);
            end if

        end if

  -- System Modes
  process begin
      if (i_reset = '1') then
          o_mode <= '01';
      elsif (busy = '1') then
          o_mode <= '10';
      else 
          o_mode <= '11';
      end if;
  end process;

end architecture;
