LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_signed.all;


ENTITY sompc IS
PORT(
	entrada : in STD_LOGIC_VECTOR(15 DOWNTO 0);
	saida : out STD_LOGIC_VECTOR(15 DOWNTO 0));
END sompc;

ARCHITECTURE behavior OF sompc IS
BEGIN
	saida <= entrada + "0000000000010000";
END behavior;