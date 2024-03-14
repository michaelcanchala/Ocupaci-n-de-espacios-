Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity freq_divider is
 port
 (
  
  clk : in std_logic;
  enciende_apaga, reinicia : in std_logic;
 
  C_out : out std_logic_vector (5 downto 0)
  
 );
end freq_divider ;


architecture arch_freq_divider of freq_divider is

 signal registro : integer range 35 to 0;
	
begin

 Cdes : process (clk, reinicia)
  begin
    if reinicia = '1' then
            registro <= 35; 
      elsif rising_edge(clk) then
            if enciende_apaga = '1' then
                if registro = 0 then
                    registro <= 35; 
                else
                    registro <= registro - 1; 
                end if;
            end if;
        end if;
    end process;
  C_out <= std_logic_vector(to_unsigned(registro,6));
end arch_freq_divider;