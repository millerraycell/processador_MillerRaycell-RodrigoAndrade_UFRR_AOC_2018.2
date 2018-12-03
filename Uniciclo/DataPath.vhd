LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DataPath IS
	PORT
	(
		--------Clock Geral do Sistema-------------------------------
		Clock_Sistema:               in  std_logic;
		-------------------------------------------------------------
		
		--------Out's para WaveForm----------------------------------
		SomadorToPc_outWaveform: 			        	   out std_logic_vector(15 downto 0);
		
		SaidaPc_outWaveform: 			  			  	   out std_logic_vector(15 downto 0);
		SaidaRegA_outWaveform:  			  		  	   out std_logic_vector(15 downto 0);
		SaidaRegB_outWaveform:  			  		  	   out std_logic_vector(15 downto 0);
		
		multiplexador_to_writeRegister_outWaveform:  out std_logic_vector(2  downto 0);
		Instruction_to_multiplexador_outWaveform:	   out std_logic_vector(2  downto 0);
	   Instruction_to_Control_outWaveform:   	      out std_logic_vector(3  downto 0);
		Instruction_to_register1_outWaveform:   	   out std_logic_vector(2  downto 0);
		Instruction_to_register2_outWaveform:   	   out std_logic_vector(2  downto 0);
		Instruction_to_controlULA_outWaveform:   	   out std_logic_vector(2  downto 0);
		Instruction_to_extensorDeSinal_outWaveform:  out std_logic_vector(5  downto 0);
		Instruction_to_Jump_outWaveform:			  	   out std_logic_vector(11 downto 0);
		
		out_Saida_OperacaoDaULA:							out std_logic_vector(6  downto 0);

		
		Data_to_writeRegister_outWaveform: 		      out std_logic_vector(15 downto 0);

		
		Saida_mult_to_mult_outWaveform:              out std_logic_vector(15 downto 0);
		
		Saida_to_PC_outWaveform:                     out std_logic_vector(15 downto 0);
		
		Saida_adress_to_RAM_outWaveform:             out std_logic_vector(15 downto 0);
		
		saida_cont_sincz1: 									out std_logic;
		saida_cont_sincz2:									out std_logic;
		saida_cont_sincz3:									out std_logic;
		
		funcionou:                                   out std_logic;
		
		------------------F L A G S --------------------------------------------------
		Flag_regdest_OUT:					     out std_logic;
		Flag_origialu_OUT:					  out std_logic_vector(3 downto 0);
		Flag_memparareg_OUT:					  out std_logic;
      Flag_escrevereg_OUT:					  out std_logic;
		Flag_lemem_OUT:						  out std_logic;
		Flag_escrevemem_OUT:					  out std_logic;
		Flag_branch_OUT: 						  out std_logic;
		Flag_aluSRC_OUT: 	  					  out std_logic;
		Flag_jump_OUT: 	 					  out std_logic	
		---------------------------------------------------------------------------------
		
	);
END DataPath;


ARCHITECTURE behavior OF DataPath IS

