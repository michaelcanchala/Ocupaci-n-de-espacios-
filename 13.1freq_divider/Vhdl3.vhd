architecture behavior_control_ocupacion of Control_Ocupacion is
    signal clk_divided : std_logic;  -- Señal de reloj dividido
    signal clk_divided_temp : std_logic_vector(5 downto 0);  -- Temporal para conectar al divisor
    signal espacio_libre_alarma, espacio_ocupado_alarma : std_logic;
begin
    -- Divisor de frecuencia
    freq_divider_inst : entity work.freq_divider
        port map (
            clk => clk,
            enciende_apaga => '1', -- Habilitar el divisor
            reinicia => persona_ingresa, -- Reiniciar divisor cuando una persona ingresa
            C_out => clk_divided_temp  -- Conectar clk_divided_temp al divisor
        );

    -- Convertir clk_divided_temp a señal de un solo bit
    clk_divided <= clk_divided_temp(0);

    -- Espacio libre
    Espacio_Libre_inst : entity work.Espacio_Libre
        port map (
            clk => clk_divided,  -- Conectar clk_divided
            persona_ingresa => persona_ingresa,
            alarma => espacio_libre_alarma
        );

    -- Espacio ocupado
    Espacio_Ocupado_inst : entity work.Espacio_Ocupado
        port map (
            clk => clk_divided,  -- Conectar clk_divided
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
end architecture behavior_control_ocupacion;
