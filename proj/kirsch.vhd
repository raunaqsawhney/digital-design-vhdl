
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

  -- Custom Functions
  function "rol" (a : std_logic_vector; n : natural)
    return std_logic_vector
  is
  begin
    return std_logic_vector(unsigned(a) rol n);
  end function;

  function max (a : std_logic_vector; b : std_logic_vector)
    return std_logic_vector
  is
  begin
      if (a > b) then 
          return a;
      else
          return b;
      end if;
  end function;

begin  

  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');

  -- Defined Signals
  signal col        :   unsigned(2 downto 0);
  signal row        :   unsigned(2 downto 0);
  signal mem_wren   :   std_logic_vector(2 downto 0);
  signal mem_data   :   std_logic_vector(7 downto 0);
  signal busy       :   std_logic;
  signal a, b, c, d, e, f, g, h, i     : std_logic_vector(7 downto 0);
  signal v          :   std_logic_vector(4 downto 0);
  signal current_row:   std_logic_vector(3 downto 0);
  signal edge_value :   std_logic;
  signal direction  :   std_logic_vector(3 downto 0);
 

	-- to signal pass across first two rows
	signal first_pass :	std_logic; 

  -- Direction LUT --
  -- 000    E
  -- 001    W
  -- 010    N
  -- 011    S
  -- 100    NW
  -- 101    SE
  -- 110    NE
  -- 111    SW
  -------------------

  -- Registers
  -- Stage 1 Inputs
  signal r0, r1, r2, r3, r4, r5, r6, r7     : std_logic_vector(7 downto 0); 
  
  signal a0    : std_logic_vector(7 downto 0); 
  signal a1    : std_logic_vector(8 downto 0); 
  
  -- Stage 1 Data (also used Stage 2 Inputs)
  signal max_sum0, max_sum1, max_sum2, max_sum3 : std_logic_vector(9 downto 0);  
  signal sum0, sum1, sum2, sum3     : std_logic_vector(10 downto 0);
  -- Total Registers: 16

  -- Memory Array
  type mem_array is array (2 downto 0) of std_logic_vector(7 downto 0);
  signal mem_out    :   mem_array;
  
  -- Memories
  mem0  :   entity work.mem(main)
    port map (
        address => std_logic_vector(col),
        clock   => i_clock,
        data    => mem_data,
        wren    => mem_wren(0),
        q       => mem_out(0) 
    );

  mem1  :   entity work.mem(main)
    port map (
        address => std_logic_vector(col),
        clock   => i_clock,
        data    => mem_data,
        wren    => mem_wren(1),
        q       => mem_out(1)
    );

  mem2  :   entity work.mem(main)
    port map (
        address => std_logic_vector(col),
        clock   => i_clock,
        data    => mem_data,
        wren    => mem_wren(2),
        q       => mem_out(2)
    );


  -------------------------  
  -- Valid Bit Generator --
  -------------------------
 
  v_gen : for i in 1 to 8 generate
      process begin
          wait until rising_edge(i_clock);
		  if i_reset = '1' then
              v(i) <= '0';
          else
            v(i) <= v(i-1);
        end if;
      end process;
  end generate;

