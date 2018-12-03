LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY  Multiplexador2x1 IS
	PORT( 
	SIGNAL A,B,S: IN BIT;
	
	SIGNAL SAIDA: OUT BIT
	
	) ;
	
END Multiplexador2x1;

ARCHITECTURE Multiplexador2x1 OF Multiplexador2x1 IS
BEGIN 
	PROCESS (A,B,S)
		BEGIN
			CASE S IS
				WHEN '0' => SAIDA <= A;
				WHEN '1' => SAIDA <= B;
			END CASE;
			
	END PROCESS;
		
END Multiplexador2x1;