--	COMPONENT contsinc IS
--	PORT
--	(
--			j,k,clock : in std_logic;
--			z1,z2,z3 : out std_logic);
--	END COMPONENT;
	
	COMPONENT PC IS
		PORT
		(
			clk :  IN  STD_LOGIC;
			pin :  IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
			pout : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			saidacont1 : OUT STD_LOGIC;
			saidacont2 : OUT STD_LOGIC;
			saidacont3 : OUT STD_LOGIC;
			tafunfando : OUT STD_LOGIC
			
		);
	END COMPONENT;

	COMPONENT SomadorPC IS
		PORT
		(	
			clk :  IN  STD_LOGIC;
			entrada : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
			saida : 	 out STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT memoria_ROM2 IS 
		PORT
		(
			clk: 		IN  STD_LOGIC;
			entrada: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			op : 		OUT STD_LOGIC_VECTOR(3  DOWNTO 0);
			rd : 		OUT STD_LOGIC_VECTOR(2  DOWNTO 0);
			rt : 		OUT STD_LOGIC_VECTOR(2  DOWNTO 0);
			rs : 		OUT STD_LOGIC_VECTOR(2  DOWNTO 0);
			funct : 	OUT STD_LOGIC_VECTOR(2  DOWNTO 0);
			tipoi : 	OUT STD_LOGIC_VECTOR(5  DOWNTO 0);
			jump : 	out STD_LOGIC_VECTOR(11 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT Multiplexador2x1 IS
		PORT( 
		clk :  IN  STD_LOGIC;
		SIGNAL A,B  : IN   STD_LOGIC_VECTOR(2 DOWNTO 0);
		SIGNAL S	   : IN   STD_LOGIC;
		SIGNAL SAIDA: OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
		) ;
END COMPONENT;
	
	COMPONENT UnidadedeControle IS
		PORT(
		    Clock   :     in std_logic;
			 entrada : 		in std_logic_vector (3 DOWNTO 0);
			 regdest : 		out std_logic; 
			 origalu : 		out std_logic_vector(3 DOWNTO 0); 
			 memparareg : 	out std_logic;	
			 escrevereg :  out std_logic;	
			 lemem : 		out std_logic;	
			 escrevemem :  out std_logic;	
			 branch : 		out std_logic;	
			 aluSRC :      out std_logic;
			 jump : 		out std_logic	
			);
END COMPONENT;

	COMPONENT BancoRegistradores IS
		PORT(
			Clock:  in  std_logic;
			EscReg: in  std_logic; 							 -- Sinal da unidade de controle
			RegA:   out std_logic_vector (15 downto 0);
		   RegB:   out std_logic_vector (15 downto 0); 
		   Data:   in  std_logic_vector (15 downto 0); -- Dado a ser escrito
			RegDst: in  std_logic_vector (2  downto 0);  -- Registrador de destino
			LeReg1: in  std_logic_vector (2  downto 0);  -- Endereço do resgistrador 1
			LeReg2: in  std_logic_vector (2  downto 0)   -- Endereço do resgistrador 2
		);
END COMPONENT;

	COMPONENT ExtensordeSinal6To16bits IS
		PORT
		(
			clk :  IN  STD_LOGIC;
			ENTRADA : IN STD_LOGIC_VECTOR(5 DOWNTO 0); 
			SAIDA   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	
	END COMPONENT;
	COMPONENT ShiftEsquerda IS 

	PORT(
		clk :  IN  STD_LOGIC;
		VALOR: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
	END COMPONENT;	
		
		
	COMPONENT Qsll IS
		PORT
		(
			clk :  IN  STD_LOGIC;
			pc : in std_logic_vector (15 downto 0);
			opshift : in std_logic_vector(11 downto 0);
			resshift : out std_logic_vector(15 downto 0)
		);
	END COMPONENT;	
		
	COMPONENT Somadorde16bits IS
		PORT
			(
				clk :  IN  STD_LOGIC;
				ENTRADA1, ENTRADA2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
				SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
			);
	END COMPONENT;	
		
		
	COMPONENT QAndBIT is 
		PORT
			(
				E1, E2 : IN STD_LOGIC;
				S1 : OUT STD_LOGIC
			);
	END COMPONENT;
		
	COMPONENT Multiplexador2x1_16bits IS
		PORT
		( 	
			clk : IN STD_LOGIC;
			SIGNAL A,B  : IN   STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL S	   : IN   STD_LOGIC;
			SIGNAL SAIDA: OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
		) ;
	END COMPONENT;	
		
	COMPONENT OperacaoDaULA IS
	PORT
	(
		clk :  IN  STD_LOGIC;
		ENTRADA1: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ENTRADA2: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		SAIDA: 	 OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
	
	END COMPONENT;	
	COMPONENT memram IS
		PORT
			(
				clk :  IN  STD_LOGIC;
				entrada  : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				saida    : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
				endereco : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				rd, wr   : IN STD_LOGIC
			);
		END COMPONENT;	
		
		COMPONENT ULA is
			Port
			(
				EntradaA:	    in  std_logic_vector(15 downto 0);
				EntradaB:	    in  std_logic_vector(15 downto 0);
				Controle_ULA:   in  std_logic_vector(6  downto 0);
				Saida_to_Dados: out std_logic_vector(15 downto 0);
				Saida_to_Mux:   out std_logic_vector(15 downto 0);		
				ZeroULA:	       out std_logic
			);

		End COMPONENT;	
		
		-------Entrada e Saida do PC---------------------------------
		SIGNAL SomadorToPc: 			        	  std_logic_vector(15 downto 0);
		SIGNAL SaidaPc: 			  			  	  std_logic_vector(15 downto 0);
		-------------------------------------------------------------
		
		-------Saidas do Banco de Registradores----------------------
		SIGNAL SaidaRegA:  			  		  	  std_logic_vector(15 downto 0);
		SIGNAL SaidaRegB:  			  		  	  std_logic_vector(15 downto 0);
		
		--------Saidas da Memoria de instrução-----------------------
		SIGNAL Instruction_to_multiplexador:	   std_logic_vector(2  downto 0);
		SIGNAL Instruction_to_Control:   	      std_logic_vector(3  downto 0);
		SIGNAL Instruction_to_register1:   	      std_logic_vector(2  downto 0);
		SIGNAL Instruction_to_register2:   	      std_logic_vector(2  downto 0);
		SIGNAL Instruction_to_controlULA:   	   std_logic_vector(2  downto 0);
		SIGNAL Instruction_to_extensorDeSinal:   	std_logic_vector(5  downto 0);
		SIGNAL Instruction_to_Jump:			  	   std_logic_vector(11 downto 0);
		--------------------------------------------------------------
		
		---------Saida Qsll-------------------------------------------
		SIGNAL Saida_Qsll:								std_logic_vector(15 downto 0);
		--------------------------------------------------------------
		
		--------Saída do Multiplexador1-------------------------------
		SIGNAL multiplexador_to_writeRegister:    std_logic_vector(2  downto 0);
		--------------------------------------------------------------
		
		--------Dados Para o Banco De Registradores--------------------
		SIGNAL Data_to_writeRegister: 		      std_logic_vector(15 downto 0);
		--------------------------------------------------------------
		
		-------- Flags da Unidade de controle-------------------------
		SIGNAL Flag_regdest:					     std_logic;
		SIGNAL Flag_origialu:					  std_logic_vector(3 downto 0);
		SIGNAL Flag_memparareg:					  std_logic;
		SIGNAL Flag_escrevereg:					  std_logic;
		SIGNAL Flag_lemem:						  std_logic;
		SIGNAL Flag_escrevemem:					  std_logic;
		SIGNAL Flag_branch: 						  std_logic;
		SIGNAL Flag_aluSRC: 	  					  std_logic;
		SIGNAL Flag_jump: 	 					  std_logic;
		---------------------------------------------------------------
		
		--------Saida do Extensor de sinal-----------------------------
		SIGNAL Saida_extensor:                std_logic_vector(15 downto 0);
		---------------------------------------------------------------
		
		--------Saida do operacao da ULA-------------------------------
		SIGNAL Saida_OperacaoDaULA:            std_logic_vector(6 downto 0);
		
		--------Saida do SLL para componente SOMADOR DA ULA------------
		SIGNAL Saida_SLL_to_SumUla:           std_logic_vector(15 downto 0);
		---------------------------------------------------------------
		
		--------Saida do somador SLL + result_do_SomadorPC para mult---
		SIGNAL Saida_SumUla_to_mult:          std_logic_vector(15 downto 0);
		----------------------------------------------------------------
		
		--------Saidas da ULA-------------------------------------------
		SIGNAL Saida_ZeroDaULA:               std_logic;
		----------------------------------------------------------------
		
		--------Saida do AND como sel para o multiplexador--------------
		SIGNAL SaidaAND: 							  std_logic;
		----------------------------------------------------------------
		
		--------Saida do mult com seletor AND---------------------------
		SIGNAL Saida_mult_to_mult:            std_logic_vector(15 downto 0);
		----------------------------------------------------------------
		
		--------Saida do mult que joga o valor para o PC----------------
		SIGNAL Saida_to_PC:                   std_logic_vector(15 downto 0);
		----------------------------------------------------------------
		
		--------Saida do mult para ULA----------------------------------
		SIGNAL Saida_mult_to_ULA:             std_logic_vector(15 downto 0);
	   ----------------------------------------------------------------
	
		--------Saida da ULA para a memoria de dados e Mult-------------
		SIGNAL Saida_adress_to_RAM:           std_logic_vector(15 downto 0);
		SIGNAL Saida_valor_to_mult:           std_logic_vector(15 downto 0);		
		----------------------------------------------------------------
		
		--------Saida da Memoria de dados (RAM)-------------------------
		SIGNAL Saida_MemoridaDeDados_to_mult:  std_logic_vector(15 downto 0);
		----------------------------------------------------------------
		--signal aux1 : STD_LOGIC := '1';
		--signal aux2 : STD_LOGIC := '1';
		SIGNAL a1,a2,a3,a4 : std_logic;

BEGIN	
	
G1:  PC           		      port map (Clock_Sistema, Saida_to_PC, SaidaPc,a1,a2,a3,a4);
G2:  SomadorPC    		      port map (Clock_Sistema,SaidaPc, SomadorToPc);
G3:  Qsll							port map (Clock_Sistema,SomadorToPc,Instruction_to_Jump,Saida_Qsll);
G4:  memoria_ROM2 		      port map (Clock_Sistema, SaidaPc, Instruction_to_Control, Instruction_to_register1, Instruction_to_register2, 
													 Instruction_to_multiplexador,Instruction_to_controlULA, Instruction_to_extensorDeSinal, Instruction_to_Jump);											
G5:  UnidadedeControle        port map (Clock_Sistema,Instruction_to_Control, Flag_regdest, Flag_origialu, Flag_memparareg, Flag_escrevereg, Flag_lemem, Flag_escrevemem,
																		Flag_branch, Flag_aluSRC, Flag_jump);								 											
G6:  Multiplexador2x1     	   port map (Clock_Sistema,Instruction_to_register2,Instruction_to_multiplexador,Flag_regdest,multiplexador_to_writeRegister);
G7:  BancoRegistradores 		port map (Clock_Sistema, Flag_escrevereg, SaidaRegA,SaidaRegB,Data_to_writeRegister, multiplexador_to_writeRegister,
																		Instruction_to_register1, Instruction_to_register2);
G8:  ExtensordeSinal6To16bits port map (Clock_Sistema,Instruction_to_extensorDeSinal,Saida_extensor);
G9:  ShiftEsquerda            port map (Clock_Sistema,Saida_extensor, Saida_SLL_to_SumUla);
G10: Somadorde16bits          port map (Clock_Sistema,SomadorToPc,Saida_SLL_to_sumULA, Saida_SumUla_to_mult);
G11: QAndBIT                  port map (Flag_jump, Saida_ZeroDaULA, SaidaAND);
G12: Multiplexador2x1_16bits  port map (Clock_Sistema,SomadorToPc, Saida_SumUla_to_mult, SaidaAND, Saida_mult_to_mult);
G13: Multiplexador2x1_16bits  port map (Clock_Sistema,Saida_mult_to_mult, Saida_Qsll, Flag_branch, Saida_to_PC);
G14: Multiplexador2x1_16bits  port map (Clock_Sistema,Saida_extensor,SaidaRegB,Flag_aluSRC,Saida_mult_to_ULA);
G15: OperacaoDaULA				port map (Clock_Sistema,Flag_origialu,Instruction_to_controlULA,Saida_OperacaoDaULA);
G16: ULA								port map (SaidaRegA,Saida_mult_to_ULA,Saida_OperacaoDaULA,Saida_adress_to_RAM,Saida_valor_to_mult,Saida_ZeroDaULA);
G17: memram     					port map (Clock_Sistema,SaidaRegB,Saida_MemoridaDeDados_to_mult,Saida_adress_to_RAM,Flag_lemem,Flag_escrevemem);
G18: Multiplexador2x1_16bits  port map (Clock_Sistema,Saida_valor_to_mult,Saida_MemoridaDeDados_to_mult,Flag_memparareg,Data_to_writeRegister);
--G19: contsinc                 PORT MAP (aux1,aux2,Clock_Sistema,a1,a2,a3);

SomadorToPc_outWaveform <= SomadorToPc; -- SAIDA DA SOMA DO PC + 1
 
SaidaPc_outWaveform <= SaidaPc; 			  			  	 
SaidaRegA_outWaveform <= SaidaRegA;  			  		  	
SaidaRegB_outWaveform <= SaidaRegB;

multiplexador_to_writeRegister_outWaveform <= multiplexador_to_writeRegister; 			  		  	   
Instruction_to_multiplexador_outWaveform <= Instruction_to_multiplexador;	   
Instruction_to_Control_outWaveform <= Instruction_to_Control;   	      
Instruction_to_register1_outWaveform <= Instruction_to_register1;   	   
Instruction_to_register2_outWaveform <= Instruction_to_register2;  	   
Instruction_to_controlULA_outWaveform <= Instruction_to_controlULA;   	   
Instruction_to_extensorDeSinal_outWaveform <= Instruction_to_extensorDeSinal;  
Instruction_to_Jump_outWaveform <= Instruction_to_Jump;
			  	   								
----------FLAGS--------------------------------------

Flag_regdest_OUT<= Flag_regdest;
Flag_origialu_OUT<= Flag_origialu;
Flag_memparareg_OUT<= Flag_memparareg;	
Flag_escrevereg_OUT<= Flag_escrevereg;	
Flag_lemem_OUT<= Flag_lemem;	
Flag_escrevemem_OUT<= Flag_escrevemem;
Flag_branch_OUT<= Flag_branch;
Flag_aluSRC_OUT<= Flag_aluSRC;
Flag_jump_OUT<= Flag_jump;							  
	 					  
------------------------------------------------------
 
Data_to_writeRegister_outWaveform <= Data_to_writeRegister;

out_Saida_OperacaoDaULA <= Saida_OperacaoDaULA;
 							   
Saida_mult_to_mult_outWaveform <= Saida_mult_to_mult;
              
Saida_to_PC_outWaveform <= Saida_to_PC; --SAIDA PARA O PC DEPOIS DO ULTIMO MULTIPLEXADOR                     
              
Saida_adress_to_RAM_outWaveform <= Saida_adress_to_RAM;

saida_cont_sincz1 <= a1;
saida_cont_sincz2 <= a2;
saida_cont_sincz3 <= a3; 
funcionou <= a4;          

   
END behavior;
