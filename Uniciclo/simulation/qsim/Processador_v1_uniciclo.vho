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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "12/04/2018 02:45:04"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DataPath IS
    PORT (
	Clock_Sistema : IN std_logic;
	SomadorToPc_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaPc_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaRegA_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaRegB_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	multiplexador_to_writeRegister_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_multiplexador_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_Control_outWaveform : BUFFER std_logic_vector(3 DOWNTO 0);
	Instruction_to_register1_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_register2_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_controlULA_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_extensorDeSinal_outWaveform : BUFFER std_logic_vector(5 DOWNTO 0);
	Instruction_to_Jump_outWaveform : BUFFER std_logic_vector(11 DOWNTO 0);
	out_Saida_OperacaoDaULA : BUFFER std_logic_vector(6 DOWNTO 0);
	Data_to_writeRegister_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_mult_to_mult_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_to_PC_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_adress_to_RAM_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Flag_regdest_OUT : BUFFER std_logic;
	Flag_origialu_OUT : BUFFER std_logic_vector(3 DOWNTO 0);
	Flag_memparareg_OUT : BUFFER std_logic;
	Flag_escrevereg_OUT : BUFFER std_logic;
	Flag_lemem_OUT : BUFFER std_logic;
	Flag_escrevemem_OUT : BUFFER std_logic;
	Flag_branch_OUT : BUFFER std_logic;
	Flag_aluSRC_OUT : BUFFER std_logic;
	Flag_jump_OUT : BUFFER std_logic;
	Saida_ula : BUFFER std_logic_vector(15 DOWNTO 0);
	dado_register_destino : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DataPath;

ARCHITECTURE structure OF DataPath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock_Sistema : std_logic;
SIGNAL ww_SomadorToPc_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaPc_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaRegA_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaRegB_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_multiplexador_to_writeRegister_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_multiplexador_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_Control_outWaveform : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Instruction_to_register1_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_register2_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_controlULA_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_extensorDeSinal_outWaveform : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Instruction_to_Jump_outWaveform : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_out_Saida_OperacaoDaULA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Data_to_writeRegister_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_mult_to_mult_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_to_PC_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_adress_to_RAM_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Flag_regdest_OUT : std_logic;
SIGNAL ww_Flag_origialu_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Flag_memparareg_OUT : std_logic;
SIGNAL ww_Flag_escrevereg_OUT : std_logic;
SIGNAL ww_Flag_lemem_OUT : std_logic;
SIGNAL ww_Flag_escrevemem_OUT : std_logic;
SIGNAL ww_Flag_branch_OUT : std_logic;
SIGNAL ww_Flag_aluSRC_OUT : std_logic;
SIGNAL ww_Flag_jump_OUT : std_logic;
SIGNAL ww_Saida_ula : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dado_register_destino : std_logic_vector(15 DOWNTO 0);
SIGNAL \SomadorToPc_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[15]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[0]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[1]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[11]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[0]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[1]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[2]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[3]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[4]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[5]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[6]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Flag_regdest_OUT~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[0]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[1]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[2]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[3]~output_o\ : std_logic;
SIGNAL \Flag_memparareg_OUT~output_o\ : std_logic;
SIGNAL \Flag_escrevereg_OUT~output_o\ : std_logic;
SIGNAL \Flag_lemem_OUT~output_o\ : std_logic;
SIGNAL \Flag_escrevemem_OUT~output_o\ : std_logic;
SIGNAL \Flag_branch_OUT~output_o\ : std_logic;
SIGNAL \Flag_aluSRC_OUT~output_o\ : std_logic;
SIGNAL \Flag_jump_OUT~output_o\ : std_logic;
SIGNAL \Saida_ula[0]~output_o\ : std_logic;
SIGNAL \Saida_ula[1]~output_o\ : std_logic;
SIGNAL \Saida_ula[2]~output_o\ : std_logic;
SIGNAL \Saida_ula[3]~output_o\ : std_logic;
SIGNAL \Saida_ula[4]~output_o\ : std_logic;
SIGNAL \Saida_ula[5]~output_o\ : std_logic;
SIGNAL \Saida_ula[6]~output_o\ : std_logic;
SIGNAL \Saida_ula[7]~output_o\ : std_logic;
SIGNAL \Saida_ula[8]~output_o\ : std_logic;
SIGNAL \Saida_ula[9]~output_o\ : std_logic;
SIGNAL \Saida_ula[10]~output_o\ : std_logic;
SIGNAL \Saida_ula[11]~output_o\ : std_logic;
SIGNAL \Saida_ula[12]~output_o\ : std_logic;
SIGNAL \Saida_ula[13]~output_o\ : std_logic;
SIGNAL \Saida_ula[14]~output_o\ : std_logic;
SIGNAL \Saida_ula[15]~output_o\ : std_logic;
SIGNAL \dado_register_destino[0]~output_o\ : std_logic;
SIGNAL \dado_register_destino[1]~output_o\ : std_logic;
SIGNAL \dado_register_destino[2]~output_o\ : std_logic;
SIGNAL \dado_register_destino[3]~output_o\ : std_logic;
SIGNAL \dado_register_destino[4]~output_o\ : std_logic;
SIGNAL \dado_register_destino[5]~output_o\ : std_logic;
SIGNAL \dado_register_destino[6]~output_o\ : std_logic;
SIGNAL \dado_register_destino[7]~output_o\ : std_logic;
SIGNAL \dado_register_destino[8]~output_o\ : std_logic;
SIGNAL \dado_register_destino[9]~output_o\ : std_logic;
SIGNAL \dado_register_destino[10]~output_o\ : std_logic;
SIGNAL \dado_register_destino[11]~output_o\ : std_logic;
SIGNAL \dado_register_destino[12]~output_o\ : std_logic;
SIGNAL \dado_register_destino[13]~output_o\ : std_logic;
SIGNAL \dado_register_destino[14]~output_o\ : std_logic;
SIGNAL \dado_register_destino[15]~output_o\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G7|Mux15~1_combout\ : std_logic;
SIGNAL \G16|Add0~66_cout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G7|Decoder0~0_combout\ : std_logic;
SIGNAL \G7|Reg[0][0]~combout\ : std_logic;
SIGNAL \G7|Mux15~0_combout\ : std_logic;
SIGNAL \G7|Mux30~1_combout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G7|Reg[0][1]~combout\ : std_logic;
SIGNAL \G7|Mux14~0_combout\ : std_logic;
SIGNAL \G7|Mux29~1_combout\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G7|Reg[0][2]~combout\ : std_logic;
SIGNAL \G7|Mux13~0_combout\ : std_logic;
SIGNAL \G7|Mux12~1_combout\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G7|Reg[0][3]~combout\ : std_logic;
SIGNAL \G7|Mux12~0_combout\ : std_logic;
SIGNAL \G7|Mux11~1_combout\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G7|Reg[0][4]~combout\ : std_logic;
SIGNAL \G7|Mux11~0_combout\ : std_logic;
SIGNAL \G7|Mux10~1_combout\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G7|Reg[0][5]~combout\ : std_logic;
SIGNAL \G7|Mux10~0_combout\ : std_logic;
SIGNAL \G7|Mux25~1_combout\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G7|Reg[0][6]~combout\ : std_logic;
SIGNAL \G7|Mux9~0_combout\ : std_logic;
SIGNAL \G7|Mux8~1_combout\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G7|Reg[0][7]~combout\ : std_logic;
SIGNAL \G7|Mux8~0_combout\ : std_logic;
SIGNAL \G7|Mux23~1_combout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G7|Reg[0][8]~combout\ : std_logic;
SIGNAL \G7|Mux7~0_combout\ : std_logic;
SIGNAL \G7|Mux6~1_combout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G7|Reg[0][9]~combout\ : std_logic;
SIGNAL \G7|Mux6~0_combout\ : std_logic;
SIGNAL \G7|Mux21~1_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G7|Reg[0][10]~combout\ : std_logic;
SIGNAL \G7|Mux5~0_combout\ : std_logic;
SIGNAL \G7|Mux4~1_combout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G7|Reg[0][11]~combout\ : std_logic;
SIGNAL \G7|Mux4~0_combout\ : std_logic;
SIGNAL \G7|Mux19~1_combout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G7|Reg[0][12]~combout\ : std_logic;
SIGNAL \G7|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Mux2~1_combout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G7|Reg[0][13]~combout\ : std_logic;
SIGNAL \G7|Mux2~0_combout\ : std_logic;
SIGNAL \G7|Mux17~1_combout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G7|Reg[0][14]~combout\ : std_logic;
SIGNAL \G7|Mux1~0_combout\ : std_logic;
SIGNAL \G7|Mux0~1_combout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G7|Reg[0][15]~combout\ : std_logic;
SIGNAL \G7|Mux0~0_combout\ : std_logic;
SIGNAL \G7|Mux30~0_combout\ : std_logic;
SIGNAL \G7|Mux29~0_combout\ : std_logic;
SIGNAL \G7|Mux25~0_combout\ : std_logic;
SIGNAL \G7|Mux23~0_combout\ : std_logic;
SIGNAL \G7|Mux21~0_combout\ : std_logic;
SIGNAL \G7|Mux19~0_combout\ : std_logic;
SIGNAL \G7|Mux17~0_combout\ : std_logic;
SIGNAL \G4|rd[1]~0_combout\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Reg[0][15]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][14]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][13]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][12]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][11]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][10]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][9]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][8]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][7]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][6]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][5]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][4]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][3]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][2]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][1]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][0]~combout\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;

BEGIN

