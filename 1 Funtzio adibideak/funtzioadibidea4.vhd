-- F1 = notB (A + D)
-- F2 = AB + BD + C
-- F3 = F1 XOR F2
-- Multifuntzioa eta sekuentzia -> process()

library ieee;
use ieee.std_logic_1164.all;

entity funtzioadibidea4 is port (
    SW: in std_logic_vector(3 DOWNTO 0);
    LEDR: out std_logic_vector(2 DOWNTO 0)
);
end funtzioadibidea4;

architecture funtzioa of funtzioadibidea4 is
    signal A, B, C, D, F1, F2: std_logic;
begin
    process (SW)
    begin
        A <= SW(3);
        B <= SW(2);
        C <= SW(1);
        D <= SW(0);
        F1 <= (not B and (A or D));
        F2 <= ((A and B) or (B and D) or C);
        LEDR(2) <= F1 xor F2;
        LEDR(1) <= F1;
        LEDR(0) <= F2;
    end process;
end funtzioa;
