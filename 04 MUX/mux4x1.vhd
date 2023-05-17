-- F = MUX-en funtzio osoa

library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is port (
        SW: in std_logic_vector(1 downto 0);
        KEY: in std_logic_vector(3 downto 0);
        LEDR: out std_logic_vector(0 downto 0)
    );
end mux4x1;

architecture funtzioa of mux4x1 is
    signal I0, I1, I2, I3, C1, C0: std_logic;
begin
    I0 <= KEY(0);
    I1 <= KEY(1);
    I2 <= KEY(2);
    I3 <= KEY(3);
    C1 <= SW(1);
    C0 <= SW(0);
    LEDR(0) <= (((not C1) and (not C0) and I0) or ((not C1) and C0 and I1) or (C1 and (not C0) and I2) or (C1 and C0 and I3));
end funtzioa;