ww_Clock_Sistema <= Clock_Sistema;
SomadorToPc_outWaveform <= ww_SomadorToPc_outWaveform;
SaidaPc_outWaveform <= ww_SaidaPc_outWaveform;
SaidaRegA_outWaveform <= ww_SaidaRegA_outWaveform;
SaidaRegB_outWaveform <= ww_SaidaRegB_outWaveform;
multiplexador_to_writeRegister_outWaveform <= ww_multiplexador_to_writeRegister_outWaveform;
Instruction_to_multiplexador_outWaveform <= ww_Instruction_to_multiplexador_outWaveform;
Instruction_to_Control_outWaveform <= ww_Instruction_to_Control_outWaveform;
Instruction_to_register1_outWaveform <= ww_Instruction_to_register1_outWaveform;
Instruction_to_register2_outWaveform <= ww_Instruction_to_register2_outWaveform;
Instruction_to_controlULA_outWaveform <= ww_Instruction_to_controlULA_outWaveform;
Instruction_to_extensorDeSinal_outWaveform <= ww_Instruction_to_extensorDeSinal_outWaveform;
Instruction_to_Jump_outWaveform <= ww_Instruction_to_Jump_outWaveform;
out_Saida_OperacaoDaULA <= ww_out_Saida_OperacaoDaULA;
Data_to_writeRegister_outWaveform <= ww_Data_to_writeRegister_outWaveform;
Saida_mult_to_mult_outWaveform <= ww_Saida_mult_to_mult_outWaveform;
Saida_to_PC_outWaveform <= ww_Saida_to_PC_outWaveform;
Saida_adress_to_RAM_outWaveform <= ww_Saida_adress_to_RAM_outWaveform;
Flag_regdest_OUT <= ww_Flag_regdest_OUT;
Flag_origialu_OUT <= ww_Flag_origialu_OUT;
Flag_memparareg_OUT <= ww_Flag_memparareg_OUT;
Flag_escrevereg_OUT <= ww_Flag_escrevereg_OUT;
Flag_lemem_OUT <= ww_Flag_lemem_OUT;
Flag_escrevemem_OUT <= ww_Flag_escrevemem_OUT;
Flag_branch_OUT <= ww_Flag_branch_OUT;
Flag_aluSRC_OUT <= ww_Flag_aluSRC_OUT;
Flag_jump_OUT <= ww_Flag_jump_OUT;
Saida_ula <= ww_Saida_ula;
dado_register_destino <= ww_dado_register_destino;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\G16|ALT_INV_Add0~61_sumout\ <= NOT \G16|Add0~61_sumout\;
\G16|ALT_INV_Add0~57_sumout\ <= NOT \G16|Add0~57_sumout\;
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G18|ALT_INV_SAIDA\(15) <= NOT \G18|SAIDA\(15);
\G18|ALT_INV_SAIDA\(14) <= NOT \G18|SAIDA\(14);
\G18|ALT_INV_SAIDA\(13) <= NOT \G18|SAIDA\(13);
\G18|ALT_INV_SAIDA\(12) <= NOT \G18|SAIDA\(12);
\G18|ALT_INV_SAIDA\(11) <= NOT \G18|SAIDA\(11);
\G18|ALT_INV_SAIDA\(10) <= NOT \G18|SAIDA\(10);
\G18|ALT_INV_SAIDA\(9) <= NOT \G18|SAIDA\(9);
\G18|ALT_INV_SAIDA\(8) <= NOT \G18|SAIDA\(8);
\G18|ALT_INV_SAIDA\(7) <= NOT \G18|SAIDA\(7);
\G18|ALT_INV_SAIDA\(6) <= NOT \G18|SAIDA\(6);
\G18|ALT_INV_SAIDA\(5) <= NOT \G18|SAIDA\(5);
\G18|ALT_INV_SAIDA\(4) <= NOT \G18|SAIDA\(4);
\G18|ALT_INV_SAIDA\(3) <= NOT \G18|SAIDA\(3);
\G18|ALT_INV_SAIDA\(2) <= NOT \G18|SAIDA\(2);
\G18|ALT_INV_SAIDA\(1) <= NOT \G18|SAIDA\(1);
\G18|ALT_INV_SAIDA\(0) <= NOT \G18|SAIDA\(0);
\G7|ALT_INV_Reg[0][15]~combout\ <= NOT \G7|Reg[0][15]~combout\;
\G7|ALT_INV_Reg[0][14]~combout\ <= NOT \G7|Reg[0][14]~combout\;
\G7|ALT_INV_Reg[0][13]~combout\ <= NOT \G7|Reg[0][13]~combout\;
\G7|ALT_INV_Reg[0][12]~combout\ <= NOT \G7|Reg[0][12]~combout\;
\G7|ALT_INV_Reg[0][11]~combout\ <= NOT \G7|Reg[0][11]~combout\;
\G7|ALT_INV_Reg[0][10]~combout\ <= NOT \G7|Reg[0][10]~combout\;
\G7|ALT_INV_Reg[0][9]~combout\ <= NOT \G7|Reg[0][9]~combout\;
\G7|ALT_INV_Reg[0][8]~combout\ <= NOT \G7|Reg[0][8]~combout\;
\G7|ALT_INV_Reg[0][7]~combout\ <= NOT \G7|Reg[0][7]~combout\;
\G7|ALT_INV_Reg[0][6]~combout\ <= NOT \G7|Reg[0][6]~combout\;
\G7|ALT_INV_Reg[0][5]~combout\ <= NOT \G7|Reg[0][5]~combout\;
\G7|ALT_INV_Reg[0][4]~combout\ <= NOT \G7|Reg[0][4]~combout\;
\G7|ALT_INV_Reg[0][3]~combout\ <= NOT \G7|Reg[0][3]~combout\;
\G7|ALT_INV_Reg[0][2]~combout\ <= NOT \G7|Reg[0][2]~combout\;
\G7|ALT_INV_Reg[0][1]~combout\ <= NOT \G7|Reg[0][1]~combout\;
\G7|ALT_INV_Reg[0][0]~combout\ <= NOT \G7|Reg[0][0]~combout\;
\G1|ALT_INV_pout\(15) <= NOT \G1|pout\(15);
\G1|ALT_INV_pout\(14) <= NOT \G1|pout\(14);
\G1|ALT_INV_pout\(13) <= NOT \G1|pout\(13);
\G1|ALT_INV_pout\(12) <= NOT \G1|pout\(12);
\G1|ALT_INV_pout\(11) <= NOT \G1|pout\(11);
\G1|ALT_INV_pout\(10) <= NOT \G1|pout\(10);
\G1|ALT_INV_pout\(9) <= NOT \G1|pout\(9);
\G1|ALT_INV_pout\(8) <= NOT \G1|pout\(8);
\G1|ALT_INV_pout\(7) <= NOT \G1|pout\(7);
\G1|ALT_INV_pout\(6) <= NOT \G1|pout\(6);
\G1|ALT_INV_pout\(5) <= NOT \G1|pout\(5);
\G1|ALT_INV_pout\(4) <= NOT \G1|pout\(4);
\G1|ALT_INV_pout\(3) <= NOT \G1|pout\(3);
\G1|ALT_INV_pout\(2) <= NOT \G1|pout\(2);
\G1|ALT_INV_pout\(1) <= NOT \G1|pout\(1);
\G1|ALT_INV_pout\(0) <= NOT \G1|pout\(0);
\G7|ALT_INV_Mux0~1_combout\ <= NOT \G7|Mux0~1_combout\;
\G7|ALT_INV_Mux17~1_combout\ <= NOT \G7|Mux17~1_combout\;
\G7|ALT_INV_Mux2~1_combout\ <= NOT \G7|Mux2~1_combout\;
\G7|ALT_INV_Mux19~1_combout\ <= NOT \G7|Mux19~1_combout\;
\G7|ALT_INV_Mux4~1_combout\ <= NOT \G7|Mux4~1_combout\;
\G7|ALT_INV_Mux21~1_combout\ <= NOT \G7|Mux21~1_combout\;
\G7|ALT_INV_Mux6~1_combout\ <= NOT \G7|Mux6~1_combout\;
\G7|ALT_INV_Mux23~1_combout\ <= NOT \G7|Mux23~1_combout\;
\G7|ALT_INV_Mux8~1_combout\ <= NOT \G7|Mux8~1_combout\;
\G7|ALT_INV_Mux25~1_combout\ <= NOT \G7|Mux25~1_combout\;
\G7|ALT_INV_Mux10~1_combout\ <= NOT \G7|Mux10~1_combout\;
\G7|ALT_INV_Mux11~1_combout\ <= NOT \G7|Mux11~1_combout\;
\G7|ALT_INV_Mux12~1_combout\ <= NOT \G7|Mux12~1_combout\;
\G7|ALT_INV_Mux29~1_combout\ <= NOT \G7|Mux29~1_combout\;
\G7|ALT_INV_Mux30~1_combout\ <= NOT \G7|Mux30~1_combout\;
\G7|ALT_INV_Mux15~1_combout\ <= NOT \G7|Mux15~1_combout\;
\G7|ALT_INV_Decoder0~0_combout\ <= NOT \G7|Decoder0~0_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_Mux0~2_combout\ <= NOT \G4|Mux0~2_combout\;
\G4|ALT_INV_Mux0~1_combout\ <= NOT \G4|Mux0~1_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\G2|ALT_INV_saida\(15) <= NOT \G2|saida\(15);
\G2|ALT_INV_saida\(14) <= NOT \G2|saida\(14);
\G2|ALT_INV_saida\(13) <= NOT \G2|saida\(13);
\G2|ALT_INV_saida\(12) <= NOT \G2|saida\(12);
\G2|ALT_INV_saida\(11) <= NOT \G2|saida\(11);
\G2|ALT_INV_saida\(10) <= NOT \G2|saida\(10);
\G2|ALT_INV_saida\(9) <= NOT \G2|saida\(9);
\G2|ALT_INV_saida\(8) <= NOT \G2|saida\(8);
\G2|ALT_INV_saida\(7) <= NOT \G2|saida\(7);
\G2|ALT_INV_saida\(6) <= NOT \G2|saida\(6);
\G2|ALT_INV_saida\(5) <= NOT \G2|saida\(5);
\G2|ALT_INV_saida\(4) <= NOT \G2|saida\(4);
\G2|ALT_INV_saida\(3) <= NOT \G2|saida\(3);
\G2|ALT_INV_saida\(2) <= NOT \G2|saida\(2);
\G2|ALT_INV_saida\(1) <= NOT \G2|saida\(1);
\G2|ALT_INV_saida\(0) <= NOT \G2|saida\(0);
\G14|ALT_INV_SAIDA\(15) <= NOT \G14|SAIDA\(15);
\G14|ALT_INV_SAIDA\(14) <= NOT \G14|SAIDA\(14);
\G14|ALT_INV_SAIDA\(13) <= NOT \G14|SAIDA\(13);
\G14|ALT_INV_SAIDA\(12) <= NOT \G14|SAIDA\(12);
\G14|ALT_INV_SAIDA\(11) <= NOT \G14|SAIDA\(11);
\G14|ALT_INV_SAIDA\(10) <= NOT \G14|SAIDA\(10);
\G14|ALT_INV_SAIDA\(9) <= NOT \G14|SAIDA\(9);
\G14|ALT_INV_SAIDA\(8) <= NOT \G14|SAIDA\(8);
\G14|ALT_INV_SAIDA\(7) <= NOT \G14|SAIDA\(7);
\G14|ALT_INV_SAIDA\(6) <= NOT \G14|SAIDA\(6);
\G14|ALT_INV_SAIDA\(5) <= NOT \G14|SAIDA\(5);
\G14|ALT_INV_SAIDA\(4) <= NOT \G14|SAIDA\(4);
\G14|ALT_INV_SAIDA\(3) <= NOT \G14|SAIDA\(3);
\G14|ALT_INV_SAIDA\(2) <= NOT \G14|SAIDA\(2);
\G14|ALT_INV_SAIDA\(1) <= NOT \G14|SAIDA\(1);
\G14|ALT_INV_SAIDA\(0) <= NOT \G14|SAIDA\(0);
\G13|ALT_INV_SAIDA\(15) <= NOT \G13|SAIDA\(15);
\G13|ALT_INV_SAIDA\(14) <= NOT \G13|SAIDA\(14);
\G13|ALT_INV_SAIDA\(13) <= NOT \G13|SAIDA\(13);
\G13|ALT_INV_SAIDA\(12) <= NOT \G13|SAIDA\(12);
\G13|ALT_INV_SAIDA\(11) <= NOT \G13|SAIDA\(11);
\G13|ALT_INV_SAIDA\(10) <= NOT \G13|SAIDA\(10);
\G13|ALT_INV_SAIDA\(9) <= NOT \G13|SAIDA\(9);
\G13|ALT_INV_SAIDA\(8) <= NOT \G13|SAIDA\(8);
\G13|ALT_INV_SAIDA\(7) <= NOT \G13|SAIDA\(7);
\G13|ALT_INV_SAIDA\(6) <= NOT \G13|SAIDA\(6);
\G13|ALT_INV_SAIDA\(5) <= NOT \G13|SAIDA\(5);
\G13|ALT_INV_SAIDA\(4) <= NOT \G13|SAIDA\(4);
\G13|ALT_INV_SAIDA\(3) <= NOT \G13|SAIDA\(3);
\G13|ALT_INV_SAIDA\(2) <= NOT \G13|SAIDA\(2);
\G13|ALT_INV_SAIDA\(1) <= NOT \G13|SAIDA\(1);
\G13|ALT_INV_SAIDA\(0) <= NOT \G13|SAIDA\(0);
\G12|ALT_INV_SAIDA\(15) <= NOT \G12|SAIDA\(15);
\G12|ALT_INV_SAIDA\(14) <= NOT \G12|SAIDA\(14);
\G12|ALT_INV_SAIDA\(13) <= NOT \G12|SAIDA\(13);
\G12|ALT_INV_SAIDA\(12) <= NOT \G12|SAIDA\(12);
\G12|ALT_INV_SAIDA\(11) <= NOT \G12|SAIDA\(11);
\G12|ALT_INV_SAIDA\(10) <= NOT \G12|SAIDA\(10);
\G12|ALT_INV_SAIDA\(9) <= NOT \G12|SAIDA\(9);
\G12|ALT_INV_SAIDA\(8) <= NOT \G12|SAIDA\(8);
\G12|ALT_INV_SAIDA\(7) <= NOT \G12|SAIDA\(7);
\G12|ALT_INV_SAIDA\(6) <= NOT \G12|SAIDA\(6);
\G12|ALT_INV_SAIDA\(5) <= NOT \G12|SAIDA\(5);
\G12|ALT_INV_SAIDA\(4) <= NOT \G12|SAIDA\(4);
\G12|ALT_INV_SAIDA\(3) <= NOT \G12|SAIDA\(3);
\G12|ALT_INV_SAIDA\(2) <= NOT \G12|SAIDA\(2);
\G12|ALT_INV_SAIDA\(1) <= NOT \G12|SAIDA\(1);
\G12|ALT_INV_SAIDA\(0) <= NOT \G12|SAIDA\(0);
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;

\SomadorToPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(0),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[0]~output_o\);

\SomadorToPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(1),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[1]~output_o\);

\SomadorToPc_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(2),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[2]~output_o\);

\SomadorToPc_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(3),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[3]~output_o\);

\SomadorToPc_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(4),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[4]~output_o\);

\SomadorToPc_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(5),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[5]~output_o\);

\SomadorToPc_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(6),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[6]~output_o\);

\SomadorToPc_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(7),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[7]~output_o\);

\SomadorToPc_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(8),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[8]~output_o\);

\SomadorToPc_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(9),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[9]~output_o\);

\SomadorToPc_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(10),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[10]~output_o\);

\SomadorToPc_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(11),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[11]~output_o\);

\SomadorToPc_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(12),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[12]~output_o\);

\SomadorToPc_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(13),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[13]~output_o\);

\SomadorToPc_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(14),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[14]~output_o\);

\SomadorToPc_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(15),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[15]~output_o\);

\SaidaPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(0),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[0]~output_o\);

\SaidaPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(1),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[1]~output_o\);

\SaidaPc_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(2),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[2]~output_o\);

\SaidaPc_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(3),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[3]~output_o\);

\SaidaPc_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(4),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[4]~output_o\);

\SaidaPc_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(5),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[5]~output_o\);

\SaidaPc_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(6),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[6]~output_o\);

\SaidaPc_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(7),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[7]~output_o\);

\SaidaPc_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(8),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[8]~output_o\);

\SaidaPc_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(9),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[9]~output_o\);

\SaidaPc_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(10),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[10]~output_o\);

\SaidaPc_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(11),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[11]~output_o\);

\SaidaPc_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(12),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[12]~output_o\);

\SaidaPc_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(13),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[13]~output_o\);

\SaidaPc_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(14),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[14]~output_o\);

\SaidaPc_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(15),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[15]~output_o\);

\SaidaRegA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[0]~output_o\);

\SaidaRegA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[1]~output_o\);

\SaidaRegA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[2]~output_o\);

\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[3]~output_o\);

\SaidaRegA_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[4]~output_o\);

\SaidaRegA_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[5]~output_o\);

\SaidaRegA_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[6]~output_o\);

\SaidaRegA_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[7]~output_o\);

\SaidaRegA_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[8]~output_o\);

\SaidaRegA_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[9]~output_o\);

\SaidaRegA_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[10]~output_o\);

\SaidaRegA_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[11]~output_o\);

\SaidaRegA_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[12]~output_o\);

\SaidaRegA_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[13]~output_o\);

\SaidaRegA_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[14]~output_o\);

\SaidaRegA_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[15]~output_o\);

\SaidaRegB_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[0]~output_o\);

\SaidaRegB_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[1]~output_o\);

\SaidaRegB_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[2]~output_o\);

\SaidaRegB_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[3]~output_o\);

\SaidaRegB_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[4]~output_o\);

\SaidaRegB_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[5]~output_o\);

\SaidaRegB_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[6]~output_o\);

\SaidaRegB_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[7]~output_o\);

\SaidaRegB_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[8]~output_o\);

\SaidaRegB_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[9]~output_o\);

\SaidaRegB_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[10]~output_o\);

\SaidaRegB_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[11]~output_o\);

\SaidaRegB_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[12]~output_o\);

\SaidaRegB_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[13]~output_o\);

\SaidaRegB_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[14]~output_o\);

\SaidaRegB_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[15]~output_o\);

\multiplexador_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \multiplexador_to_writeRegister_outWaveform[0]~output_o\);

\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \multiplexador_to_writeRegister_outWaveform[1]~output_o\);

\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \multiplexador_to_writeRegister_outWaveform[2]~output_o\);

\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[0]~output_o\);

\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[1]~output_o\);

\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[2]~output_o\);

\Instruction_to_Control_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[0]~output_o\);

\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[1]~output_o\);

\Instruction_to_Control_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[2]~output_o\);

\Instruction_to_Control_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[3]~output_o\);

\Instruction_to_register1_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register1_outWaveform[0]~output_o\);

\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_register1_outWaveform[1]~output_o\);

\Instruction_to_register1_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register1_outWaveform[2]~output_o\);

\Instruction_to_register2_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_register2_outWaveform[0]~output_o\);

\Instruction_to_register2_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_register2_outWaveform[1]~output_o\);

\Instruction_to_register2_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register2_outWaveform[2]~output_o\);

\Instruction_to_controlULA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA_outWaveform[0]~output_o\);

\Instruction_to_controlULA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA_outWaveform[1]~output_o\);

\Instruction_to_controlULA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA_outWaveform[2]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\);

\Instruction_to_Jump_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[0]~output_o\);

\Instruction_to_Jump_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[1]~output_o\);

\Instruction_to_Jump_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[2]~output_o\);

\Instruction_to_Jump_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[3]~output_o\);

\Instruction_to_Jump_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[4]~output_o\);

\Instruction_to_Jump_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[5]~output_o\);

\Instruction_to_Jump_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[6]~output_o\);

\Instruction_to_Jump_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[7]~output_o\);

\Instruction_to_Jump_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[8]~output_o\);

\Instruction_to_Jump_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[9]~output_o\);

\Instruction_to_Jump_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[10]~output_o\);

\Instruction_to_Jump_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[11]~output_o\);

\out_Saida_OperacaoDaULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rd[1]~0_combout\,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[0]~output_o\);

\out_Saida_OperacaoDaULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[1]~output_o\);

\out_Saida_OperacaoDaULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[2]~output_o\);

\out_Saida_OperacaoDaULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[3]~output_o\);

\out_Saida_OperacaoDaULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[4]~output_o\);

\out_Saida_OperacaoDaULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[5]~output_o\);

\out_Saida_OperacaoDaULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[6]~output_o\);

\Data_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(0),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[0]~output_o\);

\Data_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(1),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[1]~output_o\);

\Data_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(2),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[2]~output_o\);

\Data_to_writeRegister_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(3),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[3]~output_o\);

\Data_to_writeRegister_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(4),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[4]~output_o\);

\Data_to_writeRegister_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(5),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[5]~output_o\);

\Data_to_writeRegister_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(6),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[6]~output_o\);

\Data_to_writeRegister_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(7),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[7]~output_o\);

\Data_to_writeRegister_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(8),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[8]~output_o\);

\Data_to_writeRegister_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(9),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[9]~output_o\);

\Data_to_writeRegister_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(10),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[10]~output_o\);

\Data_to_writeRegister_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(11),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[11]~output_o\);

\Data_to_writeRegister_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(12),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[12]~output_o\);

\Data_to_writeRegister_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(13),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[13]~output_o\);

\Data_to_writeRegister_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(14),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[14]~output_o\);

\Data_to_writeRegister_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(15),
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[15]~output_o\);

\Saida_mult_to_mult_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(0),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[0]~output_o\);

\Saida_mult_to_mult_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(1),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[1]~output_o\);

\Saida_mult_to_mult_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(2),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[2]~output_o\);

\Saida_mult_to_mult_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(3),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[3]~output_o\);

\Saida_mult_to_mult_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(4),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[4]~output_o\);

\Saida_mult_to_mult_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(5),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[5]~output_o\);

\Saida_mult_to_mult_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(6),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[6]~output_o\);

\Saida_mult_to_mult_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(7),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[7]~output_o\);

\Saida_mult_to_mult_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(8),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[8]~output_o\);

\Saida_mult_to_mult_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(9),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[9]~output_o\);

\Saida_mult_to_mult_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(10),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[10]~output_o\);

\Saida_mult_to_mult_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(11),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[11]~output_o\);

\Saida_mult_to_mult_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(12),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[12]~output_o\);

\Saida_mult_to_mult_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(13),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[13]~output_o\);

\Saida_mult_to_mult_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(14),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[14]~output_o\);

\Saida_mult_to_mult_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|SAIDA\(15),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[15]~output_o\);

\Saida_to_PC_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(0),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[0]~output_o\);

\Saida_to_PC_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(1),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[1]~output_o\);

\Saida_to_PC_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(2),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[2]~output_o\);

\Saida_to_PC_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(3),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[3]~output_o\);

\Saida_to_PC_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(4),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[4]~output_o\);

\Saida_to_PC_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(5),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[5]~output_o\);

\Saida_to_PC_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(6),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[6]~output_o\);

\Saida_to_PC_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(7),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[7]~output_o\);

\Saida_to_PC_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(8),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[8]~output_o\);

\Saida_to_PC_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(9),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[9]~output_o\);

\Saida_to_PC_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(10),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[10]~output_o\);

\Saida_to_PC_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(11),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[11]~output_o\);

\Saida_to_PC_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(12),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[12]~output_o\);

\Saida_to_PC_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(13),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[13]~output_o\);

\Saida_to_PC_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(14),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[14]~output_o\);

\Saida_to_PC_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|SAIDA\(15),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[15]~output_o\);

\Saida_adress_to_RAM_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[0]~output_o\);

\Saida_adress_to_RAM_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[1]~output_o\);

