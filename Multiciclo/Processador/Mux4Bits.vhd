LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux4Bits IS
PORT
	(entrada1,entrada2,entrada3: in STD_LOGIC_VECTOR;
		flag : in STD_LOGIC_VECTOR (1 DOWNTO 0);
		saida : out STD_LOGIC_VECTOR);
END Mux4Bits;

ARCHITECTURE behavior OF Mux4Bits IS
BEGIN
abc: PROCESS (entrada1,entrada2,entrada3,flag)
begin
	CASE flag IS
		WHEN "00" =>  saida <= entrada1;
		WHEN "01" =>  saida <= "0000000000010000";
		WHEN "10" =>  saida <= entrada2;
		WHEN "11" =>  saida <= entrada3;
	END CASE;
end PROCESS abc;
END behavior;