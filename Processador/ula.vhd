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

BEGIN






