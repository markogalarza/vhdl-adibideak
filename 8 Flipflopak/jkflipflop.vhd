-- D flipflop sarrera asinkronoekin

library ieee;
use ieee.std_logic_1164.all;

entity jkflipflop is port(
    SW: in std_logic_vector (3 downto 0);
    KEY: in std_logic_vector (0 downto 0);
    LEDR: out std_logic_vector (0 downto 0)
);
end jkflipflop;

architecture funtzionalitatea of jkflipflop is
    signal clear, preset, j, k, clk, q: std_logic;
begin
    j <= SW(1);
    k <= SW(0);
    clk <= KEY(0);
    preset <= SW(3); 
    clear <= SW(2);
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
                if (j='0' and k='0') then
                    q <= q;
                elsif (j='0' and k='1') then
                    q <= '0';
                elsif (j='1' and k='0') then
                    q <= '1';
                elsif (j='1' and k='1') then
                    q <= not q;
                end if;
            end if;
        end if;
    end process;
end funtzionalitatea;
