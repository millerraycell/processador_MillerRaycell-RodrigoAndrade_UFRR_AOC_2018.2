LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY extensor IS
PORT
(
	entrada : in std_logic_vector(7 DOWNTO 0);
	saida : out std_logic_vector(15 DOWNTO 0));
END extensor;

ARCHITECTURE behavior of extensor IS
BEGIN
	saida<= "00000000" & entrada;
END behavior;
