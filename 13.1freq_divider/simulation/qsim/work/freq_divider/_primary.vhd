library verilog;
use verilog.vl_types.all;
entity freq_divider is
    port(
        clk             : in     vl_logic;
        enciende_apaga  : in     vl_logic;
        reinicia        : in     vl_logic;
        C_out           : out    vl_logic_vector(5 downto 0)
    );
end freq_divider;
