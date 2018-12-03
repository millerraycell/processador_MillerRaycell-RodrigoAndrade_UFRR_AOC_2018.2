LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY PC IS
PORT
(
		clk :  IN  STD_LOGIC;
		pin :  IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		pout : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		saidacont1 : OUT STD_LOGIC;
		saidacont2 : OUT STD_LOGIC;
		saidacont3 : OUT STD_LOGIC;
		tafunfando : OUT STD_LOGIC
		
	);
END PC;

ARCHITECTURE behavior OF PC IS

	COMPONENT contsinc IS
	PORT
	(
			j,k,clock : in std_logic;
			z1,z2,z3 : out std_logic);
	END COMPONENT;
	
	signal ativo : STD_LOGIC; 
	signal aux1 : STD_LOGIC := '1';
	signal aux2 : STD_LOGIC := '1';
	SIGNAL a1,a2,a3 : std_logic;
	SIGNAL aux : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN
	G0: contsinc PORT MAP (aux1,aux2,clk,a1,a2,a3);
	
	saidacont1 <= a1;
	saidacont2 <= a2;
	saidacont3 <= a3;
	tafunfando <= ativo;
	aux <= a1 & a2 & a3;
	
	PROCESS(clk, ativo)
		BEGIN
			IF (clk = '1') and (ativo = '1') THEN
				pout <= pin;
			END IF;
	END PROCESS;
	
	PROCESS(aux)
	BEGIN
		IF (aux = "010") THEN
			ativo <= '1';
		END IF;
	END PROCESS;
END behavior;