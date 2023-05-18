-- Lau biteko zenbatzaile bitarra

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity zenbatzailea is port(
    SW: in std_logic_vector (0 downto 0);
    KEY: in std_logic_vector (0 downto 0);
    LEDR: out std_logic_vector (3 downto 0)
);
end zenbatzailea;

architecture funtzionalitatea of zenbatzailea is
    signal clk, reset: std_logic;
	signal count : unsigned (3 downto 0);
begin
    reset <= SW(0);
    clk <= KEY(0);
	process(clk, reset)
	begin
		if (reset = '0') then
			count <= "0000";
		elsif reset = '1' then
			if rising_edge (clk) then
				if count = "1111" then
					count <= "0000";
				else
					count <= count + 1;
				end if;
			end if; 
		end if;
		LEDR <= std_logic_vector (count);
	end process;
end funtzionalitatea;

