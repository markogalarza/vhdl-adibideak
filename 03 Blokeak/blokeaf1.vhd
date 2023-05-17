-- F1 = notB (A + D)

library ieee;
use ieee.std_logic_1164.all;

entity blokeaf1 is port (
    I: in std_logic_vector(3 downto 0); 
    O: out std_logic
);
end blokeaf1;

architecture funtzioa of blokeaf1 is
    signal A, B, C, D: std_logic;
begin
    A <= I(3);
    B <= I(2);
    C <= I(1);
    D <= I(0);
    O <= ((not B) and (A or D));
end funtzioa;
