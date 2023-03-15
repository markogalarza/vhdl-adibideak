-- F1 = notB (A + D)
-- F2 = AB + BD + C
-- Multifuntzioa F1 F2

library ieee;
use ieee.std_logic_1164.all;

entity funtzioadibidea3 is port (
    SW: in std_logic_vector(3 DOWNTO 0);
    LEDR: out std_logic_vector(1 DOWNTO 0)
);
end funtzioadibidea3;

architecture funtzioa of funtzioadibidea3 is
    signal A, B, C, D: std_logic;
begin
    A <= SW(3);
    B <= SW(2);
    C <= SW(1);
    D <= SW(0);
    LEDR(1) <= (not B and (A or D));
    LEDR(0) <= ((A and B) or (B and D) or C);
end funtzioa;
