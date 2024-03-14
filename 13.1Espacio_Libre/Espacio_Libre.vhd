library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Espacio_Libre is
    port (
        clk : in std_logic;
        persona_ingresa : in std_logic;
        alarma : out std_logic
    );
end entity Espacio_Libre;

architecture behavior of Espacio_Libre is
    signal contador : integer range 35 downto 0 := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if persona_ingresa = '1' then
                contador <= 35;
            elsif contador > 0 then
                contador <= contador - 1;
                if contador = 0 then
                    alarma <= '1'; -- Encender alarma
                else
                    alarma <= '0'; -- Apagar alarma
                end if;
            end if;
        end if;
    end process;
end architecture behavior;
