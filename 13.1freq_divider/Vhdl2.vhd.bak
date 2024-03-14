library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Control_Ocupacion is
    port (
        clk : in std_logic;
        persona_ingresa, persona_sale : in std_logic;
        alarma : out std_logic
    );
end entity Control_Ocupacion;

architecture behavior of Control_Ocupacion is
    signal clk_divided : std_logic;
    signal espacio_libre_alarma, espacio_ocupado_alarma : std_logic;
begin
    -- Divisor de frecuencia
    freq_divider_inst : entity work.freq_divider
        port map (
            clk => clk,
            enciende_apaga => '1', -- Habilitar el divisor
            reinicia => persona_ingresa, -- Reiniciar divisor cuando una persona ingresa
            C_out => clk_divided
        );

    -- Espacio libre
    Espacio_Libre_inst : entity work.Espacio_Libre
        port map (
            clk => clk_divided,
            persona_ingresa => persona_ingresa,
            alarma => espacio_libre_alarma
        );

    -- Espacio ocupado
    Espacio_Ocupado_inst : entity work.Espacio_Ocupado
        port map (
            clk => clk_divided,
            persona_sale => persona_sale,
            alarma => espacio_ocupado_alarma
        );

    -- Lógica de alarma global
    process (espacio_libre_alarma, espacio_ocupado_alarma)
    begin
        if espacio_libre_alarma = '1' or espacio_ocupado_alarma = '1' then
            alarma <= '1'; -- Encender alarma global
        else
            alarma <= '0'; -- Apagar alarma global
        end if;
    end process;
end architecture behavior;