\Saida_adress_to_RAM_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[2]~output_o\);

\Saida_adress_to_RAM_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[3]~output_o\);

\Saida_adress_to_RAM_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[4]~output_o\);

\Saida_adress_to_RAM_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[5]~output_o\);

\Saida_adress_to_RAM_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[6]~output_o\);

\Saida_adress_to_RAM_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[7]~output_o\);

\Saida_adress_to_RAM_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[8]~output_o\);

\Saida_adress_to_RAM_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[9]~output_o\);

\Saida_adress_to_RAM_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[10]~output_o\);

\Saida_adress_to_RAM_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[11]~output_o\);

\Saida_adress_to_RAM_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[12]~output_o\);

\Saida_adress_to_RAM_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[13]~output_o\);

\Saida_adress_to_RAM_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[14]~output_o\);

\Saida_adress_to_RAM_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[15]~output_o\);

\Flag_regdest_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Flag_regdest_OUT~output_o\);

\Flag_origialu_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[0]~output_o\);

\Flag_origialu_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[1]~output_o\);

\Flag_origialu_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[2]~output_o\);

\Flag_origialu_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[3]~output_o\);

\Flag_memparareg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Flag_memparareg_OUT~output_o\);

\Flag_escrevereg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Flag_escrevereg_OUT~output_o\);

\Flag_lemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_lemem_OUT~output_o\);

\Flag_escrevemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_escrevemem_OUT~output_o\);

\Flag_branch_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_branch_OUT~output_o\);

\Flag_aluSRC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_aluSRC_OUT~output_o\);

\Flag_jump_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_jump_OUT~output_o\);

\Saida_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[0]~output_o\);

\Saida_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[1]~output_o\);

\Saida_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[2]~output_o\);

\Saida_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[3]~output_o\);

\Saida_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[4]~output_o\);

\Saida_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[5]~output_o\);

\Saida_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[6]~output_o\);

\Saida_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[7]~output_o\);

\Saida_ula[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[8]~output_o\);

\Saida_ula[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[9]~output_o\);

\Saida_ula[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[10]~output_o\);

\Saida_ula[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[11]~output_o\);

\Saida_ula[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[12]~output_o\);

\Saida_ula[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[13]~output_o\);

\Saida_ula[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[14]~output_o\);

\Saida_ula[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \Saida_ula[15]~output_o\);

\dado_register_destino[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(0),
	devoe => ww_devoe,
	o => \dado_register_destino[0]~output_o\);

\dado_register_destino[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(1),
	devoe => ww_devoe,
	o => \dado_register_destino[1]~output_o\);

\dado_register_destino[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(2),
	devoe => ww_devoe,
	o => \dado_register_destino[2]~output_o\);

\dado_register_destino[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(3),
	devoe => ww_devoe,
	o => \dado_register_destino[3]~output_o\);

\dado_register_destino[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(4),
	devoe => ww_devoe,
	o => \dado_register_destino[4]~output_o\);

\dado_register_destino[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(5),
	devoe => ww_devoe,
	o => \dado_register_destino[5]~output_o\);

\dado_register_destino[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(6),
	devoe => ww_devoe,
	o => \dado_register_destino[6]~output_o\);

\dado_register_destino[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(7),
	devoe => ww_devoe,
	o => \dado_register_destino[7]~output_o\);

\dado_register_destino[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(8),
	devoe => ww_devoe,
	o => \dado_register_destino[8]~output_o\);

\dado_register_destino[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(9),
	devoe => ww_devoe,
	o => \dado_register_destino[9]~output_o\);

\dado_register_destino[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(10),
	devoe => ww_devoe,
	o => \dado_register_destino[10]~output_o\);

\dado_register_destino[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(11),
	devoe => ww_devoe,
	o => \dado_register_destino[11]~output_o\);

\dado_register_destino[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(12),
	devoe => ww_devoe,
	o => \dado_register_destino[12]~output_o\);

\dado_register_destino[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(13),
	devoe => ww_devoe,
	o => \dado_register_destino[13]~output_o\);

\dado_register_destino[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(14),
	devoe => ww_devoe,
	o => \dado_register_destino[14]~output_o\);

\dado_register_destino[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA\(15),
	devoe => ww_devoe,
	o => \dado_register_destino[15]~output_o\);

\Clock_Sistema~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_Sistema,
	o => \Clock_Sistema~input_o\);

\G12|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(0) = ( \G12|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(0) ) ) ) # ( !\G12|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(0) ) ) ) # ( \G12|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(0),
	datae => \G12|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(0));

\G13|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(0) = ( \G13|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(0) ) ) ) # ( !\G13|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(0) ) ) ) # ( \G13|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(0),
	datae => \G13|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(0));

\G1|pout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(0) = ( \G1|pout\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(0) ) ) ) # ( !\G1|pout\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(0) ) ) ) # ( \G1|pout\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(0),
	datae => \G1|ALT_INV_pout\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(0));

\G2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|saida[0]~0_combout\ = !\G1|pout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	combout => \G2|saida[0]~0_combout\);

\G2|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(0));

\G12|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(1) = ( \G12|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(1) ) ) ) # ( !\G12|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(1) ) ) ) # ( \G12|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(1),
	datae => \G12|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(1));

\G13|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(1) = ( \G13|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(1) ) ) ) # ( !\G13|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(1) ) ) ) # ( \G13|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(1),
	datae => \G13|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(1));

\G1|pout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(1) = ( \G1|pout\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) ) ) ) # ( !\G1|pout\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) ) ) ) # ( \G1|pout\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(1),
	datae => \G1|ALT_INV_pout\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(1));

\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(1),
	dataf => \G1|ALT_INV_pout\(0),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

\G2|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(1));

\G12|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(2) = ( \G12|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(2) ) ) ) # ( !\G12|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(2) ) ) ) # ( \G12|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(2),
	datae => \G12|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(2));

\G13|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(2) = ( \G13|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(2) ) ) ) # ( !\G13|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(2) ) ) ) # ( \G13|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(2),
	datae => \G13|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(2));

\G1|pout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(2) = ( \G1|pout\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(2) ) ) ) # ( !\G1|pout\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(2) ) ) ) # ( \G1|pout\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(2),
	datae => \G1|ALT_INV_pout\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(2));

\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

\G2|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(2));

\G12|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(3) = ( \G12|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(3) ) ) ) # ( !\G12|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(3) ) ) ) # ( \G12|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(3),
	datae => \G12|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(3));

\G13|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(3) = ( \G13|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(3) ) ) ) # ( !\G13|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(3) ) ) ) # ( \G13|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(3),
	datae => \G13|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(3));

\G1|pout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(3) = ( \G1|pout\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(3) ) ) ) # ( !\G1|pout\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(3) ) ) ) # ( \G1|pout\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(3),
	datae => \G1|ALT_INV_pout\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(3));

\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

\G2|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(3));

\G12|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(4) = ( \G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(4) ) ) ) # ( !\G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(4) ) ) ) # ( \G12|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(4),
	datae => \G12|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(4));

\G13|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(4) = ( \G13|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(4) ) ) ) # ( !\G13|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(4) ) ) ) # ( \G13|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(4),
	datae => \G13|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(4));

\G1|pout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(4) = ( \G1|pout\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(4) ) ) ) # ( !\G1|pout\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(4) ) ) ) # ( \G1|pout\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(4),
	datae => \G1|ALT_INV_pout\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(4));

\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(4),
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);

\G2|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(4));

\G12|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(5) = ( \G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(5) ) ) ) # ( !\G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(5) ) ) ) # ( \G12|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(5),
	datae => \G12|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(5));

\G13|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(5) = ( \G13|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(5) ) ) ) # ( !\G13|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(5) ) ) ) # ( \G13|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(5),
	datae => \G13|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(5));

\G1|pout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(5) = ( \G1|pout\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(5) ) ) ) # ( !\G1|pout\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(5) ) ) ) # ( \G1|pout\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(5),
	datae => \G1|ALT_INV_pout\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(5));

\G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~17_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))
-- \G2|Add0~18\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~14\,
	sumout => \G2|Add0~17_sumout\,
	cout => \G2|Add0~18\);

\G2|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(5));

\G12|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(6) = ( \G12|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(6) ) ) ) # ( !\G12|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(6) ) ) ) # ( \G12|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(6),
	datae => \G12|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(6));

\G13|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(6) = ( \G13|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(6) ) ) ) # ( !\G13|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(6) ) ) ) # ( \G13|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(6),
	datae => \G13|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(6));

\G1|pout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(6) = ( \G1|pout\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(6) ) ) ) # ( !\G1|pout\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(6) ) ) ) # ( \G1|pout\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(6),
	datae => \G1|ALT_INV_pout\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(6));

\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(6),
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

\G2|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(6));

\G12|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(7) = ( \G12|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(7) ) ) ) # ( !\G12|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(7) ) ) ) # ( \G12|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(7),
	datae => \G12|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(7));

\G13|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(7) = ( \G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(7) ) ) ) # ( !\G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(7) ) ) ) # ( \G13|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(7),
	datae => \G13|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(7));

\G1|pout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(7) = ( \G1|pout\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(7) ) ) ) # ( !\G1|pout\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(7) ) ) ) # ( \G1|pout\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(7),
	datae => \G1|ALT_INV_pout\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(7));

\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

\G2|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(7));

\G12|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(8) = ( \G12|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(8) ) ) ) # ( !\G12|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(8) ) ) ) # ( \G12|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(8),
	datae => \G12|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(8));

\G13|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(8) = ( \G13|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(8) ) ) ) # ( !\G13|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(8) ) ) ) # ( \G13|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(8),
	datae => \G13|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(8));

\G1|pout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(8) = ( \G1|pout\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(8) ) ) ) # ( !\G1|pout\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(8) ) ) ) # ( \G1|pout\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(8),
	datae => \G1|ALT_INV_pout\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(8));

\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

\G2|saida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(8));

\G12|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(9) = ( \G12|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(9) ) ) ) # ( !\G12|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(9) ) ) ) # ( \G12|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(9),
	datae => \G12|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(9));

\G13|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(9) = ( \G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) ) # ( !\G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) ) # ( \G13|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(9),
	datae => \G13|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(9));

\G1|pout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(9) = ( \G1|pout\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(9) ) ) ) # ( !\G1|pout\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(9) ) ) ) # ( \G1|pout\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(9),
	datae => \G1|ALT_INV_pout\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(9));

\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

\G2|saida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(9));

\G12|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(10) = ( \G12|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(10) ) ) ) # ( !\G12|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(10) ) ) ) # ( \G12|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(10),
	datae => \G12|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(10));

\G13|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(10) = ( \G13|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(10) ) ) ) # ( !\G13|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(10) ) ) ) # ( \G13|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(10),
	datae => \G13|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(10));

\G1|pout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(10) = ( \G1|pout\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) ) # ( !\G1|pout\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) ) # ( \G1|pout\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(10),
	datae => \G1|ALT_INV_pout\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(10));

\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(10),
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

\G2|saida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(10));

\G12|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(11) = ( \G12|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(11) ) ) ) # ( !\G12|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(11) ) ) ) # ( \G12|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(11),
	datae => \G12|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(11));

