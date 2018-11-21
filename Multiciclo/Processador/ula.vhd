LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

ENTITY ula is
PORT
(
	flag : in std_logic_vector (2 DOWNTO 0);
	entrada1 : in std_logic_vector (15 DOWNTO 0);
	entrada2 : in std_logic_vector (15 DOWNTO 0);
	saida : out std_logic_vector (15 DOWNTO 0));
end ula;

ARCHITECTURE behavior OF ula IS
COMPONENT Sum IS
PORT
(
	opsum1,opsum2 : in std_logic_vector(15 DOWNTO 0);
	ressum : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT Sub IS
PORT
(
	opsub1,opsub2 : in std_logic_vector(15 DOWNTO 0);
	ressub : out std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT Mult IS
PORT
(entrada1,entrada2 : in STD_LOGIC_VECTOR(15 DOWNTO 0);
saida : out STD_LOGIC_VECTOR(15 DOWNTO 0));
END COMPONENT;

COMPONENT QAnd2 is
port
	( entradaAnd1,entradaAnd2 : in STD_LOGIC_VECTOR (15 DOWNTO 0);
		saidaAnd : out STD_LOGIC_VECTOR (15 DOWNTO 0));
end COMPONENT;

COMPONENT QOr2 is
port
	( entradaOr1,entradaOr2 : in STD_LOGIC_VECTOR (15 DOWNTO 0);
		saidaOr : out STD_LOGIC_VECTOR (15 DOWNTO 0));
END COMPONENT;

SIGNAL aux1 : std_logic_vector(15 DOWNTO 0);
SIGNAL aux2 : std_logic_vector(15 DOWNTO 0);
SIGNAL aux3 : std_logic_vector(15 DOWNTO 0);
SIGNAL aux4 : std_logic_vector(15 DOWNTO 0);
SIGNAL aux5 : std_logic_vector(15 DOWNTO 0);
BEGIN
	G1: Sum PORT MAP (entrada1,entrada2,aux1);
	G2: Sub PORT MAP (entrada1,entrada2,aux2);
	G3: Mult PORT MAP (entrada1,entrada2,aux3);
	G4: QAnd2 PORT MAP (entrada1,entrada2,aux4);
	G5: QOr2 PORT MAP (entrada1,entrada2,aux5);
	
abc: PROCESS (entrada1,entrada2,flag)
begin
	CASE flag IS
		WHEN "000" =>  saida <= aux1;
		WHEN "001" =>  saida <= aux2;
		WHEN "010" =>  saida <= aux3;
		WHEN "011" =>  saida <= aux4;
		WHEN "100" =>  saida <= aux5;
	END CASE;
end PROCESS abc;
END behavior;
