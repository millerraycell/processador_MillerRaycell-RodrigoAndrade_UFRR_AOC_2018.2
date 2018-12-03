LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY  Multiplexador2x1_16bits IS
	PORT( 
	clk: IN STD_LOGIC;
	SIGNAL A,B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL S	  : IN STD_LOGIC;
	SIGNAL SAIDA: OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	
	) ;
	
END Multiplexador2x1_16bits;

ARCHITECTURE Multiplexador2x1_16bits OF Multiplexador2x1_16bits IS
BEGIN 
	PROCESS (A,B,S,clk)
		BEGIN
		IF (clk = '1') THEN
			CASE S IS
				WHEN '0' => SAIDA <= A;
				WHEN '1' => SAIDA <= B;
			END CASE;
		END IF;
			
	END PROCESS;
		
END Multiplexador2x1_16bits;