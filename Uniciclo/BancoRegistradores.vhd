library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity BancoRegistradores is port
	(
	  Clock: 	in  std_logic;
	  EscReg:   in  std_logic; -- Sinal da unidade de controle
	  RegA:     out std_logic_vector (15 downto 0);
	  RegB:     out std_logic_vector (15 downto 0); 
	  Data:     in  std_logic_vector (15 downto 0); -- Dado a ser escrito
	  RegDst:   in  std_logic_vector (2  downto 0); -- Registrador de destino
	  LeReg1:   in  std_logic_vector (2  downto 0); -- Endereço do resgistrador 1
	  LeReg2:   in  std_logic_vector (2  downto 0)  -- Endereço do resgistrador 2
	);
end BancoRegistradores;

Architecture behavior of BancoRegistradores is
	
	type RegBank is array(0 to 7) of std_logic_vector (15 downto 0);
	shared variable Reg : RegBank;
--									:= ("0000000000000000",
--									 "0000000000000000",
--									 "0000000000000000",
--									 "0000000000000000",
--									 "0000000000000000",
--									 "0000000000000000",
--									 "0000000000000000",
--									 "0000000000000000");
	
begin
	process (Clock, LeReg1, LeReg2, EscReg, Data, RegDst)
		begin
		Reg(3) := "0000000000000101";
		Reg(1) := "0000000000000100";	
	     if(Clock = '1') then
			if EscReg = '1' then
				Reg(to_integer(unsigned(RegDst))) := Data;
			end if;
		  end if;
		RegA <= Reg(to_integer(unsigned(LeReg1)));
		RegB <= Reg(to_integer(unsigned(LeReg2)));
	end process;
	
end behavior;
					