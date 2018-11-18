LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

ENTITY Sum IS
PORT
(
	opsum1,opsum2 : in std_logic_vector(15 DOWNTO 0);
	ressum : out std_logic_vector(15 DOWNTO 0));
END Sum;

ARCHITECTURE behavior OF Sum IS
BEGIN
	ressum <= opsum1 + opsum2;
END behavior;