 LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
USE ieee.std_logic_unsigned.all;

ENTITY ShiftEsquerda IS 

	PORT(
		clk: in std_logic;
		VALOR: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
END ShiftEsquerda;

ARCHITECTURE BEHAVIOR OF ShiftEsquerda IS
SIGNAL AUX: STD_LOGIC_VECTOR(15 downto 0);
begin
process(clk)
	BEGIN 
		IF (clk = '1') THEN
		AUX   <= VALOR(13 downto 0) & "00";
		SAIDA <= AUX(15 DOWNTO 0);
		end if;
	end process;
		
END BEHAVIOR;