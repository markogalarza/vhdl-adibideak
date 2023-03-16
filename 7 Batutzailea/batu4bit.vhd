-- 4 biteko batutzailea

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity batu4bit is
    port(
        SW: in std_logic_vector(8 downto 0);
        LEDR: out std_logic_vector(4 downto 0)
    );
end batu4bit;

architecture funtzionalitatea of batu4bit is
    signal A, B, Cin, batuketa: unsigned(4 downto 0);
begin
    A <= unsigned('0' & SW(8 downto 5));
    B <= unsigned('0' & SW(4 downto 1));
    Cin <= unsigned("0000" & SW(0 downto 0));
    batuketa <= A + B + Cin;
    LEDR(4 downto 0) <= std_logic_vector(batuketa);
end architecture funtzionalitatea;
