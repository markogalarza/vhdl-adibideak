-- F = notB (A + D)
-- Aldagaiak biltzen

library ieee;
use ieee.std_logic_1164.all;

entity funtzioadibidea2 is port (
    SW: in std_logic_vector(3 DOWNTO 0);
    LEDR: out std_logic_vector(0 DOWNTO 0)
);
end funtzioadibidea2;

architecture funtzioa of funtzioadibidea2 is
    signal A, B, C, D: std_logic;
begin
    A <= SW(3);
    B <= SW(2);
    C <= SW(1);
    D <= SW(0);
    LEDR(0) <= (not B and (A or D));
end funtzioa;
