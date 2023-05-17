-- F2 = AB + BD + C

library ieee;
use ieee.std_logic_1164.all;

entity blokeaf2 is port (
    I: in std_logic_vector(3 downto 0); 
    O: out std_logic
);
end blokeaf2;

architecture funtzioa of blokeaf2 is
    signal A, B, C, D: std_logic;
begin
    A <= I(3);
    B <= I(2);
    C <= I(1);
    D <= I(0);
    O <= ((A and B) or (B and D) or C);
end funtzioa;
