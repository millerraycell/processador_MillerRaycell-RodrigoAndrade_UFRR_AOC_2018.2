LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QAnd2 is
port
	( entradaAnd1,entradaAnd2 : in STD_LOGIC_VECTOR (15 DOWNTO 0);
		saidaAnd : out STD_LOGIC_VECTOR (15 DOWNTO 0));
end QAnd2;

ARCHITECTURE behavior of QAnd2 is
begin
	
	saidaAnd <= entradaAnd1 and entradaAnd2;
end behavior;