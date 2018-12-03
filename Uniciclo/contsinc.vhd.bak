library ieee; 
use ieee.std_logic_1164.all;

ENTITY contsinc IS
PORT
(
		j,k,clock : in std_logic;
		z1,z2,z3 : out std_logic);
END contsinc;

ARCHITECTURE behavior OF contsinc IS

component registerjk 
	port (
	ent1, ent2,relogio: in std_logic;
	saida: out std_logic );
end component;

COMPONENT QAnd 
PORT
(
	entrada1,entrada2 : in std_logic;
	saida : out std_logic);
END COMPONENT;

SIGNAL a1,a2,a3,a4 : std_logic;
BEGIN
	G0: registerjk PORT MAP (j,k,clock,a1);
	z1 <= a1;
	G1: registerjk PORT MAP (a1,a1,clock,a2);
	z2 <= a2;
	G2: QAnd PORT MAP (a1,a2,a3);
	G3: registerjk PORT MAP (a3,a3,clock,a4);
	z3 <= a4;
END behavior;