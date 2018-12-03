LIBRARY ieee; USE ieee.std_logic_1164.all;
ENTITY UnidadedeControle IS
PORT
	(entrada : in std_logic_vector (3 DOWNTO 0);
	regdest : out std_logic;
	origalu : out std_logic;
	memparareg : out std_logic;
	escrevereg : out std_logic;
	lemem : out std_logic;
	escrevemem : out std_logic;
	branch : out std_logic;
	aluop1 : out std_logic;
	aluop0 : out std_logic);
END UnidadedeControle;
ARCHITECTURE behavior OF UnidadedeControle  IS
BEGIN
operacoes: PROCESS (entrada)
	BEGIN
		IF entrada = "0000" then --instrução tipo r
			regdest <= '1';
			origalu <= '0';
			memparareg <= '0';
			escrevereg <= '1';
			lemem <= '0';
			escrevemem <= '0';
			branch <= '0';
			aluop1 <= '1';
			aluop0 <= '0';
		ELSIF entrada = "0001" then --instrução load
			regdest <= '0';
			origalu <= '1';
			memparareg <= '1';
			escrevereg <= '1';
			lemem <= '1';
			escrevemem <= '0';
			branch <= '0';
			aluop1 <= '0';
			aluop0 <= '0';
		ELSIF entrada = "0010" then --instrução store
			regdest <= 'Z';
			origalu <= '1';
			memparareg <= 'Z';
			escrevereg <= '0';
			lemem <= '0';
			escrevemem <= '1';
			branch <= '0';
			aluop1 <= '0';
			aluop0 <= '0';
		ELSIF entrada = "0101" then --instrução jump
			regdest <= 'Z';
			origalu <= '0';
			memparareg <= 'Z';
			escrevereg <= '0';
			lemem <= '0';
			escrevemem <= '0';
			branch <= '1';
			aluop1 <= '0';
			aluop0 <= '1';
		ELSE
			regdest <= 'Z';
			origalu <= 'Z';
			memparareg <= 'Z';
			escrevereg <= 'Z';
			lemem <= 'Z';
			escrevemem <= 'Z';
			branch <= 'Z';
			aluop1 <= 'Z';
			aluop0 <= 'Z';
		END if;
		
		END PROCESS operacoes;
		
	END behavior;