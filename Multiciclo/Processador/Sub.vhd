LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

ENTITY Sub IS
PORT
(
	opsub1,opsub2 : in std_logic_vector(15 DOWNTO 0);
	ressub : out std_logic_vector(15 DOWNTO 0));
END Sub;

ARCHITECTURE behavior OF Sub IS
BEGIN
	ressub <= opsub1 - opsub2;
END behavior;