\G13|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(11) = ( \G13|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(11) ) ) ) # ( !\G13|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(11) ) ) ) # ( \G13|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(11),
	datae => \G13|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(11));

\G1|pout[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(11) = ( \G1|pout\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(11) ) ) ) # ( !\G1|pout\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(11) ) ) ) # ( \G1|pout\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(11),
	datae => \G1|ALT_INV_pout\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(11));

\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

\G2|saida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(11));

\G12|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(12) = ( \G12|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(12) ) ) ) # ( !\G12|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(12) ) ) ) # ( \G12|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(12),
	datae => \G12|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(12));

\G13|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(12) = ( \G13|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(12) ) ) ) # ( !\G13|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(12) ) ) ) # ( \G13|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(12),
	datae => \G13|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(12));

\G1|pout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(12) = ( \G1|pout\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(12) ) ) ) # ( !\G1|pout\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(12) ) ) ) # ( \G1|pout\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(12),
	datae => \G1|ALT_INV_pout\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(12));

\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))
-- \G2|Add0~46\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\,
	cout => \G2|Add0~46\);

\G2|saida[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(12));

\G12|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(13) = ( \G12|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(13) ) ) ) # ( !\G12|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(13) ) ) ) # ( \G12|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(13),
	datae => \G12|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(13));

\G13|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(13) = ( \G13|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(13) ) ) ) # ( !\G13|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(13) ) ) ) # ( \G13|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(13),
	datae => \G13|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(13));

\G1|pout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(13) = ( \G1|pout\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(13) ) ) ) # ( !\G1|pout\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(13) ) ) ) # ( \G1|pout\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(13),
	datae => \G1|ALT_INV_pout\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(13));

\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(13),
	cin => \G2|Add0~46\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

\G2|saida[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(13));

\G12|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(14) = ( \G12|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(14) ) ) ) # ( !\G12|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(14) ) ) ) # ( \G12|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(14),
	datae => \G12|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(14));

\G13|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(14) = ( \G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(14) ) ) ) # ( !\G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(14) ) ) ) # ( \G13|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(14),
	datae => \G13|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(14));

\G1|pout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(14) = ( \G1|pout\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(14) ) ) ) # ( !\G1|pout\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(14) ) ) ) # ( \G1|pout\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(14),
	datae => \G1|ALT_INV_pout\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(14));

\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

\G2|saida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(14));

\G12|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(15) = ( \G12|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(15) ) ) ) # ( !\G12|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G2|saida\(15) ) ) ) # ( \G12|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(15),
	datae => \G12|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(15));

\G13|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(15) = ( \G13|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(15) ) ) ) # ( !\G13|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(15) ) ) ) # ( \G13|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA\(15),
	datae => \G13|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(15));

\G1|pout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(15) = ( \G1|pout\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(15) ) ) ) # ( !\G1|pout\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(15) ) ) ) # ( \G1|pout\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA\(15),
	datae => \G1|ALT_INV_pout\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(15));

\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(15),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~57_sumout\);

\G2|saida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(15));

\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = (!\G1|pout\(12) & (!\G1|pout\(13) & (!\G1|pout\(14) & !\G1|pout\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(12),
	datab => \G1|ALT_INV_pout\(13),
	datac => \G1|ALT_INV_pout\(14),
	datad => \G1|ALT_INV_pout\(15),
	combout => \G4|Mux0~0_combout\);

\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(4) & ( (!\G1|pout\(0) & (!\G1|pout\(1) & (!\G1|pout\(2) & !\G1|pout\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G1|ALT_INV_pout\(4),
	combout => \G4|Mux0~1_combout\);

\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = ( !\G1|pout\(10) & ( (!\G1|pout\(6) & (!\G1|pout\(7) & (!\G1|pout\(8) & !\G1|pout\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(6),
	datab => \G1|ALT_INV_pout\(7),
	datac => \G1|ALT_INV_pout\(8),
	datad => \G1|ALT_INV_pout\(9),
	datae => \G1|ALT_INV_pout\(10),
	combout => \G4|Mux0~2_combout\);

\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~2_combout\ & ( (!\G1|pout\(5) & (!\G1|pout\(11) & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(5),
	datab => \G1|ALT_INV_pout\(11),
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G4|ALT_INV_Mux0~1_combout\,
	datae => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G4|Mux0~3_combout\);

\G7|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~1_combout\ = (\G4|Mux0~3_combout\) # (\G7|Reg[0][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][0]~combout\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux15~1_combout\);

\G14|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(0) = ( \G14|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G7|Mux15~1_combout\ ) ) ) # ( !\G14|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G7|Mux15~1_combout\ ) ) ) # ( \G14|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux15~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(0));

\G16|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~66_cout\ = CARRY(( (\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => GND,
	cout => \G16|Add0~66_cout\);

\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][0]~combout\) ) + ( !\G14|SAIDA\(0) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~66_cout\ ))
-- \G16|Add0~2\ = CARRY(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][0]~combout\) ) + ( !\G14|SAIDA\(0) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][0]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(0),
	cin => \G16|Add0~66_cout\,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

\G18|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(0) = ( \G18|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~1_sumout\ ) ) ) # ( !\G18|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~1_sumout\ ) ) ) # ( \G18|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~1_sumout\,
	datae => \G18|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(0));

\G7|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Decoder0~0_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux0~2_combout\ & ( (\Clock_Sistema~input_o\ & (((!\G4|Mux0~0_combout\) # (\G1|pout\(11))) # (\G1|pout\(5)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux0~2_combout\ & ( \Clock_Sistema~input_o\ ) ) ) 
-- # ( \G4|Mux0~1_combout\ & ( !\G4|Mux0~2_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux0~2_combout\ & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(5),
	datab => \G1|ALT_INV_pout\(11),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G7|Decoder0~0_combout\);

\G7|Reg[0][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][0]~combout\ = ( \G7|Reg[0][0]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(0) ) ) ) # ( !\G7|Reg[0][0]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(0) ) ) ) # ( \G7|Reg[0][0]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(0),
	datae => \G7|ALT_INV_Reg[0][0]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][0]~combout\);

\G7|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][0]~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux15~0_combout\);

\G7|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~1_combout\ = (\G7|Reg[0][1]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][1]~combout\,
	combout => \G7|Mux30~1_combout\);

\G14|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(1) = ( \G14|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G14|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G14|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(1));

\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( (\G7|Reg[0][1]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(1) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( (\G7|Reg[0][1]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(1) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][1]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(1),
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

\G18|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(1) = ( \G18|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~5_sumout\ ) ) ) # ( !\G18|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~5_sumout\ ) ) ) # ( \G18|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~5_sumout\,
	datae => \G18|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(1));

\G7|Reg[0][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][1]~combout\ = ( \G7|Reg[0][1]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(1) ) ) ) # ( !\G7|Reg[0][1]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(1) ) ) ) # ( \G7|Reg[0][1]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(1),
	datae => \G7|ALT_INV_Reg[0][1]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][1]~combout\);

\G7|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux14~0_combout\ = (\G7|Reg[0][1]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][1]~combout\,
	combout => \G7|Mux14~0_combout\);

\G7|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~1_combout\ = (\G7|Reg[0][2]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][2]~combout\,
	combout => \G7|Mux29~1_combout\);

\G14|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(2) = ( \G14|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G14|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G14|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(2));

\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( (\G7|Reg[0][2]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(2) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( (\G7|Reg[0][2]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(2) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][2]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(2),
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

\G18|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(2) = ( \G18|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~9_sumout\ ) ) ) # ( !\G18|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~9_sumout\ ) ) ) # ( \G18|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~9_sumout\,
	datae => \G18|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(2));

\G7|Reg[0][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][2]~combout\ = ( \G7|Reg[0][2]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( !\G7|Reg[0][2]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( \G7|Reg[0][2]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(2),
	datae => \G7|ALT_INV_Reg[0][2]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][2]~combout\);

\G7|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux13~0_combout\ = (\G7|Reg[0][2]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][2]~combout\,
	combout => \G7|Mux13~0_combout\);

\G7|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux12~1_combout\ = (\G7|Reg[0][3]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][3]~combout\,
	combout => \G7|Mux12~1_combout\);

\G14|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(3) = ( \G14|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G7|Mux12~1_combout\ ) ) ) # ( !\G14|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G7|Mux12~1_combout\ ) ) ) # ( \G14|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux12~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(3));

\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][3]~combout\) ) + ( !\G14|SAIDA\(3) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][3]~combout\) ) + ( !\G14|SAIDA\(3) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][3]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(3),
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

\G18|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(3) = ( \G18|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~13_sumout\ ) ) ) # ( !\G18|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~13_sumout\ ) ) ) # ( \G18|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~13_sumout\,
	datae => \G18|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(3));

\G7|Reg[0][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][3]~combout\ = ( \G7|Reg[0][3]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(3) ) ) ) # ( !\G7|Reg[0][3]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(3) ) ) ) # ( \G7|Reg[0][3]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(3),
	datae => \G7|ALT_INV_Reg[0][3]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][3]~combout\);

\G7|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux12~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][3]~combout\,
	combout => \G7|Mux12~0_combout\);

\G7|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux11~1_combout\ = (\G7|Reg[0][4]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][4]~combout\,
	combout => \G7|Mux11~1_combout\);

\G14|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(4) = ( \G14|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G7|Mux11~1_combout\ ) ) ) # ( !\G14|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G7|Mux11~1_combout\ ) ) ) # ( \G14|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux11~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(4));

\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][4]~combout\) ) + ( !\G14|SAIDA\(4) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][4]~combout\) ) + ( !\G14|SAIDA\(4) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][4]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(4),
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

\G18|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(4) = ( \G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~17_sumout\ ) ) ) # ( !\G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~17_sumout\ ) ) ) # ( \G18|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~17_sumout\,
	datae => \G18|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(4));

\G7|Reg[0][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][4]~combout\ = ( \G7|Reg[0][4]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(4) ) ) ) # ( !\G7|Reg[0][4]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(4) ) ) ) # ( \G7|Reg[0][4]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(4),
	datae => \G7|ALT_INV_Reg[0][4]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][4]~combout\);

\G7|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux11~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][4]~combout\,
	combout => \G7|Mux11~0_combout\);

\G7|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux10~1_combout\ = (\G7|Reg[0][5]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][5]~combout\,
	combout => \G7|Mux10~1_combout\);

\G14|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(5) = ( \G14|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G7|Mux10~1_combout\ ) ) ) # ( !\G14|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G7|Mux10~1_combout\ ) ) ) # ( \G14|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux10~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(5));

\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][5]~combout\) ) + ( !\G14|SAIDA\(5) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][5]~combout\) ) + ( !\G14|SAIDA\(5) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][5]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(5),
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

\G18|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(5) = ( \G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~21_sumout\ ) ) ) # ( !\G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~21_sumout\ ) ) ) # ( \G18|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~21_sumout\,
	datae => \G18|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(5));

\G7|Reg[0][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][5]~combout\ = ( \G7|Reg[0][5]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(5) ) ) ) # ( !\G7|Reg[0][5]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(5) ) ) ) # ( \G7|Reg[0][5]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(5),
	datae => \G7|ALT_INV_Reg[0][5]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][5]~combout\);

\G7|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux10~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][5]~combout\,
	combout => \G7|Mux10~0_combout\);

