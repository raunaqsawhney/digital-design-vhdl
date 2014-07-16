
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

  function "sla" (a : std_logic_vector; n : natural)
     return std_logic_vector
   is
   begin
    return std_logic_vector(a sla n);
   end function;

  -- Defined Signals
  signal col                                                        : unsigned(7 downto 0);
  signal row                                                        : unsigned(7 downto 0);
  signal mem_wren                                                   : std_logic_vector(2 downto 0);
  signal mem_data                                                   : std_logic_vector(7 downto 0);
  signal busy                                                       : std_logic;
  signal a, b, c, d, e, f, g, h, i, tmp_next_zero, tmp_next_one     : std_logic_vector(7 downto 0);
  signal v                                                          : std_logic_vector(8 downto 0);
  signal current_row                                                : std_logic_vector(2 downto 0);
  signal edge_present                                               : std_logic;
  signal first_pass                                                 : std_logic; 
  signal direction                                                  : std_logic_vector(2 downto 0); 

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

  ---------------
  -- Registers --
  ---------------

  signal r0, r1, r2, r3, r6, r7                     : std_logic_vector(9 downto 0);  -- values
  signal r4, r5                                     : std_logic_vector(2 downto 0);  -- directions 
  signal a0                                         : std_logic_vector(9 downto 0);  -- sum
  signal a1                                         : std_logic_vector(9 downto 0);  -- max sum
  signal sub                                        : std_logic_vector(9 downto 0); -- subtractor
 
  signal max_sum0, max_sum1, max_sum2, max_sum3     : std_logic_vector(9 downto 0);  -- max sum (individual)  
  signal sum0, sum1, sum2, sum3                     : std_logic_vector(9 downto 0);  -- sum (individual)

  signal ms_a, ms_b                                 : std_logic_vector(9 downto 0);  -- stage 2 registers holding max_sum0-1/2-3
  signal s_a, s_b                                   : std_logic_vector(9 downto 0);  -- stage 2 registers holding sum0-1/2-3
  
  signal m_ab, m_cd                                 : std_logic_vector(9 downto 0);  -- stage 2 cycle 3(6) input registers (get max from 0-1/2-3)
  signal s_ab, s_cd                                 : std_logic_vector(9 downto 0);  -- stage 2 cycle 3(6) input registers (get sum from 0+1, 2+3)
  signal f_s_ab                                     : std_logic_vector(9 downto 0); -- stage 2 cycle 3(6) output register with final sum
  
  signal max_edge0, max_edge1, max_edge2, max_edge3 : std_logic_vector(2 downto 0);  -- stage 1 output registers holding single max directions (eliminate 4)
  signal max_edge01, max_edge23                     : std_logic_vector(2 downto 0);  -- stage 2 output registers holding single max directions (eliminate 2 more)
  signal f_max_edge                                 : std_logic_vector(2 downto 0);  -- stage 2 cycle 3(6) output register with final max direction
  signal max_val                                    : std_logic_vector(9 downto 0);  -- intermediate register holding current max value
  
  ------------------
  -- Memory Array --
  ------------------

  type mem_array is array (2 downto 0) of std_logic_vector(7 downto 0);
  signal mem_out    :   mem_array;
begin  

  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');
  
  ---------------------
  -- Memory Entities --
  ---------------------

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

    ----------------
    -- MAX Entity --
    ----------------

    max     :   entity work.max(main)
        port map (
            i_v1    =>  r0,
            i_v2    =>  r3,
            i_d1    =>  r4,
            i_d2    =>  r5,
            o_val   =>  max_val,
            o_dir   =>  direction
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
          col          <= "00000000";
          row          <= "00000000";
          busy         <= '0';
          current_row  <= "001";
			else
                if (i_valid = '1') then
                    busy <= '1';

				    if (col = 255) then
                            col <= "00000000";
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
                     
  process(i_reset, busy)
  begin
      if (i_reset = '1') then
          o_mode <= "01";
      elsif (busy = '1') then
          o_mode <= "10";
      else 
          o_mode <= "11";
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
                  mem_wren    <= "000";
                  mem_data    <= i_pixel;
        end case;
        mem_wren    <= "000";
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
	r0          <= "00" & a; 
	r3          <= "00" & d;
	r1          <= "00" &  b;
	r2          <= "00" & c;
    r4          <= "010"; --N
    r5          <= "110"; --NE
    max_edge0   <= direction;

   end if;
   
   if(v(1) = '1') then
	sum1         <= a0;
    max_sum1     <= a1; 
	r0           <= "00" & e; 
	r3           <= "00" & h; 
	r1           <= "00" & f; 
	r2           <= "00" & g; 
    r4           <= "011"; --S
    r5           <= "111"; --SW
    max_edge1    <= direction;

   end if;
  
   if(v(2) = '1') then
	sum2        <= a0; 
	max_sum2    <= a1; 
	r0          <= "00" & c; 
	r3          <= "00" & f; 
	r1          <= "00" & d; 
	r2          <= "00" & e;
    r4          <= "000"; --E
    r5          <= "101"; --SE
    max_edge2   <= direction;

   end if;
  
   if(v(3) = '1') then
    sum3         <= a0; 
    max_sum3     <= a1;
    r0           <= "00" & b;
    r3           <= "00" & g;
    r1           <= "00" & h;
    r2           <= "00" & a;
    r4           <= "001"; --W
    r5           <= "100"; --NW
    max_edge3    <= direction;

   end if;
  
 end process; 

  	a0    <= std_logic_vector(unsigned(r1) + unsigned(r2));
    a1    <= std_logic_vector(unsigned(max_val) + unsigned(a0));
		  
  -- End of Stage 1 --

  -- Stage 2 --

  process begin
      wait until rising_edge(i_clock);
      if (v(1) = '1') then
        r0          <=  max_sum0;
        r3          <=  max_sum1;
        s_a         <=  sum0;
        s_b         <=  sum1;

        s_ab        <=  std_logic_vector(unsigned(s_a) + unsigned(s_b));
        m_ab        <=  max_val;

        r4          <= max_edge0;
        r5          <= max_edge1;
        max_edge01  <= direction;

      elsif (v(3) = '1') then
        r0          <=  max_sum2;
        r3          <=  max_sum3;
        s_a         <=  sum2;
        s_b         <=  sum3;
  
        s_cd        <= std_logic_vector(unsigned(s_a) + unsigned(s_b));
        m_cd        <=  max_val;

        r4          <= max_edge2;
        r5          <= max_edge3;
        max_edge23  <= direction;

      elsif (v(6) = '1') then
        r0          <= m_ab;
        r3          <= m_cd;

        m_ab        <=  max_val;
        f_s_ab      <=  std_logic_vector(unsigned(s_ab) + unsigned(s_cd));

        r4          <= max_edge01;
        r5          <= max_edge23;

        -- Final MAX Edge
        f_max_edge  <= direction;

      elsif (v(7) = '1') then
        m_cd        <= to_stdlogicvector(to_bitvector(m_ab) sla 3);
        s_cd        <= f_s_ab;
        s_ab        <= std_logic_vector(unsigned(s_cd) + unsigned(f_s_ab));
        sub         <= std_logic_vector(signed((unsigned(m_cd) - unsigned(s_ab))));

    end if;
  
  end process;
  
  edge_present  <= '1' when sub > 383 else '0';
  o_edge        <= edge_present;
  o_dir         <= f_max_edge when edge_present = '1' else "000";

end architecture;
