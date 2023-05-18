-- Kodetzailea 4 x 2 lehentasasunarekin

library ieee;
use ieee.std_logic_1164.all;

entity kod4x2 is port (
        SW: in std_logic_vector(3 downto 0);
        LEDR: out std_logic_vector(1 downto 0)
    );
end kod4x2;

 architecture funtzionalitatea of kod4x2 is
 begin
    process (SW)
    begin
        if (SW(3) = '1') then  -- Komilla sinplea behar da
            LEDR <= "11";
        elsif (SW(3 downto 2) = "01") then -- Eta hemendik aurrera komilla bikoitza
            LEDR <= "10";
        elsif (SW(3 downto 1) = "001") then
            LEDR <= "01";
        elsif (SW(3 downto 0) = "0001") then
            LEDR <= "00";
        else
            LEDR <= "--";
        end if;
    end process;
 end architecture;
 