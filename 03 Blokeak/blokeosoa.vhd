-- Instance F1 = notB (A + D)
-- Instance F2 = AB + BD + C
-- Instance F3 = A xor B = F1 xor F2
-- Map instances

library ieee;
use ieee.std_logic_1164.all;

entity blokeosoa is port (
    SW: in std_logic_vector(3 downto 0);
    LEDR: out std_logic_vector(0 downto 0)
);
end blokeosoa;

architecture funtzioa of blokeosoa is
    component blokeaf1 is
        port (
            I: in std_logic_vector(3 downto 0);
            O: out std_logic
        );
    end component;

    component blokeaf2 is
        port (
            I: in std_logic_vector(3 downto 0);
            O: out std_logic
        );
    end component;

    component blokeaf3 is
        port (
            I: in std_logic_vector(1 downto 0);
            O: out std_logic
        );
    end component;

    signal OUT1, OUT2: std_logic;

begin
    F1: blokeaf1 port map (I(0) => SW(0),
        I(1) => SW(1),
        I(2) => SW(2),
        I(3) => SW(3),
        O => OUT1);
    F2: blokeaf2 port map (I(0) => SW(0),
        I(1) => SW(1),
        I(2) => SW(2),
        I(3) => SW(3),
        O => OUT2);
    F3: blokeaf3 port map (I(0) => OUT1,I(1) => OUT2, O => LEDR(0));
end funtzioa;
