library verilog;
use verilog.vl_types.all;
entity modgen_counter_8_0 is
    port(
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0);
        clk_en          : in     vl_logic;
        aclear          : in     vl_logic;
        sload           : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        aset            : in     vl_logic;
        sclear          : in     vl_logic;
        updn            : in     vl_logic;
        cnt_en          : in     vl_logic;
        px51            : out    vl_logic;
        px20            : out    vl_logic;
        px46            : out    vl_logic;
        px42            : out    vl_logic;
        px17            : out    vl_logic;
        px13            : out    vl_logic;
        px9             : out    vl_logic;
        px5             : out    vl_logic;
        px1             : out    vl_logic
    );
end modgen_counter_8_0;
