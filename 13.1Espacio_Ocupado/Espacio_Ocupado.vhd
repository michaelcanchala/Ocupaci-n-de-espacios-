library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Espacio_Ocupado is
    port (
        clk : in std_logic;
        persona_sale : in std_logic;
        alarma : out std_logic
    );
end entity Espacio_Ocupado;

architecture behavior of Espacio_Ocupado is
    signal contador : integer range 35 downto 0 := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if persona_sale = '1' then
                contador <= 0; -- Detener temporizador
                alarma <= '0'; -- Apagar alarma
            elsif contador < 35 then
                contador <= contador + 1;
                if contador = 35 then
                    alarma <= '1'; -- Encender alarma
                else
                    alarma <= '0'; -- Apagar alarma
                end if;
            end if;
        end if;
    end process;
end architecture behavior;
