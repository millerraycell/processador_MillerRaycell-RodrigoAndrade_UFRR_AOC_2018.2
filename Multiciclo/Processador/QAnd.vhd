LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QAnd is
port
	( entradaAnd1,entradaAnd2 : in STD_LOGIC;
		saidaAnd : out STD_LOGIC);
end QAnd;

ARCHITECTURE behavior of QAnd is
begin
	
	saidaAnd <= entradaAnd1 and entradaAnd2;
end behavior;