LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY SomadorPC IS
PORT(
	clk: in std_logic;
	entrada : in STD_LOGIC_VECTOR(15 DOWNTO 0);
	saida : out STD_LOGIC_VECTOR(15 DOWNTO 0));
END SomadorPC;

ARCHITECTURE behavior OF SomadorPC IS
begin
process(clk)
	BEGIN
		IF (clk = '1') THEN
			saida <= entrada + "0000000000000001";
		end if;
end process;
END behavior;