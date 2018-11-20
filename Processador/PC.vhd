Library ieee;
use ieee.std_logic_1164.all;

ENTITY PC is 
PORT(
	clk : IN STD_LOGIC; 
	pin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END PC;

ARCHITECTURE behavior OF PC IS
BEGIN
	pout <= pin WHEN clk = '1';
END behavior;