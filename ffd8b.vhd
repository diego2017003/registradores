LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY ffd8b is 
	port(Dff8: IN STD_LOGIC_VECTOR(63 downto 0);
		clkff8: IN STD_LOGIC;
		Qff8:OUT STD_LOGIC_VECTOR(63 downto 0));
END ffd8b;
ARCHITECTURE behaviorffd8b of ffd8b is
		COMPONENT ffd4b
			port(Dff4: IN STD_LOGIC_VECTOR(3 downto 0);
			clkff4: IN STD_LOGIC;
			Qff4:OUT STD_LOGIC_VECTOR(3 downto 0));
		END COMPONENT;
		begin	
			gen:FOR i IN 0 TO 7 GENERATE
			l:ffd4b PORT MAP(Dff4=>Dff8((i*4+4) downto 4*i),clkff4=>clkff8,Qff4=>Qff8(i));
	    END GENERATE;
END behaviorffd8b;	