\G7|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~1_combout\ = (\G7|Reg[0][6]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][6]~combout\,
	combout => \G7|Mux25~1_combout\);

\G14|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(6) = ( \G14|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G14|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G14|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(6));

\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( (\G7|Reg[0][6]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(6) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( (\G7|Reg[0][6]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(6) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][6]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(6),
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

\G18|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(6) = ( \G18|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~25_sumout\ ) ) ) # ( !\G18|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~25_sumout\ ) ) ) # ( \G18|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~25_sumout\,
	datae => \G18|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(6));

\G7|Reg[0][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][6]~combout\ = ( \G7|Reg[0][6]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(6) ) ) ) # ( !\G7|Reg[0][6]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(6) ) ) ) # ( \G7|Reg[0][6]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(6),
	datae => \G7|ALT_INV_Reg[0][6]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][6]~combout\);

\G7|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux9~0_combout\ = (\G7|Reg[0][6]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][6]~combout\,
	combout => \G7|Mux9~0_combout\);

\G7|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux8~1_combout\ = (\G7|Reg[0][7]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][7]~combout\,
	combout => \G7|Mux8~1_combout\);

\G14|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(7) = ( \G14|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G7|Mux8~1_combout\ ) ) ) # ( !\G14|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G7|Mux8~1_combout\ ) ) ) # ( \G14|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux8~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(7));

\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][7]~combout\) ) + ( !\G14|SAIDA\(7) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][7]~combout\) ) + ( !\G14|SAIDA\(7) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][7]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

\G18|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(7) = ( \G18|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~29_sumout\ ) ) ) # ( !\G18|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~29_sumout\ ) ) ) # ( \G18|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~29_sumout\,
	datae => \G18|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(7));

\G7|Reg[0][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][7]~combout\ = ( \G7|Reg[0][7]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(7) ) ) ) # ( !\G7|Reg[0][7]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(7) ) ) ) # ( \G7|Reg[0][7]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(7),
	datae => \G7|ALT_INV_Reg[0][7]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][7]~combout\);

\G7|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux8~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][7]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][7]~combout\,
	combout => \G7|Mux8~0_combout\);

\G7|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~1_combout\ = (\G7|Reg[0][8]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][8]~combout\,
	combout => \G7|Mux23~1_combout\);

\G14|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(8) = ( \G14|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G14|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G14|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(8));

\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( (\G7|Reg[0][8]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(8) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( (\G7|Reg[0][8]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(8) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][8]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(8),
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

\G18|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(8) = ( \G18|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~33_sumout\ ) ) ) # ( !\G18|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~33_sumout\ ) ) ) # ( \G18|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~33_sumout\,
	datae => \G18|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(8));

\G7|Reg[0][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][8]~combout\ = ( \G7|Reg[0][8]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(8) ) ) ) # ( !\G7|Reg[0][8]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(8) ) ) ) # ( \G7|Reg[0][8]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(8),
	datae => \G7|ALT_INV_Reg[0][8]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][8]~combout\);

\G7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux7~0_combout\ = (\G7|Reg[0][8]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][8]~combout\,
	combout => \G7|Mux7~0_combout\);

\G7|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux6~1_combout\ = (\G7|Reg[0][9]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][9]~combout\,
	combout => \G7|Mux6~1_combout\);

\G14|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(9) = ( \G14|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G7|Mux6~1_combout\ ) ) ) # ( !\G14|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G7|Mux6~1_combout\ ) ) ) # ( \G14|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux6~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(9));

\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][9]~combout\) ) + ( !\G14|SAIDA\(9) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][9]~combout\) ) + ( !\G14|SAIDA\(9) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][9]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(9),
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

\G18|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(9) = ( \G18|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~37_sumout\ ) ) ) # ( !\G18|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~37_sumout\ ) ) ) # ( \G18|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~37_sumout\,
	datae => \G18|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(9));

\G7|Reg[0][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][9]~combout\ = ( \G7|Reg[0][9]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(9) ) ) ) # ( !\G7|Reg[0][9]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(9) ) ) ) # ( \G7|Reg[0][9]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(9),
	datae => \G7|ALT_INV_Reg[0][9]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][9]~combout\);

\G7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux6~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][9]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][9]~combout\,
	combout => \G7|Mux6~0_combout\);

\G7|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~1_combout\ = (\G7|Reg[0][10]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][10]~combout\,
	combout => \G7|Mux21~1_combout\);

\G14|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(10) = ( \G14|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G14|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G14|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(10));

\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( (\G7|Reg[0][10]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(10) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( (\G7|Reg[0][10]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(10) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][10]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

\G18|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(10) = ( \G18|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~41_sumout\ ) ) ) # ( !\G18|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~41_sumout\ ) ) ) # ( \G18|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~41_sumout\,
	datae => \G18|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(10));

\G7|Reg[0][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][10]~combout\ = ( \G7|Reg[0][10]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(10) ) ) ) # ( !\G7|Reg[0][10]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(10) ) ) ) # ( \G7|Reg[0][10]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(10),
	datae => \G7|ALT_INV_Reg[0][10]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][10]~combout\);

\G7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux5~0_combout\ = (\G7|Reg[0][10]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][10]~combout\,
	combout => \G7|Mux5~0_combout\);

\G7|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux4~1_combout\ = (\G7|Reg[0][11]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][11]~combout\,
	combout => \G7|Mux4~1_combout\);

\G14|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(11) = ( \G14|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G7|Mux4~1_combout\ ) ) ) # ( !\G14|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G7|Mux4~1_combout\ ) ) ) # ( \G14|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux4~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(11));

\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][11]~combout\) ) + ( !\G14|SAIDA\(11) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][11]~combout\) ) + ( !\G14|SAIDA\(11) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][11]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(11),
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

\G18|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(11) = ( \G18|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~45_sumout\ ) ) ) # ( !\G18|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~45_sumout\ ) ) ) # ( \G18|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~45_sumout\,
	datae => \G18|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(11));

\G7|Reg[0][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][11]~combout\ = ( \G7|Reg[0][11]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(11) ) ) ) # ( !\G7|Reg[0][11]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(11) ) ) ) # ( \G7|Reg[0][11]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(11),
	datae => \G7|ALT_INV_Reg[0][11]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][11]~combout\);

\G7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux4~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][11]~combout\,
	combout => \G7|Mux4~0_combout\);

\G7|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~1_combout\ = (\G7|Reg[0][12]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][12]~combout\,
	combout => \G7|Mux19~1_combout\);

\G14|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(12) = ( \G14|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G14|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G14|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(12));

\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( (\G7|Reg[0][12]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(12) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( (\G7|Reg[0][12]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(12) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][12]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

\G18|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(12) = ( \G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~49_sumout\ ) ) ) # ( !\G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~49_sumout\ ) ) ) # ( \G18|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~49_sumout\,
	datae => \G18|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(12));

\G7|Reg[0][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][12]~combout\ = ( \G7|Reg[0][12]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(12) ) ) ) # ( !\G7|Reg[0][12]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(12) ) ) ) # ( \G7|Reg[0][12]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(12),
	datae => \G7|ALT_INV_Reg[0][12]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][12]~combout\);

\G7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux3~0_combout\ = (\G7|Reg[0][12]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][12]~combout\,
	combout => \G7|Mux3~0_combout\);

\G7|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux2~1_combout\ = (\G7|Reg[0][13]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][13]~combout\,
	combout => \G7|Mux2~1_combout\);

\G14|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(13) = ( \G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G7|Mux2~1_combout\ ) ) ) # ( !\G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G7|Mux2~1_combout\ ) ) ) # ( \G14|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux2~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(13));

\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][13]~combout\) ) + ( !\G14|SAIDA\(13) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][13]~combout\) ) + ( !\G14|SAIDA\(13) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][13]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

\G18|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(13) = ( \G18|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~53_sumout\ ) ) ) # ( !\G18|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~53_sumout\ ) ) ) # ( \G18|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~53_sumout\,
	datae => \G18|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(13));

\G7|Reg[0][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][13]~combout\ = ( \G7|Reg[0][13]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(13) ) ) ) # ( !\G7|Reg[0][13]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(13) ) ) ) # ( \G7|Reg[0][13]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(13),
	datae => \G7|ALT_INV_Reg[0][13]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][13]~combout\);

\G7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux2~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][13]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][13]~combout\,
	combout => \G7|Mux2~0_combout\);

\G7|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~1_combout\ = (\G7|Reg[0][14]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][14]~combout\,
	combout => \G7|Mux17~1_combout\);

\G14|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(14) = ( \G14|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G14|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G14|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(14));

\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( (\G7|Reg[0][14]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(14) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( (\G7|Reg[0][14]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( !\G14|SAIDA\(14) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][14]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

\G18|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(14) = ( \G18|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~57_sumout\ ) ) ) # ( !\G18|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~57_sumout\ ) ) ) # ( \G18|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~57_sumout\,
	datae => \G18|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(14));

\G7|Reg[0][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][14]~combout\ = ( \G7|Reg[0][14]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(14) ) ) ) # ( !\G7|Reg[0][14]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(14) ) ) ) # ( \G7|Reg[0][14]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(14),
	datae => \G7|ALT_INV_Reg[0][14]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][14]~combout\);

\G7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux1~0_combout\ = (\G7|Reg[0][14]~combout\ & ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][14]~combout\,
	combout => \G7|Mux1~0_combout\);

\G7|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux0~1_combout\ = (\G7|Reg[0][15]~combout\) # (\G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[0][15]~combout\,
	combout => \G7|Mux0~1_combout\);

\G14|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(15) = ( \G14|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G7|Mux0~1_combout\ ) ) ) # ( !\G14|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G7|Mux0~1_combout\ ) ) ) # ( \G14|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux0~1_combout\,
	datae => \G14|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(15));

\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][15]~combout\) ) + ( !\G14|SAIDA\(15) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Reg[0][15]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

\G18|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(15) = ( \G18|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~61_sumout\ ) ) ) # ( !\G18|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G16|Add0~61_sumout\ ) ) ) # ( \G18|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G16|ALT_INV_Add0~61_sumout\,
	datae => \G18|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(15));

\G7|Reg[0][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][15]~combout\ = ( \G7|Reg[0][15]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(15) ) ) ) # ( !\G7|Reg[0][15]~combout\ & ( \G7|Decoder0~0_combout\ & ( \G18|SAIDA\(15) ) ) ) # ( \G7|Reg[0][15]~combout\ & ( !\G7|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(15),
	datae => \G7|ALT_INV_Reg[0][15]~combout\,
	dataf => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Reg[0][15]~combout\);

\G7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux0~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][15]~combout\,
	combout => \G7|Mux0~0_combout\);

\G7|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][1]~combout\,
	combout => \G7|Mux30~0_combout\);

\G7|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][2]~combout\,
	combout => \G7|Mux29~0_combout\);

\G7|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][6]~combout\,
	combout => \G7|Mux25~0_combout\);

\G7|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][8]~combout\,
	combout => \G7|Mux23~0_combout\);

\G7|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][10]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][10]~combout\,
	combout => \G7|Mux21~0_combout\);

\G7|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][12]~combout\,
	combout => \G7|Mux19~0_combout\);

