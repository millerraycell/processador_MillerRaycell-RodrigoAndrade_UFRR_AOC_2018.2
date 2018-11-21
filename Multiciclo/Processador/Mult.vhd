LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity Mult is
PORT
(entrada1,entrada2 : in STD_LOGIC_VECTOR(15 DOWNTO 0);
saida : out STD_LOGIC_VECTOR(15 DOWNTO 0));
END mult;


ARCHITECTURE behavior of mult is
	signal entrada1_int : integer;
	signal entrada2_int : integer;
	signal saida_int : integer;
BEGIN

	entrada1_int <= to_integer(unsigned(entrada1));
	entrada2_int <= to_integer(unsigned(entrada2));
	saida_int <= entrada1_int*entrada2_int;
	saida <= STD_LOGIC_VECTOR(to_unsigned(saida_int , 16));
end behavior;	

