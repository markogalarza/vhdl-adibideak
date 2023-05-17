-- Sarraila irekitzen da '110' sekuentziarekin eta ixten da '00' ailegatuta
-- Mealy makina

library ieee;
use ieee.std_logic_1164.all;

entity sarrailamealy is port(
    SW: in std_logic_vector (0 downto 0);
    KEY: in std_logic_vector (0 downto 0);
    LEDR: out std_logic_vector (0 downto 0)
);
end sarrailamealy;

architecture mealyportaera of sarrailamealy is
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
        	    if x='0' then
        		    z <= '0';
        		    next_state <= q0;
        	    else
        		    z <= '0';
        		    next_state <= q1;
        	    end if;
        	when q1 =>
        	    if x='0' then
        		    z <= '0';
        		    next_state <= q0;
        	    else
        		    z <= '0';
        		    next_state <= q2;
        	    end if;
        	when q2 =>
        	    if x='0' then
        		    z <= '1';
        		    next_state <=q3;
        	    else
        		    z <= '0';
        		    next_state <= q2;
        	    end if;
            when q3 =>
        	    if x='0' then
        		    z <= '1';
        		    next_state <= q4;
        	    else
        		    z <= '1';
        		    next_state <= q3;
        	    end if;
        	when q4 =>
        	    if x='0' then
        		    z <= '0';
        		    next_state <= q0;
        	    else
        		    z <= '1';
        		    next_state <= q3;
        	    end if;
    	end case;
    end process;
    process
    begin
        wait until rising_edge(clk);
        current_state <= next_state;
    end process;
end mealyportaera;
