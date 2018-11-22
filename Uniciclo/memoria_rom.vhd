LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY memoria_rom IS
PORT
(
	entrada : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	clock : IN 
	op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rs : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rt : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rd : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	funct : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END memoria_rom;

ARCHITECTURE behavior OF memoria_rom IS
SIGNAL quantInst : INTEGER;
SIGNAL instAtual : INTEGER;
type matriz IS ARRAY (INTEGER RANGE 0 TO 65535) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN
	process(entrada,clock)
	BEGIN
		
			
		
	END process;
END behavior;