-- F3 = A xor B

library ieee;
use ieee.std_logic_1164.all;

entity blokeaf3 is port (
    I: in std_logic_vector(1 downto 0); 
    O: out std_logic
);
end blokeaf3;

architecture funtzioa of blokeaf3 is
    signal A, B: std_logic;
begin
    A <= I(1);
    B <= I(0);
    O <= (A xor B);
end funtzioa;