--  -------------------------------------
--  |	a		|	b		|	c		|
--	|			|			|			|
--	|	h		|	i		|	d		|
--	|			|			|			|
--	|	g		|	f		|	e		|
--	|			|			|			|
--	-------------------------------------

  ---------------------------
  -- System Initialization --
  ---------------------------
  
  process begin
      wait until rising_edge(i_clock);
      if (i_reset = '1') then
          col          <= '0';
          row          <= '0';
          busy         <= '0';
          current_row  <= "001";
			else
                if (i_valid = '1') then
                    busy <= '1';

				    if (col = '255') then
                            col <= '0';
						    current_row <= current_row rol 1;
						    row <= row + 1;
				    end if;
			
				    a <= b;
				    h <= i;
				    g <= f;
				    b <= c;
				    i <= d;
				    f <= e;
				    c <= tmp_next_zero;
				    d <= tmp_next_one;
				    e <= i_pixel;

				    col     <= col + 1;

                    if (row > 1 and col > 1) then
                        first_pass <= '1';
                    end if;
                    o_row <= std_logic_vector(row);
				else
						first_pass <= '0';
				end if;
			end if;
	end process;

	mem_wren <= current_row when i_valid = '1' else "000";	
	tmp_next_zero <= mem_out(0) when mem_wren(2) = '1' 
        else
            mem_out(1) when mem_wren(0) = '1'
        else
	        mem_out(2);

	tmp_next_one <= mem_out(1) when mem_wren(2) = '1'
                 else
                     mem_out(2) when mem_wren(0) = '1'
                 else
                     mem_out(0);

    v(0)    <= first_pass when i_reset = '0' else '0';

  ------------------
  -- System Modes --
  ------------------
                     
  process begin (i_reset, busy)
      if (i_reset = '1') then
          o_mode <= '01';
      elsif (busy = '1') then
          o_mode <= '10';
      else 
          o_mode <= '11';
      end if;
  end process;

  ---------------------
  -- Populate Memory --
  ---------------------

  process begin
      wait until rising_edge(i_clock);
      if (v(0) = '1') then
          case current_row is
              when "001" =>
                  mem_wren(0) <= '1';                  
                  mem_wren(1) <= '0';
                  mem_wren(2) <= '0';

                  mem_data    <= i_pixel;
              when "010" =>
                  mem_wren(0) <= '0';
                  mem_wren(1) <= '1';
                  mem_wren(2) <= '0';
                  
                  mem_data    <= i_pixel;
              when "100" =>

                  mem_wren(0) <= '0';
                  mem_wren(1) <= '0';
                  mem_wren(2) <= '1';

                  mem_data    <= i_pixel;
              when others =>
                  mem_wren    <= x"00";
                  mem_data    <= i_pixel;
        end case;
        mem_wren    <= x"00";
    end if;
  end process;
  
  --------------
  -- Dataflow --
  --------------
  
  -- Stage 1 ---

  process begin
  wait until rising_edge(i_clock);
	
  if(v(0) = '1') then
	    sum0        <= a0;
        max_sum0    <= a1;
		r0          <= a; 
		r3          <= d;
		r1          <= b;
		r2          <= c;
        r4          <= '010'; --N
        r5          <= '110'; --NE

  end if;
   
   if(v(1) = '1') then
	   sum1         <= a0;
       max_sum1     <= a1; 
	   r0           <= e; 
	   r3           <= h; 
	   r1           <= f; 
	   r2           <= g; 
       r4           <= '011'; --S
       r5           <= '111'; --SW

  end if;
  
   if(v(2) = '1') then
		sum2        <= a0; 
		max_sum2    <= a1; 
		r0          <= c; 
		r3          <= f; 
		r1          <= d; 
		r2          <= e;
        r4          <= '000'; --E
        r5          <= '101'; --SE

  end if;
  
   if(v(3) = '1') then
       sum3         <= a0; 
       max_sum3     <= a1;
       r0           <= b;
       r3           <= g;
       r1           <= h;
       r2           <= a;
       r4           <= '001'; --W
       r5           <= '100'; --NW

  end if;

  a0            <= r1 + r2;
  a1            <= (r0 max r3) + a0;
  max_edge      <= r5 when r0 >= r3 else r4;

  end process; 
  
  -- End of Stage 1 --

  -- Stage 2 --

  process begin
      wait until rising_edge(i_clock);
      if (v(1) = '1') then
        ms_a     <=  max_sum0;
        ms_b     <=  max_sum1;
        s_a      <=  sum0;
        s_b      <=  sum1;

        -- Optimization Possible
        m_ab     <=  ms_a max ms_b;
        s_ab     <=  s_a + s_b;

      elsif (v(3) = '1') then
        ms_a     <=  max_sum2;
        ms_b     <=  max_sum3;
        s_a      <=  sum2;
        s_b      <=  sum3;
  
        -- Optimization Possible
        m_cd     <=  ms_a max ms_b;
        s_cd     <=  s_a + s_b;

      elsif (v(6) = '1') then
        m_ab     <=  m_ab max m_cd;
        s_ab     <=  s_ab + s_cd;

      elsif (v(7) = '1') then
        s_cd     <= s_ab sla 1;
        s_ab     <= s_ab + s_cd;

        sub      <= signed((unsigned(m_ab sla 3)) - unsigned(s_ab)); 
    end if;
  
  end process;
  
  o_edge        <= '1' when sub > 383 else '0';;

end architecture;
