-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/02/2018 22:10:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DataPath
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DataPath_vhd_vec_tst IS
END DataPath_vhd_vec_tst;
ARCHITECTURE DataPath_arch OF DataPath_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock_Sistema : STD_LOGIC;
SIGNAL Data_to_writeRegister_outWaveform : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Flag_aluSRC_OUT : STD_LOGIC;
SIGNAL Flag_branch_OUT : STD_LOGIC;
SIGNAL Flag_escrevemem_OUT : STD_LOGIC;
SIGNAL Flag_escrevereg_OUT : STD_LOGIC;
SIGNAL Flag_jump_OUT : STD_LOGIC;
SIGNAL Flag_lemem_OUT : STD_LOGIC;
SIGNAL Flag_memparareg_OUT : STD_LOGIC;
SIGNAL Flag_origialu_OUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Flag_regdest_OUT : STD_LOGIC;
SIGNAL funcionou : STD_LOGIC;
SIGNAL Instruction_to_Control_outWaveform : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Instruction_to_controlULA_outWaveform : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Instruction_to_extensorDeSinal_outWaveform : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Instruction_to_Jump_outWaveform : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL Instruction_to_multiplexador_outWaveform : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Instruction_to_register1_outWaveform : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Instruction_to_register2_outWaveform : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL multiplexador_to_writeRegister_outWaveform : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL out_Saida_OperacaoDaULA : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Saida_adress_to_RAM_outWaveform : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL saida_cont_sincz1 : STD_LOGIC;
SIGNAL saida_cont_sincz2 : STD_LOGIC;
SIGNAL saida_cont_sincz3 : STD_LOGIC;
SIGNAL Saida_mult_to_mult_outWaveform : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Saida_to_PC_outWaveform : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SaidaPc_outWaveform : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SaidaRegA_outWaveform : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SaidaRegB_outWaveform : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SomadorToPc_outWaveform : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT DataPath
	PORT (
	Clock_Sistema : IN STD_LOGIC;
	Data_to_writeRegister_outWaveform : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	Flag_aluSRC_OUT : BUFFER STD_LOGIC;
	Flag_branch_OUT : BUFFER STD_LOGIC;
	Flag_escrevemem_OUT : BUFFER STD_LOGIC;
	Flag_escrevereg_OUT : BUFFER STD_LOGIC;
	Flag_jump_OUT : BUFFER STD_LOGIC;
	Flag_lemem_OUT : BUFFER STD_LOGIC;
	Flag_memparareg_OUT : BUFFER STD_LOGIC;
	Flag_origialu_OUT : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Flag_regdest_OUT : BUFFER STD_LOGIC;
	funcionou : BUFFER STD_LOGIC;
	Instruction_to_Control_outWaveform : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Instruction_to_controlULA_outWaveform : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	Instruction_to_extensorDeSinal_outWaveform : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	Instruction_to_Jump_outWaveform : BUFFER STD_LOGIC_VECTOR(11 DOWNTO 0);
	Instruction_to_multiplexador_outWaveform : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	Instruction_to_register1_outWaveform : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	Instruction_to_register2_outWaveform : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	multiplexador_to_writeRegister_outWaveform : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	out_Saida_OperacaoDaULA : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Saida_adress_to_RAM_outWaveform : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	saida_cont_sincz1 : BUFFER STD_LOGIC;
	saida_cont_sincz2 : BUFFER STD_LOGIC;
	saida_cont_sincz3 : BUFFER STD_LOGIC;
	Saida_mult_to_mult_outWaveform : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	Saida_to_PC_outWaveform : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	SaidaPc_outWaveform : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	SaidaRegA_outWaveform : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	SaidaRegB_outWaveform : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	SomadorToPc_outWaveform : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DataPath
	PORT MAP (
-- list connections between master ports and signals
	Clock_Sistema => Clock_Sistema,
	Data_to_writeRegister_outWaveform => Data_to_writeRegister_outWaveform,
	Flag_aluSRC_OUT => Flag_aluSRC_OUT,
	Flag_branch_OUT => Flag_branch_OUT,
	Flag_escrevemem_OUT => Flag_escrevemem_OUT,
	Flag_escrevereg_OUT => Flag_escrevereg_OUT,
	Flag_jump_OUT => Flag_jump_OUT,
	Flag_lemem_OUT => Flag_lemem_OUT,
	Flag_memparareg_OUT => Flag_memparareg_OUT,
	Flag_origialu_OUT => Flag_origialu_OUT,
	Flag_regdest_OUT => Flag_regdest_OUT,
	funcionou => funcionou,
	Instruction_to_Control_outWaveform => Instruction_to_Control_outWaveform,
	Instruction_to_controlULA_outWaveform => Instruction_to_controlULA_outWaveform,
	Instruction_to_extensorDeSinal_outWaveform => Instruction_to_extensorDeSinal_outWaveform,
	Instruction_to_Jump_outWaveform => Instruction_to_Jump_outWaveform,
	Instruction_to_multiplexador_outWaveform => Instruction_to_multiplexador_outWaveform,
	Instruction_to_register1_outWaveform => Instruction_to_register1_outWaveform,
	Instruction_to_register2_outWaveform => Instruction_to_register2_outWaveform,
	multiplexador_to_writeRegister_outWaveform => multiplexador_to_writeRegister_outWaveform,
	out_Saida_OperacaoDaULA => out_Saida_OperacaoDaULA,
	Saida_adress_to_RAM_outWaveform => Saida_adress_to_RAM_outWaveform,
	saida_cont_sincz1 => saida_cont_sincz1,
	saida_cont_sincz2 => saida_cont_sincz2,
	saida_cont_sincz3 => saida_cont_sincz3,
	Saida_mult_to_mult_outWaveform => Saida_mult_to_mult_outWaveform,
	Saida_to_PC_outWaveform => Saida_to_PC_outWaveform,
	SaidaPc_outWaveform => SaidaPc_outWaveform,
	SaidaRegA_outWaveform => SaidaRegA_outWaveform,
	SaidaRegB_outWaveform => SaidaRegB_outWaveform,
	SomadorToPc_outWaveform => SomadorToPc_outWaveform
	);

-- Clock_Sistema
t_prcs_Clock_Sistema: PROCESS
BEGIN
	Clock_Sistema <= '1';
	WAIT FOR 10000 ps;
	Clock_Sistema <= '0';
	WAIT FOR 10000 ps;
	Clock_Sistema <= '1';
	WAIT FOR 10000 ps;
	Clock_Sistema <= '0';
WAIT;
END PROCESS t_prcs_Clock_Sistema;
END DataPath_arch;
