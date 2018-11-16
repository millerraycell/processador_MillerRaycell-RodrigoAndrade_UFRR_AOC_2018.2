LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY QOr is
port
	( entradaOr1,entradaOr2 : in STD_LOGIC;
		saidaOr : out STD_LOGIC);
END QOr;

ARCHITECTURE behavior OF QOr IS
BEGIN
	
	saidaOr <= entradaOr1 or entradaOr2;
END behavior;