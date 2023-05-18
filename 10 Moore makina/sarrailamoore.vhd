-- Sarraila irekitzen da '110' sekuentziarekin eta ixten da '00' ailegatuta
-- Moore makina

library ieee;
use ieee.std_logic_1164.all;

entity sarrailamoore is port(
    SW: in std_logic_vector (0 downto 0);
    KEY: in std_logic_vector (0 downto 0);
    LEDR: out std_logic_vector (0 downto 0)
);
end sarrailamoore;

architecture mooreportaera of sarrailamoore is
    type state_type is (q0, q1, q2, q3, q4);
    signal current_state, next_state: state_type;
    signal x, clk, z: std_logic;
begin
    x <= SW(0);
    clk <= KEY(0);
    LEDR(0) <= z;
    process(x)
    begin
        case current_state is
        	when q0 =>
				z <= '0';
        	    if x='0' then
        		    next_state <= q0;
        	    else
        		    next_state <= q1;
        	    end if;
        	when q1 =>
				z <= '0';
        	    if x='0' then
        		    next_state <= q0;
        	    else
        		    next_state <= q2;
        	    end if;
        	when q2 =>
				z <= '0';
        	    if x='0' then
        		    next_state <= q3;
        	    else
        		    next_state <= q2;
        	    end if;
            when q3 =>
				z <= '1';
        	    if x='0' then
        		    next_state <= q4;
        	    else
        		    next_state <= q3;
        	    end if;
        	when q4 =>
				z <= '1';
        	    if x='0' then
        		    next_state <= q0;
        	    else
        		    next_state <= q3;
        	    end if;
    	end case;
    end process;
    process
    begin
        wait until rising_edge(clk);
        current_state <= next_state;
    end process;
end mooreportaera;
