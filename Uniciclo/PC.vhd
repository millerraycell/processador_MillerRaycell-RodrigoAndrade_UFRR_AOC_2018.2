LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PC IS
PORT
(
	clk,ativo : IN STD_LOGIC;
	pin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END PC;

ARCHITECTURE behavior OF PC IS
BEGIN
	pout <= pin WHEN clk = '1';
	PROCESS(clk)
		BEGIN
			IF (clk = '1' AND clk'EVENT) THEN
				IF (ativo = '1') THEN
					pout <= pin;
				END IF;
			END IF;
	END PROCESS;
END behavior;