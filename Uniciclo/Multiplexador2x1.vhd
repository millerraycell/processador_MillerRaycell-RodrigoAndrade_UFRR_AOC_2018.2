LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY  Multiplexador2x1 IS
	PORT( 
	clk:  in std_logic;
	SIGNAL A,B : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL S	  : IN STD_LOGIC;
	SIGNAL SAIDA: OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	
	) ;
	
END Multiplexador2x1;

ARCHITECTURE Multiplexador2x1 OF Multiplexador2x1 IS
BEGIN 
	PROCESS (A,B,S,clk)
		BEGIN
		SAIDA <= (others => '0');
		IF (clk = '1') THEN
			CASE S IS
				WHEN '0' => SAIDA <= A;
				WHEN '1' => SAIDA <= B;
			END CASE;
		end if;
			
	END PROCESS;
		
END Multiplexador2x1;