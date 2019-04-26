LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY registradores is 
	generic(n : integer:= 10);
	port(D:IN STD_LOGIC_VECTOR((n-1) downto 0);
		 clk:IN STD_LOGIC;
		Q:OUT STD_LOGIC_VECTOR((n-1) downto 0));
END registradores;
ARCHITECTURE behavior of registradores is
COMPONENT latchd
	PORT(Dl,clkl:IN STD_LOGIC;
	Ql:OUT STD_LOGIC);
END COMPONENT;
COMPONENT ffd
	PORT(Dff,clkff:IN STD_LOGIC;
	Qff:OUT STD_LOGIC);
END COMPONENT;
BEGIN
gen:FOR i IN 0 TO (n-1) GENERATE
	l:latchd PORT MAP(Dl=>c(i),a=>X1(i),b=>X2(i),s=>Sout(i),Cout=>c(i+1));
	END GENERATE;
END behavior;			
			
				

