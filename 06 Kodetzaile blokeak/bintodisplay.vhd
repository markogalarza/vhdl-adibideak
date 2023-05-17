-- 4 biteko sarrera display-a pizteko

library ieee;
use ieee.std_logic_1164.all;

entity bintodisplay is port (
    SW: in std_logic_vector(3 downto 0);
    HEX0: out std_logic_vector(6 downto 0);
    HEX1: out std_logic_vector(6 downto 0)
);
end bintodisplay;

architecture funtzioa of bintodisplay is

    component bin7segmentu is
        port (
            binary: in std_logic_vector(3 downto 0);
            segments: out std_logic_vector(6 downto 0)
        );
    end component;

begin
    display0: bin7segmentu port map (binary => SW(3 downto 0), segments => HEX0);
    display1: bin7segmentu port map (binary => SW(3 downto 0), segments => HEX1);
end funtzioa;
