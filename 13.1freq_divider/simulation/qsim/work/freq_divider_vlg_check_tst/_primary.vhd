library verilog;
use verilog.vl_types.all;
entity freq_divider_vlg_check_tst is
    port(
        C_out           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end freq_divider_vlg_check_tst;
