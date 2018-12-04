LIBRARY ieee; 
USE ieee.std_logic_1164.all;

ENTITY UnidadedeControle IS
PORT
	(
		Clock      : in  std_logic;
		entrada    : in  std_logic_vector (3 DOWNTO 0);
		regdest    : out std_logic;
		origalu    : out std_logic_vector (3 DOWNTO 0);
		memparareg : out std_logic;
		escrevereg : out std_logic;
		lemem      : out std_logic;
		escrevemem : out std_logic;
		jump     : out std_logic;
		aluSRC     : out std_logic;
		branch       : out std_logic
	);
	
END UnidadedeControle;
ARCHITECTURE behavior OF UnidadedeControle  IS
BEGIN
operacoes: PROCESS (entrada,Clock)
	BEGIN
		if(Clock = '1') then
				IF entrada = "0000" then --instrução tipo r
					regdest <= '1';
					origalu <= "0000";
					memparareg <= '1';
					escrevereg <= '1';
					lemem <= '0';
					escrevemem <= '0';
					branch <= '0';
					aluSRC <= '0';
					jump <= '0';
					
				ELSIF entrada = "0001" then --instrução load
					regdest <= '0';
					origalu <= "0001";
					memparareg <= '0';
					escrevereg <= '1';
					lemem <= '1';
					escrevemem <= '0';
					branch <= '0';
					aluSRC <= '1';
					jump <= '0';
					
				ELSIF entrada = "0010" then --instrução store
					regdest <= '0';
					origalu <= "0010";
					memparareg <= '0';
					escrevereg <= '0';
					lemem <= '0';
					escrevemem <= '1';
					branch <= '0';
					aluSRC <= '1';
					jump <= '0';
					
				ELSIF entrada = "0101" then --instrução jump
					regdest <= '0';
					origalu <= "0101";
					memparareg <= '0';
					escrevereg <= '0';
					lemem <= '0';
					escrevemem <= '0';
					branch <= '1';
					aluSRC <= '0';
					jump <= '1';
					
				ELSIF entrada = "0011" then --instrução BEQ
					regdest <= '0';
					origalu <= "0011";
					memparareg <= '0';
					escrevereg <= '0';
					lemem <= '0';
					escrevemem <= '0';
					branch <= '1';
					aluSRC <= '0';
					jump <= '0';
					
				
				ELSIF entrada = "0100" then --instrução BNQ
					regdest <= '0';
					origalu <= "0100";
					memparareg <= '0';
					escrevereg <= '0';
					lemem <= '0';
					escrevemem <= '0';
					branch <= '1';
					aluSRC <= '0';
					jump <= '0';
					
--				ELSE
--					regdest <= 'Z';
--					origalu <= "ZZZZ";
--					memparareg <= 'Z';
--					escrevereg <= 'Z';
--					lemem <= 'Z';
--					escrevemem <= 'Z';
--					branch <= 'Z';
--					aluSRC <= 'Z';
--					jump <= 'Z';
--					
				END if;
		END IF;
	END PROCESS operacoes;		
END behavior;