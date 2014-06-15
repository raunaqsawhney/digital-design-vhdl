library verilog;
use verilog.vl_types.all;
entity lab3 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        i_valid         : in     vl_logic;
        i_data          : in     vl_logic_vector(7 downto 0);
        o_data          : out    vl_logic_vector(7 downto 0)
    );
end lab3;
