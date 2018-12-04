library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity ULA is
	Port
	(
		EntradaA:	    in  std_logic_vector(15 downto 0);
		EntradaB:	    in  std_logic_vector(15 downto 0);
		Controle_ULA:   in  std_logic_vector(6  downto 0);
		Saida_to_Dados: out std_logic_vector(15 downto 0);
		Saida_to_Mux:   out std_logic_vector(15 downto 0);		
		ZeroULA:	       out std_logic
	);

End ULA;

Architecture behavior of ULA is

	function Booth(Entrada_1,Entrada_2: std_logic_vector(7 downto 0)) return std_logic_vector is
	
	variable C : 		 std_logic;
	variable Mult:     std_logic_vector(7  downto 0);
	variable Prod:     std_logic_vector(15  downto 0);
	
	begin
		
		Mult    := Entrada_1;
		
		Prod(15 downto 8)  := (others =>'0');
		
		Prod(7 downto 0)  := Entrada_2;
		
		C := '0';
		
		for i in 7 downto 0 Loop
	
	
			if   (Prod(0) = '0' and C = '1') then
				
				C:= Prod(0);
				
				Prod(15 downto 8):= Prod(15 downto 8) + Mult;
				
			elsif (Prod(0) = '1' and C = '0') then
				
				C := Prod(0);
				
				Prod(15 downto 8):= Prod(15 downto 8) - Mult;
			
			End if;
			
			Prod(14 downto 0):= Prod(15 downto 1);
			
		End Loop;
	
	return Prod;
	
	End Booth;
	
	Signal Splitter: std_logic_vector(15 downto 0);
	
	begin
						 
	process(Controle_ULA,EntradaA, EntradaB)
		begin
			 case Controle_ULA is
				  when "0000000" => Splitter <= EntradaA  +   EntradaB;
				  when "0000001" => Splitter <= EntradaA  -   EntradaB;
				  when "0000010" => Splitter <= Booth(EntradaA(7 downto 0),EntradaB(7 downto 0));
				  when "0000011" => Splitter <= EntradaA  and EntradaB ;
				  when "0000100" => Splitter <= EntradaA  or EntradaB ;
				  when others    => Splitter <= "0000000000000000";
			 end case;
			 
			 If (Controle_ULA(6 downto 3) = "0001" or Controle_ULA(6 downto 3) = "0010") then 
			 
				Splitter <= EntradaA + EntradaB;
				
			End If;
				
		end process;
		
		ZeroULA <= 
			'1' when (Controle_ULA(6 downto 3) = "0011") and ((EntradaA - EntradaB) = "0000000000000000") else
			'1' when (Controle_ULA(6 downto 3) = "0100") and ((EntradaA - EntradaB) /= "0000000000000000") else
			'0';
			
	Saida_to_Mux   <= Splitter;
	Saida_to_Dados <= Splitter;
		
End behavior;