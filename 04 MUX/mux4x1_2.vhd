-- F = MUX-en funtzionalittea

library ieee;
use ieee.std_logic_1164.all;

entity mux4x1_2 is port (
        SW: in std_logic_vector(1 downto 0);
        KEY: in std_logic_vector(3 downto 0);
        LEDR: out std_logic_vector(0 downto 0)
    );
end mux4x1_2;

architecture funtzionalitatea of mux4x1_2 is
begin
    process (SW)
    begin
        case SW is
            when "00" => LEDR(0) <= KEY(0);
            when "01" => LEDR(0) <= KEY(1);
            when "10" => LEDR(0) <= KEY(2);
            when "11" => LEDR(0) <= KEY(3);
            when others => LEDR <= "0";
        end case;
    end process;
end funtzionalitatea;
