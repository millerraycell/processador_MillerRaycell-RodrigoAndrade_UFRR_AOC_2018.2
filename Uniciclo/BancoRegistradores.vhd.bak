library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity BancoRegistradores is port
	(
	 Clock : in std_logic;
	 EscReg: in std_logic; -- Sinal da unidade de controle
		RegA: out std_logic_vector (15 downto 0);
		RegB: out std_logic_vector (15 downto 0); 
	   Data: in std_logic_vector (15 downto 0); -- Dado a ser escrito
	 RegDst: in std_logic_vector (3 downto 0);  -- Registrador de destino
	 LeReg1: in std_logic_vector (3 downto 0);  -- Endereço do resgistrador 1
	 LeReg2: in std_logic_vector (3 downto 0)   -- Endereço do resgistrador 2
	);
end BancoRegistradores;

Architecture behavior of BancoRegistradores is
	
	type RegBank is array(0 to 15) of std_logic_vector (15 downto 0);
	signal Reg : RegBank := (
									x"0000", --reg 0
									x"0001", --reg 1
									x"0010", --reg 2
									x"0011", --reg 3
									x"0100", --reg 4
									x"0101", --reg 5
									x"0110", --reg 6
									x"0111", --reg 7
									x"1000", --reg 8
									x"1001", --reg 9
									x"1010", --reg 10
									x"1011", --reg 11
									x"1100", --reg 12
									x"1101", --reg 13
									x"1110", --reg 14
									x"1111"  --reg 15
								);
	
begin
	
		
	process (Clock)
		begin 
	     if(Clock'EVENT) AND (Clock = '1') then
			if EscReg = '1' then
				Reg(to_integer(unsigned(RegDst))) <= Data;
			end if;
		  end if;
		RegA <= Reg(to_integer(unsigned(LeReg1)));
		RegB <= Reg(to_integer(unsigned(LeReg2)));
	end process;
	
end behavior;
					