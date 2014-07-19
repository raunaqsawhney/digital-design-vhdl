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
  -- function "rol" (a : std_logic_vector; n : natural)
    -- return std_logic_vector
  -- is
  -- begin
    -- return std_logic_vector(unsigned(a) rol n);
  -- end function;
   
 function max_dir (a : std_logic_vector; b : std_logic_vector; dir1 : natural; dir2 : natural)
     return natural 
   is
   begin
     if (unsigned(a) = unsigned(b)) then
		if ( natural(dir1) > natural(dir2) ) then
			return natural(dir1);
		else
			return natural(dir2);
		end if; 
	
	elsif (unsigned(a) > unsigned(b)) then
		return natural(dir1);
	else
		return natural(dir2);
    end if;
   end function;
   
    function max_input (a : std_logic_vector; b : std_logic_vector)
     return std_logic_vector
   is
   begin
    if (unsigned(a) > unsigned(b)) then
		return std_logic_vector(a);
	else
		return std_logic_vector(b);
    end if;
   end function;

  -- Defined Signals
  signal column                                                     : std_logic_vector(8 downto 0) ;
  signal row                                                        : std_logic_vector(8 downto 0) ;
  signal mem_wren                                                   : std_logic_vector(2 downto 0);
  signal a, b, c, d, e, f, g, h, i, tmp_next_zero, tmp_next_one     : std_logic_vector(7 downto 0);
  signal v                                                          : std_logic_vector(7 downto 0);
  signal current_row                                                : std_logic_vector(2 downto 0);
  signal edge_present                                               : std_logic;
  signal first_pass                                                 : std_logic; 
  signal mem_addr 						    : std_logic_vector (7 downto 0);

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
  signal sum0, sum1, sum2, sum3                  	: std_logic_vector(12 downto 0);  -- sum [9 BITS](computed in Stage 1)
  signal max_sum0, max_sum1, max_sum2, max_sum3     	: std_logic_vector(12 downto 0);  -- max sum [10 BITS] (computed in Stage 1)

  --signal ms_a, ms_b, ms_c, ms_d			: std_logic_vector(12 downto 0);  -- max sum [10 BITS] (inputs to max in Stage 2)
  signal m_ab, m_cd					: std_logic_vector(12 downto 0);	 -- max of ab and cd (outputs of max in Stage 2)
  
  --signal s_a, s_b, s_c, s_d				: std_logic_vector(12 downto 0);  -- sum [9 bits] (inputs to adder in Stage 2)
  signal s_ab, s_cd					: std_logic_vector(12 downto 0);  -- sum [10 bits] (outputs of adder in Stage 2)

  --signal m_ab2, m_cd2					: std_logic_vector(12 downto 0);  -- max [10 bits] (inputs to final max in Stage 2)
  signal m_abcd						: std_logic_vector(12 downto 0);  -- max [10 bits] (out of final max in Stage 2)
 
  --signal s_ab2, s_cd2					: std_logic_vector(12 downto 0);  -- sum [10 bits] (inputs to final sum in Stage 2)
  signal s_abcd, temp					: std_logic_vector(12 downto 0); -- sum [11 bits] (output of final sum in Stage 2)
 
  signal final_max					: std_logic_vector(13 downto 0); -- final max and final sum [13 bits] (in Stage 2)
  signal final_sum					: std_logic_vector(13 downto 0);
 
  signal sub						: signed(12 downto 0); 		-- sub [13 bits] holds derivative
  
  signal r0, r1, r2, r3, r4, r5, r6, r7			: std_logic_vector(12 downto 0);  -- values
  signal max_edge0_dir, max_edge1_dir			: natural;
  signal max_edge2_dir, max_edge3_dir    		: natural;
  signal max_edge01_dir, max_edge23_dir    		: natural;

  
  signal max_edge0, max_edge1, max_edge2, max_edge3 	: std_logic_vector(12 downto 0);  -- stage 1 output registers holding single max directions (eliminate 4)
  signal max_edge01, max_edge23                     	: std_logic_vector(12 downto 0);  -- stage 2 output registers holding single max directions (eliminate 2 more)
  signal o_dir_inter                    		: std_logic_vector(2 downto 0);  -- stage 2 cycle 3(6) output register with final max direction
  signal f_max_edge 					: natural;
  
  signal system_mode					: std_logic_vector(1 downto 0);


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
        address => mem_addr,
        clock   => i_clock,
        data    => i_pixel,
        wren    => mem_wren(0),
        q       => mem_out(0) 
    );

  mem1  :   entity work.mem(main)
    port map (
        address => mem_addr,
        clock   => i_clock,
        data    => i_pixel,
        wren    => mem_wren(1),
        q       => mem_out(1)
    );

  mem2  :   entity work.mem(main)
    port map (
        address => mem_addr,
        clock   => i_clock,
        data    => i_pixel,
        wren    => mem_wren(2),
        q       => mem_out(2)
    );

  -------------------------  
  -- Valid Bit Generator --
  -------------------------
 
  v_gen : for i in 1 to 7 generate
      process begin
          wait until rising_edge(i_clock);
		  if i_reset = '1' then
              v(i) <= '0';
          else
              v(i) <= v(i-1);
        end if;
      end process;
  end generate v_gen;

  ---------------------------
  -- System Initialization --
  ---------------------------
  
  process begin
      wait until rising_edge(i_clock);
      if (i_reset = '1') then
          column       <= "000000000";
          row          <= "000000000";
          current_row  <= "001";
	  first_pass   <= '0';
	  o_row	       <= "00000000";
      else
	      if (i_valid = '1') then
			if (unsigned(column) > 254) then
				current_row <= current_row(1 downto 0) & current_row(2); 
				row <= std_logic_vector((unsigned(row) + 1));
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

			column     <= std_logic_vector("0" & (unsigned(column(7 downto 0)) + 1));

	                if (unsigned(row) > 1 and unsigned(column) > 1) then
	                	first_pass <= '1';
	                end if;
	                o_row <= std_logic_vector(row(7 downto 0));
		else
			first_pass <= '0';
		end if;
	end if;
	end process;

	mem_addr	<= std_logic_vector(column(7 downto 0));
	mem_wren 	 <= current_row when i_reset = '0' else "000";	
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
                     
  process
  begin
	wait until rising_edge(i_clock);
	if (i_reset = '1') then
	        system_mode <= "01"; --reset
	elsif (unsigned(column) = 0 and unsigned(row) = 0) then
	        system_mode <= "10"; --idle
	else 
	        system_mode <= "11"; --busy
	end if;
  end process;
 
  o_mode	<= system_mode;
  
  --------------
  -- Dataflow --
  --------------
  
  -- Stage 1 ---

  process begin
  wait until rising_edge(i_clock);
	if(v(0) = '1') then
  
		r0	<= "00000" & a;
		r1	<= "00000" & b;
		r2	<= "00000" & c;
		r3	<= "00000" & d;
		r4	<= "00000" & e;
		r5	<= "00000" & f;
		r6	<= "00000" & g;
		r7	<= "00000" & h;

	elsif(v(1) = '1') then

		max_edge0_dir	<= max_dir(r1, r6, 7, 8);
		max_edge0   	<= max_input(r1, r6);
		sum0            <= std_logic_vector(unsigned(r0) + unsigned(r7));
		
		max_sum0       	<= std_logic_vector(unsigned(max_input(r1, r6)) +((unsigned(r0) + unsigned(r7))));
		
		max_edge1_dir	<= max_dir(r0, r3, 6, 5);
		max_edge1   	<= max_input(r0, r3);
		sum1            <= std_logic_vector(unsigned(r1) + unsigned(r2));
		
		max_sum1       	<= std_logic_vector(unsigned(max_input(r0, r3)) +((unsigned(r1) + unsigned(r2))));
		
	elsif(v(2) = '1') then

		max_edge2_dir	<= max_dir(r2, r5, 4, 3);
		max_edge2   	<= max_input(r2, r5);
		sum2            <= std_logic_vector(unsigned(r3) + unsigned(r4));
		
		max_sum2       	<= std_logic_vector(unsigned(max_input(r2, r5)) +((unsigned(r3) + unsigned(r4))));
		
		max_edge3_dir	<= max_dir(r4, r7, 2, 1);
		max_edge3   	<= max_input(r4, r7);
		sum3            <= std_logic_vector(unsigned(r5) + unsigned(r6));
		
		max_sum3       	<= std_logic_vector(unsigned(max_input(r4, r7)) +((unsigned(r5) + unsigned(r6))));
		
	-- elsif(v(3) = '1') then
	
		-- max_edge2_dir	<= max_dir(r2, r5, 4, 3);
		-- max_edge2   	<= max_input(r2, r5);
		-- sum2            <= std_logic_vector(unsigned(r3) + unsigned(r4));
		
		-- max_sum2       	<= std_logic_vector(unsigned(max_input(r2, r5)) +((unsigned(r3) + unsigned(r4))));
		
	-- elsif(v(4) = '1') then 

		-- max_edge3_dir	<= max_dir(r4, r7, 2, 1);
		-- max_edge3   	<= max_input(r4, r7);
		-- sum3            <= std_logic_vector(unsigned(r5) + unsigned(r6));
		
		-- max_sum3       	<= std_logic_vector(unsigned(max_input(r4, r7)) +((unsigned(r5) + unsigned(r6))));
   end if;  
 end process;


  -- End of Stage 1 --

  -- Stage 2 --
  
  
  -- m1 <= r1 when r1 >= r2 else r2;
  -- m1_edge <= r7 when r1 >= r2 else r8; -- possible to optimize
  -- m2 <= a2 when a2 > r6 else r6;
  -- --m2_edge <= m1_edge when a2 > r6 else r9;
  
  -- m2_edge <= r9 when r6 >= a2 else m1_edge;
  -- a1 <= std_logic_vector(unsigned(r3) + unsigned(r4));
  -- a2 <= std_logic_vector(unsigned(m1) + unsigned(a1));
  
  -- a3_src2 <= (r5(11 downto 0) & "0") when v(5) = '1' else a1;
  -- a3 <= std_logic_vector(unsigned(r5) + unsigned(a3_src2));
  
  --sub1 <= signed(unsigned(a3) - unsigned(r6(9 downto 0) & "000") );  
  -- sub1 <= signed((unsigned(r6(9 downto 0)) & "000") - unsigned(a3) );  
  -- edgeReady <= '1' when sub1 > 383 else '0';
  -- o_edge <= edgeReady;
  -- o_dir <= r9 when edgeReady = '1' else "000";
  -- o_valid <= v(5);

   process begin
       wait until rising_edge(i_clock);
       if (v(2) = '1') then

	-- means data from max_sum0 and max_sum1 is available for sure (basically the cycle 1 and cycle 2 of stage1)
        max_edge01_dir  <= max_dir(max_sum0, max_sum1, max_edge0_dir, max_edge1_dir);
	max_edge01      <= max_input(max_sum0, max_sum1);

	m_ab        	<= max_input(max_sum0, max_sum1);
        s_ab        	<= std_logic_vector(unsigned(sum0) + unsigned(sum1));
		
      elsif (v(3) = '1') then
  
        max_edge23_dir 	<= max_dir(max_edge01, max_sum2, max_edge01_dir, max_edge2_dir);
        max_edge23  	<= max_input(max_edge01, max_sum2);
        
        m_cd        	<= max_input(m_ab, max_sum2);
        s_cd        	<= std_logic_vector(unsigned(s_ab) + unsigned(sum2));

      elsif (v(4) = '1') then
 
	-- Final MAX Edge
	f_max_edge  	<= max_dir(max_edge23, max_sum3, max_edge23_dir, max_edge3_dir);
        
	m_abcd        	<= max_input(m_cd, max_sum3);
	s_abcd		<= std_logic_vector(unsigned(s_cd) + unsigned(sum3));
	temp		<= std_logic_vector(unsigned(s_cd) + unsigned(sum3));

	elsif(v(5) = '1') then
		-- problem could be here (in shifting)
		final_max        <= std_logic_vector("0" & (unsigned(m_abcd(9 downto 0)) & "000"));
		final_sum        <= std_logic_vector("0" & ((unsigned(s_abcd(10 downto 0)) & "0") + unsigned(temp)));
	
	end if;
  
   end process;
  	
	sub		<= signed((unsigned(final_max(12 downto 0)) - unsigned(final_sum(12 downto 0))));
	edge_present	<= '1' when sub > 383 else '0';
	o_edge        	<= edge_present;
	--o_dir		<= f_max_edge when edge_present = '1' else "000";
	o_valid		<= v(7);
	
	-- --Verify this, not too sure about this (could cause problems)
	 with f_max_edge select
		 o_dir_inter <= "001" when 8,
		  "100" when 7,
		  "010" when 6,
		  "110" when 5,
		  "000" when 4,
		  "101" when 3,
		  "011" when 2,
		  "111" when 1,
		  "001" when OTHERS;
	o_dir     <= o_dir_inter when edge_present = '1' else "000";
	-- o_valid   <= v(8);

end architecture;