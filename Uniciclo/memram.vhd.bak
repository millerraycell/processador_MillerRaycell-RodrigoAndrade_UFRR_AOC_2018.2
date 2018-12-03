LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY memram IS
PORT(
	entrada  : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	saida    : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
	endereco : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
	rd, wr   : IN STD_LOGIC);
END memram;

ARCHITECTURE behavior OF memram IS
	TYPE memoria IS ARRAY (0 TO 16) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram : memoria;
BEGIN
	PROCESS (wr,endereco)
	BEGIN
		IF (wr = '1') THEN
			IF rd = '0' THEN
				ram(conv_integer(endereco)) <= entrada;
				END IF;
			END IF;
		END PROCESS;
	saida <= ram(conv_integer(endereco));
END behavior;