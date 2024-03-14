library verilog;
use verilog.vl_types.all;
entity freq_divider_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        enciende_apaga  : in     vl_logic;
        reinicia        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end freq_divider_vlg_sample_tst;
