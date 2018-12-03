LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
USE ieee.std_logic_unsigned.all;

ENTITY Somadorde16bits IS
	PORT(
		clk: in std_logic;
		ENTRADA1, ENTRADA2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END Somadorde16bits;

ARCHITECTURE BEHAVIOR OF Somadorde16bits IS
begin
process(clk)
	BEGIN
		IF (clk = '1') THEN
		SAIDA <= ENTRADA1 + ENTRADA2;
		end if;
end process;
END ARCHITECTURE;


