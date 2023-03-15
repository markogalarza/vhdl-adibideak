-- F = notB (A + D)

library ieee;
use ieee.std_logic_1164.all;

entity egiataulaadibidea1 is port (
    SW: in std_logic_vector(3 DOWNTO 0);
    LEDR: out std_logic_vector(0 DOWNTO 0)
);
end egiataulaadibidea1;

architecture egitataula of egiataulaadibidea1 is
begin
    process (SW)
    begin
        case SW is
            when "0000" => LEDR <= "0";
            when "0001" => LEDR <= "0";
            when "0100" => LEDR <= "0";
            when "1000" => LEDR <= "0";
            when "1001" => LEDR <= "0";
            when others => LEDR <= "1";
        end case;
    end process;
end egitataula;
