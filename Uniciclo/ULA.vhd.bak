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

	function Booth(EntradaA,EntradaB: std_logic_vector(7 downto 0)) return std_logic_vector is
	
	variable C : 		 std_logic;
	variable LeftPart: std_logic_vector(7  downto 0);
	variable Mult:     std_logic_vector(7  downto 0) := EntradaA; 
	variable Prod:     std_logic_vector(7  downto 0) := EntradaB;
	variable NotMult:	 std_logic_vector(7  downto 0) := (Not EntradaA) + "1";
	variable Shifter:  std_logic_vector(15 downto 0);
	variable Aux:      std_logic_vector(15 downto 0);
	
	begin
	
	C:= 			'0';
	
	LeftPart:= 	"00000000";
	
	for i in 0 to 8 loop
	
		if    ((Prod(0) = '0') and (C = '1')) then
		
			LeftPart := LeftPart + Mult;
			
		elsif ((Prod(0) = '1') and (C = '0')) then
		
			LeftPart := LeftPart + NotMult;
		
		End if;
		
		C        := Prod(0);
		
		Aux      := LeftPart & Mult;
		
		Shifter  := "0" & Aux (15 downto 1);
		
		LeftPart := Shifter  (15 downto 8);
		
		Mult     := Shifter  (7  downto 0);
		
	end Loop;
	
	return Shifter;
	
	End Booth;
	
	Signal Splitter: std_logic_vector(15 downto 0);
	
	begin
						 
	process(Controle_ULA, EntradaA, EntradaB)
		begin
			 case Controle_ULA is
				  when "0000000" => Splitter <= EntradaA  +   EntradaB;
				  when "0000001" => Splitter <= EntradaA  -   EntradaB;
				  when "0000010" => Splitter <= Booth(EntradaA(7 downto 0),EntradaB(7 downto 0));
				  when "0000011" => Splitter <= EntradaA  and EntradaB ;
				  when "0000100" => Splitter <= EntradaA  or EntradaB ;
				  when others    => Splitter <= "0000000000000000";
			 end case;
		end process;
		
		
		ZeroULA <= 
			'1' when (Controle_ULA(6 downto 3) = "0011") and ((EntradaA - EntradaB) = "0000000000000000") else
			'1' when (Controle_ULA(6 downto 3) = "0100") and ((EntradaA - EntradaB) /= "0000000000000000") else
			'0';
			
	Saida_to_Mux   <= Splitter;
	Saida_to_Dados <= Splitter;
		
End behavior;

	
		
