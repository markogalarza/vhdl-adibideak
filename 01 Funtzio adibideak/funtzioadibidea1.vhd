-- F = notB (A + D)

library ieee;
use ieee.std_logic_1164.all;

entity funtzioadibidea1 is port (
    SW: in std_logic_vector(3 DOWNTO 0);
    LEDR: out std_logic_vector(0 DOWNTO 0)
);
end funtzioadibidea1;

architecture funtzioa of funtzioadibidea1 is
begin
    LEDR(0) <= (not SW(2) and (SW(3) or SW(0)));
end funtzioa;