\G7|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~0_combout\ = ((\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)) # (\G7|Reg[0][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G7|ALT_INV_Reg[0][14]~combout\,
	combout => \G7|Mux17~0_combout\);

\G4|rd[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[1]~0_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G4|rd[1]~0_combout\);

ww_SomadorToPc_outWaveform(0) <= \SomadorToPc_outWaveform[0]~output_o\;

ww_SomadorToPc_outWaveform(1) <= \SomadorToPc_outWaveform[1]~output_o\;

ww_SomadorToPc_outWaveform(2) <= \SomadorToPc_outWaveform[2]~output_o\;

ww_SomadorToPc_outWaveform(3) <= \SomadorToPc_outWaveform[3]~output_o\;

ww_SomadorToPc_outWaveform(4) <= \SomadorToPc_outWaveform[4]~output_o\;

ww_SomadorToPc_outWaveform(5) <= \SomadorToPc_outWaveform[5]~output_o\;

ww_SomadorToPc_outWaveform(6) <= \SomadorToPc_outWaveform[6]~output_o\;

ww_SomadorToPc_outWaveform(7) <= \SomadorToPc_outWaveform[7]~output_o\;

ww_SomadorToPc_outWaveform(8) <= \SomadorToPc_outWaveform[8]~output_o\;

ww_SomadorToPc_outWaveform(9) <= \SomadorToPc_outWaveform[9]~output_o\;

ww_SomadorToPc_outWaveform(10) <= \SomadorToPc_outWaveform[10]~output_o\;

ww_SomadorToPc_outWaveform(11) <= \SomadorToPc_outWaveform[11]~output_o\;

ww_SomadorToPc_outWaveform(12) <= \SomadorToPc_outWaveform[12]~output_o\;

ww_SomadorToPc_outWaveform(13) <= \SomadorToPc_outWaveform[13]~output_o\;

ww_SomadorToPc_outWaveform(14) <= \SomadorToPc_outWaveform[14]~output_o\;

ww_SomadorToPc_outWaveform(15) <= \SomadorToPc_outWaveform[15]~output_o\;

ww_SaidaPc_outWaveform(0) <= \SaidaPc_outWaveform[0]~output_o\;

ww_SaidaPc_outWaveform(1) <= \SaidaPc_outWaveform[1]~output_o\;

ww_SaidaPc_outWaveform(2) <= \SaidaPc_outWaveform[2]~output_o\;

ww_SaidaPc_outWaveform(3) <= \SaidaPc_outWaveform[3]~output_o\;

ww_SaidaPc_outWaveform(4) <= \SaidaPc_outWaveform[4]~output_o\;

ww_SaidaPc_outWaveform(5) <= \SaidaPc_outWaveform[5]~output_o\;

ww_SaidaPc_outWaveform(6) <= \SaidaPc_outWaveform[6]~output_o\;

ww_SaidaPc_outWaveform(7) <= \SaidaPc_outWaveform[7]~output_o\;

ww_SaidaPc_outWaveform(8) <= \SaidaPc_outWaveform[8]~output_o\;

ww_SaidaPc_outWaveform(9) <= \SaidaPc_outWaveform[9]~output_o\;

ww_SaidaPc_outWaveform(10) <= \SaidaPc_outWaveform[10]~output_o\;

ww_SaidaPc_outWaveform(11) <= \SaidaPc_outWaveform[11]~output_o\;

ww_SaidaPc_outWaveform(12) <= \SaidaPc_outWaveform[12]~output_o\;

ww_SaidaPc_outWaveform(13) <= \SaidaPc_outWaveform[13]~output_o\;

ww_SaidaPc_outWaveform(14) <= \SaidaPc_outWaveform[14]~output_o\;

ww_SaidaPc_outWaveform(15) <= \SaidaPc_outWaveform[15]~output_o\;

ww_SaidaRegA_outWaveform(0) <= \SaidaRegA_outWaveform[0]~output_o\;

ww_SaidaRegA_outWaveform(1) <= \SaidaRegA_outWaveform[1]~output_o\;

ww_SaidaRegA_outWaveform(2) <= \SaidaRegA_outWaveform[2]~output_o\;

ww_SaidaRegA_outWaveform(3) <= \SaidaRegA_outWaveform[3]~output_o\;

ww_SaidaRegA_outWaveform(4) <= \SaidaRegA_outWaveform[4]~output_o\;

ww_SaidaRegA_outWaveform(5) <= \SaidaRegA_outWaveform[5]~output_o\;

ww_SaidaRegA_outWaveform(6) <= \SaidaRegA_outWaveform[6]~output_o\;

ww_SaidaRegA_outWaveform(7) <= \SaidaRegA_outWaveform[7]~output_o\;

ww_SaidaRegA_outWaveform(8) <= \SaidaRegA_outWaveform[8]~output_o\;

ww_SaidaRegA_outWaveform(9) <= \SaidaRegA_outWaveform[9]~output_o\;

ww_SaidaRegA_outWaveform(10) <= \SaidaRegA_outWaveform[10]~output_o\;

ww_SaidaRegA_outWaveform(11) <= \SaidaRegA_outWaveform[11]~output_o\;

ww_SaidaRegA_outWaveform(12) <= \SaidaRegA_outWaveform[12]~output_o\;

ww_SaidaRegA_outWaveform(13) <= \SaidaRegA_outWaveform[13]~output_o\;

ww_SaidaRegA_outWaveform(14) <= \SaidaRegA_outWaveform[14]~output_o\;

ww_SaidaRegA_outWaveform(15) <= \SaidaRegA_outWaveform[15]~output_o\;

ww_SaidaRegB_outWaveform(0) <= \SaidaRegB_outWaveform[0]~output_o\;

ww_SaidaRegB_outWaveform(1) <= \SaidaRegB_outWaveform[1]~output_o\;

ww_SaidaRegB_outWaveform(2) <= \SaidaRegB_outWaveform[2]~output_o\;

ww_SaidaRegB_outWaveform(3) <= \SaidaRegB_outWaveform[3]~output_o\;

ww_SaidaRegB_outWaveform(4) <= \SaidaRegB_outWaveform[4]~output_o\;

ww_SaidaRegB_outWaveform(5) <= \SaidaRegB_outWaveform[5]~output_o\;

ww_SaidaRegB_outWaveform(6) <= \SaidaRegB_outWaveform[6]~output_o\;

ww_SaidaRegB_outWaveform(7) <= \SaidaRegB_outWaveform[7]~output_o\;

ww_SaidaRegB_outWaveform(8) <= \SaidaRegB_outWaveform[8]~output_o\;

ww_SaidaRegB_outWaveform(9) <= \SaidaRegB_outWaveform[9]~output_o\;

ww_SaidaRegB_outWaveform(10) <= \SaidaRegB_outWaveform[10]~output_o\;

ww_SaidaRegB_outWaveform(11) <= \SaidaRegB_outWaveform[11]~output_o\;

ww_SaidaRegB_outWaveform(12) <= \SaidaRegB_outWaveform[12]~output_o\;

ww_SaidaRegB_outWaveform(13) <= \SaidaRegB_outWaveform[13]~output_o\;

ww_SaidaRegB_outWaveform(14) <= \SaidaRegB_outWaveform[14]~output_o\;

ww_SaidaRegB_outWaveform(15) <= \SaidaRegB_outWaveform[15]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(0) <= \multiplexador_to_writeRegister_outWaveform[0]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(1) <= \multiplexador_to_writeRegister_outWaveform[1]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(2) <= \multiplexador_to_writeRegister_outWaveform[2]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(0) <= \Instruction_to_multiplexador_outWaveform[0]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(1) <= \Instruction_to_multiplexador_outWaveform[1]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(2) <= \Instruction_to_multiplexador_outWaveform[2]~output_o\;

ww_Instruction_to_Control_outWaveform(0) <= \Instruction_to_Control_outWaveform[0]~output_o\;

ww_Instruction_to_Control_outWaveform(1) <= \Instruction_to_Control_outWaveform[1]~output_o\;

ww_Instruction_to_Control_outWaveform(2) <= \Instruction_to_Control_outWaveform[2]~output_o\;

ww_Instruction_to_Control_outWaveform(3) <= \Instruction_to_Control_outWaveform[3]~output_o\;

ww_Instruction_to_register1_outWaveform(0) <= \Instruction_to_register1_outWaveform[0]~output_o\;

ww_Instruction_to_register1_outWaveform(1) <= \Instruction_to_register1_outWaveform[1]~output_o\;

ww_Instruction_to_register1_outWaveform(2) <= \Instruction_to_register1_outWaveform[2]~output_o\;

ww_Instruction_to_register2_outWaveform(0) <= \Instruction_to_register2_outWaveform[0]~output_o\;

ww_Instruction_to_register2_outWaveform(1) <= \Instruction_to_register2_outWaveform[1]~output_o\;

ww_Instruction_to_register2_outWaveform(2) <= \Instruction_to_register2_outWaveform[2]~output_o\;

ww_Instruction_to_controlULA_outWaveform(0) <= \Instruction_to_controlULA_outWaveform[0]~output_o\;

ww_Instruction_to_controlULA_outWaveform(1) <= \Instruction_to_controlULA_outWaveform[1]~output_o\;

ww_Instruction_to_controlULA_outWaveform(2) <= \Instruction_to_controlULA_outWaveform[2]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(0) <= \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(1) <= \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(2) <= \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(3) <= \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(4) <= \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(5) <= \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\;

ww_Instruction_to_Jump_outWaveform(0) <= \Instruction_to_Jump_outWaveform[0]~output_o\;

ww_Instruction_to_Jump_outWaveform(1) <= \Instruction_to_Jump_outWaveform[1]~output_o\;

ww_Instruction_to_Jump_outWaveform(2) <= \Instruction_to_Jump_outWaveform[2]~output_o\;

ww_Instruction_to_Jump_outWaveform(3) <= \Instruction_to_Jump_outWaveform[3]~output_o\;

ww_Instruction_to_Jump_outWaveform(4) <= \Instruction_to_Jump_outWaveform[4]~output_o\;

ww_Instruction_to_Jump_outWaveform(5) <= \Instruction_to_Jump_outWaveform[5]~output_o\;

ww_Instruction_to_Jump_outWaveform(6) <= \Instruction_to_Jump_outWaveform[6]~output_o\;

ww_Instruction_to_Jump_outWaveform(7) <= \Instruction_to_Jump_outWaveform[7]~output_o\;

ww_Instruction_to_Jump_outWaveform(8) <= \Instruction_to_Jump_outWaveform[8]~output_o\;

ww_Instruction_to_Jump_outWaveform(9) <= \Instruction_to_Jump_outWaveform[9]~output_o\;

ww_Instruction_to_Jump_outWaveform(10) <= \Instruction_to_Jump_outWaveform[10]~output_o\;

ww_Instruction_to_Jump_outWaveform(11) <= \Instruction_to_Jump_outWaveform[11]~output_o\;

ww_out_Saida_OperacaoDaULA(0) <= \out_Saida_OperacaoDaULA[0]~output_o\;

ww_out_Saida_OperacaoDaULA(1) <= \out_Saida_OperacaoDaULA[1]~output_o\;

ww_out_Saida_OperacaoDaULA(2) <= \out_Saida_OperacaoDaULA[2]~output_o\;

