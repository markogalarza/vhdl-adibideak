-- F1 = notB (A + D)
-- F2 = AB + BD C
-- Multifuntzioas F1 F2

library ieee;
use ieee.std_logic_1164.all;

entity egiataulaadibidea2 is port (
    SW: in std_logic_vector(3 DOWNTO 0);
    LEDR: out std_logic_vector(1 DOWNTO 0)
);
end egiataulaadibidea2;

architecture egitataula of egiataulaadibidea2 is
begin
    process (SW)
    begin
        case SW is
            when "0000" => LEDR(0 DOWNTO 0) <= "0";
            when "0001" => LEDR(0 DOWNTO 0) <= "0";
            when "0100" => LEDR(0 DOWNTO 0) <= "0";
            when "1000" => LEDR(0 DOWNTO 0) <= "0";
            when "1001" => LEDR(0 DOWNTO 0) <= "0";
            when others => LEDR(0 DOWNTO 0) <= "1";
        end case;
    end process;
    process (SW)
    begin
        case SW is
            when "0011" => LEDR(1 DOWNTO 1) <= "0";
            when "0100" => LEDR(1 DOWNTO 1) <= "0";
            when "0101" => LEDR(1 DOWNTO 1) <= "0";
            when "1000" => LEDR(1 DOWNTO 1) <= "0";
            when "1001" => LEDR(1 DOWNTO 1) <= "0";
            when others => LEDR(1 DOWNTO 1) <= "1";
        end case;
    end process;
end egitataula;
