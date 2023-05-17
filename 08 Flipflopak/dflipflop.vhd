-- D flipflop sarrera asinkronoekin

library ieee;
use ieee.std_logic_1164.all;

entity dflipflop is port(
    SW: in std_logic_vector (2 downto 0);
    KEY: in std_logic_vector (0 downto 0);
    LEDR: out std_logic_vector (0 downto 0)
);
end dflipflop;

architecture funtzionalitatea of dflipflop is
    signal clear, preset, d, clk, q: std_logic;
begin
    d <= SW(0);
    clk <= KEY(0);
    preset <= SW(2);
    clear <= SW(1);
    LEDR(0) <= q;
    process (preset, clear, clk)
    begin
	    if (preset='0' and clear='1') then
		    q <= '0';
	    elsif (preset='1' and clear='0') then
		    q <= '1';
        elsif (preset='0' and clear='0') then
            -- if (clk'event and clk='1') then
            if (rising_edge(clk)) then
                q <= d;
            end if;
        end if;
    end process;
end funtzionalitatea;
