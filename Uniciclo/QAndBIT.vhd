Library ieee;
use ieee.std_logic_1164.all;

ENTITY QAndBIT is 
PORT(
	E1, E2 : IN STD_LOGIC;
	S1 : OUT STD_LOGIC
);
END QAndBIT;

ARCHITECTURE behavior of QandBIT is
begin
			S1 <= E1 and E2;	
END behavior;