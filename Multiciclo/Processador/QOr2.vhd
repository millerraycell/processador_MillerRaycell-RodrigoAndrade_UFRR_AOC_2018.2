LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY QOr2 is
port
	( entradaOr1,entradaOr2 : in STD_LOGIC_VECTOR (15 DOWNTO 0);
		saidaOr : out STD_LOGIC_VECTOR (15 DOWNTO 0));
END QOr2;

ARCHITECTURE behavior OF QOr2 IS
BEGIN
	
	saidaOr <= entradaOr1 or entradaOr2;
END behavior;