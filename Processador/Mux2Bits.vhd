LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux2Bits IS
PORT
	(entrada1,entrada2 : in STD_LOGIC_VECTOR;
		flag : in STD_LOGIC;
		saida : out STD_LOGIC_VECTOR);
END Mux2Bits;

ARCHITECTURE behavior OF Mux2Bits IS
BEGIN
abc: PROCESS (entrada1,entrada2,flag)
begin
	CASE flag IS
		WHEN '0' =>  saida <= entrada1;
		WHEN '1' =>  saida <= entrada2;
	END CASE;
end PROCESS abc;
END behavior;