ww_out_Saida_OperacaoDaULA(3) <= \out_Saida_OperacaoDaULA[3]~output_o\;

ww_out_Saida_OperacaoDaULA(4) <= \out_Saida_OperacaoDaULA[4]~output_o\;

ww_out_Saida_OperacaoDaULA(5) <= \out_Saida_OperacaoDaULA[5]~output_o\;

ww_out_Saida_OperacaoDaULA(6) <= \out_Saida_OperacaoDaULA[6]~output_o\;

ww_Data_to_writeRegister_outWaveform(0) <= \Data_to_writeRegister_outWaveform[0]~output_o\;

ww_Data_to_writeRegister_outWaveform(1) <= \Data_to_writeRegister_outWaveform[1]~output_o\;

ww_Data_to_writeRegister_outWaveform(2) <= \Data_to_writeRegister_outWaveform[2]~output_o\;

ww_Data_to_writeRegister_outWaveform(3) <= \Data_to_writeRegister_outWaveform[3]~output_o\;

ww_Data_to_writeRegister_outWaveform(4) <= \Data_to_writeRegister_outWaveform[4]~output_o\;

ww_Data_to_writeRegister_outWaveform(5) <= \Data_to_writeRegister_outWaveform[5]~output_o\;

ww_Data_to_writeRegister_outWaveform(6) <= \Data_to_writeRegister_outWaveform[6]~output_o\;

ww_Data_to_writeRegister_outWaveform(7) <= \Data_to_writeRegister_outWaveform[7]~output_o\;

ww_Data_to_writeRegister_outWaveform(8) <= \Data_to_writeRegister_outWaveform[8]~output_o\;

ww_Data_to_writeRegister_outWaveform(9) <= \Data_to_writeRegister_outWaveform[9]~output_o\;

ww_Data_to_writeRegister_outWaveform(10) <= \Data_to_writeRegister_outWaveform[10]~output_o\;

ww_Data_to_writeRegister_outWaveform(11) <= \Data_to_writeRegister_outWaveform[11]~output_o\;

ww_Data_to_writeRegister_outWaveform(12) <= \Data_to_writeRegister_outWaveform[12]~output_o\;

ww_Data_to_writeRegister_outWaveform(13) <= \Data_to_writeRegister_outWaveform[13]~output_o\;

ww_Data_to_writeRegister_outWaveform(14) <= \Data_to_writeRegister_outWaveform[14]~output_o\;

ww_Data_to_writeRegister_outWaveform(15) <= \Data_to_writeRegister_outWaveform[15]~output_o\;

ww_Saida_mult_to_mult_outWaveform(0) <= \Saida_mult_to_mult_outWaveform[0]~output_o\;

ww_Saida_mult_to_mult_outWaveform(1) <= \Saida_mult_to_mult_outWaveform[1]~output_o\;

ww_Saida_mult_to_mult_outWaveform(2) <= \Saida_mult_to_mult_outWaveform[2]~output_o\;

ww_Saida_mult_to_mult_outWaveform(3) <= \Saida_mult_to_mult_outWaveform[3]~output_o\;

ww_Saida_mult_to_mult_outWaveform(4) <= \Saida_mult_to_mult_outWaveform[4]~output_o\;

ww_Saida_mult_to_mult_outWaveform(5) <= \Saida_mult_to_mult_outWaveform[5]~output_o\;

ww_Saida_mult_to_mult_outWaveform(6) <= \Saida_mult_to_mult_outWaveform[6]~output_o\;

ww_Saida_mult_to_mult_outWaveform(7) <= \Saida_mult_to_mult_outWaveform[7]~output_o\;

ww_Saida_mult_to_mult_outWaveform(8) <= \Saida_mult_to_mult_outWaveform[8]~output_o\;

ww_Saida_mult_to_mult_outWaveform(9) <= \Saida_mult_to_mult_outWaveform[9]~output_o\;

ww_Saida_mult_to_mult_outWaveform(10) <= \Saida_mult_to_mult_outWaveform[10]~output_o\;

ww_Saida_mult_to_mult_outWaveform(11) <= \Saida_mult_to_mult_outWaveform[11]~output_o\;

ww_Saida_mult_to_mult_outWaveform(12) <= \Saida_mult_to_mult_outWaveform[12]~output_o\;

ww_Saida_mult_to_mult_outWaveform(13) <= \Saida_mult_to_mult_outWaveform[13]~output_o\;

ww_Saida_mult_to_mult_outWaveform(14) <= \Saida_mult_to_mult_outWaveform[14]~output_o\;

ww_Saida_mult_to_mult_outWaveform(15) <= \Saida_mult_to_mult_outWaveform[15]~output_o\;

ww_Saida_to_PC_outWaveform(0) <= \Saida_to_PC_outWaveform[0]~output_o\;

ww_Saida_to_PC_outWaveform(1) <= \Saida_to_PC_outWaveform[1]~output_o\;

ww_Saida_to_PC_outWaveform(2) <= \Saida_to_PC_outWaveform[2]~output_o\;

ww_Saida_to_PC_outWaveform(3) <= \Saida_to_PC_outWaveform[3]~output_o\;

ww_Saida_to_PC_outWaveform(4) <= \Saida_to_PC_outWaveform[4]~output_o\;

ww_Saida_to_PC_outWaveform(5) <= \Saida_to_PC_outWaveform[5]~output_o\;

ww_Saida_to_PC_outWaveform(6) <= \Saida_to_PC_outWaveform[6]~output_o\;

ww_Saida_to_PC_outWaveform(7) <= \Saida_to_PC_outWaveform[7]~output_o\;

ww_Saida_to_PC_outWaveform(8) <= \Saida_to_PC_outWaveform[8]~output_o\;

ww_Saida_to_PC_outWaveform(9) <= \Saida_to_PC_outWaveform[9]~output_o\;

ww_Saida_to_PC_outWaveform(10) <= \Saida_to_PC_outWaveform[10]~output_o\;

ww_Saida_to_PC_outWaveform(11) <= \Saida_to_PC_outWaveform[11]~output_o\;

ww_Saida_to_PC_outWaveform(12) <= \Saida_to_PC_outWaveform[12]~output_o\;

ww_Saida_to_PC_outWaveform(13) <= \Saida_to_PC_outWaveform[13]~output_o\;

ww_Saida_to_PC_outWaveform(14) <= \Saida_to_PC_outWaveform[14]~output_o\;

ww_Saida_to_PC_outWaveform(15) <= \Saida_to_PC_outWaveform[15]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(0) <= \Saida_adress_to_RAM_outWaveform[0]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(1) <= \Saida_adress_to_RAM_outWaveform[1]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(2) <= \Saida_adress_to_RAM_outWaveform[2]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(3) <= \Saida_adress_to_RAM_outWaveform[3]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(4) <= \Saida_adress_to_RAM_outWaveform[4]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(5) <= \Saida_adress_to_RAM_outWaveform[5]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(6) <= \Saida_adress_to_RAM_outWaveform[6]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(7) <= \Saida_adress_to_RAM_outWaveform[7]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(8) <= \Saida_adress_to_RAM_outWaveform[8]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(9) <= \Saida_adress_to_RAM_outWaveform[9]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(10) <= \Saida_adress_to_RAM_outWaveform[10]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(11) <= \Saida_adress_to_RAM_outWaveform[11]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(12) <= \Saida_adress_to_RAM_outWaveform[12]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(13) <= \Saida_adress_to_RAM_outWaveform[13]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(14) <= \Saida_adress_to_RAM_outWaveform[14]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(15) <= \Saida_adress_to_RAM_outWaveform[15]~output_o\;

ww_Flag_regdest_OUT <= \Flag_regdest_OUT~output_o\;

ww_Flag_origialu_OUT(0) <= \Flag_origialu_OUT[0]~output_o\;

ww_Flag_origialu_OUT(1) <= \Flag_origialu_OUT[1]~output_o\;

ww_Flag_origialu_OUT(2) <= \Flag_origialu_OUT[2]~output_o\;

ww_Flag_origialu_OUT(3) <= \Flag_origialu_OUT[3]~output_o\;

ww_Flag_memparareg_OUT <= \Flag_memparareg_OUT~output_o\;

ww_Flag_escrevereg_OUT <= \Flag_escrevereg_OUT~output_o\;

ww_Flag_lemem_OUT <= \Flag_lemem_OUT~output_o\;

ww_Flag_escrevemem_OUT <= \Flag_escrevemem_OUT~output_o\;

ww_Flag_branch_OUT <= \Flag_branch_OUT~output_o\;

ww_Flag_aluSRC_OUT <= \Flag_aluSRC_OUT~output_o\;

ww_Flag_jump_OUT <= \Flag_jump_OUT~output_o\;

ww_Saida_ula(0) <= \Saida_ula[0]~output_o\;

ww_Saida_ula(1) <= \Saida_ula[1]~output_o\;

ww_Saida_ula(2) <= \Saida_ula[2]~output_o\;

ww_Saida_ula(3) <= \Saida_ula[3]~output_o\;

ww_Saida_ula(4) <= \Saida_ula[4]~output_o\;

ww_Saida_ula(5) <= \Saida_ula[5]~output_o\;

ww_Saida_ula(6) <= \Saida_ula[6]~output_o\;

ww_Saida_ula(7) <= \Saida_ula[7]~output_o\;

ww_Saida_ula(8) <= \Saida_ula[8]~output_o\;

ww_Saida_ula(9) <= \Saida_ula[9]~output_o\;

ww_Saida_ula(10) <= \Saida_ula[10]~output_o\;

ww_Saida_ula(11) <= \Saida_ula[11]~output_o\;

ww_Saida_ula(12) <= \Saida_ula[12]~output_o\;

ww_Saida_ula(13) <= \Saida_ula[13]~output_o\;

ww_Saida_ula(14) <= \Saida_ula[14]~output_o\;

ww_Saida_ula(15) <= \Saida_ula[15]~output_o\;

ww_dado_register_destino(0) <= \dado_register_destino[0]~output_o\;

ww_dado_register_destino(1) <= \dado_register_destino[1]~output_o\;

ww_dado_register_destino(2) <= \dado_register_destino[2]~output_o\;

ww_dado_register_destino(3) <= \dado_register_destino[3]~output_o\;

ww_dado_register_destino(4) <= \dado_register_destino[4]~output_o\;

ww_dado_register_destino(5) <= \dado_register_destino[5]~output_o\;

ww_dado_register_destino(6) <= \dado_register_destino[6]~output_o\;

ww_dado_register_destino(7) <= \dado_register_destino[7]~output_o\;

ww_dado_register_destino(8) <= \dado_register_destino[8]~output_o\;

ww_dado_register_destino(9) <= \dado_register_destino[9]~output_o\;

ww_dado_register_destino(10) <= \dado_register_destino[10]~output_o\;

ww_dado_register_destino(11) <= \dado_register_destino[11]~output_o\;

ww_dado_register_destino(12) <= \dado_register_destino[12]~output_o\;

ww_dado_register_destino(13) <= \dado_register_destino[13]~output_o\;

ww_dado_register_destino(14) <= \dado_register_destino[14]~output_o\;

ww_dado_register_destino(15) <= \dado_register_destino[15]~output_o\;
END structure;


