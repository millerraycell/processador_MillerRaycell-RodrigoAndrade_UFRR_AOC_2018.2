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

-- DATE "12/02/2018 22:10:43"

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
	saida_cont_sincz1 : BUFFER std_logic;
	saida_cont_sincz2 : BUFFER std_logic;
	saida_cont_sincz3 : BUFFER std_logic;
	funcionou : BUFFER std_logic;
	Flag_regdest_OUT : BUFFER std_logic;
	Flag_origialu_OUT : BUFFER std_logic_vector(3 DOWNTO 0);
	Flag_memparareg_OUT : BUFFER std_logic;
	Flag_escrevereg_OUT : BUFFER std_logic;
	Flag_lemem_OUT : BUFFER std_logic;
	Flag_escrevemem_OUT : BUFFER std_logic;
	Flag_branch_OUT : BUFFER std_logic;
	Flag_aluSRC_OUT : BUFFER std_logic;
	Flag_jump_OUT : BUFFER std_logic
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
SIGNAL ww_saida_cont_sincz1 : std_logic;
SIGNAL ww_saida_cont_sincz2 : std_logic;
SIGNAL ww_saida_cont_sincz3 : std_logic;
SIGNAL ww_funcionou : std_logic;
SIGNAL ww_Flag_regdest_OUT : std_logic;
SIGNAL ww_Flag_origialu_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Flag_memparareg_OUT : std_logic;
SIGNAL ww_Flag_escrevereg_OUT : std_logic;
SIGNAL ww_Flag_lemem_OUT : std_logic;
SIGNAL ww_Flag_escrevemem_OUT : std_logic;
SIGNAL ww_Flag_branch_OUT : std_logic;
SIGNAL ww_Flag_aluSRC_OUT : std_logic;
SIGNAL ww_Flag_jump_OUT : std_logic;
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
SIGNAL \saida_cont_sincz1~output_o\ : std_logic;
SIGNAL \saida_cont_sincz2~output_o\ : std_logic;
SIGNAL \saida_cont_sincz3~output_o\ : std_logic;
SIGNAL \funcionou~output_o\ : std_logic;
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
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G5|origalu[2]~1_combout\ : std_logic;
SIGNAL \G5|regdest~0_combout\ : std_logic;
SIGNAL \G11|S1~1_combout\ : std_logic;
SIGNAL \G4|Mux0~4_combout\ : std_logic;
SIGNAL \G4|Mux7~0_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~1_combout\ : std_logic;
SIGNAL \G4|Mux2~0_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~0_combout\ : std_logic;
SIGNAL \G10|Add0~2\ : std_logic;
SIGNAL \G10|Add0~6\ : std_logic;
SIGNAL \G10|Add0~10\ : std_logic;
SIGNAL \G10|Add0~13_sumout\ : std_logic;
SIGNAL \G12|SAIDA~5_combout\ : std_logic;
SIGNAL \G13|SAIDA~5_combout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G10|Add0~14\ : std_logic;
SIGNAL \G10|Add0~17_sumout\ : std_logic;
SIGNAL \G12|SAIDA~6_combout\ : std_logic;
SIGNAL \G13|SAIDA~6_combout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G10|Add0~18\ : std_logic;
SIGNAL \G10|Add0~21_sumout\ : std_logic;
SIGNAL \G12|SAIDA~7_combout\ : std_logic;
SIGNAL \G13|SAIDA~7_combout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G10|Add0~22\ : std_logic;
SIGNAL \G10|Add0~25_sumout\ : std_logic;
SIGNAL \G12|SAIDA~8_combout\ : std_logic;
SIGNAL \G13|SAIDA~8_combout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G10|Add0~26\ : std_logic;
SIGNAL \G10|Add0~29_sumout\ : std_logic;
SIGNAL \G12|SAIDA~9_combout\ : std_logic;
SIGNAL \G13|SAIDA~9_combout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G10|Add0~30\ : std_logic;
SIGNAL \G10|Add0~33_sumout\ : std_logic;
SIGNAL \G12|SAIDA~10_combout\ : std_logic;
SIGNAL \G13|SAIDA~10_combout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G10|Add0~34\ : std_logic;
SIGNAL \G10|Add0~37_sumout\ : std_logic;
SIGNAL \G12|SAIDA~11_combout\ : std_logic;
SIGNAL \G13|SAIDA~11_combout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G10|Add0~38\ : std_logic;
SIGNAL \G10|Add0~41_sumout\ : std_logic;
SIGNAL \G12|SAIDA~12_combout\ : std_logic;
SIGNAL \G13|SAIDA~12_combout\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G10|Add0~42\ : std_logic;
SIGNAL \G10|Add0~45_sumout\ : std_logic;
SIGNAL \G12|SAIDA~13_combout\ : std_logic;
SIGNAL \G13|SAIDA~13_combout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G10|Add0~46\ : std_logic;
SIGNAL \G10|Add0~49_sumout\ : std_logic;
SIGNAL \G12|SAIDA~14_combout\ : std_logic;
SIGNAL \G13|SAIDA~14_combout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G10|Add0~50\ : std_logic;
SIGNAL \G10|Add0~53_sumout\ : std_logic;
SIGNAL \G12|SAIDA~15_combout\ : std_logic;
SIGNAL \G13|SAIDA~15_combout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G4|rs[0]~1_combout\ : std_logic;
SIGNAL \G4|op[0]~0_combout\ : std_logic;
SIGNAL \G5|origalu[1]~0_combout\ : std_logic;
SIGNAL \G11|S1~0_combout\ : std_logic;
SIGNAL \G10|Add0~1_sumout\ : std_logic;
SIGNAL \G12|SAIDA~2_combout\ : std_logic;
SIGNAL \G13|SAIDA~2_combout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G10|Add0~5_sumout\ : std_logic;
SIGNAL \G12|SAIDA~3_combout\ : std_logic;
SIGNAL \G13|SAIDA~3_combout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G10|Add0~9_sumout\ : std_logic;
SIGNAL \G12|SAIDA~4_combout\ : std_logic;
SIGNAL \G13|SAIDA~4_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G4|Mux7~1_combout\ : std_logic;
SIGNAL \G16|Mux14~0_combout\ : std_logic;
SIGNAL \G4|funct[0]~0_combout\ : std_logic;
SIGNAL \G16|Mux14~1_combout\ : std_logic;
SIGNAL \G5|Equal1~0_combout\ : std_logic;
SIGNAL \G5|memparareg~combout\ : std_logic;
SIGNAL \G5|escrevereg~combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~2_combout\ : std_logic;
SIGNAL \G5|regdest~combout\ : std_logic;
SIGNAL \G7|Mux27~2_combout\ : std_logic;
SIGNAL \G14|SAIDA~1_combout\ : std_logic;
SIGNAL \G4|Equal0~0_combout\ : std_logic;
SIGNAL \G14|SAIDA~6_combout\ : std_logic;
SIGNAL \G14|SAIDA~8_combout\ : std_logic;
SIGNAL \G14|SAIDA~7_combout\ : std_logic;
SIGNAL \G7|Decoder0~0_combout\ : std_logic;
SIGNAL \G18|SAIDA~2_combout\ : std_logic;
SIGNAL \G6|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|rs[1]~0_combout\ : std_logic;
SIGNAL \G6|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G6|SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G6|SAIDA[2]~3_combout\ : std_logic;
SIGNAL \G4|rt[0]~0_combout\ : std_logic;
SIGNAL \G7|Mux29~0_combout\ : std_logic;
SIGNAL \G7|Mux29~1_combout\ : std_logic;
SIGNAL \G7|Mux31~0_combout\ : std_logic;
SIGNAL \G7|Mux31~1_combout\ : std_logic;
SIGNAL \G17|ram~80_combout\ : std_logic;
SIGNAL \G7|Mux30~0_combout\ : std_logic;
SIGNAL \G7|Mux30~1_combout\ : std_logic;
SIGNAL \G17|ram~81_combout\ : std_logic;
SIGNAL \G17|ram~113_combout\ : std_logic;
SIGNAL \G7|Mux12~0_combout\ : std_logic;
SIGNAL \G14|SAIDA~4_combout\ : std_logic;
SIGNAL \G14|SAIDA~5_combout\ : std_logic;
SIGNAL \G14|SAIDA~3_combout\ : std_logic;
SIGNAL \G14|SAIDA~0_combout\ : std_logic;
SIGNAL \G14|SAIDA~2_combout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G16|Mux12~0_combout\ : std_logic;
SIGNAL \G7|Mux11~0_combout\ : std_logic;
SIGNAL \G16|Mux11~0_combout\ : std_logic;
SIGNAL \G7|Mux13~0_combout\ : std_logic;
SIGNAL \G16|Add1~66_cout\ : std_logic;
SIGNAL \G16|Add1~2\ : std_logic;
SIGNAL \G16|Add1~6\ : std_logic;
SIGNAL \G16|Add1~9_sumout\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G16|Mux13~0_combout\ : std_logic;
SIGNAL \G17|ram.we_a~0_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \G17|ram~97_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \G17|ram~17_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \G17|ram~49_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \G17|ram~33_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \G17|ram~1_combout\ : std_logic;
SIGNAL \G17|ram~409_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \G17|ram~65_combout\ : std_logic;
SIGNAL \G17|ram~281_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \G17|ram~209_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \G17|ram~241_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \G17|ram~225_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \G17|ram~145_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \G17|ram~177_combout\ : std_logic;
SIGNAL \rtl~16_combout\ : std_logic;
SIGNAL \G17|ram~161_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \G17|ram~129_combout\ : std_logic;
SIGNAL \G17|ram~413_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \G17|ram~193_combout\ : std_logic;
SIGNAL \G17|ram~285_combout\ : std_logic;
SIGNAL \G16|Mux12~1_combout\ : std_logic;
SIGNAL \G18|SAIDA~0_combout\ : std_logic;
SIGNAL \G16|Add1~5_sumout\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G16|Mux14~3_combout\ : std_logic;
SIGNAL \G16|Mux14~4_combout\ : std_logic;
SIGNAL \G16|Add1~1_sumout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G4|rd[0]~1_combout\ : std_logic;
SIGNAL \G7|Mux15~1_combout\ : std_logic;
SIGNAL \G16|Mux15~1_combout\ : std_logic;
SIGNAL \G16|Mux15~2_combout\ : std_logic;
SIGNAL \G16|Mux13~1_combout\ : std_logic;
SIGNAL \G17|ram~280_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \G17|ram~257_combout\ : std_logic;
SIGNAL \G18|SAIDA~6_combout\ : std_logic;
SIGNAL \G18|SAIDA~7_combout\ : std_logic;
SIGNAL \G7|Reg[0][0]~0_combout\ : std_logic;
SIGNAL \G7|Reg[0][1]~combout\ : std_logic;
SIGNAL \G7|Mux14~0_combout\ : std_logic;
SIGNAL \G16|Mux14~2_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \G17|ram~112_combout\ : std_logic;
SIGNAL \G17|ram~96_combout\ : std_logic;
SIGNAL \G17|ram~16_combout\ : std_logic;
SIGNAL \G17|ram~48_combout\ : std_logic;
SIGNAL \G17|ram~32_combout\ : std_logic;
SIGNAL \G17|ram~0_combout\ : std_logic;
SIGNAL \G17|ram~401_combout\ : std_logic;
SIGNAL \G17|ram~64_combout\ : std_logic;
SIGNAL \G17|ram~272_combout\ : std_logic;
SIGNAL \G17|ram~208_combout\ : std_logic;
SIGNAL \G17|ram~240_combout\ : std_logic;
SIGNAL \G17|ram~224_combout\ : std_logic;
SIGNAL \G17|ram~144_combout\ : std_logic;
SIGNAL \G17|ram~176_combout\ : std_logic;
SIGNAL \G17|ram~160_combout\ : std_logic;
SIGNAL \G17|ram~128_combout\ : std_logic;
SIGNAL \G17|ram~405_combout\ : std_logic;
SIGNAL \G17|ram~192_combout\ : std_logic;
SIGNAL \G17|ram~276_combout\ : std_logic;
SIGNAL \G18|SAIDA~3_combout\ : std_logic;
SIGNAL \G17|ram~256_combout\ : std_logic;
SIGNAL \G18|SAIDA~4_combout\ : std_logic;
SIGNAL \G18|SAIDA~5_combout\ : std_logic;
SIGNAL \G7|Reg[0][0]~combout\ : std_logic;
SIGNAL \G7|Mux15~0_combout\ : std_logic;
SIGNAL \G16|Mux15~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \G17|ram~82_combout\ : std_logic;
SIGNAL \G17|ram~114_combout\ : std_logic;
SIGNAL \G17|ram~98_combout\ : std_logic;
SIGNAL \G17|ram~18_combout\ : std_logic;
SIGNAL \G17|ram~50_combout\ : std_logic;
SIGNAL \G17|ram~34_combout\ : std_logic;
SIGNAL \G17|ram~2_combout\ : std_logic;
SIGNAL \G17|ram~417_combout\ : std_logic;
SIGNAL \G17|ram~66_combout\ : std_logic;
SIGNAL \G17|ram~289_combout\ : std_logic;
SIGNAL \G17|ram~210_combout\ : std_logic;
SIGNAL \G17|ram~242_combout\ : std_logic;
SIGNAL \G17|ram~226_combout\ : std_logic;
SIGNAL \G17|ram~146_combout\ : std_logic;
SIGNAL \G17|ram~178_combout\ : std_logic;
SIGNAL \G17|ram~162_combout\ : std_logic;
SIGNAL \G17|ram~130_combout\ : std_logic;
SIGNAL \G17|ram~421_combout\ : std_logic;
SIGNAL \G17|ram~194_combout\ : std_logic;
SIGNAL \G17|ram~293_combout\ : std_logic;
SIGNAL \G18|SAIDA~8_combout\ : std_logic;
SIGNAL \G17|ram~258_combout\ : std_logic;
SIGNAL \G18|SAIDA~9_combout\ : std_logic;
SIGNAL \G18|SAIDA~10_combout\ : std_logic;
SIGNAL \G7|Reg[0][2]~combout\ : std_logic;
SIGNAL \G16|Add1~10\ : std_logic;
SIGNAL \G16|Add1~13_sumout\ : std_logic;
SIGNAL \G16|Mux12~2_combout\ : std_logic;
SIGNAL \G7|Mux28~0_combout\ : std_logic;
SIGNAL \G7|Mux28~1_combout\ : std_logic;
SIGNAL \G17|ram~211_combout\ : std_logic;
SIGNAL \G17|ram~243_combout\ : std_logic;
SIGNAL \G17|ram~227_combout\ : std_logic;
SIGNAL \G17|ram~147_combout\ : std_logic;
SIGNAL \G17|ram~179_combout\ : std_logic;
SIGNAL \G17|ram~163_combout\ : std_logic;
SIGNAL \G17|ram~131_combout\ : std_logic;
SIGNAL \G17|ram~425_combout\ : std_logic;
SIGNAL \G17|ram~195_combout\ : std_logic;
SIGNAL \G17|ram~297_combout\ : std_logic;
SIGNAL \G17|ram~83_combout\ : std_logic;
SIGNAL \G17|ram~115_combout\ : std_logic;
SIGNAL \G17|ram~99_combout\ : std_logic;
SIGNAL \G17|ram~19_combout\ : std_logic;
SIGNAL \G17|ram~51_combout\ : std_logic;
SIGNAL \G17|ram~35_combout\ : std_logic;
SIGNAL \G17|ram~3_combout\ : std_logic;
SIGNAL \G17|ram~429_combout\ : std_logic;
SIGNAL \G17|ram~67_combout\ : std_logic;
SIGNAL \G17|ram~301_combout\ : std_logic;
SIGNAL \G16|Mux13~2_combout\ : std_logic;
SIGNAL \G17|ram~259_combout\ : std_logic;
SIGNAL \G18|SAIDA~11_combout\ : std_logic;
SIGNAL \G18|SAIDA~12_combout\ : std_logic;
SIGNAL \G7|Reg[0][3]~combout\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G16|Mux11~1_combout\ : std_logic;
SIGNAL \G16|Mux11~2_combout\ : std_logic;
SIGNAL \G7|Mux27~0_combout\ : std_logic;
SIGNAL \G7|Mux27~1_combout\ : std_logic;
SIGNAL \G17|ram~84_combout\ : std_logic;
SIGNAL \G17|ram~116_combout\ : std_logic;
SIGNAL \G17|ram~100_combout\ : std_logic;
SIGNAL \G17|ram~20_combout\ : std_logic;
SIGNAL \G17|ram~52_combout\ : std_logic;
SIGNAL \G17|ram~36_combout\ : std_logic;
SIGNAL \G17|ram~4_combout\ : std_logic;
SIGNAL \G17|ram~433_combout\ : std_logic;
SIGNAL \G17|ram~68_combout\ : std_logic;
SIGNAL \G17|ram~305_combout\ : std_logic;
SIGNAL \G17|ram~212_combout\ : std_logic;
SIGNAL \G17|ram~244_combout\ : std_logic;
SIGNAL \G17|ram~228_combout\ : std_logic;
SIGNAL \G17|ram~148_combout\ : std_logic;
SIGNAL \G17|ram~180_combout\ : std_logic;
SIGNAL \G17|ram~164_combout\ : std_logic;
SIGNAL \G17|ram~132_combout\ : std_logic;
SIGNAL \G17|ram~437_combout\ : std_logic;
SIGNAL \G17|ram~196_combout\ : std_logic;
SIGNAL \G17|ram~309_combout\ : std_logic;
SIGNAL \G17|ram~260_combout\ : std_logic;
SIGNAL \G18|SAIDA~13_combout\ : std_logic;
SIGNAL \G18|SAIDA~14_combout\ : std_logic;
SIGNAL \G7|Reg[0][4]~combout\ : std_logic;
SIGNAL \G16|Add1~14\ : std_logic;
SIGNAL \G16|Add1~17_sumout\ : std_logic;
SIGNAL \G18|SAIDA~1_combout\ : std_logic;
SIGNAL \G7|Mux25~0_combout\ : std_logic;
SIGNAL \G7|Mux25~1_combout\ : std_logic;
SIGNAL \G17|ram~86_combout\ : std_logic;
SIGNAL \G17|ram~118_combout\ : std_logic;
SIGNAL \G17|ram~102_combout\ : std_logic;
SIGNAL \G17|ram~22_combout\ : std_logic;
SIGNAL \G17|ram~54_combout\ : std_logic;
SIGNAL \G17|ram~38_combout\ : std_logic;
SIGNAL \G17|ram~6_combout\ : std_logic;
SIGNAL \G17|ram~449_combout\ : std_logic;
SIGNAL \G17|ram~70_combout\ : std_logic;
SIGNAL \G17|ram~321_combout\ : std_logic;
SIGNAL \G17|ram~214_combout\ : std_logic;
SIGNAL \G17|ram~246_combout\ : std_logic;
SIGNAL \G17|ram~230_combout\ : std_logic;
SIGNAL \G17|ram~150_combout\ : std_logic;
SIGNAL \G17|ram~182_combout\ : std_logic;
SIGNAL \G17|ram~166_combout\ : std_logic;
SIGNAL \G17|ram~134_combout\ : std_logic;
SIGNAL \G17|ram~453_combout\ : std_logic;
SIGNAL \G17|ram~198_combout\ : std_logic;
SIGNAL \G17|ram~325_combout\ : std_logic;
SIGNAL \G17|ram~262_combout\ : std_logic;
SIGNAL \G14|SAIDA~10_combout\ : std_logic;
SIGNAL \G7|Mux26~0_combout\ : std_logic;
SIGNAL \G7|Mux26~1_combout\ : std_logic;
SIGNAL \G17|ram~85_combout\ : std_logic;
SIGNAL \G17|ram~117_combout\ : std_logic;
SIGNAL \G17|ram~101_combout\ : std_logic;
SIGNAL \G17|ram~21_combout\ : std_logic;
SIGNAL \G17|ram~53_combout\ : std_logic;
SIGNAL \G17|ram~37_combout\ : std_logic;
SIGNAL \G17|ram~5_combout\ : std_logic;
SIGNAL \G17|ram~441_combout\ : std_logic;
SIGNAL \G17|ram~69_combout\ : std_logic;
SIGNAL \G17|ram~313_combout\ : std_logic;
SIGNAL \G17|ram~213_combout\ : std_logic;
SIGNAL \G17|ram~245_combout\ : std_logic;
SIGNAL \G17|ram~229_combout\ : std_logic;
SIGNAL \G17|ram~149_combout\ : std_logic;
SIGNAL \G17|ram~181_combout\ : std_logic;
SIGNAL \G17|ram~165_combout\ : std_logic;
SIGNAL \G17|ram~133_combout\ : std_logic;
SIGNAL \G17|ram~445_combout\ : std_logic;
SIGNAL \G17|ram~197_combout\ : std_logic;
SIGNAL \G17|ram~317_combout\ : std_logic;
SIGNAL \G17|ram~261_combout\ : std_logic;
SIGNAL \G14|SAIDA~9_combout\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G18|SAIDA~15_combout\ : std_logic;
SIGNAL \G18|SAIDA~16_combout\ : std_logic;
SIGNAL \G18|SAIDA~17_combout\ : std_logic;
SIGNAL \G18|SAIDA~18_combout\ : std_logic;
SIGNAL \G7|Reg[0][5]~combout\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G18|SAIDA~19_combout\ : std_logic;
SIGNAL \G18|SAIDA~20_combout\ : std_logic;
SIGNAL \G18|SAIDA~21_combout\ : std_logic;
SIGNAL \G18|SAIDA~22_combout\ : std_logic;
SIGNAL \G7|Reg[0][6]~combout\ : std_logic;
SIGNAL \G16|Add1~18\ : std_logic;
SIGNAL \G16|Add1~22\ : std_logic;
SIGNAL \G16|Add1~25_sumout\ : std_logic;
SIGNAL \G7|Mux24~0_combout\ : std_logic;
SIGNAL \G7|Mux24~1_combout\ : std_logic;
SIGNAL \G17|ram~87_combout\ : std_logic;
SIGNAL \G17|ram~119_combout\ : std_logic;
SIGNAL \G17|ram~103_combout\ : std_logic;
SIGNAL \G17|ram~23_combout\ : std_logic;
SIGNAL \G17|ram~55_combout\ : std_logic;
SIGNAL \G17|ram~39_combout\ : std_logic;
SIGNAL \G17|ram~7_combout\ : std_logic;
SIGNAL \G17|ram~457_combout\ : std_logic;
SIGNAL \G17|ram~71_combout\ : std_logic;
SIGNAL \G17|ram~329_combout\ : std_logic;
SIGNAL \G17|ram~215_combout\ : std_logic;
SIGNAL \G17|ram~247_combout\ : std_logic;
SIGNAL \G17|ram~231_combout\ : std_logic;
SIGNAL \G17|ram~151_combout\ : std_logic;
SIGNAL \G17|ram~183_combout\ : std_logic;
SIGNAL \G17|ram~167_combout\ : std_logic;
SIGNAL \G17|ram~135_combout\ : std_logic;
SIGNAL \G17|ram~461_combout\ : std_logic;
SIGNAL \G17|ram~199_combout\ : std_logic;
SIGNAL \G17|ram~333_combout\ : std_logic;
SIGNAL \G17|ram~263_combout\ : std_logic;
SIGNAL \G14|SAIDA~11_combout\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G18|SAIDA~23_combout\ : std_logic;
SIGNAL \G18|SAIDA~24_combout\ : std_logic;
SIGNAL \G18|SAIDA~25_combout\ : std_logic;
SIGNAL \G18|SAIDA~26_combout\ : std_logic;
SIGNAL \G7|Reg[0][7]~combout\ : std_logic;
SIGNAL \G16|Add1~26\ : std_logic;
SIGNAL \G16|Add1~29_sumout\ : std_logic;
SIGNAL \G7|Mux23~0_combout\ : std_logic;
SIGNAL \G7|Mux23~1_combout\ : std_logic;
SIGNAL \G17|ram~88_combout\ : std_logic;
SIGNAL \G17|ram~120_combout\ : std_logic;
SIGNAL \G17|ram~104_combout\ : std_logic;
SIGNAL \G17|ram~24_combout\ : std_logic;
SIGNAL \G17|ram~56_combout\ : std_logic;
SIGNAL \G17|ram~40_combout\ : std_logic;
SIGNAL \G17|ram~8_combout\ : std_logic;
SIGNAL \G17|ram~465_combout\ : std_logic;
SIGNAL \G17|ram~72_combout\ : std_logic;
SIGNAL \G17|ram~337_combout\ : std_logic;
SIGNAL \G17|ram~216_combout\ : std_logic;
SIGNAL \G17|ram~248_combout\ : std_logic;
SIGNAL \G17|ram~232_combout\ : std_logic;
SIGNAL \G17|ram~152_combout\ : std_logic;
SIGNAL \G17|ram~184_combout\ : std_logic;
SIGNAL \G17|ram~168_combout\ : std_logic;
SIGNAL \G17|ram~136_combout\ : std_logic;
SIGNAL \G17|ram~469_combout\ : std_logic;
SIGNAL \G17|ram~200_combout\ : std_logic;
SIGNAL \G17|ram~341_combout\ : std_logic;
SIGNAL \G17|ram~264_combout\ : std_logic;
SIGNAL \G14|SAIDA~12_combout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G18|SAIDA~27_combout\ : std_logic;
SIGNAL \G18|SAIDA~28_combout\ : std_logic;
SIGNAL \G18|SAIDA~29_combout\ : std_logic;
SIGNAL \G18|SAIDA~30_combout\ : std_logic;
SIGNAL \G7|Reg[0][8]~combout\ : std_logic;
SIGNAL \G16|Add1~30\ : std_logic;
SIGNAL \G16|Add1~33_sumout\ : std_logic;
SIGNAL \G7|Mux22~0_combout\ : std_logic;
SIGNAL \G7|Mux22~1_combout\ : std_logic;
SIGNAL \G17|ram~89_combout\ : std_logic;
SIGNAL \G17|ram~121_combout\ : std_logic;
SIGNAL \G17|ram~105_combout\ : std_logic;
SIGNAL \G17|ram~25_combout\ : std_logic;
SIGNAL \G17|ram~57_combout\ : std_logic;
SIGNAL \G17|ram~41_combout\ : std_logic;
SIGNAL \G17|ram~9_combout\ : std_logic;
SIGNAL \G17|ram~473_combout\ : std_logic;
SIGNAL \G17|ram~73_combout\ : std_logic;
SIGNAL \G17|ram~345_combout\ : std_logic;
SIGNAL \G17|ram~217_combout\ : std_logic;
SIGNAL \G17|ram~249_combout\ : std_logic;
SIGNAL \G17|ram~233_combout\ : std_logic;
SIGNAL \G17|ram~153_combout\ : std_logic;
SIGNAL \G17|ram~185_combout\ : std_logic;
SIGNAL \G17|ram~169_combout\ : std_logic;
SIGNAL \G17|ram~137_combout\ : std_logic;
SIGNAL \G17|ram~477_combout\ : std_logic;
SIGNAL \G17|ram~201_combout\ : std_logic;
SIGNAL \G17|ram~349_combout\ : std_logic;
SIGNAL \G17|ram~265_combout\ : std_logic;
SIGNAL \G14|SAIDA~13_combout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G18|SAIDA~31_combout\ : std_logic;
SIGNAL \G18|SAIDA~32_combout\ : std_logic;
SIGNAL \G18|SAIDA~33_combout\ : std_logic;
SIGNAL \G18|SAIDA~34_combout\ : std_logic;
SIGNAL \G7|Reg[0][9]~combout\ : std_logic;
SIGNAL \G16|Add1~34\ : std_logic;
SIGNAL \G16|Add1~37_sumout\ : std_logic;
SIGNAL \G7|Mux21~0_combout\ : std_logic;
SIGNAL \G7|Mux21~1_combout\ : std_logic;
SIGNAL \G17|ram~90_combout\ : std_logic;
SIGNAL \G17|ram~122_combout\ : std_logic;
SIGNAL \G17|ram~106_combout\ : std_logic;
SIGNAL \G17|ram~26_combout\ : std_logic;
SIGNAL \G17|ram~58_combout\ : std_logic;
SIGNAL \G17|ram~42_combout\ : std_logic;
SIGNAL \G17|ram~10_combout\ : std_logic;
SIGNAL \G17|ram~481_combout\ : std_logic;
SIGNAL \G17|ram~74_combout\ : std_logic;
SIGNAL \G17|ram~353_combout\ : std_logic;
SIGNAL \G17|ram~218_combout\ : std_logic;
SIGNAL \G17|ram~250_combout\ : std_logic;
SIGNAL \G17|ram~234_combout\ : std_logic;
SIGNAL \G17|ram~154_combout\ : std_logic;
SIGNAL \G17|ram~186_combout\ : std_logic;
SIGNAL \G17|ram~170_combout\ : std_logic;
SIGNAL \G17|ram~138_combout\ : std_logic;
SIGNAL \G17|ram~485_combout\ : std_logic;
SIGNAL \G17|ram~202_combout\ : std_logic;
SIGNAL \G17|ram~357_combout\ : std_logic;
SIGNAL \G17|ram~266_combout\ : std_logic;
SIGNAL \G14|SAIDA~14_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G18|SAIDA~35_combout\ : std_logic;
SIGNAL \G18|SAIDA~36_combout\ : std_logic;
SIGNAL \G18|SAIDA~37_combout\ : std_logic;
SIGNAL \G18|SAIDA~38_combout\ : std_logic;
SIGNAL \G7|Reg[0][10]~combout\ : std_logic;
SIGNAL \G16|Add1~38\ : std_logic;
SIGNAL \G16|Add1~41_sumout\ : std_logic;
SIGNAL \G7|Mux16~0_combout\ : std_logic;
SIGNAL \G7|Mux16~1_combout\ : std_logic;
SIGNAL \G17|ram~95_combout\ : std_logic;
SIGNAL \G17|ram~127_combout\ : std_logic;
SIGNAL \G17|ram~111_combout\ : std_logic;
SIGNAL \G17|ram~31_combout\ : std_logic;
SIGNAL \G17|ram~63_combout\ : std_logic;
SIGNAL \G17|ram~47_combout\ : std_logic;
SIGNAL \G17|ram~15_combout\ : std_logic;
SIGNAL \G17|ram~521_combout\ : std_logic;
SIGNAL \G17|ram~79_combout\ : std_logic;
SIGNAL \G17|ram~393_combout\ : std_logic;
SIGNAL \G17|ram~223_combout\ : std_logic;
SIGNAL \G17|ram~255_combout\ : std_logic;
SIGNAL \G17|ram~239_combout\ : std_logic;
SIGNAL \G17|ram~159_combout\ : std_logic;
SIGNAL \G17|ram~191_combout\ : std_logic;
SIGNAL \G17|ram~175_combout\ : std_logic;
SIGNAL \G17|ram~143_combout\ : std_logic;
SIGNAL \G17|ram~525_combout\ : std_logic;
SIGNAL \G17|ram~207_combout\ : std_logic;
SIGNAL \G17|ram~397_combout\ : std_logic;
SIGNAL \G17|ram~271_combout\ : std_logic;
SIGNAL \G18|SAIDA~55_combout\ : std_logic;
SIGNAL \G14|SAIDA~19_combout\ : std_logic;
SIGNAL \G7|Mux17~0_combout\ : std_logic;
SIGNAL \G7|Mux17~1_combout\ : std_logic;
SIGNAL \G17|ram~94_combout\ : std_logic;
SIGNAL \G17|ram~126_combout\ : std_logic;
SIGNAL \G17|ram~110_combout\ : std_logic;
SIGNAL \G17|ram~30_combout\ : std_logic;
SIGNAL \G17|ram~62_combout\ : std_logic;
SIGNAL \G17|ram~46_combout\ : std_logic;
SIGNAL \G17|ram~14_combout\ : std_logic;
SIGNAL \G17|ram~513_combout\ : std_logic;
SIGNAL \G17|ram~78_combout\ : std_logic;
SIGNAL \G17|ram~385_combout\ : std_logic;
SIGNAL \G17|ram~222_combout\ : std_logic;
SIGNAL \G17|ram~254_combout\ : std_logic;
SIGNAL \G17|ram~238_combout\ : std_logic;
SIGNAL \G17|ram~158_combout\ : std_logic;
SIGNAL \G17|ram~190_combout\ : std_logic;
SIGNAL \G17|ram~174_combout\ : std_logic;
SIGNAL \G17|ram~142_combout\ : std_logic;
SIGNAL \G17|ram~517_combout\ : std_logic;
SIGNAL \G17|ram~206_combout\ : std_logic;
SIGNAL \G17|ram~389_combout\ : std_logic;
SIGNAL \G17|ram~270_combout\ : std_logic;
SIGNAL \G18|SAIDA~51_combout\ : std_logic;
SIGNAL \G14|SAIDA~18_combout\ : std_logic;
SIGNAL \G7|Mux18~0_combout\ : std_logic;
SIGNAL \G7|Mux18~1_combout\ : std_logic;
SIGNAL \G17|ram~93_combout\ : std_logic;
SIGNAL \G17|ram~125_combout\ : std_logic;
SIGNAL \G17|ram~109_combout\ : std_logic;
SIGNAL \G17|ram~29_combout\ : std_logic;
SIGNAL \G17|ram~61_combout\ : std_logic;
SIGNAL \G17|ram~45_combout\ : std_logic;
SIGNAL \G17|ram~13_combout\ : std_logic;
SIGNAL \G17|ram~505_combout\ : std_logic;
SIGNAL \G17|ram~77_combout\ : std_logic;
SIGNAL \G17|ram~377_combout\ : std_logic;
SIGNAL \G17|ram~221_combout\ : std_logic;
SIGNAL \G17|ram~253_combout\ : std_logic;
SIGNAL \G17|ram~237_combout\ : std_logic;
SIGNAL \G17|ram~157_combout\ : std_logic;
SIGNAL \G17|ram~189_combout\ : std_logic;
SIGNAL \G17|ram~173_combout\ : std_logic;
SIGNAL \G17|ram~141_combout\ : std_logic;
SIGNAL \G17|ram~509_combout\ : std_logic;
SIGNAL \G17|ram~205_combout\ : std_logic;
SIGNAL \G17|ram~381_combout\ : std_logic;
SIGNAL \G17|ram~269_combout\ : std_logic;
SIGNAL \G18|SAIDA~47_combout\ : std_logic;
SIGNAL \G14|SAIDA~17_combout\ : std_logic;
SIGNAL \G7|Mux19~0_combout\ : std_logic;
SIGNAL \G7|Mux19~1_combout\ : std_logic;
SIGNAL \G17|ram~92_combout\ : std_logic;
SIGNAL \G17|ram~124_combout\ : std_logic;
SIGNAL \G17|ram~108_combout\ : std_logic;
SIGNAL \G17|ram~28_combout\ : std_logic;
SIGNAL \G17|ram~60_combout\ : std_logic;
SIGNAL \G17|ram~44_combout\ : std_logic;
SIGNAL \G17|ram~12_combout\ : std_logic;
SIGNAL \G17|ram~497_combout\ : std_logic;
SIGNAL \G17|ram~76_combout\ : std_logic;
SIGNAL \G17|ram~369_combout\ : std_logic;
SIGNAL \G17|ram~220_combout\ : std_logic;
SIGNAL \G17|ram~252_combout\ : std_logic;
SIGNAL \G17|ram~236_combout\ : std_logic;
SIGNAL \G17|ram~156_combout\ : std_logic;
SIGNAL \G17|ram~188_combout\ : std_logic;
SIGNAL \G17|ram~172_combout\ : std_logic;
SIGNAL \G17|ram~140_combout\ : std_logic;
SIGNAL \G17|ram~501_combout\ : std_logic;
SIGNAL \G17|ram~204_combout\ : std_logic;
SIGNAL \G17|ram~373_combout\ : std_logic;
SIGNAL \G17|ram~268_combout\ : std_logic;
SIGNAL \G14|SAIDA~16_combout\ : std_logic;
SIGNAL \G7|Mux20~0_combout\ : std_logic;
SIGNAL \G7|Mux20~1_combout\ : std_logic;
SIGNAL \G17|ram~91_combout\ : std_logic;
SIGNAL \G17|ram~123_combout\ : std_logic;
SIGNAL \G17|ram~107_combout\ : std_logic;
SIGNAL \G17|ram~27_combout\ : std_logic;
SIGNAL \G17|ram~59_combout\ : std_logic;
SIGNAL \G17|ram~43_combout\ : std_logic;
SIGNAL \G17|ram~11_combout\ : std_logic;
SIGNAL \G17|ram~489_combout\ : std_logic;
SIGNAL \G17|ram~75_combout\ : std_logic;
SIGNAL \G17|ram~361_combout\ : std_logic;
SIGNAL \G17|ram~219_combout\ : std_logic;
SIGNAL \G17|ram~251_combout\ : std_logic;
SIGNAL \G17|ram~235_combout\ : std_logic;
SIGNAL \G17|ram~155_combout\ : std_logic;
SIGNAL \G17|ram~187_combout\ : std_logic;
SIGNAL \G17|ram~171_combout\ : std_logic;
SIGNAL \G17|ram~139_combout\ : std_logic;
SIGNAL \G17|ram~493_combout\ : std_logic;
SIGNAL \G17|ram~203_combout\ : std_logic;
SIGNAL \G17|ram~365_combout\ : std_logic;
SIGNAL \G17|ram~267_combout\ : std_logic;
SIGNAL \G14|SAIDA~15_combout\ : std_logic;
SIGNAL \G16|Add1~42\ : std_logic;
SIGNAL \G16|Add1~45_sumout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G18|SAIDA~39_combout\ : std_logic;
SIGNAL \G18|SAIDA~40_combout\ : std_logic;
SIGNAL \G18|SAIDA~41_combout\ : std_logic;
SIGNAL \G18|SAIDA~42_combout\ : std_logic;
SIGNAL \G7|Reg[0][11]~combout\ : std_logic;
SIGNAL \G16|Add1~46\ : std_logic;
SIGNAL \G16|Add1~49_sumout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G18|SAIDA~43_combout\ : std_logic;
SIGNAL \G18|SAIDA~44_combout\ : std_logic;
SIGNAL \G18|SAIDA~45_combout\ : std_logic;
SIGNAL \G18|SAIDA~46_combout\ : std_logic;
SIGNAL \G7|Reg[0][12]~combout\ : std_logic;
SIGNAL \G16|Add1~50\ : std_logic;
SIGNAL \G16|Add1~53_sumout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G18|SAIDA~48_combout\ : std_logic;
SIGNAL \G18|SAIDA~49_combout\ : std_logic;
SIGNAL \G18|SAIDA~50_combout\ : std_logic;
SIGNAL \G7|Reg[0][13]~combout\ : std_logic;
SIGNAL \G16|Add1~54\ : std_logic;
SIGNAL \G16|Add1~57_sumout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G18|SAIDA~52_combout\ : std_logic;
SIGNAL \G18|SAIDA~53_combout\ : std_logic;
SIGNAL \G18|SAIDA~54_combout\ : std_logic;
SIGNAL \G7|Reg[0][14]~combout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G18|SAIDA~56_combout\ : std_logic;
SIGNAL \G18|SAIDA~57_combout\ : std_logic;
SIGNAL \G18|SAIDA~58_combout\ : std_logic;
SIGNAL \G7|Reg[0][15]~combout\ : std_logic;
SIGNAL \G16|Add1~58\ : std_logic;
SIGNAL \G16|Add1~61_sumout\ : std_logic;
SIGNAL \G16|Equal1~2_combout\ : std_logic;
SIGNAL \G12|SAIDA~1_combout\ : std_logic;
SIGNAL \G13|SAIDA~1_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|rd[0]~0_combout\ : std_logic;
SIGNAL \G16|Add1~21_sumout\ : std_logic;
SIGNAL \G16|Equal1~0_combout\ : std_logic;
SIGNAL \G16|Equal1~1_combout\ : std_logic;
SIGNAL \G12|SAIDA~0_combout\ : std_logic;
SIGNAL \G13|SAIDA~0_combout\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G7|Mux10~0_combout\ : std_logic;
SIGNAL \G7|Mux9~0_combout\ : std_logic;
SIGNAL \G7|Mux8~0_combout\ : std_logic;
SIGNAL \G7|Mux7~0_combout\ : std_logic;
SIGNAL \G7|Mux6~0_combout\ : std_logic;
SIGNAL \G7|Mux5~0_combout\ : std_logic;
SIGNAL \G7|Mux4~0_combout\ : std_logic;
SIGNAL \G7|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Mux2~0_combout\ : std_logic;
SIGNAL \G7|Mux1~0_combout\ : std_logic;
SIGNAL \G7|Mux0~0_combout\ : std_logic;
SIGNAL \G16|Mux10~0_combout\ : std_logic;
SIGNAL \G16|Mux9~0_combout\ : std_logic;
SIGNAL \G16|Mux8~0_combout\ : std_logic;
SIGNAL \G16|Mux7~0_combout\ : std_logic;
SIGNAL \G16|Mux6~0_combout\ : std_logic;
SIGNAL \G16|Mux5~0_combout\ : std_logic;
SIGNAL \G16|Mux4~0_combout\ : std_logic;
SIGNAL \G16|Mux3~0_combout\ : std_logic;
SIGNAL \G16|Mux2~0_combout\ : std_logic;
SIGNAL \G16|Mux1~0_combout\ : std_logic;
SIGNAL \G16|Mux0~0_combout\ : std_logic;
SIGNAL \G1|G0|G0|state~0_combout\ : std_logic;
SIGNAL \G1|G0|G0|state~q\ : std_logic;
SIGNAL \G1|G0|G1|state~0_combout\ : std_logic;
SIGNAL \G1|G0|G1|state~q\ : std_logic;
SIGNAL \G1|G0|G3|state~0_combout\ : std_logic;
SIGNAL \G1|G0|G3|state~q\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G9|AUX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G15|SAIDA\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G10|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G9|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G3|resshift\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G5|origalu\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~437_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~433_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~429_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~425_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~421_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~417_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~413_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~409_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~405_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~401_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~397_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~393_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~389_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~385_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~381_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~377_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~373_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~369_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~365_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~361_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~357_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~353_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~349_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~345_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~341_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~337_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~333_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~329_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~325_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~321_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~317_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~313_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~309_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~305_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~301_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~297_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~293_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~289_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~285_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~281_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~276_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~272_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rt[0]~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[2]~3_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rs[1]~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G17|ALT_INV_ram~525_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~521_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~517_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~513_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~509_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~505_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~501_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~497_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~493_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~489_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~485_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~481_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~477_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~473_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~469_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~465_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~461_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~457_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~453_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~449_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~445_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~441_combout\ : std_logic;
SIGNAL \G10|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G11|ALT_INV_S1~1_combout\ : std_logic;
SIGNAL \G11|ALT_INV_S1~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~58_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~57_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~56_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~55_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~54_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~53_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~52_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~51_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~50_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~49_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~48_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~47_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~46_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~45_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~44_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~43_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~42_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~41_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~40_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~39_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~38_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~37_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~36_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~35_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~34_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~33_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~32_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~31_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~30_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~29_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~28_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~27_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~26_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~25_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~24_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~23_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~22_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~21_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~20_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~19_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~18_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~17_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~16_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~15_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~14_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~13_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~12_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~11_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~10_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~9_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~8_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~7_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~6_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~5_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~280_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~1_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[0]~2_combout\ : std_logic;
SIGNAL \G5|ALT_INV_regdest~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][0]~0_combout\ : std_logic;
SIGNAL \G1|G0|G3|ALT_INV_state~q\ : std_logic;
SIGNAL \G1|G0|G1|ALT_INV_state~q\ : std_logic;
SIGNAL \G1|G0|G0|ALT_INV_state~q\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \G4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rs[0]~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux16~0_combout\ : std_logic;
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
SIGNAL \G5|ALT_INV_regdest~combout\ : std_logic;
SIGNAL \G5|ALT_INV_escrevereg~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][0]~combout\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~16_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~15_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~14_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~13_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~12_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~11_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~10_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~9_combout\ : std_logic;
SIGNAL \G9|ALT_INV_SAIDA\ : std_logic_vector(4 DOWNTO 2);
SIGNAL \ALT_INV_rtl~8_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~7_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~6_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~5_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~4_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~3_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~2_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram.we_a~0_combout\ : std_logic;
SIGNAL \G5|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[2]~1_combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu[1]~0_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~19_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~18_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~17_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~16_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~15_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~14_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~13_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~12_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~11_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~10_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~9_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~8_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~7_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~6_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~5_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~15_combout\ : std_logic;
SIGNAL \G3|ALT_INV_resshift\ : std_logic_vector(15 DOWNTO 14);
SIGNAL \G13|ALT_INV_SAIDA~14_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~13_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~12_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~11_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~10_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~9_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~8_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~7_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~6_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~5_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G13|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~15_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~14_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~13_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~12_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~11_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~10_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~9_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~8_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~7_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~6_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~5_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~100_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~68_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~116_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~84_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~99_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~67_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~115_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~83_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~227_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~195_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~243_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~211_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~226_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~194_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~242_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~210_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~98_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~66_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~114_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~82_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~225_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~193_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~241_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~209_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~97_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~65_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~113_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~81_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~224_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~192_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~240_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~208_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~96_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~64_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~112_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~80_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~271_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~270_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~269_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~268_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~267_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~266_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~265_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~264_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~263_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~262_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~261_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~260_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~259_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~258_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~257_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~256_combout\ : std_logic;
SIGNAL \G5|ALT_INV_memparareg~combout\ : std_logic;
SIGNAL \G5|ALT_INV_origalu\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G14|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Reg[0][15]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[0][14]~combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~4_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~52_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~20_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~35_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~3_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~51_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~19_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~131_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~130_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~34_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~2_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~50_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~18_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~129_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~33_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~1_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~49_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~17_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~128_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~32_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~0_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~48_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~16_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~239_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~207_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~255_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~223_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~111_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~79_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~127_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~95_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~238_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~206_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~254_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~222_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~110_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~78_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~126_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~94_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~237_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~205_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~253_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~221_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~109_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~77_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~125_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~93_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~236_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~204_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~252_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~220_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~108_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~76_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~124_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~92_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~235_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~203_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~251_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~219_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~107_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~75_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~123_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~91_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~234_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~202_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~250_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~218_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~106_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~74_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~122_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~90_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~233_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~201_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~249_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~217_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~105_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~73_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~121_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~89_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~232_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~200_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~248_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~216_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~104_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~72_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~120_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~88_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~231_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~199_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~247_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~215_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~103_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~71_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~119_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~87_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~230_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~198_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~246_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~214_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~102_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~70_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~118_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~86_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~229_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~197_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~245_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~213_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~101_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~69_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~117_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~85_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~228_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~196_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~244_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~212_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~191_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~47_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~15_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~63_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~31_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~142_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~190_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~46_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~14_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~62_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~30_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~141_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~189_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~45_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~13_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~61_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~29_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~140_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~188_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~44_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~12_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~60_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~28_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~139_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~187_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~43_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~11_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~59_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~27_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~138_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~186_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~42_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~10_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~58_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~26_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~137_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~185_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~41_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~9_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~57_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~25_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~136_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~184_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~40_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~8_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~56_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~24_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~135_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~183_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~39_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~7_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~55_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~23_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~134_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~38_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~6_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~54_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~22_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~133_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~37_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~5_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~53_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~21_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~132_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~36_combout\ : std_logic;
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
saida_cont_sincz1 <= ww_saida_cont_sincz1;
saida_cont_sincz2 <= ww_saida_cont_sincz2;
saida_cont_sincz3 <= ww_saida_cont_sincz3;
funcionou <= ww_funcionou;
Flag_regdest_OUT <= ww_Flag_regdest_OUT;
Flag_origialu_OUT <= ww_Flag_origialu_OUT;
Flag_memparareg_OUT <= ww_Flag_memparareg_OUT;
Flag_escrevereg_OUT <= ww_Flag_escrevereg_OUT;
Flag_lemem_OUT <= ww_Flag_lemem_OUT;
Flag_escrevemem_OUT <= ww_Flag_escrevemem_OUT;
Flag_branch_OUT <= ww_Flag_branch_OUT;
Flag_aluSRC_OUT <= ww_Flag_aluSRC_OUT;
Flag_jump_OUT <= ww_Flag_jump_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add1~5_sumout\ <= NOT \G16|Add1~5_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G16|ALT_INV_Add1~1_sumout\ <= NOT \G16|Add1~1_sumout\;
\G17|ALT_INV_ram~437_combout\ <= NOT \G17|ram~437_combout\;
\G17|ALT_INV_ram~433_combout\ <= NOT \G17|ram~433_combout\;
\G17|ALT_INV_ram~429_combout\ <= NOT \G17|ram~429_combout\;
\G17|ALT_INV_ram~425_combout\ <= NOT \G17|ram~425_combout\;
\G17|ALT_INV_ram~421_combout\ <= NOT \G17|ram~421_combout\;
\G17|ALT_INV_ram~417_combout\ <= NOT \G17|ram~417_combout\;
\G17|ALT_INV_ram~413_combout\ <= NOT \G17|ram~413_combout\;
\G17|ALT_INV_ram~409_combout\ <= NOT \G17|ram~409_combout\;
\G17|ALT_INV_ram~405_combout\ <= NOT \G17|ram~405_combout\;
\G17|ALT_INV_ram~401_combout\ <= NOT \G17|ram~401_combout\;
\G17|ALT_INV_ram~397_combout\ <= NOT \G17|ram~397_combout\;
\G17|ALT_INV_ram~393_combout\ <= NOT \G17|ram~393_combout\;
\G17|ALT_INV_ram~389_combout\ <= NOT \G17|ram~389_combout\;
\G17|ALT_INV_ram~385_combout\ <= NOT \G17|ram~385_combout\;
\G17|ALT_INV_ram~381_combout\ <= NOT \G17|ram~381_combout\;
\G17|ALT_INV_ram~377_combout\ <= NOT \G17|ram~377_combout\;
\G17|ALT_INV_ram~373_combout\ <= NOT \G17|ram~373_combout\;
\G17|ALT_INV_ram~369_combout\ <= NOT \G17|ram~369_combout\;
\G17|ALT_INV_ram~365_combout\ <= NOT \G17|ram~365_combout\;
\G17|ALT_INV_ram~361_combout\ <= NOT \G17|ram~361_combout\;
\G17|ALT_INV_ram~357_combout\ <= NOT \G17|ram~357_combout\;
\G17|ALT_INV_ram~353_combout\ <= NOT \G17|ram~353_combout\;
\G17|ALT_INV_ram~349_combout\ <= NOT \G17|ram~349_combout\;
\G17|ALT_INV_ram~345_combout\ <= NOT \G17|ram~345_combout\;
\G17|ALT_INV_ram~341_combout\ <= NOT \G17|ram~341_combout\;
\G17|ALT_INV_ram~337_combout\ <= NOT \G17|ram~337_combout\;
\G17|ALT_INV_ram~333_combout\ <= NOT \G17|ram~333_combout\;
\G17|ALT_INV_ram~329_combout\ <= NOT \G17|ram~329_combout\;
\G17|ALT_INV_ram~325_combout\ <= NOT \G17|ram~325_combout\;
\G17|ALT_INV_ram~321_combout\ <= NOT \G17|ram~321_combout\;
\G17|ALT_INV_ram~317_combout\ <= NOT \G17|ram~317_combout\;
\G17|ALT_INV_ram~313_combout\ <= NOT \G17|ram~313_combout\;
\G17|ALT_INV_ram~309_combout\ <= NOT \G17|ram~309_combout\;
\G17|ALT_INV_ram~305_combout\ <= NOT \G17|ram~305_combout\;
\G17|ALT_INV_ram~301_combout\ <= NOT \G17|ram~301_combout\;
\G17|ALT_INV_ram~297_combout\ <= NOT \G17|ram~297_combout\;
\G17|ALT_INV_ram~293_combout\ <= NOT \G17|ram~293_combout\;
\G17|ALT_INV_ram~289_combout\ <= NOT \G17|ram~289_combout\;
\G17|ALT_INV_ram~285_combout\ <= NOT \G17|ram~285_combout\;
\G17|ALT_INV_ram~281_combout\ <= NOT \G17|ram~281_combout\;
\G17|ALT_INV_ram~276_combout\ <= NOT \G17|ram~276_combout\;
\G17|ALT_INV_ram~272_combout\ <= NOT \G17|ram~272_combout\;
\G16|ALT_INV_Add0~61_sumout\ <= NOT \G16|Add0~61_sumout\;
\G16|ALT_INV_Add1~61_sumout\ <= NOT \G16|Add1~61_sumout\;
\G16|ALT_INV_Add0~57_sumout\ <= NOT \G16|Add0~57_sumout\;
\G16|ALT_INV_Add1~57_sumout\ <= NOT \G16|Add1~57_sumout\;
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G16|ALT_INV_Add1~53_sumout\ <= NOT \G16|Add1~53_sumout\;
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G16|ALT_INV_Add1~49_sumout\ <= NOT \G16|Add1~49_sumout\;
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G16|ALT_INV_Add1~45_sumout\ <= NOT \G16|Add1~45_sumout\;
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G16|ALT_INV_Add1~41_sumout\ <= NOT \G16|Add1~41_sumout\;
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G16|ALT_INV_Add1~37_sumout\ <= NOT \G16|Add1~37_sumout\;
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
\G16|ALT_INV_Add1~33_sumout\ <= NOT \G16|Add1~33_sumout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
\G16|ALT_INV_Add1~29_sumout\ <= NOT \G16|Add1~29_sumout\;
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G16|ALT_INV_Add1~25_sumout\ <= NOT \G16|Add1~25_sumout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G16|ALT_INV_Add1~21_sumout\ <= NOT \G16|Add1~21_sumout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G16|ALT_INV_Add1~17_sumout\ <= NOT \G16|Add1~17_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G16|ALT_INV_Add1~13_sumout\ <= NOT \G16|Add1~13_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G16|ALT_INV_Add1~9_sumout\ <= NOT \G16|Add1~9_sumout\;
\G7|ALT_INV_Mux17~1_combout\ <= NOT \G7|Mux17~1_combout\;
\G7|ALT_INV_Mux17~0_combout\ <= NOT \G7|Mux17~0_combout\;
\G7|ALT_INV_Mux18~1_combout\ <= NOT \G7|Mux18~1_combout\;
\G7|ALT_INV_Mux18~0_combout\ <= NOT \G7|Mux18~0_combout\;
\G7|ALT_INV_Mux19~1_combout\ <= NOT \G7|Mux19~1_combout\;
\G7|ALT_INV_Mux19~0_combout\ <= NOT \G7|Mux19~0_combout\;
\G7|ALT_INV_Mux20~1_combout\ <= NOT \G7|Mux20~1_combout\;
\G7|ALT_INV_Mux20~0_combout\ <= NOT \G7|Mux20~0_combout\;
\G7|ALT_INV_Mux21~1_combout\ <= NOT \G7|Mux21~1_combout\;
\G7|ALT_INV_Mux21~0_combout\ <= NOT \G7|Mux21~0_combout\;
\G7|ALT_INV_Mux22~1_combout\ <= NOT \G7|Mux22~1_combout\;
\G7|ALT_INV_Mux22~0_combout\ <= NOT \G7|Mux22~0_combout\;
\G7|ALT_INV_Mux23~1_combout\ <= NOT \G7|Mux23~1_combout\;
\G7|ALT_INV_Mux23~0_combout\ <= NOT \G7|Mux23~0_combout\;
\G7|ALT_INV_Mux24~1_combout\ <= NOT \G7|Mux24~1_combout\;
\G7|ALT_INV_Mux24~0_combout\ <= NOT \G7|Mux24~0_combout\;
\G7|ALT_INV_Mux25~1_combout\ <= NOT \G7|Mux25~1_combout\;
\G7|ALT_INV_Mux25~0_combout\ <= NOT \G7|Mux25~0_combout\;
\G7|ALT_INV_Mux26~1_combout\ <= NOT \G7|Mux26~1_combout\;
\G7|ALT_INV_Mux26~0_combout\ <= NOT \G7|Mux26~0_combout\;
\G7|ALT_INV_Mux27~1_combout\ <= NOT \G7|Mux27~1_combout\;
\G7|ALT_INV_Mux27~0_combout\ <= NOT \G7|Mux27~0_combout\;
\G7|ALT_INV_Mux28~1_combout\ <= NOT \G7|Mux28~1_combout\;
\G7|ALT_INV_Mux28~0_combout\ <= NOT \G7|Mux28~0_combout\;
\G7|ALT_INV_Mux29~1_combout\ <= NOT \G7|Mux29~1_combout\;
\G7|ALT_INV_Mux29~0_combout\ <= NOT \G7|Mux29~0_combout\;
\G7|ALT_INV_Mux30~1_combout\ <= NOT \G7|Mux30~1_combout\;
\G7|ALT_INV_Mux30~0_combout\ <= NOT \G7|Mux30~0_combout\;
\G7|ALT_INV_Mux31~1_combout\ <= NOT \G7|Mux31~1_combout\;
\G7|ALT_INV_Mux31~0_combout\ <= NOT \G7|Mux31~0_combout\;
\G4|ALT_INV_rt[0]~0_combout\ <= NOT \G4|rt[0]~0_combout\;
\G6|ALT_INV_SAIDA[2]~3_combout\ <= NOT \G6|SAIDA[2]~3_combout\;
\G6|ALT_INV_SAIDA[2]~2_combout\ <= NOT \G6|SAIDA[2]~2_combout\;
\G6|ALT_INV_SAIDA[1]~1_combout\ <= NOT \G6|SAIDA[1]~1_combout\;
\G4|ALT_INV_rs[1]~0_combout\ <= NOT \G4|rs[1]~0_combout\;
\G6|ALT_INV_SAIDA[0]~0_combout\ <= NOT \G6|SAIDA[0]~0_combout\;
\G7|ALT_INV_Mux0~0_combout\ <= NOT \G7|Mux0~0_combout\;
\G7|ALT_INV_Mux1~0_combout\ <= NOT \G7|Mux1~0_combout\;
\G7|ALT_INV_Mux2~0_combout\ <= NOT \G7|Mux2~0_combout\;
\G7|ALT_INV_Mux3~0_combout\ <= NOT \G7|Mux3~0_combout\;
\G7|ALT_INV_Mux4~0_combout\ <= NOT \G7|Mux4~0_combout\;
\G7|ALT_INV_Mux5~0_combout\ <= NOT \G7|Mux5~0_combout\;
\G7|ALT_INV_Mux6~0_combout\ <= NOT \G7|Mux6~0_combout\;
\G7|ALT_INV_Mux7~0_combout\ <= NOT \G7|Mux7~0_combout\;
\G7|ALT_INV_Mux8~0_combout\ <= NOT \G7|Mux8~0_combout\;
\G7|ALT_INV_Mux9~0_combout\ <= NOT \G7|Mux9~0_combout\;
\G7|ALT_INV_Mux10~0_combout\ <= NOT \G7|Mux10~0_combout\;
\G7|ALT_INV_Mux11~0_combout\ <= NOT \G7|Mux11~0_combout\;
\G7|ALT_INV_Mux12~0_combout\ <= NOT \G7|Mux12~0_combout\;
\G7|ALT_INV_Mux13~0_combout\ <= NOT \G7|Mux13~0_combout\;
\G7|ALT_INV_Mux14~0_combout\ <= NOT \G7|Mux14~0_combout\;
\G7|ALT_INV_Mux15~0_combout\ <= NOT \G7|Mux15~0_combout\;
\G7|ALT_INV_Decoder0~0_combout\ <= NOT \G7|Decoder0~0_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_rd[0]~0_combout\ <= NOT \G4|rd[0]~0_combout\;
\G4|ALT_INV_Mux7~1_combout\ <= NOT \G4|Mux7~1_combout\;
\G4|ALT_INV_Mux7~0_combout\ <= NOT \G4|Mux7~0_combout\;
\G4|ALT_INV_Mux6~0_combout\ <= NOT \G4|Mux6~0_combout\;
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
\G17|ALT_INV_ram~525_combout\ <= NOT \G17|ram~525_combout\;
\G17|ALT_INV_ram~521_combout\ <= NOT \G17|ram~521_combout\;
\G17|ALT_INV_ram~517_combout\ <= NOT \G17|ram~517_combout\;
\G17|ALT_INV_ram~513_combout\ <= NOT \G17|ram~513_combout\;
\G17|ALT_INV_ram~509_combout\ <= NOT \G17|ram~509_combout\;
\G17|ALT_INV_ram~505_combout\ <= NOT \G17|ram~505_combout\;
\G17|ALT_INV_ram~501_combout\ <= NOT \G17|ram~501_combout\;
\G17|ALT_INV_ram~497_combout\ <= NOT \G17|ram~497_combout\;
\G17|ALT_INV_ram~493_combout\ <= NOT \G17|ram~493_combout\;
\G17|ALT_INV_ram~489_combout\ <= NOT \G17|ram~489_combout\;
\G17|ALT_INV_ram~485_combout\ <= NOT \G17|ram~485_combout\;
\G17|ALT_INV_ram~481_combout\ <= NOT \G17|ram~481_combout\;
\G17|ALT_INV_ram~477_combout\ <= NOT \G17|ram~477_combout\;
\G17|ALT_INV_ram~473_combout\ <= NOT \G17|ram~473_combout\;
\G17|ALT_INV_ram~469_combout\ <= NOT \G17|ram~469_combout\;
\G17|ALT_INV_ram~465_combout\ <= NOT \G17|ram~465_combout\;
\G17|ALT_INV_ram~461_combout\ <= NOT \G17|ram~461_combout\;
\G17|ALT_INV_ram~457_combout\ <= NOT \G17|ram~457_combout\;
\G17|ALT_INV_ram~453_combout\ <= NOT \G17|ram~453_combout\;
\G17|ALT_INV_ram~449_combout\ <= NOT \G17|ram~449_combout\;
\G17|ALT_INV_ram~445_combout\ <= NOT \G17|ram~445_combout\;
\G17|ALT_INV_ram~441_combout\ <= NOT \G17|ram~441_combout\;
\G10|ALT_INV_SAIDA\(5) <= NOT \G10|SAIDA\(5);
\G12|ALT_INV_SAIDA~4_combout\ <= NOT \G12|SAIDA~4_combout\;
\G10|ALT_INV_SAIDA\(4) <= NOT \G10|SAIDA\(4);
\G12|ALT_INV_SAIDA~3_combout\ <= NOT \G12|SAIDA~3_combout\;
\G10|ALT_INV_SAIDA\(3) <= NOT \G10|SAIDA\(3);
\G12|ALT_INV_SAIDA~2_combout\ <= NOT \G12|SAIDA~2_combout\;
\G10|ALT_INV_SAIDA\(2) <= NOT \G10|SAIDA\(2);
\G12|ALT_INV_SAIDA~1_combout\ <= NOT \G12|SAIDA~1_combout\;
\G10|ALT_INV_SAIDA\(1) <= NOT \G10|SAIDA\(1);
\G12|ALT_INV_SAIDA~0_combout\ <= NOT \G12|SAIDA~0_combout\;
\G11|ALT_INV_S1~1_combout\ <= NOT \G11|S1~1_combout\;
\G11|ALT_INV_S1~0_combout\ <= NOT \G11|S1~0_combout\;
\G16|ALT_INV_Equal1~2_combout\ <= NOT \G16|Equal1~2_combout\;
\G16|ALT_INV_Equal1~1_combout\ <= NOT \G16|Equal1~1_combout\;
\G16|ALT_INV_Equal1~0_combout\ <= NOT \G16|Equal1~0_combout\;
\G10|ALT_INV_SAIDA\(0) <= NOT \G10|SAIDA\(0);
\G18|ALT_INV_SAIDA~58_combout\ <= NOT \G18|SAIDA~58_combout\;
\G18|ALT_INV_SAIDA~57_combout\ <= NOT \G18|SAIDA~57_combout\;
\G18|ALT_INV_SAIDA~56_combout\ <= NOT \G18|SAIDA~56_combout\;
\G18|ALT_INV_SAIDA~55_combout\ <= NOT \G18|SAIDA~55_combout\;
\G18|ALT_INV_SAIDA~54_combout\ <= NOT \G18|SAIDA~54_combout\;
\G18|ALT_INV_SAIDA~53_combout\ <= NOT \G18|SAIDA~53_combout\;
\G18|ALT_INV_SAIDA~52_combout\ <= NOT \G18|SAIDA~52_combout\;
\G18|ALT_INV_SAIDA~51_combout\ <= NOT \G18|SAIDA~51_combout\;
\G18|ALT_INV_SAIDA~50_combout\ <= NOT \G18|SAIDA~50_combout\;
\G18|ALT_INV_SAIDA~49_combout\ <= NOT \G18|SAIDA~49_combout\;
\G18|ALT_INV_SAIDA~48_combout\ <= NOT \G18|SAIDA~48_combout\;
\G18|ALT_INV_SAIDA~47_combout\ <= NOT \G18|SAIDA~47_combout\;
\G18|ALT_INV_SAIDA~46_combout\ <= NOT \G18|SAIDA~46_combout\;
\G18|ALT_INV_SAIDA~45_combout\ <= NOT \G18|SAIDA~45_combout\;
\G18|ALT_INV_SAIDA~44_combout\ <= NOT \G18|SAIDA~44_combout\;
\G18|ALT_INV_SAIDA~43_combout\ <= NOT \G18|SAIDA~43_combout\;
\G18|ALT_INV_SAIDA~42_combout\ <= NOT \G18|SAIDA~42_combout\;
\G18|ALT_INV_SAIDA~41_combout\ <= NOT \G18|SAIDA~41_combout\;
\G18|ALT_INV_SAIDA~40_combout\ <= NOT \G18|SAIDA~40_combout\;
\G18|ALT_INV_SAIDA~39_combout\ <= NOT \G18|SAIDA~39_combout\;
\G18|ALT_INV_SAIDA~38_combout\ <= NOT \G18|SAIDA~38_combout\;
\G18|ALT_INV_SAIDA~37_combout\ <= NOT \G18|SAIDA~37_combout\;
\G18|ALT_INV_SAIDA~36_combout\ <= NOT \G18|SAIDA~36_combout\;
\G18|ALT_INV_SAIDA~35_combout\ <= NOT \G18|SAIDA~35_combout\;
\G18|ALT_INV_SAIDA~34_combout\ <= NOT \G18|SAIDA~34_combout\;
\G18|ALT_INV_SAIDA~33_combout\ <= NOT \G18|SAIDA~33_combout\;
\G18|ALT_INV_SAIDA~32_combout\ <= NOT \G18|SAIDA~32_combout\;
\G18|ALT_INV_SAIDA~31_combout\ <= NOT \G18|SAIDA~31_combout\;
\G18|ALT_INV_SAIDA~30_combout\ <= NOT \G18|SAIDA~30_combout\;
\G18|ALT_INV_SAIDA~29_combout\ <= NOT \G18|SAIDA~29_combout\;
\G18|ALT_INV_SAIDA~28_combout\ <= NOT \G18|SAIDA~28_combout\;
\G18|ALT_INV_SAIDA~27_combout\ <= NOT \G18|SAIDA~27_combout\;
\G18|ALT_INV_SAIDA~26_combout\ <= NOT \G18|SAIDA~26_combout\;
\G18|ALT_INV_SAIDA~25_combout\ <= NOT \G18|SAIDA~25_combout\;
\G18|ALT_INV_SAIDA~24_combout\ <= NOT \G18|SAIDA~24_combout\;
\G18|ALT_INV_SAIDA~23_combout\ <= NOT \G18|SAIDA~23_combout\;
\G18|ALT_INV_SAIDA~22_combout\ <= NOT \G18|SAIDA~22_combout\;
\G18|ALT_INV_SAIDA~21_combout\ <= NOT \G18|SAIDA~21_combout\;
\G18|ALT_INV_SAIDA~20_combout\ <= NOT \G18|SAIDA~20_combout\;
\G18|ALT_INV_SAIDA~19_combout\ <= NOT \G18|SAIDA~19_combout\;
\G18|ALT_INV_SAIDA~18_combout\ <= NOT \G18|SAIDA~18_combout\;
\G18|ALT_INV_SAIDA~17_combout\ <= NOT \G18|SAIDA~17_combout\;
\G18|ALT_INV_SAIDA~16_combout\ <= NOT \G18|SAIDA~16_combout\;
\G18|ALT_INV_SAIDA~15_combout\ <= NOT \G18|SAIDA~15_combout\;
\G18|ALT_INV_SAIDA~14_combout\ <= NOT \G18|SAIDA~14_combout\;
\G18|ALT_INV_SAIDA~13_combout\ <= NOT \G18|SAIDA~13_combout\;
\G18|ALT_INV_SAIDA~12_combout\ <= NOT \G18|SAIDA~12_combout\;
\G18|ALT_INV_SAIDA~11_combout\ <= NOT \G18|SAIDA~11_combout\;
\G16|ALT_INV_Mux13~2_combout\ <= NOT \G16|Mux13~2_combout\;
\G18|ALT_INV_SAIDA~10_combout\ <= NOT \G18|SAIDA~10_combout\;
\G18|ALT_INV_SAIDA~9_combout\ <= NOT \G18|SAIDA~9_combout\;
\G18|ALT_INV_SAIDA~8_combout\ <= NOT \G18|SAIDA~8_combout\;
\G18|ALT_INV_SAIDA~7_combout\ <= NOT \G18|SAIDA~7_combout\;
\G18|ALT_INV_SAIDA~6_combout\ <= NOT \G18|SAIDA~6_combout\;
\G18|ALT_INV_SAIDA~5_combout\ <= NOT \G18|SAIDA~5_combout\;
\G18|ALT_INV_SAIDA~4_combout\ <= NOT \G18|SAIDA~4_combout\;
\G17|ALT_INV_ram~280_combout\ <= NOT \G17|ram~280_combout\;
\G16|ALT_INV_Mux13~1_combout\ <= NOT \G16|Mux13~1_combout\;
\G16|ALT_INV_Mux15~2_combout\ <= NOT \G16|Mux15~2_combout\;
\G16|ALT_INV_Mux14~4_combout\ <= NOT \G16|Mux14~4_combout\;
\G16|ALT_INV_Mux14~3_combout\ <= NOT \G16|Mux14~3_combout\;
\G18|ALT_INV_SAIDA~3_combout\ <= NOT \G18|SAIDA~3_combout\;
\G16|ALT_INV_Mux15~1_combout\ <= NOT \G16|Mux15~1_combout\;
\G4|ALT_INV_rd[0]~1_combout\ <= NOT \G4|rd[0]~1_combout\;
\G18|ALT_INV_SAIDA~2_combout\ <= NOT \G18|SAIDA~2_combout\;
\G16|ALT_INV_Mux12~2_combout\ <= NOT \G16|Mux12~2_combout\;
\G16|ALT_INV_Mux11~2_combout\ <= NOT \G16|Mux11~2_combout\;
\G18|ALT_INV_SAIDA~1_combout\ <= NOT \G18|SAIDA~1_combout\;
\G18|ALT_INV_SAIDA~0_combout\ <= NOT \G18|SAIDA~0_combout\;
\G16|ALT_INV_Mux12~1_combout\ <= NOT \G16|Mux12~1_combout\;
\G16|ALT_INV_Mux11~1_combout\ <= NOT \G16|Mux11~1_combout\;
\G4|ALT_INV_tipoi[0]~2_combout\ <= NOT \G4|tipoi[0]~2_combout\;
\G5|ALT_INV_regdest~0_combout\ <= NOT \G5|regdest~0_combout\;
\G7|ALT_INV_Reg[0][0]~0_combout\ <= NOT \G7|Reg[0][0]~0_combout\;
\G1|G0|G3|ALT_INV_state~q\ <= NOT \G1|G0|G3|state~q\;
\G1|G0|G1|ALT_INV_state~q\ <= NOT \G1|G0|G1|state~q\;
\G1|G0|G0|ALT_INV_state~q\ <= NOT \G1|G0|G0|state~q\;
\G16|ALT_INV_Mux11~0_combout\ <= NOT \G16|Mux11~0_combout\;
\G16|ALT_INV_Mux12~0_combout\ <= NOT \G16|Mux12~0_combout\;
\G16|ALT_INV_Mux13~0_combout\ <= NOT \G16|Mux13~0_combout\;
\G16|ALT_INV_Mux14~2_combout\ <= NOT \G16|Mux14~2_combout\;
\G16|ALT_INV_Mux15~0_combout\ <= NOT \G16|Mux15~0_combout\;
\G16|ALT_INV_Mux14~1_combout\ <= NOT \G16|Mux14~1_combout\;
\G16|ALT_INV_Mux14~0_combout\ <= NOT \G16|Mux14~0_combout\;
\G15|ALT_INV_SAIDA\(5) <= NOT \G15|SAIDA\(5);
\G15|ALT_INV_SAIDA\(4) <= NOT \G15|SAIDA\(4);
\G15|ALT_INV_SAIDA\(3) <= NOT \G15|SAIDA\(3);
\G15|ALT_INV_SAIDA\(0) <= NOT \G15|SAIDA\(0);
\G4|ALT_INV_Mux1~0_combout\ <= NOT \G4|Mux1~0_combout\;
\G4|ALT_INV_Mux2~0_combout\ <= NOT \G4|Mux2~0_combout\;
\G4|ALT_INV_Mux0~4_combout\ <= NOT \G4|Mux0~4_combout\;
\G4|ALT_INV_op[0]~0_combout\ <= NOT \G4|op[0]~0_combout\;
\G4|ALT_INV_rs[0]~1_combout\ <= NOT \G4|rs[0]~1_combout\;
\G7|ALT_INV_Mux16~1_combout\ <= NOT \G7|Mux16~1_combout\;
\G7|ALT_INV_Mux16~0_combout\ <= NOT \G7|Mux16~0_combout\;
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
\G5|ALT_INV_regdest~combout\ <= NOT \G5|regdest~combout\;
\G5|ALT_INV_escrevereg~combout\ <= NOT \G5|escrevereg~combout\;
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
\G7|ALT_INV_Mux15~1_combout\ <= NOT \G7|Mux15~1_combout\;
\ALT_INV_rtl~16_combout\ <= NOT \rtl~16_combout\;
\ALT_INV_rtl~15_combout\ <= NOT \rtl~15_combout\;
\ALT_INV_rtl~14_combout\ <= NOT \rtl~14_combout\;
\ALT_INV_rtl~13_combout\ <= NOT \rtl~13_combout\;
\ALT_INV_rtl~12_combout\ <= NOT \rtl~12_combout\;
\ALT_INV_rtl~11_combout\ <= NOT \rtl~11_combout\;
\ALT_INV_rtl~10_combout\ <= NOT \rtl~10_combout\;
\ALT_INV_rtl~9_combout\ <= NOT \rtl~9_combout\;
\G9|ALT_INV_SAIDA\(4) <= NOT \G9|SAIDA\(4);
\G9|ALT_INV_SAIDA\(2) <= NOT \G9|SAIDA\(2);
\ALT_INV_rtl~8_combout\ <= NOT \rtl~8_combout\;
\ALT_INV_rtl~7_combout\ <= NOT \rtl~7_combout\;
\ALT_INV_rtl~6_combout\ <= NOT \rtl~6_combout\;
\ALT_INV_rtl~5_combout\ <= NOT \rtl~5_combout\;
\ALT_INV_rtl~4_combout\ <= NOT \rtl~4_combout\;
\ALT_INV_rtl~3_combout\ <= NOT \rtl~3_combout\;
\ALT_INV_rtl~2_combout\ <= NOT \rtl~2_combout\;
\ALT_INV_rtl~1_combout\ <= NOT \rtl~1_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\G17|ALT_INV_ram.we_a~0_combout\ <= NOT \G17|ram.we_a~0_combout\;
\G5|ALT_INV_Equal1~0_combout\ <= NOT \G5|Equal1~0_combout\;
\G5|ALT_INV_origalu[2]~1_combout\ <= NOT \G5|origalu[2]~1_combout\;
\G5|ALT_INV_origalu[1]~0_combout\ <= NOT \G5|origalu[1]~0_combout\;
\G14|ALT_INV_SAIDA~19_combout\ <= NOT \G14|SAIDA~19_combout\;
\G14|ALT_INV_SAIDA~18_combout\ <= NOT \G14|SAIDA~18_combout\;
\G14|ALT_INV_SAIDA~17_combout\ <= NOT \G14|SAIDA~17_combout\;
\G14|ALT_INV_SAIDA~16_combout\ <= NOT \G14|SAIDA~16_combout\;
\G14|ALT_INV_SAIDA~15_combout\ <= NOT \G14|SAIDA~15_combout\;
\G14|ALT_INV_SAIDA~14_combout\ <= NOT \G14|SAIDA~14_combout\;
\G14|ALT_INV_SAIDA~13_combout\ <= NOT \G14|SAIDA~13_combout\;
\G14|ALT_INV_SAIDA~12_combout\ <= NOT \G14|SAIDA~12_combout\;
\G14|ALT_INV_SAIDA~11_combout\ <= NOT \G14|SAIDA~11_combout\;
\G14|ALT_INV_SAIDA~10_combout\ <= NOT \G14|SAIDA~10_combout\;
\G14|ALT_INV_SAIDA~9_combout\ <= NOT \G14|SAIDA~9_combout\;
\G14|ALT_INV_SAIDA~8_combout\ <= NOT \G14|SAIDA~8_combout\;
\G14|ALT_INV_SAIDA~7_combout\ <= NOT \G14|SAIDA~7_combout\;
\G14|ALT_INV_SAIDA~6_combout\ <= NOT \G14|SAIDA~6_combout\;
\G14|ALT_INV_SAIDA~5_combout\ <= NOT \G14|SAIDA~5_combout\;
\G14|ALT_INV_SAIDA~4_combout\ <= NOT \G14|SAIDA~4_combout\;
\G14|ALT_INV_SAIDA~3_combout\ <= NOT \G14|SAIDA~3_combout\;
\G14|ALT_INV_SAIDA~2_combout\ <= NOT \G14|SAIDA~2_combout\;
\G14|ALT_INV_SAIDA~1_combout\ <= NOT \G14|SAIDA~1_combout\;
\G7|ALT_INV_Mux27~2_combout\ <= NOT \G7|Mux27~2_combout\;
\G14|ALT_INV_SAIDA~0_combout\ <= NOT \G14|SAIDA~0_combout\;
\G4|ALT_INV_Equal0~0_combout\ <= NOT \G4|Equal0~0_combout\;
\G13|ALT_INV_SAIDA~15_combout\ <= NOT \G13|SAIDA~15_combout\;
\G3|ALT_INV_resshift\(15) <= NOT \G3|resshift\(15);
\G13|ALT_INV_SAIDA~14_combout\ <= NOT \G13|SAIDA~14_combout\;
\G3|ALT_INV_resshift\(14) <= NOT \G3|resshift\(14);
\G13|ALT_INV_SAIDA~13_combout\ <= NOT \G13|SAIDA~13_combout\;
\G13|ALT_INV_SAIDA~12_combout\ <= NOT \G13|SAIDA~12_combout\;
\G13|ALT_INV_SAIDA~11_combout\ <= NOT \G13|SAIDA~11_combout\;
\G13|ALT_INV_SAIDA~10_combout\ <= NOT \G13|SAIDA~10_combout\;
\G13|ALT_INV_SAIDA~9_combout\ <= NOT \G13|SAIDA~9_combout\;
\G13|ALT_INV_SAIDA~8_combout\ <= NOT \G13|SAIDA~8_combout\;
\G13|ALT_INV_SAIDA~7_combout\ <= NOT \G13|SAIDA~7_combout\;
\G13|ALT_INV_SAIDA~6_combout\ <= NOT \G13|SAIDA~6_combout\;
\G13|ALT_INV_SAIDA~5_combout\ <= NOT \G13|SAIDA~5_combout\;
\G13|ALT_INV_SAIDA~4_combout\ <= NOT \G13|SAIDA~4_combout\;
\G13|ALT_INV_SAIDA~3_combout\ <= NOT \G13|SAIDA~3_combout\;
\G13|ALT_INV_SAIDA~2_combout\ <= NOT \G13|SAIDA~2_combout\;
\G13|ALT_INV_SAIDA~1_combout\ <= NOT \G13|SAIDA~1_combout\;
\G13|ALT_INV_SAIDA~0_combout\ <= NOT \G13|SAIDA~0_combout\;
\G12|ALT_INV_SAIDA~15_combout\ <= NOT \G12|SAIDA~15_combout\;
\G10|ALT_INV_SAIDA\(15) <= NOT \G10|SAIDA\(15);
\G12|ALT_INV_SAIDA~14_combout\ <= NOT \G12|SAIDA~14_combout\;
\G10|ALT_INV_SAIDA\(14) <= NOT \G10|SAIDA\(14);
\G12|ALT_INV_SAIDA~13_combout\ <= NOT \G12|SAIDA~13_combout\;
\G10|ALT_INV_SAIDA\(13) <= NOT \G10|SAIDA\(13);
\G12|ALT_INV_SAIDA~12_combout\ <= NOT \G12|SAIDA~12_combout\;
\G10|ALT_INV_SAIDA\(12) <= NOT \G10|SAIDA\(12);
\G12|ALT_INV_SAIDA~11_combout\ <= NOT \G12|SAIDA~11_combout\;
\G10|ALT_INV_SAIDA\(11) <= NOT \G10|SAIDA\(11);
\G12|ALT_INV_SAIDA~10_combout\ <= NOT \G12|SAIDA~10_combout\;
\G10|ALT_INV_SAIDA\(10) <= NOT \G10|SAIDA\(10);
\G12|ALT_INV_SAIDA~9_combout\ <= NOT \G12|SAIDA~9_combout\;
\G10|ALT_INV_SAIDA\(9) <= NOT \G10|SAIDA\(9);
\G12|ALT_INV_SAIDA~8_combout\ <= NOT \G12|SAIDA~8_combout\;
\G10|ALT_INV_SAIDA\(8) <= NOT \G10|SAIDA\(8);
\G12|ALT_INV_SAIDA~7_combout\ <= NOT \G12|SAIDA~7_combout\;
\G10|ALT_INV_SAIDA\(7) <= NOT \G10|SAIDA\(7);
\G12|ALT_INV_SAIDA~6_combout\ <= NOT \G12|SAIDA~6_combout\;
\G10|ALT_INV_SAIDA\(6) <= NOT \G10|SAIDA\(6);
\G12|ALT_INV_SAIDA~5_combout\ <= NOT \G12|SAIDA~5_combout\;
\G17|ALT_INV_ram~100_combout\ <= NOT \G17|ram~100_combout\;
\G17|ALT_INV_ram~68_combout\ <= NOT \G17|ram~68_combout\;
\G17|ALT_INV_ram~116_combout\ <= NOT \G17|ram~116_combout\;
\G17|ALT_INV_ram~84_combout\ <= NOT \G17|ram~84_combout\;
\G17|ALT_INV_ram~99_combout\ <= NOT \G17|ram~99_combout\;
\G17|ALT_INV_ram~67_combout\ <= NOT \G17|ram~67_combout\;
\G17|ALT_INV_ram~115_combout\ <= NOT \G17|ram~115_combout\;
\G17|ALT_INV_ram~83_combout\ <= NOT \G17|ram~83_combout\;
\G17|ALT_INV_ram~227_combout\ <= NOT \G17|ram~227_combout\;
\G17|ALT_INV_ram~195_combout\ <= NOT \G17|ram~195_combout\;
\G17|ALT_INV_ram~243_combout\ <= NOT \G17|ram~243_combout\;
\G17|ALT_INV_ram~211_combout\ <= NOT \G17|ram~211_combout\;
\G17|ALT_INV_ram~226_combout\ <= NOT \G17|ram~226_combout\;
\G17|ALT_INV_ram~194_combout\ <= NOT \G17|ram~194_combout\;
\G17|ALT_INV_ram~242_combout\ <= NOT \G17|ram~242_combout\;
\G17|ALT_INV_ram~210_combout\ <= NOT \G17|ram~210_combout\;
\G17|ALT_INV_ram~98_combout\ <= NOT \G17|ram~98_combout\;
\G17|ALT_INV_ram~66_combout\ <= NOT \G17|ram~66_combout\;
\G17|ALT_INV_ram~114_combout\ <= NOT \G17|ram~114_combout\;
\G17|ALT_INV_ram~82_combout\ <= NOT \G17|ram~82_combout\;
\G17|ALT_INV_ram~225_combout\ <= NOT \G17|ram~225_combout\;
\G17|ALT_INV_ram~193_combout\ <= NOT \G17|ram~193_combout\;
\G17|ALT_INV_ram~241_combout\ <= NOT \G17|ram~241_combout\;
\G17|ALT_INV_ram~209_combout\ <= NOT \G17|ram~209_combout\;
\G17|ALT_INV_ram~97_combout\ <= NOT \G17|ram~97_combout\;
\G17|ALT_INV_ram~65_combout\ <= NOT \G17|ram~65_combout\;
\G17|ALT_INV_ram~113_combout\ <= NOT \G17|ram~113_combout\;
\G17|ALT_INV_ram~81_combout\ <= NOT \G17|ram~81_combout\;
\G17|ALT_INV_ram~224_combout\ <= NOT \G17|ram~224_combout\;
\G17|ALT_INV_ram~192_combout\ <= NOT \G17|ram~192_combout\;
\G17|ALT_INV_ram~240_combout\ <= NOT \G17|ram~240_combout\;
\G17|ALT_INV_ram~208_combout\ <= NOT \G17|ram~208_combout\;
\G17|ALT_INV_ram~96_combout\ <= NOT \G17|ram~96_combout\;
\G17|ALT_INV_ram~64_combout\ <= NOT \G17|ram~64_combout\;
\G17|ALT_INV_ram~112_combout\ <= NOT \G17|ram~112_combout\;
\G17|ALT_INV_ram~80_combout\ <= NOT \G17|ram~80_combout\;
\G17|ALT_INV_ram~271_combout\ <= NOT \G17|ram~271_combout\;
\G17|ALT_INV_ram~270_combout\ <= NOT \G17|ram~270_combout\;
\G17|ALT_INV_ram~269_combout\ <= NOT \G17|ram~269_combout\;
\G17|ALT_INV_ram~268_combout\ <= NOT \G17|ram~268_combout\;
\G17|ALT_INV_ram~267_combout\ <= NOT \G17|ram~267_combout\;
\G17|ALT_INV_ram~266_combout\ <= NOT \G17|ram~266_combout\;
\G17|ALT_INV_ram~265_combout\ <= NOT \G17|ram~265_combout\;
\G17|ALT_INV_ram~264_combout\ <= NOT \G17|ram~264_combout\;
\G17|ALT_INV_ram~263_combout\ <= NOT \G17|ram~263_combout\;
\G17|ALT_INV_ram~262_combout\ <= NOT \G17|ram~262_combout\;
\G17|ALT_INV_ram~261_combout\ <= NOT \G17|ram~261_combout\;
\G17|ALT_INV_ram~260_combout\ <= NOT \G17|ram~260_combout\;
\G17|ALT_INV_ram~259_combout\ <= NOT \G17|ram~259_combout\;
\G17|ALT_INV_ram~258_combout\ <= NOT \G17|ram~258_combout\;
\G17|ALT_INV_ram~257_combout\ <= NOT \G17|ram~257_combout\;
\G17|ALT_INV_ram~256_combout\ <= NOT \G17|ram~256_combout\;
\G5|ALT_INV_memparareg~combout\ <= NOT \G5|memparareg~combout\;
\G5|ALT_INV_origalu\(2) <= NOT \G5|origalu\(2);
\G5|ALT_INV_origalu\(1) <= NOT \G5|origalu\(1);
\G5|ALT_INV_origalu\(0) <= NOT \G5|origalu\(0);
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
\G17|ALT_INV_ram~4_combout\ <= NOT \G17|ram~4_combout\;
\G17|ALT_INV_ram~52_combout\ <= NOT \G17|ram~52_combout\;
\G17|ALT_INV_ram~20_combout\ <= NOT \G17|ram~20_combout\;
\G17|ALT_INV_ram~35_combout\ <= NOT \G17|ram~35_combout\;
\G17|ALT_INV_ram~3_combout\ <= NOT \G17|ram~3_combout\;
\G17|ALT_INV_ram~51_combout\ <= NOT \G17|ram~51_combout\;
\G17|ALT_INV_ram~19_combout\ <= NOT \G17|ram~19_combout\;
\G17|ALT_INV_ram~163_combout\ <= NOT \G17|ram~163_combout\;
\G17|ALT_INV_ram~131_combout\ <= NOT \G17|ram~131_combout\;
\G17|ALT_INV_ram~179_combout\ <= NOT \G17|ram~179_combout\;
\G17|ALT_INV_ram~147_combout\ <= NOT \G17|ram~147_combout\;
\G17|ALT_INV_ram~162_combout\ <= NOT \G17|ram~162_combout\;
\G17|ALT_INV_ram~130_combout\ <= NOT \G17|ram~130_combout\;
\G17|ALT_INV_ram~178_combout\ <= NOT \G17|ram~178_combout\;
\G17|ALT_INV_ram~146_combout\ <= NOT \G17|ram~146_combout\;
\G17|ALT_INV_ram~34_combout\ <= NOT \G17|ram~34_combout\;
\G17|ALT_INV_ram~2_combout\ <= NOT \G17|ram~2_combout\;
\G17|ALT_INV_ram~50_combout\ <= NOT \G17|ram~50_combout\;
\G17|ALT_INV_ram~18_combout\ <= NOT \G17|ram~18_combout\;
\G17|ALT_INV_ram~161_combout\ <= NOT \G17|ram~161_combout\;
\G17|ALT_INV_ram~129_combout\ <= NOT \G17|ram~129_combout\;
\G17|ALT_INV_ram~177_combout\ <= NOT \G17|ram~177_combout\;
\G17|ALT_INV_ram~145_combout\ <= NOT \G17|ram~145_combout\;
\G17|ALT_INV_ram~33_combout\ <= NOT \G17|ram~33_combout\;
\G17|ALT_INV_ram~1_combout\ <= NOT \G17|ram~1_combout\;
\G17|ALT_INV_ram~49_combout\ <= NOT \G17|ram~49_combout\;
\G17|ALT_INV_ram~17_combout\ <= NOT \G17|ram~17_combout\;
\G17|ALT_INV_ram~160_combout\ <= NOT \G17|ram~160_combout\;
\G17|ALT_INV_ram~128_combout\ <= NOT \G17|ram~128_combout\;
\G17|ALT_INV_ram~176_combout\ <= NOT \G17|ram~176_combout\;
\G17|ALT_INV_ram~144_combout\ <= NOT \G17|ram~144_combout\;
\G17|ALT_INV_ram~32_combout\ <= NOT \G17|ram~32_combout\;
\G17|ALT_INV_ram~0_combout\ <= NOT \G17|ram~0_combout\;
\G17|ALT_INV_ram~48_combout\ <= NOT \G17|ram~48_combout\;
\G17|ALT_INV_ram~16_combout\ <= NOT \G17|ram~16_combout\;
\G17|ALT_INV_ram~239_combout\ <= NOT \G17|ram~239_combout\;
\G17|ALT_INV_ram~207_combout\ <= NOT \G17|ram~207_combout\;
\G17|ALT_INV_ram~255_combout\ <= NOT \G17|ram~255_combout\;
\G17|ALT_INV_ram~223_combout\ <= NOT \G17|ram~223_combout\;
\G17|ALT_INV_ram~111_combout\ <= NOT \G17|ram~111_combout\;
\G17|ALT_INV_ram~79_combout\ <= NOT \G17|ram~79_combout\;
\G17|ALT_INV_ram~127_combout\ <= NOT \G17|ram~127_combout\;
\G17|ALT_INV_ram~95_combout\ <= NOT \G17|ram~95_combout\;
\G17|ALT_INV_ram~238_combout\ <= NOT \G17|ram~238_combout\;
\G17|ALT_INV_ram~206_combout\ <= NOT \G17|ram~206_combout\;
\G17|ALT_INV_ram~254_combout\ <= NOT \G17|ram~254_combout\;
\G17|ALT_INV_ram~222_combout\ <= NOT \G17|ram~222_combout\;
\G17|ALT_INV_ram~110_combout\ <= NOT \G17|ram~110_combout\;
\G17|ALT_INV_ram~78_combout\ <= NOT \G17|ram~78_combout\;
\G17|ALT_INV_ram~126_combout\ <= NOT \G17|ram~126_combout\;
\G17|ALT_INV_ram~94_combout\ <= NOT \G17|ram~94_combout\;
\G17|ALT_INV_ram~237_combout\ <= NOT \G17|ram~237_combout\;
\G17|ALT_INV_ram~205_combout\ <= NOT \G17|ram~205_combout\;
\G17|ALT_INV_ram~253_combout\ <= NOT \G17|ram~253_combout\;
\G17|ALT_INV_ram~221_combout\ <= NOT \G17|ram~221_combout\;
\G17|ALT_INV_ram~109_combout\ <= NOT \G17|ram~109_combout\;
\G17|ALT_INV_ram~77_combout\ <= NOT \G17|ram~77_combout\;
\G17|ALT_INV_ram~125_combout\ <= NOT \G17|ram~125_combout\;
\G17|ALT_INV_ram~93_combout\ <= NOT \G17|ram~93_combout\;
\G17|ALT_INV_ram~236_combout\ <= NOT \G17|ram~236_combout\;
\G17|ALT_INV_ram~204_combout\ <= NOT \G17|ram~204_combout\;
\G17|ALT_INV_ram~252_combout\ <= NOT \G17|ram~252_combout\;
\G17|ALT_INV_ram~220_combout\ <= NOT \G17|ram~220_combout\;
\G17|ALT_INV_ram~108_combout\ <= NOT \G17|ram~108_combout\;
\G17|ALT_INV_ram~76_combout\ <= NOT \G17|ram~76_combout\;
\G17|ALT_INV_ram~124_combout\ <= NOT \G17|ram~124_combout\;
\G17|ALT_INV_ram~92_combout\ <= NOT \G17|ram~92_combout\;
\G17|ALT_INV_ram~235_combout\ <= NOT \G17|ram~235_combout\;
\G17|ALT_INV_ram~203_combout\ <= NOT \G17|ram~203_combout\;
\G17|ALT_INV_ram~251_combout\ <= NOT \G17|ram~251_combout\;
\G17|ALT_INV_ram~219_combout\ <= NOT \G17|ram~219_combout\;
\G17|ALT_INV_ram~107_combout\ <= NOT \G17|ram~107_combout\;
\G17|ALT_INV_ram~75_combout\ <= NOT \G17|ram~75_combout\;
\G17|ALT_INV_ram~123_combout\ <= NOT \G17|ram~123_combout\;
\G17|ALT_INV_ram~91_combout\ <= NOT \G17|ram~91_combout\;
\G17|ALT_INV_ram~234_combout\ <= NOT \G17|ram~234_combout\;
\G17|ALT_INV_ram~202_combout\ <= NOT \G17|ram~202_combout\;
\G17|ALT_INV_ram~250_combout\ <= NOT \G17|ram~250_combout\;
\G17|ALT_INV_ram~218_combout\ <= NOT \G17|ram~218_combout\;
\G17|ALT_INV_ram~106_combout\ <= NOT \G17|ram~106_combout\;
\G17|ALT_INV_ram~74_combout\ <= NOT \G17|ram~74_combout\;
\G17|ALT_INV_ram~122_combout\ <= NOT \G17|ram~122_combout\;
\G17|ALT_INV_ram~90_combout\ <= NOT \G17|ram~90_combout\;
\G17|ALT_INV_ram~233_combout\ <= NOT \G17|ram~233_combout\;
\G17|ALT_INV_ram~201_combout\ <= NOT \G17|ram~201_combout\;
\G17|ALT_INV_ram~249_combout\ <= NOT \G17|ram~249_combout\;
\G17|ALT_INV_ram~217_combout\ <= NOT \G17|ram~217_combout\;
\G17|ALT_INV_ram~105_combout\ <= NOT \G17|ram~105_combout\;
\G17|ALT_INV_ram~73_combout\ <= NOT \G17|ram~73_combout\;
\G17|ALT_INV_ram~121_combout\ <= NOT \G17|ram~121_combout\;
\G17|ALT_INV_ram~89_combout\ <= NOT \G17|ram~89_combout\;
\G17|ALT_INV_ram~232_combout\ <= NOT \G17|ram~232_combout\;
\G17|ALT_INV_ram~200_combout\ <= NOT \G17|ram~200_combout\;
\G17|ALT_INV_ram~248_combout\ <= NOT \G17|ram~248_combout\;
\G17|ALT_INV_ram~216_combout\ <= NOT \G17|ram~216_combout\;
\G17|ALT_INV_ram~104_combout\ <= NOT \G17|ram~104_combout\;
\G17|ALT_INV_ram~72_combout\ <= NOT \G17|ram~72_combout\;
\G17|ALT_INV_ram~120_combout\ <= NOT \G17|ram~120_combout\;
\G17|ALT_INV_ram~88_combout\ <= NOT \G17|ram~88_combout\;
\G17|ALT_INV_ram~231_combout\ <= NOT \G17|ram~231_combout\;
\G17|ALT_INV_ram~199_combout\ <= NOT \G17|ram~199_combout\;
\G17|ALT_INV_ram~247_combout\ <= NOT \G17|ram~247_combout\;
\G17|ALT_INV_ram~215_combout\ <= NOT \G17|ram~215_combout\;
\G17|ALT_INV_ram~103_combout\ <= NOT \G17|ram~103_combout\;
\G17|ALT_INV_ram~71_combout\ <= NOT \G17|ram~71_combout\;
\G17|ALT_INV_ram~119_combout\ <= NOT \G17|ram~119_combout\;
\G17|ALT_INV_ram~87_combout\ <= NOT \G17|ram~87_combout\;
\G17|ALT_INV_ram~230_combout\ <= NOT \G17|ram~230_combout\;
\G17|ALT_INV_ram~198_combout\ <= NOT \G17|ram~198_combout\;
\G17|ALT_INV_ram~246_combout\ <= NOT \G17|ram~246_combout\;
\G17|ALT_INV_ram~214_combout\ <= NOT \G17|ram~214_combout\;
\G17|ALT_INV_ram~102_combout\ <= NOT \G17|ram~102_combout\;
\G17|ALT_INV_ram~70_combout\ <= NOT \G17|ram~70_combout\;
\G17|ALT_INV_ram~118_combout\ <= NOT \G17|ram~118_combout\;
\G17|ALT_INV_ram~86_combout\ <= NOT \G17|ram~86_combout\;
\G17|ALT_INV_ram~229_combout\ <= NOT \G17|ram~229_combout\;
\G17|ALT_INV_ram~197_combout\ <= NOT \G17|ram~197_combout\;
\G17|ALT_INV_ram~245_combout\ <= NOT \G17|ram~245_combout\;
\G17|ALT_INV_ram~213_combout\ <= NOT \G17|ram~213_combout\;
\G17|ALT_INV_ram~101_combout\ <= NOT \G17|ram~101_combout\;
\G17|ALT_INV_ram~69_combout\ <= NOT \G17|ram~69_combout\;
\G17|ALT_INV_ram~117_combout\ <= NOT \G17|ram~117_combout\;
\G17|ALT_INV_ram~85_combout\ <= NOT \G17|ram~85_combout\;
\G17|ALT_INV_ram~228_combout\ <= NOT \G17|ram~228_combout\;
\G17|ALT_INV_ram~196_combout\ <= NOT \G17|ram~196_combout\;
\G17|ALT_INV_ram~244_combout\ <= NOT \G17|ram~244_combout\;
\G17|ALT_INV_ram~212_combout\ <= NOT \G17|ram~212_combout\;
\G17|ALT_INV_ram~175_combout\ <= NOT \G17|ram~175_combout\;
\G17|ALT_INV_ram~143_combout\ <= NOT \G17|ram~143_combout\;
\G17|ALT_INV_ram~191_combout\ <= NOT \G17|ram~191_combout\;
\G17|ALT_INV_ram~159_combout\ <= NOT \G17|ram~159_combout\;
\G17|ALT_INV_ram~47_combout\ <= NOT \G17|ram~47_combout\;
\G17|ALT_INV_ram~15_combout\ <= NOT \G17|ram~15_combout\;
\G17|ALT_INV_ram~63_combout\ <= NOT \G17|ram~63_combout\;
\G17|ALT_INV_ram~31_combout\ <= NOT \G17|ram~31_combout\;
\G17|ALT_INV_ram~174_combout\ <= NOT \G17|ram~174_combout\;
\G17|ALT_INV_ram~142_combout\ <= NOT \G17|ram~142_combout\;
\G17|ALT_INV_ram~190_combout\ <= NOT \G17|ram~190_combout\;
\G17|ALT_INV_ram~158_combout\ <= NOT \G17|ram~158_combout\;
\G17|ALT_INV_ram~46_combout\ <= NOT \G17|ram~46_combout\;
\G17|ALT_INV_ram~14_combout\ <= NOT \G17|ram~14_combout\;
\G17|ALT_INV_ram~62_combout\ <= NOT \G17|ram~62_combout\;
\G17|ALT_INV_ram~30_combout\ <= NOT \G17|ram~30_combout\;
\G17|ALT_INV_ram~173_combout\ <= NOT \G17|ram~173_combout\;
\G17|ALT_INV_ram~141_combout\ <= NOT \G17|ram~141_combout\;
\G17|ALT_INV_ram~189_combout\ <= NOT \G17|ram~189_combout\;
\G17|ALT_INV_ram~157_combout\ <= NOT \G17|ram~157_combout\;
\G17|ALT_INV_ram~45_combout\ <= NOT \G17|ram~45_combout\;
\G17|ALT_INV_ram~13_combout\ <= NOT \G17|ram~13_combout\;
\G17|ALT_INV_ram~61_combout\ <= NOT \G17|ram~61_combout\;
\G17|ALT_INV_ram~29_combout\ <= NOT \G17|ram~29_combout\;
\G17|ALT_INV_ram~172_combout\ <= NOT \G17|ram~172_combout\;
\G17|ALT_INV_ram~140_combout\ <= NOT \G17|ram~140_combout\;
\G17|ALT_INV_ram~188_combout\ <= NOT \G17|ram~188_combout\;
\G17|ALT_INV_ram~156_combout\ <= NOT \G17|ram~156_combout\;
\G17|ALT_INV_ram~44_combout\ <= NOT \G17|ram~44_combout\;
\G17|ALT_INV_ram~12_combout\ <= NOT \G17|ram~12_combout\;
\G17|ALT_INV_ram~60_combout\ <= NOT \G17|ram~60_combout\;
\G17|ALT_INV_ram~28_combout\ <= NOT \G17|ram~28_combout\;
\G17|ALT_INV_ram~171_combout\ <= NOT \G17|ram~171_combout\;
\G17|ALT_INV_ram~139_combout\ <= NOT \G17|ram~139_combout\;
\G17|ALT_INV_ram~187_combout\ <= NOT \G17|ram~187_combout\;
\G17|ALT_INV_ram~155_combout\ <= NOT \G17|ram~155_combout\;
\G17|ALT_INV_ram~43_combout\ <= NOT \G17|ram~43_combout\;
\G17|ALT_INV_ram~11_combout\ <= NOT \G17|ram~11_combout\;
\G17|ALT_INV_ram~59_combout\ <= NOT \G17|ram~59_combout\;
\G17|ALT_INV_ram~27_combout\ <= NOT \G17|ram~27_combout\;
\G17|ALT_INV_ram~170_combout\ <= NOT \G17|ram~170_combout\;
\G17|ALT_INV_ram~138_combout\ <= NOT \G17|ram~138_combout\;
\G17|ALT_INV_ram~186_combout\ <= NOT \G17|ram~186_combout\;
\G17|ALT_INV_ram~154_combout\ <= NOT \G17|ram~154_combout\;
\G17|ALT_INV_ram~42_combout\ <= NOT \G17|ram~42_combout\;
\G17|ALT_INV_ram~10_combout\ <= NOT \G17|ram~10_combout\;
\G17|ALT_INV_ram~58_combout\ <= NOT \G17|ram~58_combout\;
\G17|ALT_INV_ram~26_combout\ <= NOT \G17|ram~26_combout\;
\G17|ALT_INV_ram~169_combout\ <= NOT \G17|ram~169_combout\;
\G17|ALT_INV_ram~137_combout\ <= NOT \G17|ram~137_combout\;
\G17|ALT_INV_ram~185_combout\ <= NOT \G17|ram~185_combout\;
\G17|ALT_INV_ram~153_combout\ <= NOT \G17|ram~153_combout\;
\G17|ALT_INV_ram~41_combout\ <= NOT \G17|ram~41_combout\;
\G17|ALT_INV_ram~9_combout\ <= NOT \G17|ram~9_combout\;
\G17|ALT_INV_ram~57_combout\ <= NOT \G17|ram~57_combout\;
\G17|ALT_INV_ram~25_combout\ <= NOT \G17|ram~25_combout\;
\G17|ALT_INV_ram~168_combout\ <= NOT \G17|ram~168_combout\;
\G17|ALT_INV_ram~136_combout\ <= NOT \G17|ram~136_combout\;
\G17|ALT_INV_ram~184_combout\ <= NOT \G17|ram~184_combout\;
\G17|ALT_INV_ram~152_combout\ <= NOT \G17|ram~152_combout\;
\G17|ALT_INV_ram~40_combout\ <= NOT \G17|ram~40_combout\;
\G17|ALT_INV_ram~8_combout\ <= NOT \G17|ram~8_combout\;
\G17|ALT_INV_ram~56_combout\ <= NOT \G17|ram~56_combout\;
\G17|ALT_INV_ram~24_combout\ <= NOT \G17|ram~24_combout\;
\G17|ALT_INV_ram~167_combout\ <= NOT \G17|ram~167_combout\;
\G17|ALT_INV_ram~135_combout\ <= NOT \G17|ram~135_combout\;
\G17|ALT_INV_ram~183_combout\ <= NOT \G17|ram~183_combout\;
\G17|ALT_INV_ram~151_combout\ <= NOT \G17|ram~151_combout\;
\G17|ALT_INV_ram~39_combout\ <= NOT \G17|ram~39_combout\;
\G17|ALT_INV_ram~7_combout\ <= NOT \G17|ram~7_combout\;
\G17|ALT_INV_ram~55_combout\ <= NOT \G17|ram~55_combout\;
\G17|ALT_INV_ram~23_combout\ <= NOT \G17|ram~23_combout\;
\G17|ALT_INV_ram~166_combout\ <= NOT \G17|ram~166_combout\;
\G17|ALT_INV_ram~134_combout\ <= NOT \G17|ram~134_combout\;
\G17|ALT_INV_ram~182_combout\ <= NOT \G17|ram~182_combout\;
\G17|ALT_INV_ram~150_combout\ <= NOT \G17|ram~150_combout\;
\G17|ALT_INV_ram~38_combout\ <= NOT \G17|ram~38_combout\;
\G17|ALT_INV_ram~6_combout\ <= NOT \G17|ram~6_combout\;
\G17|ALT_INV_ram~54_combout\ <= NOT \G17|ram~54_combout\;
\G17|ALT_INV_ram~22_combout\ <= NOT \G17|ram~22_combout\;
\G17|ALT_INV_ram~165_combout\ <= NOT \G17|ram~165_combout\;
\G17|ALT_INV_ram~133_combout\ <= NOT \G17|ram~133_combout\;
\G17|ALT_INV_ram~181_combout\ <= NOT \G17|ram~181_combout\;
\G17|ALT_INV_ram~149_combout\ <= NOT \G17|ram~149_combout\;
\G17|ALT_INV_ram~37_combout\ <= NOT \G17|ram~37_combout\;
\G17|ALT_INV_ram~5_combout\ <= NOT \G17|ram~5_combout\;
\G17|ALT_INV_ram~53_combout\ <= NOT \G17|ram~53_combout\;
\G17|ALT_INV_ram~21_combout\ <= NOT \G17|ram~21_combout\;
\G17|ALT_INV_ram~164_combout\ <= NOT \G17|ram~164_combout\;
\G17|ALT_INV_ram~132_combout\ <= NOT \G17|ram~132_combout\;
\G17|ALT_INV_ram~180_combout\ <= NOT \G17|ram~180_combout\;
\G17|ALT_INV_ram~148_combout\ <= NOT \G17|ram~148_combout\;
\G17|ALT_INV_ram~36_combout\ <= NOT \G17|ram~36_combout\;
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
	i => \G7|ALT_INV_Mux14~0_combout\,
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
	i => \G7|ALT_INV_Mux12~0_combout\,
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
	i => \G7|ALT_INV_Mux11~0_combout\,
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
	i => \G7|ALT_INV_Mux10~0_combout\,
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
	i => \G7|ALT_INV_Mux9~0_combout\,
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
	i => \G7|ALT_INV_Mux8~0_combout\,
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
	i => \G7|ALT_INV_Mux7~0_combout\,
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
	i => \G7|ALT_INV_Mux6~0_combout\,
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
	i => \G7|ALT_INV_Mux5~0_combout\,
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
	i => \G7|ALT_INV_Mux4~0_combout\,
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
	i => \G7|ALT_INV_Mux3~0_combout\,
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
	i => \G7|ALT_INV_Mux2~0_combout\,
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
	i => \G7|ALT_INV_Mux1~0_combout\,
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
	i => \G7|ALT_INV_Mux0~0_combout\,
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
	i => \G7|Mux31~1_combout\,
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
	i => \G7|Mux30~1_combout\,
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
	i => \G7|Mux29~1_combout\,
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
	i => \G7|Mux28~1_combout\,
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
	i => \G7|Mux27~1_combout\,
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
	i => \G7|Mux26~1_combout\,
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
	i => \G7|Mux25~1_combout\,
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
	i => \G7|Mux24~1_combout\,
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
	i => \G7|Mux23~1_combout\,
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
	i => \G7|Mux22~1_combout\,
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
	i => \G7|Mux21~1_combout\,
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
	i => \G7|Mux20~1_combout\,
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
	i => \G7|Mux19~1_combout\,
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
	i => \G7|Mux18~1_combout\,
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
	i => \G7|Mux17~1_combout\,
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
	i => \G7|Mux16~1_combout\,
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
	i => \G6|SAIDA[0]~0_combout\,
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
	i => \G6|ALT_INV_SAIDA[1]~1_combout\,
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
	i => \G6|ALT_INV_SAIDA[2]~3_combout\,
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
	i => \G4|rs[0]~1_combout\,
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
	i => \G4|rs[1]~0_combout\,
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
	i => \G6|SAIDA[2]~2_combout\,
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
	i => \G4|op[0]~0_combout\,
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
	i => \G4|rs[0]~1_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => \G4|rt[0]~0_combout\,
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
	i => GND,
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
	i => \G4|funct[0]~0_combout\,
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
	i => \G4|tipoi[0]~0_combout\,
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
	i => \G4|tipoi[2]~1_combout\,
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
	i => \G15|SAIDA\(0),
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
	i => \G15|SAIDA\(3),
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
	i => \G15|SAIDA\(4),
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
	i => \G15|SAIDA\(5),
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
	i => \G16|Mux15~0_combout\,
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
	i => \G16|Mux14~2_combout\,
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
	i => \G16|Mux13~0_combout\,
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
	i => \G16|Mux12~0_combout\,
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
	i => \G16|Mux11~0_combout\,
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
	i => \G16|Mux10~0_combout\,
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
	i => \G16|Mux9~0_combout\,
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
	i => \G16|Mux8~0_combout\,
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
	i => \G16|Mux7~0_combout\,
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
	i => \G16|Mux6~0_combout\,
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
	i => \G16|Mux5~0_combout\,
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
	i => \G16|Mux4~0_combout\,
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
	i => \G16|Mux3~0_combout\,
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
	i => \G16|Mux2~0_combout\,
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
	i => \G16|Mux1~0_combout\,
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
	i => \G16|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[15]~output_o\);

\saida_cont_sincz1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G0|G0|state~q\,
	devoe => ww_devoe,
	o => \saida_cont_sincz1~output_o\);

\saida_cont_sincz2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G0|G1|state~q\,
	devoe => ww_devoe,
	o => \saida_cont_sincz2~output_o\);

\saida_cont_sincz3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G0|G3|state~q\,
	devoe => ww_devoe,
	o => \saida_cont_sincz3~output_o\);

\funcionou~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \funcionou~output_o\);

\Flag_regdest_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|regdest~combout\,
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
	i => \G5|origalu\(0),
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
	i => \G5|origalu\(1),
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
	i => \G5|origalu\(2),
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
	i => \G5|memparareg~combout\,
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
	i => \G5|escrevereg~combout\,
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
	i => \G5|memparareg~combout\,
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
	i => \G5|origalu\(1),
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
	i => \G5|origalu\(2),
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
	i => \G5|escrevereg~combout\,
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
	i => \G5|origalu\(2),
	devoe => ww_devoe,
	o => \Flag_jump_OUT~output_o\);

\Clock_Sistema~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_Sistema,
	o => \Clock_Sistema~input_o\);

\G10|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(0));

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

\G5|origalu[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[2]~1_combout\ = (!\G4|Mux7~1_combout\) # (!\G4|rs[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux7~1_combout\,
	datab => \G4|ALT_INV_rs[0]~1_combout\,
	combout => \G5|origalu[2]~1_combout\);

\G5|regdest~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|regdest~0_combout\ = (\Clock_Sistema~input_o\ & ((!\G4|Mux6~0_combout\) # (!\G4|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010100010101000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux6~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G5|regdest~0_combout\);

\G5|origalu[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu\(2) = ( \G5|origalu\(2) & ( \G5|regdest~0_combout\ & ( !\G5|origalu[2]~1_combout\ ) ) ) # ( !\G5|origalu\(2) & ( \G5|regdest~0_combout\ & ( !\G5|origalu[2]~1_combout\ ) ) ) # ( \G5|origalu\(2) & ( !\G5|regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G5|ALT_INV_origalu[2]~1_combout\,
	datae => \G5|ALT_INV_origalu\(2),
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|origalu\(2));

\G15|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G5|origalu\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(5));

\G11|S1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|S1~1_combout\ = (\G15|SAIDA\(3) & (\G15|SAIDA\(4) & (!\G15|SAIDA\(5) & \G5|origalu\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(3),
	datab => \G15|ALT_INV_SAIDA\(4),
	datac => \G15|ALT_INV_SAIDA\(5),
	datad => \G5|ALT_INV_origalu\(2),
	combout => \G11|S1~1_combout\);

\G4|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~4_combout\ = (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux0~4_combout\);

\G4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux7~0_combout\ = (!\G1|pout\(3) & ((!\G1|pout\(1) & ((\G1|pout\(2)))) # (\G1|pout\(1) & ((!\G1|pout\(0)) # (!\G1|pout\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000000000001111100000000000111110000000000011111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	combout => \G4|Mux7~0_combout\);

\G4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = (!\G1|pout\(3) & ((!\G1|pout\(0) & (\G1|pout\(1) & !\G1|pout\(2))) # (\G1|pout\(0) & (!\G1|pout\(1) & \G1|pout\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000000000001001000000000000100100000000000010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	combout => \G4|Mux1~0_combout\);

\G4|tipoi[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~1_combout\ = ( \G4|Mux1~0_combout\ & ( (\G4|Mux0~4_combout\ & (\Clock_Sistema~input_o\ & ((\G4|Mux7~0_combout\) # (\G4|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001000100000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~4_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~0_combout\,
	datae => \G4|ALT_INV_Mux1~0_combout\,
	combout => \G4|tipoi[2]~1_combout\);

\G9|AUX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G4|tipoi[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(4));

\G9|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G9|AUX\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(4));

\G4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux2~0_combout\ = (!\G1|pout\(3) & ((!\G1|pout\(1)) # ((!\G1|pout\(0) & !\G1|pout\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000111011000000000011101100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	combout => \G4|Mux2~0_combout\);

\G4|tipoi[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~0_combout\ = ( \G4|Mux2~0_combout\ & ( (\G4|Mux0~4_combout\ & (\Clock_Sistema~input_o\ & ((\G4|Mux7~0_combout\) # (\G4|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001000100000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~4_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~0_combout\,
	datae => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G4|tipoi[0]~0_combout\);

\G9|AUX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G4|tipoi[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(2));

\G9|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G9|AUX\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(2));

\G10|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~1_sumout\ = SUM(( \G9|SAIDA\(2) ) + ( \G2|saida\(2) ) + ( !VCC ))
-- \G10|Add0~2\ = CARRY(( \G9|SAIDA\(2) ) + ( \G2|saida\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G9|ALT_INV_SAIDA\(2),
	dataf => \G2|ALT_INV_saida\(2),
	cin => GND,
	sumout => \G10|Add0~1_sumout\,
	cout => \G10|Add0~2\);

\G10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~5_sumout\ = SUM(( \G2|saida\(3) ) + ( GND ) + ( \G10|Add0~2\ ))
-- \G10|Add0~6\ = CARRY(( \G2|saida\(3) ) + ( GND ) + ( \G10|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(3),
	cin => \G10|Add0~2\,
	sumout => \G10|Add0~5_sumout\,
	cout => \G10|Add0~6\);

\G10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~9_sumout\ = SUM(( \G9|SAIDA\(4) ) + ( \G2|saida\(4) ) + ( \G10|Add0~6\ ))
-- \G10|Add0~10\ = CARRY(( \G9|SAIDA\(4) ) + ( \G2|saida\(4) ) + ( \G10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G9|ALT_INV_SAIDA\(4),
	dataf => \G2|ALT_INV_saida\(4),
	cin => \G10|Add0~6\,
	sumout => \G10|Add0~9_sumout\,
	cout => \G10|Add0~10\);

\G10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~13_sumout\ = SUM(( GND ) + ( \G2|saida\(5) ) + ( \G10|Add0~10\ ))
-- \G10|Add0~14\ = CARRY(( GND ) + ( \G2|saida\(5) ) + ( \G10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(5),
	cin => \G10|Add0~10\,
	sumout => \G10|Add0~13_sumout\,
	cout => \G10|Add0~14\);

\G10|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(5));

\G12|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~5_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(5) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(5)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(5) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(5)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(5) & ( (\G2|saida\(5) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(5) & ( (\G2|saida\(5) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(5),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(5),
	combout => \G12|SAIDA~5_combout\);

\G12|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(5) = ( \G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~5_combout\ ) ) ) # ( !\G12|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~5_combout\ ) ) ) # ( \G12|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~5_combout\,
	datae => \G12|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(5));

\G13|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~5_combout\ = (\G12|SAIDA\(5) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(5),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~5_combout\);

\G13|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(5) = ( \G13|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~5_combout\ ) ) ) # ( !\G13|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~5_combout\ ) ) ) # ( \G13|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~5_combout\,
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

\G10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~17_sumout\ = SUM(( GND ) + ( \G2|saida\(6) ) + ( \G10|Add0~14\ ))
-- \G10|Add0~18\ = CARRY(( GND ) + ( \G2|saida\(6) ) + ( \G10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G2|ALT_INV_saida\(6),
	cin => \G10|Add0~14\,
	sumout => \G10|Add0~17_sumout\,
	cout => \G10|Add0~18\);

\G10|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(6));

\G12|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~6_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(6) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(6)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(6) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(6)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(6) & ( (\G2|saida\(6) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(6) & ( (\G2|saida\(6) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(6),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(6),
	combout => \G12|SAIDA~6_combout\);

\G12|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(6) = ( \G12|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~6_combout\ ) ) ) # ( !\G12|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~6_combout\ ) ) ) # ( \G12|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~6_combout\,
	datae => \G12|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(6));

\G13|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~6_combout\ = (\G12|SAIDA\(6) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(6),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~6_combout\);

\G13|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(6) = ( \G13|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~6_combout\ ) ) ) # ( !\G13|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~6_combout\ ) ) ) # ( \G13|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~6_combout\,
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

\G10|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~21_sumout\ = SUM(( \G2|saida\(7) ) + ( GND ) + ( \G10|Add0~18\ ))
-- \G10|Add0~22\ = CARRY(( \G2|saida\(7) ) + ( GND ) + ( \G10|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(7),
	cin => \G10|Add0~18\,
	sumout => \G10|Add0~21_sumout\,
	cout => \G10|Add0~22\);

\G10|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(7));

\G12|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~7_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(7) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(7)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(7) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(7)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(7) & ( (\G2|saida\(7) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(7) & ( (\G2|saida\(7) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(7),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(7),
	combout => \G12|SAIDA~7_combout\);

\G12|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(7) = ( \G12|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~7_combout\ ) ) ) # ( !\G12|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~7_combout\ ) ) ) # ( \G12|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~7_combout\,
	datae => \G12|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(7));

\G13|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~7_combout\ = (\G12|SAIDA\(7) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(7),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~7_combout\);

\G13|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(7) = ( \G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~7_combout\ ) ) ) # ( !\G13|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~7_combout\ ) ) ) # ( \G13|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~7_combout\,
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

\G10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~25_sumout\ = SUM(( \G2|saida\(8) ) + ( GND ) + ( \G10|Add0~22\ ))
-- \G10|Add0~26\ = CARRY(( \G2|saida\(8) ) + ( GND ) + ( \G10|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(8),
	cin => \G10|Add0~22\,
	sumout => \G10|Add0~25_sumout\,
	cout => \G10|Add0~26\);

\G10|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(8));

\G12|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~8_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(8) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(8)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(8) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(8)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(8) & ( (\G2|saida\(8) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(8) & ( (\G2|saida\(8) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(8),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(8),
	combout => \G12|SAIDA~8_combout\);

\G12|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(8) = ( \G12|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~8_combout\ ) ) ) # ( !\G12|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~8_combout\ ) ) ) # ( \G12|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~8_combout\,
	datae => \G12|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(8));

\G13|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~8_combout\ = (\G12|SAIDA\(8) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(8),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~8_combout\);

\G13|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(8) = ( \G13|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~8_combout\ ) ) ) # ( !\G13|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~8_combout\ ) ) ) # ( \G13|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~8_combout\,
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

\G10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~29_sumout\ = SUM(( \G2|saida\(9) ) + ( GND ) + ( \G10|Add0~26\ ))
-- \G10|Add0~30\ = CARRY(( \G2|saida\(9) ) + ( GND ) + ( \G10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(9),
	cin => \G10|Add0~26\,
	sumout => \G10|Add0~29_sumout\,
	cout => \G10|Add0~30\);

\G10|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(9));

\G12|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~9_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(9) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(9)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(9) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(9)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(9) & ( (\G2|saida\(9) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(9) & ( (\G2|saida\(9) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(9),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(9),
	combout => \G12|SAIDA~9_combout\);

\G12|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(9) = ( \G12|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~9_combout\ ) ) ) # ( !\G12|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~9_combout\ ) ) ) # ( \G12|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~9_combout\,
	datae => \G12|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(9));

\G13|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~9_combout\ = (\G12|SAIDA\(9) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(9),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~9_combout\);

\G13|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(9) = ( \G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~9_combout\ ) ) ) # ( !\G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~9_combout\ ) ) ) # ( \G13|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~9_combout\,
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

\G10|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~33_sumout\ = SUM(( \G2|saida\(10) ) + ( GND ) + ( \G10|Add0~30\ ))
-- \G10|Add0~34\ = CARRY(( \G2|saida\(10) ) + ( GND ) + ( \G10|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(10),
	cin => \G10|Add0~30\,
	sumout => \G10|Add0~33_sumout\,
	cout => \G10|Add0~34\);

\G10|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(10));

\G12|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~10_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(10) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(10)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(10) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(10)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(10) & ( (\G2|saida\(10) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(10) & ( (\G2|saida\(10) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(10),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(10),
	combout => \G12|SAIDA~10_combout\);

\G12|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(10) = ( \G12|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~10_combout\ ) ) ) # ( !\G12|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~10_combout\ ) ) ) # ( \G12|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~10_combout\,
	datae => \G12|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(10));

\G13|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~10_combout\ = (\G12|SAIDA\(10) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(10),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~10_combout\);

\G13|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(10) = ( \G13|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~10_combout\ ) ) ) # ( !\G13|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~10_combout\ ) ) ) # ( \G13|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~10_combout\,
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

\G10|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~37_sumout\ = SUM(( \G2|saida\(11) ) + ( GND ) + ( \G10|Add0~34\ ))
-- \G10|Add0~38\ = CARRY(( \G2|saida\(11) ) + ( GND ) + ( \G10|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(11),
	cin => \G10|Add0~34\,
	sumout => \G10|Add0~37_sumout\,
	cout => \G10|Add0~38\);

\G10|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(11));

\G12|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~11_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(11) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(11)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(11) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(11)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(11) & ( (\G2|saida\(11) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(11) & ( (\G2|saida\(11) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(11),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(11),
	combout => \G12|SAIDA~11_combout\);

\G12|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(11) = ( \G12|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~11_combout\ ) ) ) # ( !\G12|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~11_combout\ ) ) ) # ( \G12|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~11_combout\,
	datae => \G12|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(11));

\G13|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~11_combout\ = (\G12|SAIDA\(11) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(11),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~11_combout\);

\G13|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(11) = ( \G13|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~11_combout\ ) ) ) # ( !\G13|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~11_combout\ ) ) ) # ( \G13|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~11_combout\,
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

\G10|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~41_sumout\ = SUM(( \G2|saida\(12) ) + ( GND ) + ( \G10|Add0~38\ ))
-- \G10|Add0~42\ = CARRY(( \G2|saida\(12) ) + ( GND ) + ( \G10|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(12),
	cin => \G10|Add0~38\,
	sumout => \G10|Add0~41_sumout\,
	cout => \G10|Add0~42\);

\G10|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(12));

\G12|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~12_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(12) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(12)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(12) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(12)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(12) & ( (\G2|saida\(12) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(12) & ( (\G2|saida\(12) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(12),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(12),
	combout => \G12|SAIDA~12_combout\);

\G12|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(12) = ( \G12|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~12_combout\ ) ) ) # ( !\G12|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~12_combout\ ) ) ) # ( \G12|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~12_combout\,
	datae => \G12|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(12));

\G13|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~12_combout\ = (\G12|SAIDA\(12) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(12),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~12_combout\);

\G13|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(12) = ( \G13|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~12_combout\ ) ) ) # ( !\G13|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~12_combout\ ) ) ) # ( \G13|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~12_combout\,
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

\G10|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~45_sumout\ = SUM(( \G2|saida\(13) ) + ( GND ) + ( \G10|Add0~42\ ))
-- \G10|Add0~46\ = CARRY(( \G2|saida\(13) ) + ( GND ) + ( \G10|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(13),
	cin => \G10|Add0~42\,
	sumout => \G10|Add0~45_sumout\,
	cout => \G10|Add0~46\);

\G10|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(13));

\G12|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~13_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(13) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(13)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(13) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(13)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(13) & ( (\G2|saida\(13) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(13) & ( (\G2|saida\(13) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(13),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(13),
	combout => \G12|SAIDA~13_combout\);

\G12|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(13) = ( \G12|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~13_combout\ ) ) ) # ( !\G12|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~13_combout\ ) ) ) # ( \G12|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~13_combout\,
	datae => \G12|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(13));

\G13|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~13_combout\ = (\G12|SAIDA\(13) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(13),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~13_combout\);

\G13|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(13) = ( \G13|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~13_combout\ ) ) ) # ( !\G13|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~13_combout\ ) ) ) # ( \G13|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~13_combout\,
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

\G10|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~49_sumout\ = SUM(( \G2|saida\(14) ) + ( GND ) + ( \G10|Add0~46\ ))
-- \G10|Add0~50\ = CARRY(( \G2|saida\(14) ) + ( GND ) + ( \G10|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(14),
	cin => \G10|Add0~46\,
	sumout => \G10|Add0~49_sumout\,
	cout => \G10|Add0~50\);

\G10|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(14));

\G12|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~14_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(14) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(14)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(14) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(14)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(14) & ( (\G2|saida\(14) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(14) & ( (\G2|saida\(14) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(14),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(14),
	combout => \G12|SAIDA~14_combout\);

\G12|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(14) = ( \G12|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~14_combout\ ) ) ) # ( !\G12|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~14_combout\ ) ) ) # ( \G12|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~14_combout\,
	datae => \G12|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(14));

\G3|resshift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(14));

\G13|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~14_combout\ = (!\G5|origalu\(2) & (\G12|SAIDA\(14))) # (\G5|origalu\(2) & ((\G3|resshift\(14))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(14),
	datab => \G5|ALT_INV_origalu\(2),
	datac => \G3|ALT_INV_resshift\(14),
	combout => \G13|SAIDA~14_combout\);

\G13|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(14) = ( \G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~14_combout\ ) ) ) # ( !\G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~14_combout\ ) ) ) # ( \G13|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~14_combout\,
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

\G10|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~53_sumout\ = SUM(( \G2|saida\(15) ) + ( GND ) + ( \G10|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G2|ALT_INV_saida\(15),
	cin => \G10|Add0~50\,
	sumout => \G10|Add0~53_sumout\);

\G10|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(15));

\G12|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~15_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(15) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(15)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(15) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(15)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(15) & ( (\G2|saida\(15) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(15) & ( (\G2|saida\(15) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(15),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(15),
	combout => \G12|SAIDA~15_combout\);

\G12|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(15) = ( \G12|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~15_combout\ ) ) ) # ( !\G12|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~15_combout\ ) ) ) # ( \G12|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~15_combout\,
	datae => \G12|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(15));

\G3|resshift[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(15));

\G13|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~15_combout\ = (!\G5|origalu\(2) & (\G12|SAIDA\(15))) # (\G5|origalu\(2) & ((\G3|resshift\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(15),
	datab => \G5|ALT_INV_origalu\(2),
	datac => \G3|ALT_INV_resshift\(15),
	combout => \G13|SAIDA~15_combout\);

\G13|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(15) = ( \G13|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~15_combout\ ) ) ) # ( !\G13|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~15_combout\ ) ) ) # ( \G13|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~15_combout\,
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

\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(14) & ( !\G1|pout\(15) & ( (!\G1|pout\(10) & (!\G1|pout\(11) & (!\G1|pout\(12) & !\G1|pout\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(10),
	datab => \G1|ALT_INV_pout\(11),
	datac => \G1|ALT_INV_pout\(12),
	datad => \G1|ALT_INV_pout\(13),
	datae => \G1|ALT_INV_pout\(14),
	dataf => \G1|ALT_INV_pout\(15),
	combout => \G4|Mux0~1_combout\);

\G4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux6~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (\G1|pout\(0) & (\G1|pout\(1) & (!\G1|pout\(2) & !\G1|pout\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux6~0_combout\);

\G4|rs[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[0]~1_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux6~0_combout\,
	combout => \G4|rs[0]~1_combout\);

\G4|op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|op[0]~0_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|op[0]~0_combout\);

\G5|origalu[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[1]~0_combout\ = (!\G4|rs[0]~1_combout\) # (\G4|op[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~1_combout\,
	datab => \G4|ALT_INV_op[0]~0_combout\,
	combout => \G5|origalu[1]~0_combout\);

\G5|origalu[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu\(1) = ( \G5|origalu\(1) & ( \G5|regdest~0_combout\ & ( !\G5|origalu[1]~0_combout\ ) ) ) # ( !\G5|origalu\(1) & ( \G5|regdest~0_combout\ & ( !\G5|origalu[1]~0_combout\ ) ) ) # ( \G5|origalu\(1) & ( !\G5|regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G5|ALT_INV_origalu[1]~0_combout\,
	datae => \G5|ALT_INV_origalu\(1),
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|origalu\(1));

\G15|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G5|origalu\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(4));

\G11|S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|S1~0_combout\ = (!\G15|SAIDA\(3) & (!\G15|SAIDA\(4) & (\G15|SAIDA\(5) & \G5|origalu\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(3),
	datab => \G15|ALT_INV_SAIDA\(4),
	datac => \G15|ALT_INV_SAIDA\(5),
	datad => \G5|ALT_INV_origalu\(2),
	combout => \G11|S1~0_combout\);

\G10|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(2));

\G12|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~2_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(2) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(2)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(2) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(2)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(2) & ( (\G2|saida\(2) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(2) & ( (\G2|saida\(2) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(2),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(2),
	combout => \G12|SAIDA~2_combout\);

\G12|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(2) = ( \G12|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~2_combout\ ) ) ) # ( !\G12|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~2_combout\ ) ) ) # ( \G12|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~2_combout\,
	datae => \G12|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(2));

\G13|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~2_combout\ = (\G12|SAIDA\(2) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(2),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~2_combout\);

\G13|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(2) = ( \G13|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~2_combout\ ) ) ) # ( !\G13|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~2_combout\ ) ) ) # ( \G13|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~2_combout\,
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

\G10|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(3));

\G12|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~3_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(3) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(3)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(3) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(3)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(3) & ( (\G2|saida\(3) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(3) & ( (\G2|saida\(3) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(3),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(3),
	combout => \G12|SAIDA~3_combout\);

\G12|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(3) = ( \G12|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~3_combout\ ) ) ) # ( !\G12|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~3_combout\ ) ) ) # ( \G12|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~3_combout\,
	datae => \G12|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(3));

\G13|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~3_combout\ = (\G12|SAIDA\(3) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(3),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~3_combout\);

\G13|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(3) = ( \G13|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~3_combout\ ) ) ) # ( !\G13|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~3_combout\ ) ) ) # ( \G13|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~3_combout\,
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

\G10|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G10|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(4));

\G12|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~4_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(4) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(4)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(4) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(4)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(4) & ( (\G2|saida\(4) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(4) & ( (\G2|saida\(4) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(4),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(4),
	combout => \G12|SAIDA~4_combout\);

\G12|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(4) = ( \G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~4_combout\ ) ) ) # ( !\G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~4_combout\ ) ) ) # ( \G12|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~4_combout\,
	datae => \G12|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(4));

\G13|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~4_combout\ = (\G12|SAIDA\(4) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(4),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~4_combout\);

\G13|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(4) = ( \G13|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~4_combout\ ) ) ) # ( !\G13|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~4_combout\ ) ) ) # ( \G13|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~4_combout\,
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

\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = ( !\G1|pout\(8) & ( !\G1|pout\(9) & ( (!\G1|pout\(4) & (!\G1|pout\(5) & (!\G1|pout\(6) & !\G1|pout\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(4),
	datab => \G1|ALT_INV_pout\(5),
	datac => \G1|ALT_INV_pout\(6),
	datad => \G1|ALT_INV_pout\(7),
	datae => \G1|ALT_INV_pout\(8),
	dataf => \G1|ALT_INV_pout\(9),
	combout => \G4|Mux0~0_combout\);

\G4|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux7~1_combout\ = (\G4|Mux0~0_combout\ & (\G4|Mux0~1_combout\ & \G4|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_Mux0~1_combout\,
	datac => \G4|ALT_INV_Mux7~0_combout\,
	combout => \G4|Mux7~1_combout\);

\G5|origalu[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu\(0) = ( \G5|origalu\(0) & ( \G5|regdest~0_combout\ & ( \G4|Mux7~1_combout\ ) ) ) # ( !\G5|origalu\(0) & ( \G5|regdest~0_combout\ & ( \G4|Mux7~1_combout\ ) ) ) # ( \G5|origalu\(0) & ( !\G5|regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G5|ALT_INV_origalu\(0),
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|origalu\(0));

\G15|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G5|origalu\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(3));

\G16|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~0_combout\ = (!\G15|SAIDA\(3) & (!\G15|SAIDA\(4) & !\G15|SAIDA\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G15|ALT_INV_SAIDA\(3),
	datac => \G15|ALT_INV_SAIDA\(4),
	datad => \G15|ALT_INV_SAIDA\(5),
	combout => \G16|Mux14~0_combout\);

\G4|funct[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[0]~0_combout\ = ( \G4|Mux2~0_combout\ & ( (\G4|Mux0~4_combout\ & (\Clock_Sistema~input_o\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~4_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~0_combout\,
	datae => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G4|funct[0]~0_combout\);

\G15|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G4|funct[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(0));

\G16|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~1_combout\ = ( !\G15|SAIDA\(5) & ( (\G15|SAIDA\(0) & (!\G15|SAIDA\(3) & !\G15|SAIDA\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000001010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(0),
	datac => \G15|ALT_INV_SAIDA\(3),
	datad => \G15|ALT_INV_SAIDA\(4),
	datae => \G15|ALT_INV_SAIDA\(5),
	combout => \G16|Mux14~1_combout\);

\G5|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal1~0_combout\ = (!\G4|op[0]~0_combout\) # (\G4|rs[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[0]~1_combout\,
	datab => \G4|ALT_INV_op[0]~0_combout\,
	combout => \G5|Equal1~0_combout\);

\G5|memparareg\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|memparareg~combout\ = ( \G5|memparareg~combout\ & ( \G5|regdest~0_combout\ & ( !\G5|Equal1~0_combout\ ) ) ) # ( !\G5|memparareg~combout\ & ( \G5|regdest~0_combout\ & ( !\G5|Equal1~0_combout\ ) ) ) # ( \G5|memparareg~combout\ & ( 
-- !\G5|regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G5|ALT_INV_Equal1~0_combout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|memparareg~combout\);

\G5|escrevereg\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|escrevereg~combout\ = ( \G5|escrevereg~combout\ & ( \G5|regdest~0_combout\ & ( !\G4|rs[0]~1_combout\ ) ) ) # ( !\G5|escrevereg~combout\ & ( \G5|regdest~0_combout\ & ( !\G4|rs[0]~1_combout\ ) ) ) # ( \G5|escrevereg~combout\ & ( !\G5|regdest~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G4|ALT_INV_rs[0]~1_combout\,
	datae => \G5|ALT_INV_escrevereg~combout\,
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|escrevereg~combout\);

\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = (!\G1|pout\(3) & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(3),
	datab => \G4|ALT_INV_Mux0~0_combout\,
	datac => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux0~3_combout\);

\G4|tipoi[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~2_combout\ = (!\Clock_Sistema~input_o\) # ((!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux6~0_combout\,
	datac => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|tipoi[0]~2_combout\);

\G5|regdest\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|regdest~combout\ = ( \G5|regdest~combout\ & ( \G5|regdest~0_combout\ & ( \G4|tipoi[0]~2_combout\ ) ) ) # ( !\G5|regdest~combout\ & ( \G5|regdest~0_combout\ & ( \G4|tipoi[0]~2_combout\ ) ) ) # ( \G5|regdest~combout\ & ( !\G5|regdest~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G4|ALT_INV_tipoi[0]~2_combout\,
	datae => \G5|ALT_INV_regdest~combout\,
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|regdest~combout\);

\G7|Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~2_combout\ = (!\G1|pout\(1) & (!\G1|pout\(2) & (\G4|Mux0~3_combout\ & \G5|regdest~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(1),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G5|ALT_INV_regdest~combout\,
	combout => \G7|Mux27~2_combout\);

\G14|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~1_combout\ = (\G5|escrevereg~combout\ & !\G7|Mux27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G7|ALT_INV_Mux27~2_combout\,
	combout => \G14|SAIDA~1_combout\);

\G4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Equal0~0_combout\ = (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux6~0_combout\,
	datab => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|Equal0~0_combout\);

\G14|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~6_combout\ = (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Equal0~0_combout\ & !\G5|escrevereg~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Equal0~0_combout\,
	datad => \G5|ALT_INV_escrevereg~combout\,
	combout => \G14|SAIDA~6_combout\);

\G14|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~8_combout\ = ( \G14|SAIDA~6_combout\ ) # ( !\G14|SAIDA~6_combout\ & ( (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][4]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111111111111111111100000000001001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][4]~combout\,
	datac => \G18|ALT_INV_SAIDA\(4),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	datae => \G14|ALT_INV_SAIDA~6_combout\,
	combout => \G14|SAIDA~8_combout\);

\G14|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(4) = ( \G14|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~8_combout\ ) ) ) # ( !\G14|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~8_combout\ ) ) ) # ( \G14|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~8_combout\,
	datae => \G14|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(4));

\G14|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~7_combout\ = ( \G14|SAIDA~6_combout\ ) # ( !\G14|SAIDA~6_combout\ & ( (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][3]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111111111111111111100000000001001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][3]~combout\,
	datac => \G18|ALT_INV_SAIDA\(3),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	datae => \G14|ALT_INV_SAIDA~6_combout\,
	combout => \G14|SAIDA~7_combout\);

\G14|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(3) = ( \G14|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~7_combout\ ) ) ) # ( !\G14|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~7_combout\ ) ) ) # ( \G14|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~7_combout\,
	datae => \G14|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(3));

\G7|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Decoder0~0_combout\ = ( \Clock_Sistema~input_o\ & ( \G5|regdest~combout\ & ( (\G1|pout\(0) & (\G1|pout\(1) & (!\G1|pout\(2) & \G4|Mux0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G4|ALT_INV_Mux0~3_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G5|ALT_INV_regdest~combout\,
	combout => \G7|Decoder0~0_combout\);

\G18|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~2_combout\ = (\G5|memparareg~combout\ & (!\G16|Mux11~2_combout\ & \G16|Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	combout => \G18|SAIDA~2_combout\);

\G6|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[0]~0_combout\ = (\Clock_Sistema~input_o\ & ((!\G5|regdest~combout\ & (\G4|Mux0~2_combout\)) # (\G5|regdest~combout\ & ((\G4|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100010001000000110001000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G5|ALT_INV_regdest~combout\,
	combout => \G6|SAIDA[0]~0_combout\);

\G4|rs[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[1]~0_combout\ = ( \G4|Mux0~1_combout\ & ( \Clock_Sistema~input_o\ & ( (\G1|pout\(0) & (!\G1|pout\(2) & (!\G1|pout\(3) & \G4|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|rs[1]~0_combout\);

\G6|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[1]~1_combout\ = (!\G5|regdest~combout\) # (!\G4|rs[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_regdest~combout\,
	datab => \G4|ALT_INV_rs[1]~0_combout\,
	combout => \G6|SAIDA[1]~1_combout\);

\G6|SAIDA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[2]~2_combout\ = ( \G4|Mux0~1_combout\ & ( \Clock_Sistema~input_o\ & ( (!\G1|pout\(0) & (\G1|pout\(2) & (!\G1|pout\(3) & \G4|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G6|SAIDA[2]~2_combout\);

\G6|SAIDA[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[2]~3_combout\ = (!\G5|regdest~combout\) # (!\G6|SAIDA[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_regdest~combout\,
	datab => \G6|ALT_INV_SAIDA[2]~2_combout\,
	combout => \G6|SAIDA[2]~3_combout\);

\G4|rt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[0]~0_combout\ = (\G4|Mux0~2_combout\ & \Clock_Sistema~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|rt[0]~0_combout\);

\G7|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][2]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][2]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][2]~combout\,
	datad => \G18|ALT_INV_SAIDA\(2),
	combout => \G7|Mux29~0_combout\);

\G7|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux29~0_combout\ ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux29~0_combout\ ) ) # ( \G4|rt[0]~0_combout\ & ( !\G7|Mux29~0_combout\ & ( (!\G5|escrevereg~combout\) # ((!\G6|SAIDA[0]~0_combout\) # 
-- ((!\G6|SAIDA[1]~1_combout\) # (!\G6|SAIDA[2]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G7|Mux29~1_combout\);

\G7|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~0_combout\ = (!\G4|Mux0~2_combout\ & (\G7|Reg[0][0]~combout\)) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][0]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010111010101000101011101010100010101110101010001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][0]~combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(0),
	combout => \G7|Mux31~0_combout\);

\G7|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux31~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux31~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	combout => \G7|Mux31~1_combout\);

\G17|ram~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~80_combout\ = ( \G17|ram~80_combout\ & ( \rtl~1_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~80_combout\ & ( \rtl~1_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~80_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~80_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~80_combout\);

\G7|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][1]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][1]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][1]~combout\,
	datad => \G18|ALT_INV_SAIDA\(1),
	combout => \G7|Mux30~0_combout\);

\G7|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux30~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux30~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G7|Mux30~1_combout\);

\G17|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~81_combout\ = ( \G17|ram~81_combout\ & ( \rtl~1_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~81_combout\ & ( \rtl~1_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~81_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~81_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~81_combout\);

\G17|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~113_combout\ = ( \G17|ram~113_combout\ & ( \rtl~2_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~113_combout\ & ( \rtl~2_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~113_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~113_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~113_combout\);

\G7|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux12~0_combout\ = ( !\G4|Mux7~1_combout\ & ( \G7|Reg[0][3]~combout\ & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (\Clock_Sistema~input_o\ & !\G4|Mux6~0_combout\))) ) ) ) # ( \G4|Mux7~1_combout\ & ( !\G7|Reg[0][3]~combout\ ) ) # ( !\G4|Mux7~1_combout\ 
-- & ( !\G7|Reg[0][3]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux6~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G7|ALT_INV_Reg[0][3]~combout\,
	combout => \G7|Mux12~0_combout\);

\G14|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~4_combout\ = (!\G7|Mux27~2_combout\ & ((!\G4|Mux0~2_combout\ & (!\G7|Reg[0][2]~combout\)) # (\G4|Mux0~2_combout\ & ((!\G18|SAIDA\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100000000000110110000000000011011000000000001101100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][2]~combout\,
	datac => \G18|ALT_INV_SAIDA\(2),
	datad => \G7|ALT_INV_Mux27~2_combout\,
	combout => \G14|SAIDA~4_combout\);

\G14|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~5_combout\ = ( \G14|SAIDA~4_combout\ & ( (\G4|Mux0~4_combout\ & (!\G4|Equal0~0_combout\ & (!\G5|escrevereg~combout\ & \G4|Mux1~0_combout\))) ) ) # ( !\G14|SAIDA~4_combout\ & ( ((\G4|Mux0~4_combout\ & (!\G4|Equal0~0_combout\ & 
-- \G4|Mux1~0_combout\))) # (\G5|escrevereg~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000000000100000000001111010011110000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~4_combout\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G4|ALT_INV_Mux1~0_combout\,
	datae => \G14|ALT_INV_SAIDA~4_combout\,
	combout => \G14|SAIDA~5_combout\);

\G14|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(2) = ( \G14|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~5_combout\ ) ) ) # ( !\G14|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~5_combout\ ) ) ) # ( \G14|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~5_combout\,
	datae => \G14|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(2));

\G14|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~3_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][1]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][1]~combout\,
	datac => \G18|ALT_INV_SAIDA\(1),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~3_combout\);

\G14|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(1) = ( \G14|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~3_combout\ ) ) ) # ( !\G14|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~3_combout\ ) ) ) # ( \G14|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~3_combout\,
	datae => \G14|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(1));

\G14|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~0_combout\ = (\G4|Mux0~4_combout\ & (!\G4|Equal0~0_combout\ & (!\G5|escrevereg~combout\ & \G4|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~4_combout\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G4|ALT_INV_Mux2~0_combout\,
	combout => \G14|SAIDA~0_combout\);

\G14|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~2_combout\ = ( \G14|SAIDA~1_combout\ & ( ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][0]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(0))))) # (\G14|SAIDA~0_combout\) ) ) # ( !\G14|SAIDA~1_combout\ & ( \G14|SAIDA~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010001111111111100000000111111110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][0]~combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G18|ALT_INV_SAIDA\(0),
	datad => \G14|ALT_INV_SAIDA~0_combout\,
	datae => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~2_combout\);

\G14|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(0) = ( \G14|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~2_combout\ ) ) ) # ( !\G14|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~2_combout\ ) ) ) # ( \G14|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~2_combout\,
	datae => \G14|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(0));

\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & (((\G7|Reg[0][0]~combout\)))) # (\G4|rd[0]~0_combout\ & ((!\G5|escrevereg~combout\) # ((!\G7|Decoder0~0_combout\)))) ) + ( \G14|SAIDA\(0) ) + ( !VCC ))
-- \G16|Add0~2\ = CARRY(( (!\G4|rd[0]~0_combout\ & (((\G7|Reg[0][0]~combout\)))) # (\G4|rd[0]~0_combout\ & ((!\G5|escrevereg~combout\) # ((!\G7|Decoder0~0_combout\)))) ) + ( \G14|SAIDA\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G7|ALT_INV_Decoder0~0_combout\,
	datad => \G7|ALT_INV_Reg[0][0]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(0),
	cin => GND,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][1]~combout\) ) + ( \G14|SAIDA\(1) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][1]~combout\) ) + ( \G14|SAIDA\(1) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][1]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(1),
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & (((\G7|Reg[0][2]~combout\)))) # (\G4|rd[0]~0_combout\ & ((!\G5|escrevereg~combout\) # ((!\G7|Decoder0~0_combout\)))) ) + ( \G14|SAIDA\(2) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( (!\G4|rd[0]~0_combout\ & (((\G7|Reg[0][2]~combout\)))) # (\G4|rd[0]~0_combout\ & ((!\G5|escrevereg~combout\) # ((!\G7|Decoder0~0_combout\)))) ) + ( \G14|SAIDA\(2) ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G7|ALT_INV_Decoder0~0_combout\,
	datad => \G7|ALT_INV_Reg[0][2]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(2),
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][3]~combout\) ) + ( \G14|SAIDA\(3) ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][3]~combout\) ) + ( \G14|SAIDA\(3) ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][3]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(3),
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

\G16|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~0_combout\ = ( \G16|Add1~13_sumout\ & ( \G16|Add0~13_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux12~0_combout\) # (\G14|SAIDA\(3))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~13_sumout\ & ( \G16|Add0~13_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux12~0_combout\) # (\G14|SAIDA\(3))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~13_sumout\ & ( !\G16|Add0~13_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux12~0_combout\) # ((\G14|SAIDA\(3)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~13_sumout\ & ( !\G16|Add0~13_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux12~0_combout\) # (\G14|SAIDA\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux12~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(3),
	datae => \G16|ALT_INV_Add1~13_sumout\,
	dataf => \G16|ALT_INV_Add0~13_sumout\,
	combout => \G16|Mux12~0_combout\);

\G7|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux11~0_combout\ = ( !\G4|Mux7~1_combout\ & ( \G7|Reg[0][4]~combout\ & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (\Clock_Sistema~input_o\ & !\G4|Mux6~0_combout\))) ) ) ) # ( \G4|Mux7~1_combout\ & ( !\G7|Reg[0][4]~combout\ ) ) # ( !\G4|Mux7~1_combout\ 
-- & ( !\G7|Reg[0][4]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux6~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G7|ALT_INV_Reg[0][4]~combout\,
	combout => \G7|Mux11~0_combout\);

\G16|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~0_combout\ = ( \G16|Add1~17_sumout\ & ( \G16|Add0~17_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux11~0_combout\) # (\G14|SAIDA\(4))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~17_sumout\ & ( \G16|Add0~17_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux11~0_combout\) # (\G14|SAIDA\(4))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~17_sumout\ & ( !\G16|Add0~17_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux11~0_combout\) # ((\G14|SAIDA\(4)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~17_sumout\ & ( !\G16|Add0~17_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux11~0_combout\) # (\G14|SAIDA\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux11~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(4),
	datae => \G16|ALT_INV_Add1~17_sumout\,
	dataf => \G16|ALT_INV_Add0~17_sumout\,
	combout => \G16|Mux11~0_combout\);

\G7|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux13~0_combout\ = (!\G4|rd[0]~0_combout\ & (((\G7|Reg[0][2]~combout\)))) # (\G4|rd[0]~0_combout\ & ((!\G5|escrevereg~combout\) # ((!\G7|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010011111110010101001111111001010100111111100101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G7|ALT_INV_Decoder0~0_combout\,
	datad => \G7|ALT_INV_Reg[0][2]~combout\,
	combout => \G7|Mux13~0_combout\);

\G16|Add1~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add1~66_cout\);

\G16|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~1_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & (\G7|Reg[0][0]~combout\)) # (\G4|rd[0]~0_combout\ & (((!\G5|escrevereg~combout\) # (!\G7|Decoder0~0_combout\)))) ) + ( !\G14|SAIDA\(0) ) + ( \G16|Add1~66_cout\ ))
-- \G16|Add1~2\ = CARRY(( (!\G4|rd[0]~0_combout\ & (\G7|Reg[0][0]~combout\)) # (\G4|rd[0]~0_combout\ & (((!\G5|escrevereg~combout\) # (!\G7|Decoder0~0_combout\)))) ) + ( !\G14|SAIDA\(0) ) + ( \G16|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000111011101110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][0]~combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G7|ALT_INV_Decoder0~0_combout\,
	dataf => \G14|ALT_INV_SAIDA\(0),
	cin => \G16|Add1~66_cout\,
	sumout => \G16|Add1~1_sumout\,
	cout => \G16|Add1~2\);

\G16|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~5_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][1]~combout\) ) + ( !\G14|SAIDA\(1) ) + ( \G16|Add1~2\ ))
-- \G16|Add1~6\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][1]~combout\) ) + ( !\G14|SAIDA\(1) ) + ( \G16|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][1]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(1),
	cin => \G16|Add1~2\,
	sumout => \G16|Add1~5_sumout\,
	cout => \G16|Add1~6\);

\G16|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~9_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & (((\G7|Reg[0][2]~combout\)))) # (\G4|rd[0]~0_combout\ & ((!\G5|escrevereg~combout\) # ((!\G7|Decoder0~0_combout\)))) ) + ( !\G14|SAIDA\(2) ) + ( \G16|Add1~6\ ))
-- \G16|Add1~10\ = CARRY(( (!\G4|rd[0]~0_combout\ & (((\G7|Reg[0][2]~combout\)))) # (\G4|rd[0]~0_combout\ & ((!\G5|escrevereg~combout\) # ((!\G7|Decoder0~0_combout\)))) ) + ( !\G14|SAIDA\(2) ) + ( \G16|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G7|ALT_INV_Decoder0~0_combout\,
	datad => \G7|ALT_INV_Reg[0][2]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(2),
	cin => \G16|Add1~6\,
	sumout => \G16|Add1~9_sumout\,
	cout => \G16|Add1~10\);

\G16|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~0_combout\ = ( \G16|Add1~9_sumout\ & ( \G16|Add0~9_sumout\ & ( ((\G16|Mux14~1_combout\ & ((\G14|SAIDA\(2)) # (\G7|Mux13~0_combout\)))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~9_sumout\ & ( \G16|Add0~9_sumout\ & ( (!\G16|Mux14~0_combout\ 
-- & (\G16|Mux14~1_combout\ & ((\G14|SAIDA\(2)) # (\G7|Mux13~0_combout\)))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~9_sumout\ & ( !\G16|Add0~9_sumout\ & ( (\G16|Mux14~1_combout\ & (((\G14|SAIDA\(2)) # 
-- (\G16|Mux14~0_combout\)) # (\G7|Mux13~0_combout\))) ) ) ) # ( !\G16|Add1~9_sumout\ & ( !\G16|Add0~9_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((\G14|SAIDA\(2)) # (\G7|Mux13~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000001110000111100110100001111000011011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(2),
	datae => \G16|ALT_INV_Add1~9_sumout\,
	dataf => \G16|ALT_INV_Add0~9_sumout\,
	combout => \G16|Mux13~0_combout\);

\G17|ram.we_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram.we_a~0_combout\ = (\Clock_Sistema~input_o\ & (\G5|origalu\(1) & !\G5|memparareg~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_origalu\(1),
	datac => \G5|ALT_INV_memparareg~combout\,
	combout => \G17|ram.we_a~0_combout\);

\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~4_combout\);

\G17|ram~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~97_combout\ = ( \G17|ram~97_combout\ & ( \rtl~4_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~97_combout\ & ( \rtl~4_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~97_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~97_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~97_combout\);

\rtl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~9_combout\);

\G17|ram~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~17_combout\ = ( \G17|ram~17_combout\ & ( \rtl~9_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~17_combout\ & ( \rtl~9_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~17_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~17_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~17_combout\);

\rtl~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux15~0_combout\ & (\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~10_combout\);

\G17|ram~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~49_combout\ = ( \G17|ram~49_combout\ & ( \rtl~10_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~49_combout\ & ( \rtl~10_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~49_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~49_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~49_combout\);

\rtl~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~12_combout\);

\G17|ram~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~33_combout\ = ( \G17|ram~33_combout\ & ( \rtl~12_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~33_combout\ & ( \rtl~12_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~33_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~33_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~33_combout\);

\rtl~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~11_combout\);

\G17|ram~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~1_combout\ = ( \G17|ram~1_combout\ & ( \rtl~11_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~1_combout\ & ( \rtl~11_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~1_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~1_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~1_combout\);

\G17|ram~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~409_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~1_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~17_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~33_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~49_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~17_combout\,
	datab => \G17|ALT_INV_ram~49_combout\,
	datac => \G17|ALT_INV_ram~33_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~1_combout\,
	combout => \G17|ram~409_combout\);

\rtl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = ( \G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~3_combout\);

\G17|ram~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~65_combout\ = ( \G17|ram~65_combout\ & ( \rtl~3_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~65_combout\ & ( \rtl~3_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~65_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~65_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~65_combout\);

\G17|ram~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~281_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~409_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~409_combout\ & ((\G17|ram~65_combout\))) # (\G17|ram~409_combout\ & (\G17|ram~81_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~409_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~409_combout\ & ((\G17|ram~97_combout\))) # (\G17|ram~409_combout\ & (\G17|ram~113_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~81_combout\,
	datab => \G17|ALT_INV_ram~113_combout\,
	datac => \G17|ALT_INV_ram~97_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~409_combout\,
	datag => \G17|ALT_INV_ram~65_combout\,
	combout => \G17|ram~281_combout\);

\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = ( \G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~5_combout\);

\G17|ram~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~209_combout\ = ( \G17|ram~209_combout\ & ( \rtl~5_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~209_combout\ & ( \rtl~5_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~209_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~209_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~209_combout\);

\rtl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = ( \G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux15~0_combout\ & (\G16|Mux14~2_combout\ & (\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~6_combout\);

\G17|ram~241\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~241_combout\ = ( \G17|ram~241_combout\ & ( \rtl~6_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~241_combout\ & ( \rtl~6_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~241_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~241_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~241_combout\);

\rtl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = ( \G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux14~2_combout\ & (\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~8_combout\);

\G17|ram~225\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~225_combout\ = ( \G17|ram~225_combout\ & ( \rtl~8_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~225_combout\ & ( \rtl~8_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~225_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~225_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~225_combout\);

\rtl~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~13_combout\);

\G17|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~145_combout\ = ( \G17|ram~145_combout\ & ( \rtl~13_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~145_combout\ & ( \rtl~13_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~145_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~145_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~145_combout\);

\rtl~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux15~0_combout\ & (\G16|Mux14~2_combout\ & (\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~14_combout\);

\G17|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~177_combout\ = ( \G17|ram~177_combout\ & ( \rtl~14_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~177_combout\ & ( \rtl~14_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~177_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~177_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~177_combout\);

\rtl~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~16_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux14~2_combout\ & (\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~16_combout\);

\G17|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~161_combout\ = ( \G17|ram~161_combout\ & ( \rtl~16_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~161_combout\ & ( \rtl~16_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~161_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~161_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~161_combout\);

\rtl~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~15_combout\);

\G17|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~129_combout\ = ( \G17|ram~129_combout\ & ( \rtl~15_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~129_combout\ & ( \rtl~15_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~129_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~129_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~129_combout\);

\G17|ram~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~413_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~129_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~145_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~161_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~177_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~145_combout\,
	datab => \G17|ALT_INV_ram~177_combout\,
	datac => \G17|ALT_INV_ram~161_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~129_combout\,
	combout => \G17|ram~413_combout\);

\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = ( \G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~7_combout\);

\G17|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~193_combout\ = ( \G17|ram~193_combout\ & ( \rtl~7_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~193_combout\ & ( \rtl~7_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~193_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~193_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~193_combout\);

\G17|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~285_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~413_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~413_combout\ & ((\G17|ram~193_combout\))) # (\G17|ram~413_combout\ & (\G17|ram~209_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~413_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~413_combout\ & ((\G17|ram~225_combout\))) # (\G17|ram~413_combout\ & (\G17|ram~241_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~209_combout\,
	datab => \G17|ALT_INV_ram~241_combout\,
	datac => \G17|ALT_INV_ram~225_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~413_combout\,
	datag => \G17|ALT_INV_ram~193_combout\,
	combout => \G17|ram~285_combout\);

\G16|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~1_combout\ = ( \G7|Reg[0][3]~combout\ & ( !\G14|SAIDA\(3) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][3]~combout\ & ( !\G14|SAIDA\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][3]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(3),
	combout => \G16|Mux12~1_combout\);

\G18|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~0_combout\ = ( \G5|memparareg~combout\ & ( \G16|Mux12~1_combout\ & ( (!\G16|Mux14~0_combout\) # ((!\G16|Mux14~1_combout\ & ((!\G16|Add0~13_sumout\))) # (\G16|Mux14~1_combout\ & (!\G16|Add1~13_sumout\))) ) ) ) # ( \G5|memparareg~combout\ & ( 
-- !\G16|Mux12~1_combout\ & ( (!\G16|Mux14~0_combout\ & (!\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((!\G16|Add0~13_sumout\))) # (\G16|Mux14~1_combout\ & (!\G16|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111001001100000000000000000001111111010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~13_sumout\,
	datad => \G16|ALT_INV_Add0~13_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Mux12~1_combout\,
	combout => \G18|SAIDA~0_combout\);

\G16|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~3_combout\ = ( \G7|Reg[0][1]~combout\ & ( ((!\G4|Mux0~2_combout\) # ((\G4|Mux7~1_combout\) # (\G4|Mux6~0_combout\))) # (\G1|pout\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111111111111100000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][1]~combout\,
	combout => \G16|Mux14~3_combout\);

\G16|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~4_combout\ = ( \G16|Add0~5_sumout\ & ( \G16|Mux14~3_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\) # (\G16|Add1~5_sumout\))) ) ) ) # ( !\G16|Add0~5_sumout\ & ( 
-- \G16|Mux14~3_combout\ & ( (\G16|Mux14~1_combout\ & ((!\G16|Mux14~0_combout\) # (\G16|Add1~5_sumout\))) ) ) ) # ( \G16|Add0~5_sumout\ & ( !\G16|Mux14~3_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & (\G14|SAIDA\(1)))) # 
-- (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\) # ((\G16|Add1~5_sumout\)))) ) ) ) # ( !\G16|Add0~5_sumout\ & ( !\G16|Mux14~3_combout\ & ( (\G16|Mux14~1_combout\ & ((!\G16|Mux14~0_combout\ & (\G14|SAIDA\(1))) # (\G16|Mux14~0_combout\ & 
-- ((\G16|Add1~5_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011100100010001100110110011001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G14|ALT_INV_SAIDA\(1),
	datad => \G16|ALT_INV_Add1~5_sumout\,
	datae => \G16|ALT_INV_Add0~5_sumout\,
	dataf => \G16|ALT_INV_Mux14~3_combout\,
	combout => \G16|Mux14~4_combout\);

\G4|rd[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~1_combout\ = (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|rd[0]~1_combout\);

\G7|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~1_combout\ = ( !\G1|pout\(1) & ( !\G1|pout\(0) & ( (\G4|Mux0~1_combout\ & (\G4|Mux0~0_combout\ & (!\G1|pout\(3) & !\G1|pout\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~1_combout\,
	datab => \G4|ALT_INV_Mux0~0_combout\,
	datac => \G1|ALT_INV_pout\(3),
	datad => \G1|ALT_INV_pout\(2),
	datae => \G1|ALT_INV_pout\(1),
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G7|Mux15~1_combout\);

\G16|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~1_combout\ = (!\G14|SAIDA\(0) & (!\G7|Mux15~1_combout\ & ((!\G7|Reg[0][0]~combout\) # (\G4|rd[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000010001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][0]~combout\,
	datab => \G14|ALT_INV_SAIDA\(0),
	datac => \G4|ALT_INV_rd[0]~1_combout\,
	datad => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G16|Mux15~1_combout\);

\G16|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~2_combout\ = ( \G16|Mux15~1_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~1_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~1_sumout\)))) ) ) # ( !\G16|Mux15~1_combout\ & ( (!\G16|Mux14~0_combout\ & 
-- (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~1_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000010100010100100011011001110000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~1_sumout\,
	datad => \G16|ALT_INV_Add0~1_sumout\,
	datae => \G16|ALT_INV_Mux15~1_combout\,
	combout => \G16|Mux15~2_combout\);

\G16|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~1_combout\ = (!\G14|SAIDA\(2) & (!\G7|Mux15~1_combout\ & ((!\G7|Reg[0][2]~combout\) # (\G4|rd[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000010001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][2]~combout\,
	datab => \G14|ALT_INV_SAIDA\(2),
	datac => \G4|ALT_INV_rd[0]~1_combout\,
	datad => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G16|Mux13~1_combout\);

\G17|ram~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~280_combout\ = ( !\G16|Mux15~2_combout\ & ( \G16|Mux13~1_combout\ & ( (!\G16|Mux14~0_combout\) # ((!\G16|Mux14~1_combout\ & ((!\G16|Add0~9_sumout\))) # (\G16|Mux14~1_combout\ & (!\G16|Add1~9_sumout\))) ) ) ) # ( !\G16|Mux15~2_combout\ & ( 
-- !\G16|Mux13~1_combout\ & ( (!\G16|Mux14~0_combout\ & (!\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((!\G16|Add0~9_sumout\))) # (\G16|Mux14~1_combout\ & (!\G16|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110010011000000000000000000011111110101110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~9_sumout\,
	datad => \G16|ALT_INV_Add0~9_sumout\,
	datae => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux13~1_combout\,
	combout => \G17|ram~280_combout\);

\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( !\G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & \G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~0_combout\);

\G17|ram~257\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~257_combout\ = ( \G17|ram~257_combout\ & ( \rtl~0_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( !\G17|ram~257_combout\ & ( \rtl~0_combout\ & ( \G7|Mux30~1_combout\ ) ) ) # ( \G17|ram~257_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux30~1_combout\,
	datae => \G17|ALT_INV_ram~257_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~257_combout\);

\G18|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~6_combout\ = ( \G17|ram~280_combout\ & ( \G17|ram~257_combout\ & ( (!\G16|Mux14~4_combout\ & (((\G16|Mux11~2_combout\ & \G18|SAIDA~0_combout\)))) # (\G16|Mux14~4_combout\ & (!\G5|memparareg~combout\)) ) ) ) # ( !\G17|ram~280_combout\ & ( 
-- \G17|ram~257_combout\ & ( (!\G5|memparareg~combout\ & \G16|Mux14~4_combout\) ) ) ) # ( \G17|ram~280_combout\ & ( !\G17|ram~257_combout\ & ( (!\G5|memparareg~combout\ & \G16|Mux14~4_combout\) ) ) ) # ( !\G17|ram~280_combout\ & ( !\G17|ram~257_combout\ & ( 
-- (!\G5|memparareg~combout\ & \G16|Mux14~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G16|ALT_INV_Mux14~4_combout\,
	datae => \G17|ALT_INV_ram~280_combout\,
	dataf => \G17|ALT_INV_ram~257_combout\,
	combout => \G18|SAIDA~6_combout\);

\G18|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~7_combout\ = ( \G18|SAIDA~6_combout\ ) # ( !\G18|SAIDA~6_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~285_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~285_combout\)) # 
-- (\G17|ram~281_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~281_combout\,
	datad => \G17|ALT_INV_ram~285_combout\,
	datae => \G18|ALT_INV_SAIDA~6_combout\,
	combout => \G18|SAIDA~7_combout\);

\G18|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(1) = ( \G18|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~7_combout\ ) ) ) # ( !\G18|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~7_combout\ ) ) ) # ( \G18|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~7_combout\,
	datae => \G18|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(1));

\G7|Reg[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][0]~0_combout\ = ( \G6|SAIDA[2]~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & (!\G6|SAIDA[0]~0_combout\ & \G6|SAIDA[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datae => \G6|ALT_INV_SAIDA[2]~3_combout\,
	combout => \G7|Reg[0][0]~0_combout\);

\G7|Reg[0][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][1]~combout\ = ( \G7|Reg[0][1]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(1) ) ) ) # ( !\G7|Reg[0][1]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(1) ) ) ) # ( \G7|Reg[0][1]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(1),
	datae => \G7|ALT_INV_Reg[0][1]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][1]~combout\);

\G7|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux14~0_combout\ = ( !\G4|Mux7~1_combout\ & ( \G7|Reg[0][1]~combout\ & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (\Clock_Sistema~input_o\ & !\G4|Mux6~0_combout\))) ) ) ) # ( \G4|Mux7~1_combout\ & ( !\G7|Reg[0][1]~combout\ ) ) # ( !\G4|Mux7~1_combout\ 
-- & ( !\G7|Reg[0][1]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux6~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	dataf => \G7|ALT_INV_Reg[0][1]~combout\,
	combout => \G7|Mux14~0_combout\);

\G16|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~2_combout\ = ( \G16|Add1~5_sumout\ & ( \G16|Add0~5_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux14~0_combout\) # (\G14|SAIDA\(1))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~5_sumout\ & ( \G16|Add0~5_sumout\ & ( (!\G16|Mux14~0_combout\ 
-- & (\G16|Mux14~1_combout\ & ((!\G7|Mux14~0_combout\) # (\G14|SAIDA\(1))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~5_sumout\ & ( !\G16|Add0~5_sumout\ & ( (\G16|Mux14~1_combout\ & ((!\G7|Mux14~0_combout\) # 
-- ((\G14|SAIDA\(1)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~5_sumout\ & ( !\G16|Add0~5_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux14~0_combout\) # (\G14|SAIDA\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(1),
	datae => \G16|ALT_INV_Add1~5_sumout\,
	dataf => \G16|ALT_INV_Add0~5_sumout\,
	combout => \G16|Mux14~2_combout\);

\rtl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = ( \G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux15~0_combout\ & (\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~2_combout\);

\G17|ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~112_combout\ = ( \G17|ram~112_combout\ & ( \rtl~2_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~112_combout\ & ( \rtl~2_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~112_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~112_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~112_combout\);

\G17|ram~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~96_combout\ = ( \G17|ram~96_combout\ & ( \rtl~4_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~96_combout\ & ( \rtl~4_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~96_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~96_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~96_combout\);

\G17|ram~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~16_combout\ = ( \G17|ram~16_combout\ & ( \rtl~9_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~16_combout\ & ( \rtl~9_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~16_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~16_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~16_combout\);

\G17|ram~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~48_combout\ = ( \G17|ram~48_combout\ & ( \rtl~10_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~48_combout\ & ( \rtl~10_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~48_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~48_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~48_combout\);

\G17|ram~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~32_combout\ = ( \G17|ram~32_combout\ & ( \rtl~12_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~32_combout\ & ( \rtl~12_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~32_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~32_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~32_combout\);

\G17|ram~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~0_combout\ = ( \G17|ram~0_combout\ & ( \rtl~11_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~0_combout\ & ( \rtl~11_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~0_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~0_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~0_combout\);

\G17|ram~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~401_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~0_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~16_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~32_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~48_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~16_combout\,
	datab => \G17|ALT_INV_ram~48_combout\,
	datac => \G17|ALT_INV_ram~32_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~0_combout\,
	combout => \G17|ram~401_combout\);

\G17|ram~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~64_combout\ = ( \G17|ram~64_combout\ & ( \rtl~3_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~64_combout\ & ( \rtl~3_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~64_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~64_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~64_combout\);

\G17|ram~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~272_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~401_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~401_combout\ & ((\G17|ram~64_combout\))) # (\G17|ram~401_combout\ & (\G17|ram~80_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~401_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~401_combout\ & ((\G17|ram~96_combout\))) # (\G17|ram~401_combout\ & (\G17|ram~112_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~80_combout\,
	datab => \G17|ALT_INV_ram~112_combout\,
	datac => \G17|ALT_INV_ram~96_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~401_combout\,
	datag => \G17|ALT_INV_ram~64_combout\,
	combout => \G17|ram~272_combout\);

\G17|ram~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~208_combout\ = ( \G17|ram~208_combout\ & ( \rtl~5_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~208_combout\ & ( \rtl~5_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~208_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~208_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~208_combout\);

\G17|ram~240\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~240_combout\ = ( \G17|ram~240_combout\ & ( \rtl~6_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~240_combout\ & ( \rtl~6_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~240_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~240_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~240_combout\);

\G17|ram~224\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~224_combout\ = ( \G17|ram~224_combout\ & ( \rtl~8_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~224_combout\ & ( \rtl~8_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~224_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~224_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~224_combout\);

\G17|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~144_combout\ = ( \G17|ram~144_combout\ & ( \rtl~13_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~144_combout\ & ( \rtl~13_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~144_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~144_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~144_combout\);

\G17|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~176_combout\ = ( \G17|ram~176_combout\ & ( \rtl~14_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~176_combout\ & ( \rtl~14_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~176_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~176_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~176_combout\);

\G17|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~160_combout\ = ( \G17|ram~160_combout\ & ( \rtl~16_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~160_combout\ & ( \rtl~16_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~160_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~160_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~160_combout\);

\G17|ram~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~128_combout\ = ( \G17|ram~128_combout\ & ( \rtl~15_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~128_combout\ & ( \rtl~15_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~128_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~128_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~128_combout\);

\G17|ram~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~405_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~128_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~144_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~160_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~176_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~144_combout\,
	datab => \G17|ALT_INV_ram~176_combout\,
	datac => \G17|ALT_INV_ram~160_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~128_combout\,
	combout => \G17|ram~405_combout\);

\G17|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~192_combout\ = ( \G17|ram~192_combout\ & ( \rtl~7_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~192_combout\ & ( \rtl~7_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~192_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~192_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~192_combout\);

\G17|ram~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~276_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~405_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~405_combout\ & ((\G17|ram~192_combout\))) # (\G17|ram~405_combout\ & (\G17|ram~208_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~405_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~405_combout\ & ((\G17|ram~224_combout\))) # (\G17|ram~405_combout\ & (\G17|ram~240_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~208_combout\,
	datab => \G17|ALT_INV_ram~240_combout\,
	datac => \G17|ALT_INV_ram~224_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~405_combout\,
	datag => \G17|ALT_INV_ram~192_combout\,
	combout => \G17|ram~276_combout\);

\G18|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~3_combout\ = ( !\G5|memparareg~combout\ & ( \G16|Mux15~1_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~1_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~1_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G16|Mux15~1_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~1_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~1_sumout\,
	datad => \G16|ALT_INV_Add0~1_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Mux15~1_combout\,
	combout => \G18|SAIDA~3_combout\);

\G17|ram~256\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~256_combout\ = ( \G17|ram~256_combout\ & ( \rtl~0_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( !\G17|ram~256_combout\ & ( \rtl~0_combout\ & ( \G7|Mux31~1_combout\ ) ) ) # ( \G17|ram~256_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux31~1_combout\,
	datae => \G17|ALT_INV_ram~256_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~256_combout\);

\G18|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~4_combout\ = ( \G16|Mux14~4_combout\ & ( \G17|ram~280_combout\ & ( !\G18|SAIDA~3_combout\ ) ) ) # ( !\G16|Mux14~4_combout\ & ( \G17|ram~280_combout\ & ( (!\G18|SAIDA~3_combout\ & ((!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # 
-- (!\G17|ram~256_combout\)))) ) ) ) # ( \G16|Mux14~4_combout\ & ( !\G17|ram~280_combout\ & ( !\G18|SAIDA~3_combout\ ) ) ) # ( !\G16|Mux14~4_combout\ & ( !\G17|ram~280_combout\ & ( !\G18|SAIDA~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~3_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G17|ALT_INV_ram~256_combout\,
	datae => \G16|ALT_INV_Mux14~4_combout\,
	dataf => \G17|ALT_INV_ram~280_combout\,
	combout => \G18|SAIDA~4_combout\);

\G18|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~5_combout\ = ( \G18|SAIDA~4_combout\ & ( (!\G17|ram~272_combout\ & (((\G17|ram~276_combout\ & \G18|SAIDA~2_combout\)))) # (\G17|ram~272_combout\ & (((\G17|ram~276_combout\ & \G18|SAIDA~2_combout\)) # (\G18|SAIDA~1_combout\))) ) ) # ( 
-- !\G18|SAIDA~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000100010001111111111111111111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~272_combout\,
	datab => \G18|ALT_INV_SAIDA~1_combout\,
	datac => \G17|ALT_INV_ram~276_combout\,
	datad => \G18|ALT_INV_SAIDA~2_combout\,
	datae => \G18|ALT_INV_SAIDA~4_combout\,
	combout => \G18|SAIDA~5_combout\);

\G18|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(0) = ( \G18|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~5_combout\ ) ) ) # ( !\G18|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~5_combout\ ) ) ) # ( \G18|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~5_combout\,
	datae => \G18|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(0));

\G7|Reg[0][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][0]~combout\ = ( \G7|Reg[0][0]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(0) ) ) ) # ( !\G7|Reg[0][0]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(0) ) ) ) # ( \G7|Reg[0][0]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(0),
	datae => \G7|ALT_INV_Reg[0][0]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][0]~combout\);

\G7|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~0_combout\ = (!\G4|rd[0]~0_combout\ & (\G7|Reg[0][0]~combout\)) # (\G4|rd[0]~0_combout\ & (((!\G5|escrevereg~combout\) # (!\G7|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110100011101110111010001110111011101000111011101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][0]~combout\,
	datab => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G7|ALT_INV_Decoder0~0_combout\,
	combout => \G7|Mux15~0_combout\);

\G16|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~0_combout\ = ( \G16|Add1~1_sumout\ & ( \G16|Add0~1_sumout\ & ( ((\G16|Mux14~1_combout\ & ((\G14|SAIDA\(0)) # (\G7|Mux15~0_combout\)))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~1_sumout\ & ( \G16|Add0~1_sumout\ & ( (!\G16|Mux14~0_combout\ 
-- & (\G16|Mux14~1_combout\ & ((\G14|SAIDA\(0)) # (\G7|Mux15~0_combout\)))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~1_sumout\ & ( !\G16|Add0~1_sumout\ & ( (\G16|Mux14~1_combout\ & (((\G16|Mux14~0_combout\) # 
-- (\G14|SAIDA\(0))) # (\G7|Mux15~0_combout\))) ) ) ) # ( !\G16|Add1~1_sumout\ & ( !\G16|Add0~1_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((\G14|SAIDA\(0)) # (\G7|Mux15~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111111100001111011100000000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Mux14~1_combout\,
	datae => \G16|ALT_INV_Add1~1_sumout\,
	dataf => \G16|ALT_INV_Add0~1_sumout\,
	combout => \G16|Mux15~0_combout\);

\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = ( \G16|Mux13~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (\G16|Mux15~0_combout\ & (!\G16|Mux14~2_combout\ & (!\G16|Mux12~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux14~2_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~1_combout\);

\G17|ram~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~82_combout\ = ( \G17|ram~82_combout\ & ( \rtl~1_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~82_combout\ & ( \rtl~1_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~82_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~82_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~82_combout\);

\G17|ram~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~114_combout\ = ( \G17|ram~114_combout\ & ( \rtl~2_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~114_combout\ & ( \rtl~2_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~114_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~114_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~114_combout\);

\G17|ram~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~98_combout\ = ( \G17|ram~98_combout\ & ( \rtl~4_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~98_combout\ & ( \rtl~4_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~98_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~98_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~98_combout\);

\G17|ram~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~18_combout\ = ( \G17|ram~18_combout\ & ( \rtl~9_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~18_combout\ & ( \rtl~9_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~18_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~18_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~18_combout\);

\G17|ram~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~50_combout\ = ( \G17|ram~50_combout\ & ( \rtl~10_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~50_combout\ & ( \rtl~10_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~50_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~50_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~50_combout\);

\G17|ram~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~34_combout\ = ( \G17|ram~34_combout\ & ( \rtl~12_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~34_combout\ & ( \rtl~12_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~34_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~34_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~34_combout\);

\G17|ram~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~2_combout\ = ( \G17|ram~2_combout\ & ( \rtl~11_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~2_combout\ & ( \rtl~11_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~2_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~2_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~2_combout\);

\G17|ram~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~417_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~2_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~18_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~34_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~50_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~18_combout\,
	datab => \G17|ALT_INV_ram~50_combout\,
	datac => \G17|ALT_INV_ram~34_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~2_combout\,
	combout => \G17|ram~417_combout\);

\G17|ram~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~66_combout\ = ( \G17|ram~66_combout\ & ( \rtl~3_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~66_combout\ & ( \rtl~3_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~66_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~66_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~66_combout\);

\G17|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~289_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~417_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~417_combout\ & ((\G17|ram~66_combout\))) # (\G17|ram~417_combout\ & (\G17|ram~82_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~417_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~417_combout\ & ((\G17|ram~98_combout\))) # (\G17|ram~417_combout\ & (\G17|ram~114_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~82_combout\,
	datab => \G17|ALT_INV_ram~114_combout\,
	datac => \G17|ALT_INV_ram~98_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~417_combout\,
	datag => \G17|ALT_INV_ram~66_combout\,
	combout => \G17|ram~289_combout\);

\G17|ram~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~210_combout\ = ( \G17|ram~210_combout\ & ( \rtl~5_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~210_combout\ & ( \rtl~5_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~210_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~210_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~210_combout\);

\G17|ram~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~242_combout\ = ( \G17|ram~242_combout\ & ( \rtl~6_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~242_combout\ & ( \rtl~6_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~242_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~242_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~242_combout\);

\G17|ram~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~226_combout\ = ( \G17|ram~226_combout\ & ( \rtl~8_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~226_combout\ & ( \rtl~8_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~226_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~226_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~226_combout\);

\G17|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~146_combout\ = ( \G17|ram~146_combout\ & ( \rtl~13_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~146_combout\ & ( \rtl~13_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~146_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~146_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~146_combout\);

\G17|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~178_combout\ = ( \G17|ram~178_combout\ & ( \rtl~14_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~178_combout\ & ( \rtl~14_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~178_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~178_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~178_combout\);

\G17|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~162_combout\ = ( \G17|ram~162_combout\ & ( \rtl~16_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~162_combout\ & ( \rtl~16_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~162_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~162_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~162_combout\);

\G17|ram~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~130_combout\ = ( \G17|ram~130_combout\ & ( \rtl~15_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~130_combout\ & ( \rtl~15_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~130_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~130_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~130_combout\);

\G17|ram~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~421_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~130_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~146_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~162_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~178_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~146_combout\,
	datab => \G17|ALT_INV_ram~178_combout\,
	datac => \G17|ALT_INV_ram~162_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~130_combout\,
	combout => \G17|ram~421_combout\);

\G17|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~194_combout\ = ( \G17|ram~194_combout\ & ( \rtl~7_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~194_combout\ & ( \rtl~7_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~194_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~194_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~194_combout\);

\G17|ram~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~293_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~421_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~421_combout\ & ((\G17|ram~194_combout\))) # (\G17|ram~421_combout\ & (\G17|ram~210_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~421_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~421_combout\ & ((\G17|ram~226_combout\))) # (\G17|ram~421_combout\ & (\G17|ram~242_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~210_combout\,
	datab => \G17|ALT_INV_ram~242_combout\,
	datac => \G17|ALT_INV_ram~226_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~421_combout\,
	datag => \G17|ALT_INV_ram~194_combout\,
	combout => \G17|ram~293_combout\);

\G18|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~8_combout\ = ( !\G5|memparareg~combout\ & ( \G16|Mux13~1_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~9_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~9_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G16|Mux13~1_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~9_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~9_sumout\,
	datad => \G16|ALT_INV_Add0~9_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Mux13~1_combout\,
	combout => \G18|SAIDA~8_combout\);

\G17|ram~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~258_combout\ = ( \G17|ram~258_combout\ & ( \rtl~0_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( !\G17|ram~258_combout\ & ( \rtl~0_combout\ & ( \G7|Mux29~1_combout\ ) ) ) # ( \G17|ram~258_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~1_combout\,
	datae => \G17|ALT_INV_ram~258_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~258_combout\);

\G18|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~9_combout\ = ( !\G18|SAIDA~8_combout\ & ( \G17|ram~258_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G18|SAIDA~8_combout\ & ( !\G17|ram~258_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G18|ALT_INV_SAIDA~8_combout\,
	dataf => \G17|ALT_INV_ram~258_combout\,
	combout => \G18|SAIDA~9_combout\);

\G18|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~10_combout\ = ( \G18|SAIDA~9_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~293_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~293_combout\)) # (\G17|ram~289_combout\))) ) ) # ( 
-- !\G18|SAIDA~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~289_combout\,
	datad => \G17|ALT_INV_ram~293_combout\,
	datae => \G18|ALT_INV_SAIDA~9_combout\,
	combout => \G18|SAIDA~10_combout\);

\G18|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(2) = ( \G18|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~10_combout\ ) ) ) # ( !\G18|SAIDA\(2) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~10_combout\ ) ) ) # ( \G18|SAIDA\(2) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~10_combout\,
	datae => \G18|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(2));

\G7|Reg[0][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][2]~combout\ = ( \G7|Reg[0][2]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( !\G7|Reg[0][2]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( \G7|Reg[0][2]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(2),
	datae => \G7|ALT_INV_Reg[0][2]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][2]~combout\);

\G16|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~13_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][3]~combout\) ) + ( !\G14|SAIDA\(3) ) + ( \G16|Add1~10\ ))
-- \G16|Add1~14\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][3]~combout\) ) + ( !\G14|SAIDA\(3) ) + ( \G16|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][3]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(3),
	cin => \G16|Add1~10\,
	sumout => \G16|Add1~13_sumout\,
	cout => \G16|Add1~14\);

\G16|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~2_combout\ = ( \G16|Mux12~1_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~13_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~13_sumout\)))) ) ) # ( !\G16|Mux12~1_combout\ & ( (!\G16|Mux14~0_combout\ & 
-- (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~13_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000010100010100100011011001110000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~13_sumout\,
	datad => \G16|ALT_INV_Add0~13_sumout\,
	datae => \G16|ALT_INV_Mux12~1_combout\,
	combout => \G16|Mux12~2_combout\);

\G7|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][3]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][3]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][3]~combout\,
	datad => \G18|ALT_INV_SAIDA\(3),
	combout => \G7|Mux28~0_combout\);

\G7|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux28~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux28~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux28~1_combout\);

\G17|ram~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~211_combout\ = ( \G17|ram~211_combout\ & ( \rtl~5_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~211_combout\ & ( \rtl~5_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~211_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~211_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~211_combout\);

\G17|ram~243\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~243_combout\ = ( \G17|ram~243_combout\ & ( \rtl~6_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~243_combout\ & ( \rtl~6_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~243_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~243_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~243_combout\);

\G17|ram~227\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~227_combout\ = ( \G17|ram~227_combout\ & ( \rtl~8_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~227_combout\ & ( \rtl~8_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~227_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~227_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~227_combout\);

\G17|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~147_combout\ = ( \G17|ram~147_combout\ & ( \rtl~13_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~147_combout\ & ( \rtl~13_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~147_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~147_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~147_combout\);

\G17|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~179_combout\ = ( \G17|ram~179_combout\ & ( \rtl~14_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~179_combout\ & ( \rtl~14_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~179_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~179_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~179_combout\);

\G17|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~163_combout\ = ( \G17|ram~163_combout\ & ( \rtl~16_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~163_combout\ & ( \rtl~16_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~163_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~163_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~163_combout\);

\G17|ram~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~131_combout\ = ( \G17|ram~131_combout\ & ( \rtl~15_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~131_combout\ & ( \rtl~15_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~131_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~131_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~131_combout\);

\G17|ram~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~425_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~131_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~147_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~163_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~179_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~147_combout\,
	datab => \G17|ALT_INV_ram~179_combout\,
	datac => \G17|ALT_INV_ram~163_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~131_combout\,
	combout => \G17|ram~425_combout\);

\G17|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~195_combout\ = ( \G17|ram~195_combout\ & ( \rtl~7_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~195_combout\ & ( \rtl~7_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~195_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~195_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~195_combout\);

\G17|ram~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~297_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~425_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~425_combout\ & ((\G17|ram~195_combout\))) # (\G17|ram~425_combout\ & (\G17|ram~211_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~425_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~425_combout\ & ((\G17|ram~227_combout\))) # (\G17|ram~425_combout\ & (\G17|ram~243_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~211_combout\,
	datab => \G17|ALT_INV_ram~243_combout\,
	datac => \G17|ALT_INV_ram~227_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~425_combout\,
	datag => \G17|ALT_INV_ram~195_combout\,
	combout => \G17|ram~297_combout\);

\G17|ram~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~83_combout\ = ( \G17|ram~83_combout\ & ( \rtl~1_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~83_combout\ & ( \rtl~1_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~83_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~83_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~83_combout\);

\G17|ram~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~115_combout\ = ( \G17|ram~115_combout\ & ( \rtl~2_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~115_combout\ & ( \rtl~2_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~115_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~115_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~115_combout\);

\G17|ram~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~99_combout\ = ( \G17|ram~99_combout\ & ( \rtl~4_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~99_combout\ & ( \rtl~4_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~99_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~99_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~99_combout\);

\G17|ram~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~19_combout\ = ( \G17|ram~19_combout\ & ( \rtl~9_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~19_combout\ & ( \rtl~9_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~19_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~19_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~19_combout\);

\G17|ram~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~51_combout\ = ( \G17|ram~51_combout\ & ( \rtl~10_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~51_combout\ & ( \rtl~10_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~51_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~51_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~51_combout\);

\G17|ram~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~35_combout\ = ( \G17|ram~35_combout\ & ( \rtl~12_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~35_combout\ & ( \rtl~12_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~35_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~35_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~35_combout\);

\G17|ram~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~3_combout\ = ( \G17|ram~3_combout\ & ( \rtl~11_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~3_combout\ & ( \rtl~11_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~3_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~3_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~3_combout\);

\G17|ram~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~429_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~3_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~19_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~35_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~19_combout\,
	datab => \G17|ALT_INV_ram~51_combout\,
	datac => \G17|ALT_INV_ram~35_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~3_combout\,
	combout => \G17|ram~429_combout\);

\G17|ram~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~67_combout\ = ( \G17|ram~67_combout\ & ( \rtl~3_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~67_combout\ & ( \rtl~3_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~67_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~67_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~67_combout\);

\G17|ram~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~301_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~429_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~429_combout\ & ((\G17|ram~67_combout\))) # (\G17|ram~429_combout\ & (\G17|ram~83_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~429_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~429_combout\ & ((\G17|ram~99_combout\))) # (\G17|ram~429_combout\ & (\G17|ram~115_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~83_combout\,
	datab => \G17|ALT_INV_ram~115_combout\,
	datac => \G17|ALT_INV_ram~99_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~429_combout\,
	datag => \G17|ALT_INV_ram~67_combout\,
	combout => \G17|ram~301_combout\);

\G16|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~2_combout\ = ( \G16|Mux13~1_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~9_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~9_sumout\)))) ) ) # ( !\G16|Mux13~1_combout\ & ( (!\G16|Mux14~0_combout\ & 
-- (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~9_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000010100010100100011011001110000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~9_sumout\,
	datad => \G16|ALT_INV_Add0~9_sumout\,
	datae => \G16|ALT_INV_Mux13~1_combout\,
	combout => \G16|Mux13~2_combout\);

\G17|ram~259\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~259_combout\ = ( \G17|ram~259_combout\ & ( \rtl~0_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( !\G17|ram~259_combout\ & ( \rtl~0_combout\ & ( \G7|Mux28~1_combout\ ) ) ) # ( \G17|ram~259_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux28~1_combout\,
	datae => \G17|ALT_INV_ram~259_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~259_combout\);

\G18|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~11_combout\ = ( !\G16|Mux13~2_combout\ & ( \G17|ram~259_combout\ & ( (!\G16|Mux15~2_combout\ & (\G16|Mux11~2_combout\ & (\G18|SAIDA~0_combout\ & !\G16|Mux14~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G16|ALT_INV_Mux14~4_combout\,
	datae => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G17|ALT_INV_ram~259_combout\,
	combout => \G18|SAIDA~11_combout\);

\G18|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~12_combout\ = ( \G17|ram~301_combout\ & ( \G18|SAIDA~11_combout\ ) ) # ( !\G17|ram~301_combout\ & ( \G18|SAIDA~11_combout\ ) ) # ( \G17|ram~301_combout\ & ( !\G18|SAIDA~11_combout\ & ( (!\G5|memparareg~combout\ & (((\G16|Mux12~2_combout\)))) # 
-- (\G5|memparareg~combout\ & (!\G16|Mux11~2_combout\ & ((!\G16|Mux12~2_combout\) # (\G17|ram~297_combout\)))) ) ) ) # ( !\G17|ram~301_combout\ & ( !\G18|SAIDA~11_combout\ & ( (\G16|Mux12~2_combout\ & ((!\G5|memparareg~combout\) # ((!\G16|Mux11~2_combout\ & 
-- \G17|ram~297_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001110010010100100111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G17|ALT_INV_ram~297_combout\,
	datae => \G17|ALT_INV_ram~301_combout\,
	dataf => \G18|ALT_INV_SAIDA~11_combout\,
	combout => \G18|SAIDA~12_combout\);

\G18|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(3) = ( \G18|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~12_combout\ ) ) ) # ( !\G18|SAIDA\(3) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~12_combout\ ) ) ) # ( \G18|SAIDA\(3) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~12_combout\,
	datae => \G18|ALT_INV_SAIDA\(3),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(3));

\G7|Reg[0][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][3]~combout\ = ( \G7|Reg[0][3]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(3) ) ) ) # ( !\G7|Reg[0][3]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(3) ) ) ) # ( \G7|Reg[0][3]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(3),
	datae => \G7|ALT_INV_Reg[0][3]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][3]~combout\);

\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][4]~combout\) ) + ( \G14|SAIDA\(4) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][4]~combout\) ) + ( \G14|SAIDA\(4) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][4]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(4),
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

\G16|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~1_combout\ = ( \G7|Reg[0][4]~combout\ & ( !\G14|SAIDA\(4) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][4]~combout\ & ( !\G14|SAIDA\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][4]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(4),
	combout => \G16|Mux11~1_combout\);

\G16|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~2_combout\ = ( \G16|Mux11~1_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~17_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~17_sumout\)))) ) ) # ( !\G16|Mux11~1_combout\ & ( (!\G16|Mux14~0_combout\ & 
-- (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~17_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000010100010100100011011001110000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~17_sumout\,
	datad => \G16|ALT_INV_Add0~17_sumout\,
	datae => \G16|ALT_INV_Mux11~1_combout\,
	combout => \G16|Mux11~2_combout\);

\G7|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][4]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][4]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][4]~combout\,
	datad => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Mux27~0_combout\);

\G7|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux27~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux27~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G7|Mux27~1_combout\);

\G17|ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~84_combout\ = ( \G17|ram~84_combout\ & ( \rtl~1_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~84_combout\ & ( \rtl~1_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~84_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~84_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~84_combout\);

\G17|ram~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~116_combout\ = ( \G17|ram~116_combout\ & ( \rtl~2_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~116_combout\ & ( \rtl~2_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~116_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~116_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~116_combout\);

\G17|ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~100_combout\ = ( \G17|ram~100_combout\ & ( \rtl~4_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~100_combout\ & ( \rtl~4_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~100_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~100_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~100_combout\);

\G17|ram~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~20_combout\ = ( \G17|ram~20_combout\ & ( \rtl~9_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~20_combout\ & ( \rtl~9_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~20_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~20_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~20_combout\);

\G17|ram~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~52_combout\ = ( \G17|ram~52_combout\ & ( \rtl~10_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~52_combout\ & ( \rtl~10_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~52_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~52_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~52_combout\);

\G17|ram~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~36_combout\ = ( \G17|ram~36_combout\ & ( \rtl~12_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~36_combout\ & ( \rtl~12_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~36_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~36_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~36_combout\);

\G17|ram~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~4_combout\ = ( \G17|ram~4_combout\ & ( \rtl~11_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~4_combout\ & ( \rtl~11_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~4_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~4_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~4_combout\);

\G17|ram~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~433_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~4_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~20_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~36_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~52_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~20_combout\,
	datab => \G17|ALT_INV_ram~52_combout\,
	datac => \G17|ALT_INV_ram~36_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~4_combout\,
	combout => \G17|ram~433_combout\);

\G17|ram~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~68_combout\ = ( \G17|ram~68_combout\ & ( \rtl~3_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~68_combout\ & ( \rtl~3_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~68_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~68_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~68_combout\);

\G17|ram~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~305_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~433_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~433_combout\ & ((\G17|ram~68_combout\))) # (\G17|ram~433_combout\ & (\G17|ram~84_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~433_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~433_combout\ & ((\G17|ram~100_combout\))) # (\G17|ram~433_combout\ & (\G17|ram~116_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~84_combout\,
	datab => \G17|ALT_INV_ram~116_combout\,
	datac => \G17|ALT_INV_ram~100_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~433_combout\,
	datag => \G17|ALT_INV_ram~68_combout\,
	combout => \G17|ram~305_combout\);

\G17|ram~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~212_combout\ = ( \G17|ram~212_combout\ & ( \rtl~5_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~212_combout\ & ( \rtl~5_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~212_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~212_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~212_combout\);

\G17|ram~244\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~244_combout\ = ( \G17|ram~244_combout\ & ( \rtl~6_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~244_combout\ & ( \rtl~6_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~244_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~244_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~244_combout\);

\G17|ram~228\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~228_combout\ = ( \G17|ram~228_combout\ & ( \rtl~8_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~228_combout\ & ( \rtl~8_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~228_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~228_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~228_combout\);

\G17|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~148_combout\ = ( \G17|ram~148_combout\ & ( \rtl~13_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~148_combout\ & ( \rtl~13_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~148_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~148_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~148_combout\);

\G17|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~180_combout\ = ( \G17|ram~180_combout\ & ( \rtl~14_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~180_combout\ & ( \rtl~14_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~180_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~180_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~180_combout\);

\G17|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~164_combout\ = ( \G17|ram~164_combout\ & ( \rtl~16_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~164_combout\ & ( \rtl~16_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~164_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~164_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~164_combout\);

\G17|ram~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~132_combout\ = ( \G17|ram~132_combout\ & ( \rtl~15_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~132_combout\ & ( \rtl~15_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~132_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~132_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~132_combout\);

\G17|ram~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~437_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~132_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~148_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~164_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~180_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~148_combout\,
	datab => \G17|ALT_INV_ram~180_combout\,
	datac => \G17|ALT_INV_ram~164_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~132_combout\,
	combout => \G17|ram~437_combout\);

\G17|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~196_combout\ = ( \G17|ram~196_combout\ & ( \rtl~7_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~196_combout\ & ( \rtl~7_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~196_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~196_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~196_combout\);

\G17|ram~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~309_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~437_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~437_combout\ & ((\G17|ram~196_combout\))) # (\G17|ram~437_combout\ & (\G17|ram~212_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~437_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~437_combout\ & ((\G17|ram~228_combout\))) # (\G17|ram~437_combout\ & (\G17|ram~244_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~212_combout\,
	datab => \G17|ALT_INV_ram~244_combout\,
	datac => \G17|ALT_INV_ram~228_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~437_combout\,
	datag => \G17|ALT_INV_ram~196_combout\,
	combout => \G17|ram~309_combout\);

\G17|ram~260\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~260_combout\ = ( \G17|ram~260_combout\ & ( \rtl~0_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( !\G17|ram~260_combout\ & ( \rtl~0_combout\ & ( \G7|Mux27~1_combout\ ) ) ) # ( \G17|ram~260_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux27~1_combout\,
	datae => \G17|ALT_INV_ram~260_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~260_combout\);

\G18|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~13_combout\ = ( \G17|ram~260_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux12~2_combout\ & (!\G16|Mux14~4_combout\ & !\G16|Mux13~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	datae => \G17|ALT_INV_ram~260_combout\,
	combout => \G18|SAIDA~13_combout\);

\G18|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~14_combout\ = ( \G17|ram~309_combout\ & ( \G18|SAIDA~13_combout\ & ( ((\G5|memparareg~combout\ & ((\G17|ram~305_combout\) # (\G16|Mux12~2_combout\)))) # (\G16|Mux11~2_combout\) ) ) ) # ( !\G17|ram~309_combout\ & ( \G18|SAIDA~13_combout\ & ( 
-- ((\G5|memparareg~combout\ & (!\G16|Mux12~2_combout\ & \G17|ram~305_combout\))) # (\G16|Mux11~2_combout\) ) ) ) # ( \G17|ram~309_combout\ & ( !\G18|SAIDA~13_combout\ & ( (!\G5|memparareg~combout\ & (\G16|Mux11~2_combout\)) # (\G5|memparareg~combout\ & 
-- (!\G16|Mux11~2_combout\ & ((\G17|ram~305_combout\) # (\G16|Mux12~2_combout\)))) ) ) ) # ( !\G17|ram~309_combout\ & ( !\G18|SAIDA~13_combout\ & ( (!\G5|memparareg~combout\ & (\G16|Mux11~2_combout\)) # (\G5|memparareg~combout\ & (!\G16|Mux11~2_combout\ & 
-- (!\G16|Mux12~2_combout\ & \G17|ram~305_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001100010001001100110011000110011011100110011011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Mux12~2_combout\,
	datad => \G17|ALT_INV_ram~305_combout\,
	datae => \G17|ALT_INV_ram~309_combout\,
	dataf => \G18|ALT_INV_SAIDA~13_combout\,
	combout => \G18|SAIDA~14_combout\);

\G18|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(4) = ( \G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~14_combout\ ) ) ) # ( !\G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~14_combout\ ) ) ) # ( \G18|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~14_combout\,
	datae => \G18|ALT_INV_SAIDA\(4),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(4));

\G7|Reg[0][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][4]~combout\ = ( \G7|Reg[0][4]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(4) ) ) ) # ( !\G7|Reg[0][4]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(4) ) ) ) # ( \G7|Reg[0][4]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(4),
	datae => \G7|ALT_INV_Reg[0][4]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][4]~combout\);

\G16|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~17_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][4]~combout\) ) + ( !\G14|SAIDA\(4) ) + ( \G16|Add1~14\ ))
-- \G16|Add1~18\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][4]~combout\) ) + ( !\G14|SAIDA\(4) ) + ( \G16|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][4]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(4),
	cin => \G16|Add1~14\,
	sumout => \G16|Add1~17_sumout\,
	cout => \G16|Add1~18\);

\G18|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~1_combout\ = ( \G16|Mux11~1_combout\ & ( \G18|SAIDA~0_combout\ & ( (!\G16|Mux14~0_combout\) # ((!\G16|Mux14~1_combout\ & ((!\G16|Add0~17_sumout\))) # (\G16|Mux14~1_combout\ & (!\G16|Add1~17_sumout\))) ) ) ) # ( !\G16|Mux11~1_combout\ & ( 
-- \G18|SAIDA~0_combout\ & ( (!\G16|Mux14~0_combout\ & (!\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((!\G16|Add0~17_sumout\))) # (\G16|Mux14~1_combout\ & (!\G16|Add1~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011100100110001111111010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~17_sumout\,
	datad => \G16|ALT_INV_Add0~17_sumout\,
	datae => \G16|ALT_INV_Mux11~1_combout\,
	dataf => \G18|ALT_INV_SAIDA~0_combout\,
	combout => \G18|SAIDA~1_combout\);

\G7|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][6]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][6]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(6))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][6]~combout\,
	datad => \G18|ALT_INV_SAIDA\(6),
	combout => \G7|Mux25~0_combout\);

\G7|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux25~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux25~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux25~0_combout\,
	combout => \G7|Mux25~1_combout\);

\G17|ram~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~86_combout\ = ( \G17|ram~86_combout\ & ( \rtl~1_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~86_combout\ & ( \rtl~1_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~86_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~86_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~86_combout\);

\G17|ram~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~118_combout\ = ( \G17|ram~118_combout\ & ( \rtl~2_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~118_combout\ & ( \rtl~2_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~118_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~118_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~118_combout\);

\G17|ram~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~102_combout\ = ( \G17|ram~102_combout\ & ( \rtl~4_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~102_combout\ & ( \rtl~4_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~102_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~102_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~102_combout\);

\G17|ram~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~22_combout\ = ( \G17|ram~22_combout\ & ( \rtl~9_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~22_combout\ & ( \rtl~9_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~22_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~22_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~22_combout\);

\G17|ram~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~54_combout\ = ( \G17|ram~54_combout\ & ( \rtl~10_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~54_combout\ & ( \rtl~10_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~54_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~54_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~54_combout\);

\G17|ram~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~38_combout\ = ( \G17|ram~38_combout\ & ( \rtl~12_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~38_combout\ & ( \rtl~12_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~38_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~38_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~38_combout\);

\G17|ram~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~6_combout\ = ( \G17|ram~6_combout\ & ( \rtl~11_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~6_combout\ & ( \rtl~11_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~6_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~6_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~6_combout\);

\G17|ram~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~449_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~6_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~22_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~38_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~54_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~22_combout\,
	datab => \G17|ALT_INV_ram~54_combout\,
	datac => \G17|ALT_INV_ram~38_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~6_combout\,
	combout => \G17|ram~449_combout\);

\G17|ram~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~70_combout\ = ( \G17|ram~70_combout\ & ( \rtl~3_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~70_combout\ & ( \rtl~3_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~70_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~70_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~70_combout\);

\G17|ram~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~321_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~449_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~449_combout\ & ((\G17|ram~70_combout\))) # (\G17|ram~449_combout\ & (\G17|ram~86_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~449_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~449_combout\ & ((\G17|ram~102_combout\))) # (\G17|ram~449_combout\ & (\G17|ram~118_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~86_combout\,
	datab => \G17|ALT_INV_ram~118_combout\,
	datac => \G17|ALT_INV_ram~102_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~449_combout\,
	datag => \G17|ALT_INV_ram~70_combout\,
	combout => \G17|ram~321_combout\);

\G17|ram~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~214_combout\ = ( \G17|ram~214_combout\ & ( \rtl~5_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~214_combout\ & ( \rtl~5_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~214_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~214_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~214_combout\);

\G17|ram~246\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~246_combout\ = ( \G17|ram~246_combout\ & ( \rtl~6_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~246_combout\ & ( \rtl~6_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~246_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~246_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~246_combout\);

\G17|ram~230\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~230_combout\ = ( \G17|ram~230_combout\ & ( \rtl~8_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~230_combout\ & ( \rtl~8_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~230_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~230_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~230_combout\);

\G17|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~150_combout\ = ( \G17|ram~150_combout\ & ( \rtl~13_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~150_combout\ & ( \rtl~13_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~150_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~150_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~150_combout\);

\G17|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~182_combout\ = ( \G17|ram~182_combout\ & ( \rtl~14_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~182_combout\ & ( \rtl~14_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~182_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~182_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~182_combout\);

\G17|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~166_combout\ = ( \G17|ram~166_combout\ & ( \rtl~16_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~166_combout\ & ( \rtl~16_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~166_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~166_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~166_combout\);

\G17|ram~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~134_combout\ = ( \G17|ram~134_combout\ & ( \rtl~15_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~134_combout\ & ( \rtl~15_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~134_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~134_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~134_combout\);

\G17|ram~453\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~453_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~134_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~150_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~166_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~182_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~150_combout\,
	datab => \G17|ALT_INV_ram~182_combout\,
	datac => \G17|ALT_INV_ram~166_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~134_combout\,
	combout => \G17|ram~453_combout\);

\G17|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~198_combout\ = ( \G17|ram~198_combout\ & ( \rtl~7_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~198_combout\ & ( \rtl~7_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~198_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~198_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~198_combout\);

\G17|ram~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~325_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~453_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~453_combout\ & ((\G17|ram~198_combout\))) # (\G17|ram~453_combout\ & (\G17|ram~214_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~453_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~453_combout\ & ((\G17|ram~230_combout\))) # (\G17|ram~453_combout\ & (\G17|ram~246_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~214_combout\,
	datab => \G17|ALT_INV_ram~246_combout\,
	datac => \G17|ALT_INV_ram~230_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~453_combout\,
	datag => \G17|ALT_INV_ram~198_combout\,
	combout => \G17|ram~325_combout\);

\G17|ram~262\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~262_combout\ = ( \G17|ram~262_combout\ & ( \rtl~0_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( !\G17|ram~262_combout\ & ( \rtl~0_combout\ & ( \G7|Mux25~1_combout\ ) ) ) # ( \G17|ram~262_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux25~1_combout\,
	datae => \G17|ALT_INV_ram~262_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~262_combout\);

\G14|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~10_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][6]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(6))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][6]~combout\,
	datac => \G18|ALT_INV_SAIDA\(6),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~10_combout\);

\G14|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(6) = ( \G14|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~10_combout\ ) ) ) # ( !\G14|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~10_combout\ ) ) ) # ( \G14|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~10_combout\,
	datae => \G14|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(6));

\G7|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][5]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][5]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][5]~combout\,
	datad => \G18|ALT_INV_SAIDA\(5),
	combout => \G7|Mux26~0_combout\);

\G7|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux26~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G7|Mux26~1_combout\);

\G17|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~85_combout\ = ( \G17|ram~85_combout\ & ( \rtl~1_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~85_combout\ & ( \rtl~1_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~85_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~85_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~85_combout\);

\G17|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~117_combout\ = ( \G17|ram~117_combout\ & ( \rtl~2_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~117_combout\ & ( \rtl~2_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~117_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~117_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~117_combout\);

\G17|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~101_combout\ = ( \G17|ram~101_combout\ & ( \rtl~4_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~101_combout\ & ( \rtl~4_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~101_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~101_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~101_combout\);

\G17|ram~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~21_combout\ = ( \G17|ram~21_combout\ & ( \rtl~9_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~21_combout\ & ( \rtl~9_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~21_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~21_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~21_combout\);

\G17|ram~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~53_combout\ = ( \G17|ram~53_combout\ & ( \rtl~10_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~53_combout\ & ( \rtl~10_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~53_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~53_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~53_combout\);

\G17|ram~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~37_combout\ = ( \G17|ram~37_combout\ & ( \rtl~12_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~37_combout\ & ( \rtl~12_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~37_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~37_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~37_combout\);

\G17|ram~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~5_combout\ = ( \G17|ram~5_combout\ & ( \rtl~11_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~5_combout\ & ( \rtl~11_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~5_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~5_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~5_combout\);

\G17|ram~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~441_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~5_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~21_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~37_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~53_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~21_combout\,
	datab => \G17|ALT_INV_ram~53_combout\,
	datac => \G17|ALT_INV_ram~37_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~5_combout\,
	combout => \G17|ram~441_combout\);

\G17|ram~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~69_combout\ = ( \G17|ram~69_combout\ & ( \rtl~3_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~69_combout\ & ( \rtl~3_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~69_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~69_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~69_combout\);

\G17|ram~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~313_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~441_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~441_combout\ & ((\G17|ram~69_combout\))) # (\G17|ram~441_combout\ & (\G17|ram~85_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~441_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~441_combout\ & ((\G17|ram~101_combout\))) # (\G17|ram~441_combout\ & (\G17|ram~117_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~85_combout\,
	datab => \G17|ALT_INV_ram~117_combout\,
	datac => \G17|ALT_INV_ram~101_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~441_combout\,
	datag => \G17|ALT_INV_ram~69_combout\,
	combout => \G17|ram~313_combout\);

\G17|ram~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~213_combout\ = ( \G17|ram~213_combout\ & ( \rtl~5_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~213_combout\ & ( \rtl~5_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~213_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~213_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~213_combout\);

\G17|ram~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~245_combout\ = ( \G17|ram~245_combout\ & ( \rtl~6_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~245_combout\ & ( \rtl~6_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~245_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~245_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~245_combout\);

\G17|ram~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~229_combout\ = ( \G17|ram~229_combout\ & ( \rtl~8_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~229_combout\ & ( \rtl~8_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~229_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~229_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~229_combout\);

\G17|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~149_combout\ = ( \G17|ram~149_combout\ & ( \rtl~13_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~149_combout\ & ( \rtl~13_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~149_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~149_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~149_combout\);

\G17|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~181_combout\ = ( \G17|ram~181_combout\ & ( \rtl~14_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~181_combout\ & ( \rtl~14_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~181_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~181_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~181_combout\);

\G17|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~165_combout\ = ( \G17|ram~165_combout\ & ( \rtl~16_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~165_combout\ & ( \rtl~16_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~165_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~165_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~165_combout\);

\G17|ram~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~133_combout\ = ( \G17|ram~133_combout\ & ( \rtl~15_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~133_combout\ & ( \rtl~15_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~133_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~133_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~133_combout\);

\G17|ram~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~445_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~133_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~149_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~165_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~181_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~149_combout\,
	datab => \G17|ALT_INV_ram~181_combout\,
	datac => \G17|ALT_INV_ram~165_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~133_combout\,
	combout => \G17|ram~445_combout\);

\G17|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~197_combout\ = ( \G17|ram~197_combout\ & ( \rtl~7_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~197_combout\ & ( \rtl~7_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~197_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~197_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~197_combout\);

\G17|ram~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~317_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~445_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~445_combout\ & ((\G17|ram~197_combout\))) # (\G17|ram~445_combout\ & (\G17|ram~213_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~445_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~445_combout\ & ((\G17|ram~229_combout\))) # (\G17|ram~445_combout\ & (\G17|ram~245_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~213_combout\,
	datab => \G17|ALT_INV_ram~245_combout\,
	datac => \G17|ALT_INV_ram~229_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~445_combout\,
	datag => \G17|ALT_INV_ram~197_combout\,
	combout => \G17|ram~317_combout\);

\G17|ram~261\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~261_combout\ = ( \G17|ram~261_combout\ & ( \rtl~0_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( !\G17|ram~261_combout\ & ( \rtl~0_combout\ & ( \G7|Mux26~1_combout\ ) ) ) # ( \G17|ram~261_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux26~1_combout\,
	datae => \G17|ALT_INV_ram~261_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~261_combout\);

\G14|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~9_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][5]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][5]~combout\,
	datac => \G18|ALT_INV_SAIDA\(5),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~9_combout\);

\G14|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(5) = ( \G14|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~9_combout\ ) ) ) # ( !\G14|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~9_combout\ ) ) ) # ( \G14|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~9_combout\,
	datae => \G14|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(5));

\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][5]~combout\) ) + ( \G14|SAIDA\(5) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][5]~combout\) ) + ( \G14|SAIDA\(5) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][5]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(5),
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

\G18|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~15_combout\ = ( \G7|Reg[0][5]~combout\ & ( !\G14|SAIDA\(5) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][5]~combout\ & ( !\G14|SAIDA\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][5]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(5),
	combout => \G18|SAIDA~15_combout\);

\G18|SAIDA~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~16_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~15_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~21_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~21_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~15_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~21_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~21_sumout\,
	datad => \G16|ALT_INV_Add0~21_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~15_combout\,
	combout => \G18|SAIDA~16_combout\);

\G18|SAIDA~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~17_combout\ = ( \G17|ram~261_combout\ & ( !\G18|SAIDA~16_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G17|ram~261_combout\ & ( !\G18|SAIDA~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G17|ALT_INV_ram~261_combout\,
	dataf => \G18|ALT_INV_SAIDA~16_combout\,
	combout => \G18|SAIDA~17_combout\);

\G18|SAIDA~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~18_combout\ = ( \G18|SAIDA~17_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~317_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~317_combout\)) # (\G17|ram~313_combout\))) ) ) # ( 
-- !\G18|SAIDA~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~313_combout\,
	datad => \G17|ALT_INV_ram~317_combout\,
	datae => \G18|ALT_INV_SAIDA~17_combout\,
	combout => \G18|SAIDA~18_combout\);

\G18|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(5) = ( \G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~18_combout\ ) ) ) # ( !\G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~18_combout\ ) ) ) # ( \G18|SAIDA\(5) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~18_combout\,
	datae => \G18|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(5));

\G7|Reg[0][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][5]~combout\ = ( \G7|Reg[0][5]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(5) ) ) ) # ( !\G7|Reg[0][5]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(5) ) ) ) # ( \G7|Reg[0][5]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(5),
	datae => \G7|ALT_INV_Reg[0][5]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][5]~combout\);

\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][6]~combout\) ) + ( \G14|SAIDA\(6) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][6]~combout\) ) + ( \G14|SAIDA\(6) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][6]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(6),
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

\G18|SAIDA~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~19_combout\ = ( \G7|Reg[0][6]~combout\ & ( !\G14|SAIDA\(6) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][6]~combout\ & ( !\G14|SAIDA\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][6]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(6),
	combout => \G18|SAIDA~19_combout\);

\G18|SAIDA~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~20_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~19_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~25_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~25_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~19_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~25_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~25_sumout\,
	datad => \G16|ALT_INV_Add0~25_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~19_combout\,
	combout => \G18|SAIDA~20_combout\);

\G18|SAIDA~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~21_combout\ = ( \G17|ram~262_combout\ & ( !\G18|SAIDA~20_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G17|ram~262_combout\ & ( !\G18|SAIDA~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G17|ALT_INV_ram~262_combout\,
	dataf => \G18|ALT_INV_SAIDA~20_combout\,
	combout => \G18|SAIDA~21_combout\);

\G18|SAIDA~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~22_combout\ = ( \G18|SAIDA~21_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~325_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~325_combout\)) # (\G17|ram~321_combout\))) ) ) # ( 
-- !\G18|SAIDA~21_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~321_combout\,
	datad => \G17|ALT_INV_ram~325_combout\,
	datae => \G18|ALT_INV_SAIDA~21_combout\,
	combout => \G18|SAIDA~22_combout\);

\G18|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(6) = ( \G18|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~22_combout\ ) ) ) # ( !\G18|SAIDA\(6) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~22_combout\ ) ) ) # ( \G18|SAIDA\(6) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~22_combout\,
	datae => \G18|ALT_INV_SAIDA\(6),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(6));

\G7|Reg[0][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][6]~combout\ = ( \G7|Reg[0][6]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(6) ) ) ) # ( !\G7|Reg[0][6]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(6) ) ) ) # ( \G7|Reg[0][6]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(6),
	datae => \G7|ALT_INV_Reg[0][6]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][6]~combout\);

\G16|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~21_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][5]~combout\) ) + ( !\G14|SAIDA\(5) ) + ( \G16|Add1~18\ ))
-- \G16|Add1~22\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][5]~combout\) ) + ( !\G14|SAIDA\(5) ) + ( \G16|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][5]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(5),
	cin => \G16|Add1~18\,
	sumout => \G16|Add1~21_sumout\,
	cout => \G16|Add1~22\);

\G16|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~25_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][6]~combout\) ) + ( !\G14|SAIDA\(6) ) + ( \G16|Add1~22\ ))
-- \G16|Add1~26\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][6]~combout\) ) + ( !\G14|SAIDA\(6) ) + ( \G16|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][6]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(6),
	cin => \G16|Add1~22\,
	sumout => \G16|Add1~25_sumout\,
	cout => \G16|Add1~26\);

\G7|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][7]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][7]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][7]~combout\,
	datad => \G18|ALT_INV_SAIDA\(7),
	combout => \G7|Mux24~0_combout\);

\G7|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux24~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux24~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G7|Mux24~1_combout\);

\G17|ram~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~87_combout\ = ( \G17|ram~87_combout\ & ( \rtl~1_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~87_combout\ & ( \rtl~1_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~87_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~87_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~87_combout\);

\G17|ram~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~119_combout\ = ( \G17|ram~119_combout\ & ( \rtl~2_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~119_combout\ & ( \rtl~2_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~119_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~119_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~119_combout\);

\G17|ram~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~103_combout\ = ( \G17|ram~103_combout\ & ( \rtl~4_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~103_combout\ & ( \rtl~4_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~103_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~103_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~103_combout\);

\G17|ram~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~23_combout\ = ( \G17|ram~23_combout\ & ( \rtl~9_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~23_combout\ & ( \rtl~9_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~23_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~23_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~23_combout\);

\G17|ram~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~55_combout\ = ( \G17|ram~55_combout\ & ( \rtl~10_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~55_combout\ & ( \rtl~10_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~55_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~55_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~55_combout\);

\G17|ram~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~39_combout\ = ( \G17|ram~39_combout\ & ( \rtl~12_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~39_combout\ & ( \rtl~12_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~39_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~39_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~39_combout\);

\G17|ram~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~7_combout\ = ( \G17|ram~7_combout\ & ( \rtl~11_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~7_combout\ & ( \rtl~11_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~7_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~7_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~7_combout\);

\G17|ram~457\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~457_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~7_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~23_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~39_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~55_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~23_combout\,
	datab => \G17|ALT_INV_ram~55_combout\,
	datac => \G17|ALT_INV_ram~39_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~7_combout\,
	combout => \G17|ram~457_combout\);

\G17|ram~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~71_combout\ = ( \G17|ram~71_combout\ & ( \rtl~3_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~71_combout\ & ( \rtl~3_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~71_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~71_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~71_combout\);

\G17|ram~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~329_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~457_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~457_combout\ & ((\G17|ram~71_combout\))) # (\G17|ram~457_combout\ & (\G17|ram~87_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~457_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~457_combout\ & ((\G17|ram~103_combout\))) # (\G17|ram~457_combout\ & (\G17|ram~119_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~87_combout\,
	datab => \G17|ALT_INV_ram~119_combout\,
	datac => \G17|ALT_INV_ram~103_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~457_combout\,
	datag => \G17|ALT_INV_ram~71_combout\,
	combout => \G17|ram~329_combout\);

\G17|ram~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~215_combout\ = ( \G17|ram~215_combout\ & ( \rtl~5_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~215_combout\ & ( \rtl~5_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~215_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~215_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~215_combout\);

\G17|ram~247\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~247_combout\ = ( \G17|ram~247_combout\ & ( \rtl~6_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~247_combout\ & ( \rtl~6_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~247_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~247_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~247_combout\);

\G17|ram~231\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~231_combout\ = ( \G17|ram~231_combout\ & ( \rtl~8_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~231_combout\ & ( \rtl~8_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~231_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~231_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~231_combout\);

\G17|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~151_combout\ = ( \G17|ram~151_combout\ & ( \rtl~13_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~151_combout\ & ( \rtl~13_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~151_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~151_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~151_combout\);

\G17|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~183_combout\ = ( \G17|ram~183_combout\ & ( \rtl~14_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~183_combout\ & ( \rtl~14_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~183_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~183_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~183_combout\);

\G17|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~167_combout\ = ( \G17|ram~167_combout\ & ( \rtl~16_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~167_combout\ & ( \rtl~16_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~167_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~167_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~167_combout\);

\G17|ram~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~135_combout\ = ( \G17|ram~135_combout\ & ( \rtl~15_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~135_combout\ & ( \rtl~15_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~135_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~135_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~135_combout\);

\G17|ram~461\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~461_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~135_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~151_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~167_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~183_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~151_combout\,
	datab => \G17|ALT_INV_ram~183_combout\,
	datac => \G17|ALT_INV_ram~167_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~135_combout\,
	combout => \G17|ram~461_combout\);

\G17|ram~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~199_combout\ = ( \G17|ram~199_combout\ & ( \rtl~7_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~199_combout\ & ( \rtl~7_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~199_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~199_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~199_combout\);

\G17|ram~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~333_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~461_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~461_combout\ & ((\G17|ram~199_combout\))) # (\G17|ram~461_combout\ & (\G17|ram~215_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~461_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~461_combout\ & ((\G17|ram~231_combout\))) # (\G17|ram~461_combout\ & (\G17|ram~247_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~215_combout\,
	datab => \G17|ALT_INV_ram~247_combout\,
	datac => \G17|ALT_INV_ram~231_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~461_combout\,
	datag => \G17|ALT_INV_ram~199_combout\,
	combout => \G17|ram~333_combout\);

\G17|ram~263\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~263_combout\ = ( \G17|ram~263_combout\ & ( \rtl~0_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( !\G17|ram~263_combout\ & ( \rtl~0_combout\ & ( \G7|Mux24~1_combout\ ) ) ) # ( \G17|ram~263_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux24~1_combout\,
	datae => \G17|ALT_INV_ram~263_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~263_combout\);

\G14|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~11_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][7]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][7]~combout\,
	datac => \G18|ALT_INV_SAIDA\(7),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~11_combout\);

\G14|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(7) = ( \G14|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~11_combout\ ) ) ) # ( !\G14|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~11_combout\ ) ) ) # ( \G14|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~11_combout\,
	datae => \G14|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(7));

\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][7]~combout\) ) + ( \G14|SAIDA\(7) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][7]~combout\) ) + ( \G14|SAIDA\(7) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][7]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

\G18|SAIDA~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~23_combout\ = ( \G7|Reg[0][7]~combout\ & ( !\G14|SAIDA\(7) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][7]~combout\ & ( !\G14|SAIDA\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][7]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(7),
	combout => \G18|SAIDA~23_combout\);

\G18|SAIDA~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~24_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~23_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~29_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~29_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~23_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~29_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~29_sumout\,
	datad => \G16|ALT_INV_Add0~29_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~23_combout\,
	combout => \G18|SAIDA~24_combout\);

\G18|SAIDA~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~25_combout\ = ( \G17|ram~263_combout\ & ( !\G18|SAIDA~24_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G17|ram~263_combout\ & ( !\G18|SAIDA~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G17|ALT_INV_ram~263_combout\,
	dataf => \G18|ALT_INV_SAIDA~24_combout\,
	combout => \G18|SAIDA~25_combout\);

\G18|SAIDA~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~26_combout\ = ( \G18|SAIDA~25_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~333_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~333_combout\)) # (\G17|ram~329_combout\))) ) ) # ( 
-- !\G18|SAIDA~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~329_combout\,
	datad => \G17|ALT_INV_ram~333_combout\,
	datae => \G18|ALT_INV_SAIDA~25_combout\,
	combout => \G18|SAIDA~26_combout\);

\G18|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(7) = ( \G18|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~26_combout\ ) ) ) # ( !\G18|SAIDA\(7) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~26_combout\ ) ) ) # ( \G18|SAIDA\(7) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~26_combout\,
	datae => \G18|ALT_INV_SAIDA\(7),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(7));

\G7|Reg[0][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][7]~combout\ = ( \G7|Reg[0][7]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(7) ) ) ) # ( !\G7|Reg[0][7]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(7) ) ) ) # ( \G7|Reg[0][7]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(7),
	datae => \G7|ALT_INV_Reg[0][7]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][7]~combout\);

\G16|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~29_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][7]~combout\) ) + ( !\G14|SAIDA\(7) ) + ( \G16|Add1~26\ ))
-- \G16|Add1~30\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][7]~combout\) ) + ( !\G14|SAIDA\(7) ) + ( \G16|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][7]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add1~26\,
	sumout => \G16|Add1~29_sumout\,
	cout => \G16|Add1~30\);

\G7|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][8]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][8]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(8))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][8]~combout\,
	datad => \G18|ALT_INV_SAIDA\(8),
	combout => \G7|Mux23~0_combout\);

\G7|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux23~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G7|Mux23~1_combout\);

\G17|ram~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~88_combout\ = ( \G17|ram~88_combout\ & ( \rtl~1_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~88_combout\ & ( \rtl~1_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~88_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~88_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~88_combout\);

\G17|ram~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~120_combout\ = ( \G17|ram~120_combout\ & ( \rtl~2_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~120_combout\ & ( \rtl~2_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~120_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~120_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~120_combout\);

\G17|ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~104_combout\ = ( \G17|ram~104_combout\ & ( \rtl~4_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~104_combout\ & ( \rtl~4_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~104_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~104_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~104_combout\);

\G17|ram~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~24_combout\ = ( \G17|ram~24_combout\ & ( \rtl~9_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~24_combout\ & ( \rtl~9_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~24_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~24_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~24_combout\);

\G17|ram~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~56_combout\ = ( \G17|ram~56_combout\ & ( \rtl~10_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~56_combout\ & ( \rtl~10_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~56_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~56_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~56_combout\);

\G17|ram~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~40_combout\ = ( \G17|ram~40_combout\ & ( \rtl~12_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~40_combout\ & ( \rtl~12_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~40_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~40_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~40_combout\);

\G17|ram~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~8_combout\ = ( \G17|ram~8_combout\ & ( \rtl~11_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~8_combout\ & ( \rtl~11_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~8_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~8_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~8_combout\);

\G17|ram~465\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~465_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~8_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~24_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~40_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~56_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~24_combout\,
	datab => \G17|ALT_INV_ram~56_combout\,
	datac => \G17|ALT_INV_ram~40_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~8_combout\,
	combout => \G17|ram~465_combout\);

\G17|ram~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~72_combout\ = ( \G17|ram~72_combout\ & ( \rtl~3_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~72_combout\ & ( \rtl~3_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~72_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~72_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~72_combout\);

\G17|ram~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~337_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~465_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~465_combout\ & ((\G17|ram~72_combout\))) # (\G17|ram~465_combout\ & (\G17|ram~88_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~465_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~465_combout\ & ((\G17|ram~104_combout\))) # (\G17|ram~465_combout\ & (\G17|ram~120_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~88_combout\,
	datab => \G17|ALT_INV_ram~120_combout\,
	datac => \G17|ALT_INV_ram~104_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~465_combout\,
	datag => \G17|ALT_INV_ram~72_combout\,
	combout => \G17|ram~337_combout\);

\G17|ram~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~216_combout\ = ( \G17|ram~216_combout\ & ( \rtl~5_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~216_combout\ & ( \rtl~5_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~216_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~216_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~216_combout\);

\G17|ram~248\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~248_combout\ = ( \G17|ram~248_combout\ & ( \rtl~6_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~248_combout\ & ( \rtl~6_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~248_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~248_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~248_combout\);

\G17|ram~232\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~232_combout\ = ( \G17|ram~232_combout\ & ( \rtl~8_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~232_combout\ & ( \rtl~8_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~232_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~232_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~232_combout\);

\G17|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~152_combout\ = ( \G17|ram~152_combout\ & ( \rtl~13_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~152_combout\ & ( \rtl~13_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~152_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~152_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~152_combout\);

\G17|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~184_combout\ = ( \G17|ram~184_combout\ & ( \rtl~14_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~184_combout\ & ( \rtl~14_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~184_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~184_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~184_combout\);

\G17|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~168_combout\ = ( \G17|ram~168_combout\ & ( \rtl~16_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~168_combout\ & ( \rtl~16_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~168_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~168_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~168_combout\);

\G17|ram~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~136_combout\ = ( \G17|ram~136_combout\ & ( \rtl~15_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~136_combout\ & ( \rtl~15_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~136_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~136_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~136_combout\);

\G17|ram~469\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~469_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~136_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~152_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~168_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~184_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~152_combout\,
	datab => \G17|ALT_INV_ram~184_combout\,
	datac => \G17|ALT_INV_ram~168_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~136_combout\,
	combout => \G17|ram~469_combout\);

\G17|ram~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~200_combout\ = ( \G17|ram~200_combout\ & ( \rtl~7_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~200_combout\ & ( \rtl~7_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~200_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~200_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~200_combout\);

\G17|ram~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~341_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~469_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~469_combout\ & ((\G17|ram~200_combout\))) # (\G17|ram~469_combout\ & (\G17|ram~216_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~469_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~469_combout\ & ((\G17|ram~232_combout\))) # (\G17|ram~469_combout\ & (\G17|ram~248_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~216_combout\,
	datab => \G17|ALT_INV_ram~248_combout\,
	datac => \G17|ALT_INV_ram~232_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~469_combout\,
	datag => \G17|ALT_INV_ram~200_combout\,
	combout => \G17|ram~341_combout\);

\G17|ram~264\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~264_combout\ = ( \G17|ram~264_combout\ & ( \rtl~0_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( !\G17|ram~264_combout\ & ( \rtl~0_combout\ & ( \G7|Mux23~1_combout\ ) ) ) # ( \G17|ram~264_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux23~1_combout\,
	datae => \G17|ALT_INV_ram~264_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~264_combout\);

\G14|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~12_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][8]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(8))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][8]~combout\,
	datac => \G18|ALT_INV_SAIDA\(8),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~12_combout\);

\G14|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(8) = ( \G14|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~12_combout\ ) ) ) # ( !\G14|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~12_combout\ ) ) ) # ( \G14|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~12_combout\,
	datae => \G14|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(8));

\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][8]~combout\) ) + ( \G14|SAIDA\(8) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][8]~combout\) ) + ( \G14|SAIDA\(8) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][8]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(8),
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

\G18|SAIDA~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~27_combout\ = ( \G7|Reg[0][8]~combout\ & ( !\G14|SAIDA\(8) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][8]~combout\ & ( !\G14|SAIDA\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][8]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(8),
	combout => \G18|SAIDA~27_combout\);

\G18|SAIDA~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~28_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~27_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~33_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~33_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~27_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~33_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~33_sumout\,
	datad => \G16|ALT_INV_Add0~33_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~27_combout\,
	combout => \G18|SAIDA~28_combout\);

\G18|SAIDA~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~29_combout\ = ( \G17|ram~264_combout\ & ( !\G18|SAIDA~28_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G17|ram~264_combout\ & ( !\G18|SAIDA~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G17|ALT_INV_ram~264_combout\,
	dataf => \G18|ALT_INV_SAIDA~28_combout\,
	combout => \G18|SAIDA~29_combout\);

\G18|SAIDA~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~30_combout\ = ( \G18|SAIDA~29_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~341_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~341_combout\)) # (\G17|ram~337_combout\))) ) ) # ( 
-- !\G18|SAIDA~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~337_combout\,
	datad => \G17|ALT_INV_ram~341_combout\,
	datae => \G18|ALT_INV_SAIDA~29_combout\,
	combout => \G18|SAIDA~30_combout\);

\G18|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(8) = ( \G18|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~30_combout\ ) ) ) # ( !\G18|SAIDA\(8) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~30_combout\ ) ) ) # ( \G18|SAIDA\(8) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~30_combout\,
	datae => \G18|ALT_INV_SAIDA\(8),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(8));

\G7|Reg[0][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][8]~combout\ = ( \G7|Reg[0][8]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(8) ) ) ) # ( !\G7|Reg[0][8]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(8) ) ) ) # ( \G7|Reg[0][8]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(8),
	datae => \G7|ALT_INV_Reg[0][8]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][8]~combout\);

\G16|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~33_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][8]~combout\) ) + ( !\G14|SAIDA\(8) ) + ( \G16|Add1~30\ ))
-- \G16|Add1~34\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][8]~combout\) ) + ( !\G14|SAIDA\(8) ) + ( \G16|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][8]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(8),
	cin => \G16|Add1~30\,
	sumout => \G16|Add1~33_sumout\,
	cout => \G16|Add1~34\);

\G7|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][9]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][9]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(9))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][9]~combout\,
	datad => \G18|ALT_INV_SAIDA\(9),
	combout => \G7|Mux22~0_combout\);

\G7|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux22~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux22~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G7|Mux22~1_combout\);

\G17|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~89_combout\ = ( \G17|ram~89_combout\ & ( \rtl~1_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~89_combout\ & ( \rtl~1_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~89_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~89_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~89_combout\);

\G17|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~121_combout\ = ( \G17|ram~121_combout\ & ( \rtl~2_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~121_combout\ & ( \rtl~2_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~121_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~121_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~121_combout\);

\G17|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~105_combout\ = ( \G17|ram~105_combout\ & ( \rtl~4_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~105_combout\ & ( \rtl~4_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~105_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~105_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~105_combout\);

\G17|ram~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~25_combout\ = ( \G17|ram~25_combout\ & ( \rtl~9_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~25_combout\ & ( \rtl~9_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~25_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~25_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~25_combout\);

\G17|ram~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~57_combout\ = ( \G17|ram~57_combout\ & ( \rtl~10_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~57_combout\ & ( \rtl~10_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~57_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~57_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~57_combout\);

\G17|ram~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~41_combout\ = ( \G17|ram~41_combout\ & ( \rtl~12_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~41_combout\ & ( \rtl~12_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~41_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~41_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~41_combout\);

\G17|ram~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~9_combout\ = ( \G17|ram~9_combout\ & ( \rtl~11_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~9_combout\ & ( \rtl~11_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~9_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~9_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~9_combout\);

\G17|ram~473\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~473_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~9_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~25_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~41_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~25_combout\,
	datab => \G17|ALT_INV_ram~57_combout\,
	datac => \G17|ALT_INV_ram~41_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~9_combout\,
	combout => \G17|ram~473_combout\);

\G17|ram~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~73_combout\ = ( \G17|ram~73_combout\ & ( \rtl~3_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~73_combout\ & ( \rtl~3_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~73_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~73_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~73_combout\);

\G17|ram~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~345_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~473_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~473_combout\ & ((\G17|ram~73_combout\))) # (\G17|ram~473_combout\ & (\G17|ram~89_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~473_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~473_combout\ & ((\G17|ram~105_combout\))) # (\G17|ram~473_combout\ & (\G17|ram~121_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~89_combout\,
	datab => \G17|ALT_INV_ram~121_combout\,
	datac => \G17|ALT_INV_ram~105_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~473_combout\,
	datag => \G17|ALT_INV_ram~73_combout\,
	combout => \G17|ram~345_combout\);

\G17|ram~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~217_combout\ = ( \G17|ram~217_combout\ & ( \rtl~5_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~217_combout\ & ( \rtl~5_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~217_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~217_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~217_combout\);

\G17|ram~249\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~249_combout\ = ( \G17|ram~249_combout\ & ( \rtl~6_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~249_combout\ & ( \rtl~6_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~249_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~249_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~249_combout\);

\G17|ram~233\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~233_combout\ = ( \G17|ram~233_combout\ & ( \rtl~8_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~233_combout\ & ( \rtl~8_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~233_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~233_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~233_combout\);

\G17|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~153_combout\ = ( \G17|ram~153_combout\ & ( \rtl~13_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~153_combout\ & ( \rtl~13_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~153_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~153_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~153_combout\);

\G17|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~185_combout\ = ( \G17|ram~185_combout\ & ( \rtl~14_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~185_combout\ & ( \rtl~14_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~185_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~185_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~185_combout\);

\G17|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~169_combout\ = ( \G17|ram~169_combout\ & ( \rtl~16_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~169_combout\ & ( \rtl~16_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~169_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~169_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~169_combout\);

\G17|ram~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~137_combout\ = ( \G17|ram~137_combout\ & ( \rtl~15_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~137_combout\ & ( \rtl~15_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~137_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~137_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~137_combout\);

\G17|ram~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~477_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~137_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~153_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~169_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~185_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~153_combout\,
	datab => \G17|ALT_INV_ram~185_combout\,
	datac => \G17|ALT_INV_ram~169_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~137_combout\,
	combout => \G17|ram~477_combout\);

\G17|ram~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~201_combout\ = ( \G17|ram~201_combout\ & ( \rtl~7_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~201_combout\ & ( \rtl~7_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~201_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~201_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~201_combout\);

\G17|ram~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~349_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~477_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~477_combout\ & ((\G17|ram~201_combout\))) # (\G17|ram~477_combout\ & (\G17|ram~217_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~477_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~477_combout\ & ((\G17|ram~233_combout\))) # (\G17|ram~477_combout\ & (\G17|ram~249_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~217_combout\,
	datab => \G17|ALT_INV_ram~249_combout\,
	datac => \G17|ALT_INV_ram~233_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~477_combout\,
	datag => \G17|ALT_INV_ram~201_combout\,
	combout => \G17|ram~349_combout\);

\G17|ram~265\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~265_combout\ = ( \G17|ram~265_combout\ & ( \rtl~0_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( !\G17|ram~265_combout\ & ( \rtl~0_combout\ & ( \G7|Mux22~1_combout\ ) ) ) # ( \G17|ram~265_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux22~1_combout\,
	datae => \G17|ALT_INV_ram~265_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~265_combout\);

\G14|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~13_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][9]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(9))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][9]~combout\,
	datac => \G18|ALT_INV_SAIDA\(9),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~13_combout\);

\G14|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(9) = ( \G14|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~13_combout\ ) ) ) # ( !\G14|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~13_combout\ ) ) ) # ( \G14|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~13_combout\,
	datae => \G14|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(9));

\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][9]~combout\) ) + ( \G14|SAIDA\(9) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][9]~combout\) ) + ( \G14|SAIDA\(9) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][9]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(9),
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

\G18|SAIDA~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~31_combout\ = ( \G7|Reg[0][9]~combout\ & ( !\G14|SAIDA\(9) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][9]~combout\ & ( !\G14|SAIDA\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][9]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(9),
	combout => \G18|SAIDA~31_combout\);

\G18|SAIDA~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~32_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~31_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~37_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~37_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~31_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~37_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~37_sumout\,
	datad => \G16|ALT_INV_Add0~37_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~31_combout\,
	combout => \G18|SAIDA~32_combout\);

\G18|SAIDA~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~33_combout\ = ( \G17|ram~265_combout\ & ( !\G18|SAIDA~32_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G17|ram~265_combout\ & ( !\G18|SAIDA~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G17|ALT_INV_ram~265_combout\,
	dataf => \G18|ALT_INV_SAIDA~32_combout\,
	combout => \G18|SAIDA~33_combout\);

\G18|SAIDA~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~34_combout\ = ( \G18|SAIDA~33_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~349_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~349_combout\)) # (\G17|ram~345_combout\))) ) ) # ( 
-- !\G18|SAIDA~33_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~345_combout\,
	datad => \G17|ALT_INV_ram~349_combout\,
	datae => \G18|ALT_INV_SAIDA~33_combout\,
	combout => \G18|SAIDA~34_combout\);

\G18|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(9) = ( \G18|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~34_combout\ ) ) ) # ( !\G18|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~34_combout\ ) ) ) # ( \G18|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~34_combout\,
	datae => \G18|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(9));

\G7|Reg[0][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][9]~combout\ = ( \G7|Reg[0][9]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(9) ) ) ) # ( !\G7|Reg[0][9]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(9) ) ) ) # ( \G7|Reg[0][9]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(9),
	datae => \G7|ALT_INV_Reg[0][9]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][9]~combout\);

\G16|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~37_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][9]~combout\) ) + ( !\G14|SAIDA\(9) ) + ( \G16|Add1~34\ ))
-- \G16|Add1~38\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][9]~combout\) ) + ( !\G14|SAIDA\(9) ) + ( \G16|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][9]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(9),
	cin => \G16|Add1~34\,
	sumout => \G16|Add1~37_sumout\,
	cout => \G16|Add1~38\);

\G7|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][10]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][10]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(10))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][10]~combout\,
	datad => \G18|ALT_INV_SAIDA\(10),
	combout => \G7|Mux21~0_combout\);

\G7|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux21~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux21~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G7|Mux21~1_combout\);

\G17|ram~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~90_combout\ = ( \G17|ram~90_combout\ & ( \rtl~1_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~90_combout\ & ( \rtl~1_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~90_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~90_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~90_combout\);

\G17|ram~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~122_combout\ = ( \G17|ram~122_combout\ & ( \rtl~2_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~122_combout\ & ( \rtl~2_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~122_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~122_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~122_combout\);

\G17|ram~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~106_combout\ = ( \G17|ram~106_combout\ & ( \rtl~4_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~106_combout\ & ( \rtl~4_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~106_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~106_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~106_combout\);

\G17|ram~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~26_combout\ = ( \G17|ram~26_combout\ & ( \rtl~9_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~26_combout\ & ( \rtl~9_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~26_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~26_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~26_combout\);

\G17|ram~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~58_combout\ = ( \G17|ram~58_combout\ & ( \rtl~10_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~58_combout\ & ( \rtl~10_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~58_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~58_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~58_combout\);

\G17|ram~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~42_combout\ = ( \G17|ram~42_combout\ & ( \rtl~12_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~42_combout\ & ( \rtl~12_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~42_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~42_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~42_combout\);

\G17|ram~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~10_combout\ = ( \G17|ram~10_combout\ & ( \rtl~11_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~10_combout\ & ( \rtl~11_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~10_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~10_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~10_combout\);

\G17|ram~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~481_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~10_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~26_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~42_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~58_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~26_combout\,
	datab => \G17|ALT_INV_ram~58_combout\,
	datac => \G17|ALT_INV_ram~42_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~10_combout\,
	combout => \G17|ram~481_combout\);

\G17|ram~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~74_combout\ = ( \G17|ram~74_combout\ & ( \rtl~3_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~74_combout\ & ( \rtl~3_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~74_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~74_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~74_combout\);

\G17|ram~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~353_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~481_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~481_combout\ & ((\G17|ram~74_combout\))) # (\G17|ram~481_combout\ & (\G17|ram~90_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~481_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~481_combout\ & ((\G17|ram~106_combout\))) # (\G17|ram~481_combout\ & (\G17|ram~122_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~90_combout\,
	datab => \G17|ALT_INV_ram~122_combout\,
	datac => \G17|ALT_INV_ram~106_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~481_combout\,
	datag => \G17|ALT_INV_ram~74_combout\,
	combout => \G17|ram~353_combout\);

\G17|ram~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~218_combout\ = ( \G17|ram~218_combout\ & ( \rtl~5_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~218_combout\ & ( \rtl~5_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~218_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~218_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~218_combout\);

\G17|ram~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~250_combout\ = ( \G17|ram~250_combout\ & ( \rtl~6_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~250_combout\ & ( \rtl~6_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~250_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~250_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~250_combout\);

\G17|ram~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~234_combout\ = ( \G17|ram~234_combout\ & ( \rtl~8_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~234_combout\ & ( \rtl~8_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~234_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~234_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~234_combout\);

\G17|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~154_combout\ = ( \G17|ram~154_combout\ & ( \rtl~13_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~154_combout\ & ( \rtl~13_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~154_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~154_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~154_combout\);

\G17|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~186_combout\ = ( \G17|ram~186_combout\ & ( \rtl~14_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~186_combout\ & ( \rtl~14_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~186_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~186_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~186_combout\);

\G17|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~170_combout\ = ( \G17|ram~170_combout\ & ( \rtl~16_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~170_combout\ & ( \rtl~16_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~170_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~170_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~170_combout\);

\G17|ram~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~138_combout\ = ( \G17|ram~138_combout\ & ( \rtl~15_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~138_combout\ & ( \rtl~15_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~138_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~138_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~138_combout\);

\G17|ram~485\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~485_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~138_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~154_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~170_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~186_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~154_combout\,
	datab => \G17|ALT_INV_ram~186_combout\,
	datac => \G17|ALT_INV_ram~170_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~138_combout\,
	combout => \G17|ram~485_combout\);

\G17|ram~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~202_combout\ = ( \G17|ram~202_combout\ & ( \rtl~7_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~202_combout\ & ( \rtl~7_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~202_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~202_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~202_combout\);

\G17|ram~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~357_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~485_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~485_combout\ & ((\G17|ram~202_combout\))) # (\G17|ram~485_combout\ & (\G17|ram~218_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~485_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~485_combout\ & ((\G17|ram~234_combout\))) # (\G17|ram~485_combout\ & (\G17|ram~250_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~218_combout\,
	datab => \G17|ALT_INV_ram~250_combout\,
	datac => \G17|ALT_INV_ram~234_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~485_combout\,
	datag => \G17|ALT_INV_ram~202_combout\,
	combout => \G17|ram~357_combout\);

\G17|ram~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~266_combout\ = ( \G17|ram~266_combout\ & ( \rtl~0_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( !\G17|ram~266_combout\ & ( \rtl~0_combout\ & ( \G7|Mux21~1_combout\ ) ) ) # ( \G17|ram~266_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux21~1_combout\,
	datae => \G17|ALT_INV_ram~266_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~266_combout\);

\G14|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~14_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][10]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(10))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][10]~combout\,
	datac => \G18|ALT_INV_SAIDA\(10),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~14_combout\);

\G14|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(10) = ( \G14|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~14_combout\ ) ) ) # ( !\G14|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~14_combout\ ) ) ) # ( \G14|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~14_combout\,
	datae => \G14|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(10));

\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][10]~combout\) ) + ( \G14|SAIDA\(10) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][10]~combout\) ) + ( \G14|SAIDA\(10) ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][10]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

\G18|SAIDA~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~35_combout\ = ( \G7|Reg[0][10]~combout\ & ( !\G14|SAIDA\(10) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][10]~combout\ & ( !\G14|SAIDA\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][10]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(10),
	combout => \G18|SAIDA~35_combout\);

\G18|SAIDA~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~36_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~35_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~41_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~41_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~35_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~41_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~41_sumout\,
	datad => \G16|ALT_INV_Add0~41_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~35_combout\,
	combout => \G18|SAIDA~36_combout\);

\G18|SAIDA~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~37_combout\ = ( \G17|ram~266_combout\ & ( !\G18|SAIDA~36_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G17|ram~266_combout\ & ( !\G18|SAIDA~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G17|ALT_INV_ram~266_combout\,
	dataf => \G18|ALT_INV_SAIDA~36_combout\,
	combout => \G18|SAIDA~37_combout\);

\G18|SAIDA~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~38_combout\ = ( \G18|SAIDA~37_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~357_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~357_combout\)) # (\G17|ram~353_combout\))) ) ) # ( 
-- !\G18|SAIDA~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~353_combout\,
	datad => \G17|ALT_INV_ram~357_combout\,
	datae => \G18|ALT_INV_SAIDA~37_combout\,
	combout => \G18|SAIDA~38_combout\);

\G18|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(10) = ( \G18|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~38_combout\ ) ) ) # ( !\G18|SAIDA\(10) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~38_combout\ ) ) ) # ( \G18|SAIDA\(10) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~38_combout\,
	datae => \G18|ALT_INV_SAIDA\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(10));

\G7|Reg[0][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][10]~combout\ = ( \G7|Reg[0][10]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(10) ) ) ) # ( !\G7|Reg[0][10]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(10) ) ) ) # ( \G7|Reg[0][10]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(10),
	datae => \G7|ALT_INV_Reg[0][10]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][10]~combout\);

\G16|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~41_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][10]~combout\) ) + ( !\G14|SAIDA\(10) ) + ( \G16|Add1~38\ ))
-- \G16|Add1~42\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][10]~combout\) ) + ( !\G14|SAIDA\(10) ) + ( \G16|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][10]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add1~38\,
	sumout => \G16|Add1~41_sumout\,
	cout => \G16|Add1~42\);

\G7|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][15]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][15]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(15))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][15]~combout\,
	datad => \G18|ALT_INV_SAIDA\(15),
	combout => \G7|Mux16~0_combout\);

\G7|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux16~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G7|Mux16~1_combout\);

\G17|ram~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~95_combout\ = ( \G17|ram~95_combout\ & ( \rtl~1_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~95_combout\ & ( \rtl~1_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~95_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~95_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~95_combout\);

\G17|ram~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~127_combout\ = ( \G17|ram~127_combout\ & ( \rtl~2_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~127_combout\ & ( \rtl~2_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~127_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~127_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~127_combout\);

\G17|ram~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~111_combout\ = ( \G17|ram~111_combout\ & ( \rtl~4_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~111_combout\ & ( \rtl~4_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~111_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~111_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~111_combout\);

\G17|ram~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~31_combout\ = ( \G17|ram~31_combout\ & ( \rtl~9_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~31_combout\ & ( \rtl~9_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~31_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~31_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~31_combout\);

\G17|ram~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~63_combout\ = ( \G17|ram~63_combout\ & ( \rtl~10_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~63_combout\ & ( \rtl~10_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~63_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~63_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~63_combout\);

\G17|ram~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~47_combout\ = ( \G17|ram~47_combout\ & ( \rtl~12_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~47_combout\ & ( \rtl~12_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~47_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~47_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~47_combout\);

\G17|ram~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~15_combout\ = ( \G17|ram~15_combout\ & ( \rtl~11_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~15_combout\ & ( \rtl~11_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~15_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~15_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~15_combout\);

\G17|ram~521\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~521_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~15_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~31_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~47_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~63_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~31_combout\,
	datab => \G17|ALT_INV_ram~63_combout\,
	datac => \G17|ALT_INV_ram~47_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~15_combout\,
	combout => \G17|ram~521_combout\);

\G17|ram~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~79_combout\ = ( \G17|ram~79_combout\ & ( \rtl~3_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~79_combout\ & ( \rtl~3_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~79_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~79_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~79_combout\);

\G17|ram~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~393_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~521_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~521_combout\ & ((\G17|ram~79_combout\))) # (\G17|ram~521_combout\ & (\G17|ram~95_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~521_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~521_combout\ & ((\G17|ram~111_combout\))) # (\G17|ram~521_combout\ & (\G17|ram~127_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~95_combout\,
	datab => \G17|ALT_INV_ram~127_combout\,
	datac => \G17|ALT_INV_ram~111_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~521_combout\,
	datag => \G17|ALT_INV_ram~79_combout\,
	combout => \G17|ram~393_combout\);

\G17|ram~223\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~223_combout\ = ( \G17|ram~223_combout\ & ( \rtl~5_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~223_combout\ & ( \rtl~5_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~223_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~223_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~223_combout\);

\G17|ram~255\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~255_combout\ = ( \G17|ram~255_combout\ & ( \rtl~6_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~255_combout\ & ( \rtl~6_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~255_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~255_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~255_combout\);

\G17|ram~239\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~239_combout\ = ( \G17|ram~239_combout\ & ( \rtl~8_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~239_combout\ & ( \rtl~8_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~239_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~239_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~239_combout\);

\G17|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~159_combout\ = ( \G17|ram~159_combout\ & ( \rtl~13_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~159_combout\ & ( \rtl~13_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~159_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~159_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~159_combout\);

\G17|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~191_combout\ = ( \G17|ram~191_combout\ & ( \rtl~14_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~191_combout\ & ( \rtl~14_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~191_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~191_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~191_combout\);

\G17|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~175_combout\ = ( \G17|ram~175_combout\ & ( \rtl~16_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~175_combout\ & ( \rtl~16_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~175_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~175_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~175_combout\);

\G17|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~143_combout\ = ( \G17|ram~143_combout\ & ( \rtl~15_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~143_combout\ & ( \rtl~15_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~143_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~143_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~143_combout\);

\G17|ram~525\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~525_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~143_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~159_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~175_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~191_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~159_combout\,
	datab => \G17|ALT_INV_ram~191_combout\,
	datac => \G17|ALT_INV_ram~175_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~143_combout\,
	combout => \G17|ram~525_combout\);

\G17|ram~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~207_combout\ = ( \G17|ram~207_combout\ & ( \rtl~7_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~207_combout\ & ( \rtl~7_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~207_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~207_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~207_combout\);

\G17|ram~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~397_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~525_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~525_combout\ & ((\G17|ram~207_combout\))) # (\G17|ram~525_combout\ & (\G17|ram~223_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~525_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~525_combout\ & ((\G17|ram~239_combout\))) # (\G17|ram~525_combout\ & (\G17|ram~255_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~223_combout\,
	datab => \G17|ALT_INV_ram~255_combout\,
	datac => \G17|ALT_INV_ram~239_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~525_combout\,
	datag => \G17|ALT_INV_ram~207_combout\,
	combout => \G17|ram~397_combout\);

\G17|ram~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~271_combout\ = ( \G17|ram~271_combout\ & ( \rtl~0_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( !\G17|ram~271_combout\ & ( \rtl~0_combout\ & ( \G7|Mux16~1_combout\ ) ) ) # ( \G17|ram~271_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux16~1_combout\,
	datae => \G17|ALT_INV_ram~271_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~271_combout\);

\G18|SAIDA~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~55_combout\ = ( !\G16|Mux13~2_combout\ & ( \G17|ram~271_combout\ & ( (!\G16|Mux15~2_combout\ & (\G16|Mux11~2_combout\ & (\G18|SAIDA~0_combout\ & !\G16|Mux14~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G16|ALT_INV_Mux14~4_combout\,
	datae => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G17|ALT_INV_ram~271_combout\,
	combout => \G18|SAIDA~55_combout\);

\G14|SAIDA~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~19_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][15]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(15))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][15]~combout\,
	datac => \G18|ALT_INV_SAIDA\(15),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~19_combout\);

\G14|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(15) = ( \G14|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~19_combout\ ) ) ) # ( !\G14|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~19_combout\ ) ) ) # ( \G14|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~19_combout\,
	datae => \G14|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(15));

\G7|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][14]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][14]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(14))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][14]~combout\,
	datad => \G18|ALT_INV_SAIDA\(14),
	combout => \G7|Mux17~0_combout\);

\G7|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux17~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux17~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux17~0_combout\,
	combout => \G7|Mux17~1_combout\);

\G17|ram~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~94_combout\ = ( \G17|ram~94_combout\ & ( \rtl~1_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~94_combout\ & ( \rtl~1_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~94_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~94_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~94_combout\);

\G17|ram~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~126_combout\ = ( \G17|ram~126_combout\ & ( \rtl~2_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~126_combout\ & ( \rtl~2_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~126_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~126_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~126_combout\);

\G17|ram~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~110_combout\ = ( \G17|ram~110_combout\ & ( \rtl~4_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~110_combout\ & ( \rtl~4_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~110_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~110_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~110_combout\);

\G17|ram~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~30_combout\ = ( \G17|ram~30_combout\ & ( \rtl~9_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~30_combout\ & ( \rtl~9_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~30_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~30_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~30_combout\);

\G17|ram~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~62_combout\ = ( \G17|ram~62_combout\ & ( \rtl~10_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~62_combout\ & ( \rtl~10_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~62_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~62_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~62_combout\);

\G17|ram~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~46_combout\ = ( \G17|ram~46_combout\ & ( \rtl~12_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~46_combout\ & ( \rtl~12_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~46_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~46_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~46_combout\);

\G17|ram~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~14_combout\ = ( \G17|ram~14_combout\ & ( \rtl~11_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~14_combout\ & ( \rtl~11_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~14_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~14_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~14_combout\);

\G17|ram~513\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~513_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~14_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~30_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~46_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~62_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~30_combout\,
	datab => \G17|ALT_INV_ram~62_combout\,
	datac => \G17|ALT_INV_ram~46_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~14_combout\,
	combout => \G17|ram~513_combout\);

\G17|ram~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~78_combout\ = ( \G17|ram~78_combout\ & ( \rtl~3_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~78_combout\ & ( \rtl~3_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~78_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~78_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~78_combout\);

\G17|ram~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~385_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~513_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~513_combout\ & ((\G17|ram~78_combout\))) # (\G17|ram~513_combout\ & (\G17|ram~94_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~513_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~513_combout\ & ((\G17|ram~110_combout\))) # (\G17|ram~513_combout\ & (\G17|ram~126_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~94_combout\,
	datab => \G17|ALT_INV_ram~126_combout\,
	datac => \G17|ALT_INV_ram~110_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~513_combout\,
	datag => \G17|ALT_INV_ram~78_combout\,
	combout => \G17|ram~385_combout\);

\G17|ram~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~222_combout\ = ( \G17|ram~222_combout\ & ( \rtl~5_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~222_combout\ & ( \rtl~5_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~222_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~222_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~222_combout\);

\G17|ram~254\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~254_combout\ = ( \G17|ram~254_combout\ & ( \rtl~6_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~254_combout\ & ( \rtl~6_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~254_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~254_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~254_combout\);

\G17|ram~238\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~238_combout\ = ( \G17|ram~238_combout\ & ( \rtl~8_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~238_combout\ & ( \rtl~8_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~238_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~238_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~238_combout\);

\G17|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~158_combout\ = ( \G17|ram~158_combout\ & ( \rtl~13_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~158_combout\ & ( \rtl~13_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~158_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~158_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~158_combout\);

\G17|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~190_combout\ = ( \G17|ram~190_combout\ & ( \rtl~14_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~190_combout\ & ( \rtl~14_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~190_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~190_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~190_combout\);

\G17|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~174_combout\ = ( \G17|ram~174_combout\ & ( \rtl~16_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~174_combout\ & ( \rtl~16_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~174_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~174_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~174_combout\);

\G17|ram~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~142_combout\ = ( \G17|ram~142_combout\ & ( \rtl~15_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~142_combout\ & ( \rtl~15_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~142_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~142_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~142_combout\);

\G17|ram~517\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~517_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~142_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~158_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~174_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~190_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~158_combout\,
	datab => \G17|ALT_INV_ram~190_combout\,
	datac => \G17|ALT_INV_ram~174_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~142_combout\,
	combout => \G17|ram~517_combout\);

\G17|ram~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~206_combout\ = ( \G17|ram~206_combout\ & ( \rtl~7_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~206_combout\ & ( \rtl~7_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~206_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~206_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~206_combout\);

\G17|ram~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~389_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~517_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~517_combout\ & ((\G17|ram~206_combout\))) # (\G17|ram~517_combout\ & (\G17|ram~222_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~517_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~517_combout\ & ((\G17|ram~238_combout\))) # (\G17|ram~517_combout\ & (\G17|ram~254_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~222_combout\,
	datab => \G17|ALT_INV_ram~254_combout\,
	datac => \G17|ALT_INV_ram~238_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~517_combout\,
	datag => \G17|ALT_INV_ram~206_combout\,
	combout => \G17|ram~389_combout\);

\G17|ram~270\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~270_combout\ = ( \G17|ram~270_combout\ & ( \rtl~0_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( !\G17|ram~270_combout\ & ( \rtl~0_combout\ & ( \G7|Mux17~1_combout\ ) ) ) # ( \G17|ram~270_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux17~1_combout\,
	datae => \G17|ALT_INV_ram~270_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~270_combout\);

\G18|SAIDA~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~51_combout\ = ( !\G16|Mux13~2_combout\ & ( \G17|ram~270_combout\ & ( (!\G16|Mux15~2_combout\ & (\G16|Mux11~2_combout\ & (\G18|SAIDA~0_combout\ & !\G16|Mux14~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G16|ALT_INV_Mux14~4_combout\,
	datae => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G17|ALT_INV_ram~270_combout\,
	combout => \G18|SAIDA~51_combout\);

\G14|SAIDA~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~18_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][14]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(14))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][14]~combout\,
	datac => \G18|ALT_INV_SAIDA\(14),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~18_combout\);

\G14|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(14) = ( \G14|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~18_combout\ ) ) ) # ( !\G14|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~18_combout\ ) ) ) # ( \G14|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~18_combout\,
	datae => \G14|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(14));

\G7|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][13]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][13]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(13))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][13]~combout\,
	datad => \G18|ALT_INV_SAIDA\(13),
	combout => \G7|Mux18~0_combout\);

\G7|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux18~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux18~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux18~0_combout\,
	combout => \G7|Mux18~1_combout\);

\G17|ram~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~93_combout\ = ( \G17|ram~93_combout\ & ( \rtl~1_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~93_combout\ & ( \rtl~1_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~93_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~93_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~93_combout\);

\G17|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~125_combout\ = ( \G17|ram~125_combout\ & ( \rtl~2_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~125_combout\ & ( \rtl~2_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~125_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~125_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~125_combout\);

\G17|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~109_combout\ = ( \G17|ram~109_combout\ & ( \rtl~4_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~109_combout\ & ( \rtl~4_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~109_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~109_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~109_combout\);

\G17|ram~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~29_combout\ = ( \G17|ram~29_combout\ & ( \rtl~9_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~29_combout\ & ( \rtl~9_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~29_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~29_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~29_combout\);

\G17|ram~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~61_combout\ = ( \G17|ram~61_combout\ & ( \rtl~10_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~61_combout\ & ( \rtl~10_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~61_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~61_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~61_combout\);

\G17|ram~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~45_combout\ = ( \G17|ram~45_combout\ & ( \rtl~12_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~45_combout\ & ( \rtl~12_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~45_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~45_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~45_combout\);

\G17|ram~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~13_combout\ = ( \G17|ram~13_combout\ & ( \rtl~11_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~13_combout\ & ( \rtl~11_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~13_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~13_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~13_combout\);

\G17|ram~505\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~505_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~13_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~29_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~45_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~29_combout\,
	datab => \G17|ALT_INV_ram~61_combout\,
	datac => \G17|ALT_INV_ram~45_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~13_combout\,
	combout => \G17|ram~505_combout\);

\G17|ram~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~77_combout\ = ( \G17|ram~77_combout\ & ( \rtl~3_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~77_combout\ & ( \rtl~3_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~77_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~77_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~77_combout\);

\G17|ram~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~377_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~505_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~505_combout\ & ((\G17|ram~77_combout\))) # (\G17|ram~505_combout\ & (\G17|ram~93_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~505_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~505_combout\ & ((\G17|ram~109_combout\))) # (\G17|ram~505_combout\ & (\G17|ram~125_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~93_combout\,
	datab => \G17|ALT_INV_ram~125_combout\,
	datac => \G17|ALT_INV_ram~109_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~505_combout\,
	datag => \G17|ALT_INV_ram~77_combout\,
	combout => \G17|ram~377_combout\);

\G17|ram~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~221_combout\ = ( \G17|ram~221_combout\ & ( \rtl~5_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~221_combout\ & ( \rtl~5_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~221_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~221_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~221_combout\);

\G17|ram~253\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~253_combout\ = ( \G17|ram~253_combout\ & ( \rtl~6_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~253_combout\ & ( \rtl~6_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~253_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~253_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~253_combout\);

\G17|ram~237\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~237_combout\ = ( \G17|ram~237_combout\ & ( \rtl~8_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~237_combout\ & ( \rtl~8_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~237_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~237_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~237_combout\);

\G17|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~157_combout\ = ( \G17|ram~157_combout\ & ( \rtl~13_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~157_combout\ & ( \rtl~13_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~157_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~157_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~157_combout\);

\G17|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~189_combout\ = ( \G17|ram~189_combout\ & ( \rtl~14_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~189_combout\ & ( \rtl~14_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~189_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~189_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~189_combout\);

\G17|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~173_combout\ = ( \G17|ram~173_combout\ & ( \rtl~16_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~173_combout\ & ( \rtl~16_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~173_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~173_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~173_combout\);

\G17|ram~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~141_combout\ = ( \G17|ram~141_combout\ & ( \rtl~15_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~141_combout\ & ( \rtl~15_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~141_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~141_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~141_combout\);

\G17|ram~509\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~509_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~141_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~157_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~173_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~189_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~157_combout\,
	datab => \G17|ALT_INV_ram~189_combout\,
	datac => \G17|ALT_INV_ram~173_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~141_combout\,
	combout => \G17|ram~509_combout\);

\G17|ram~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~205_combout\ = ( \G17|ram~205_combout\ & ( \rtl~7_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~205_combout\ & ( \rtl~7_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~205_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~205_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~205_combout\);

\G17|ram~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~381_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~509_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~509_combout\ & ((\G17|ram~205_combout\))) # (\G17|ram~509_combout\ & (\G17|ram~221_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~509_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~509_combout\ & ((\G17|ram~237_combout\))) # (\G17|ram~509_combout\ & (\G17|ram~253_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~221_combout\,
	datab => \G17|ALT_INV_ram~253_combout\,
	datac => \G17|ALT_INV_ram~237_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~509_combout\,
	datag => \G17|ALT_INV_ram~205_combout\,
	combout => \G17|ram~381_combout\);

\G17|ram~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~269_combout\ = ( \G17|ram~269_combout\ & ( \rtl~0_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( !\G17|ram~269_combout\ & ( \rtl~0_combout\ & ( \G7|Mux18~1_combout\ ) ) ) # ( \G17|ram~269_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux18~1_combout\,
	datae => \G17|ALT_INV_ram~269_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~269_combout\);

\G18|SAIDA~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~47_combout\ = ( !\G16|Mux13~2_combout\ & ( \G17|ram~269_combout\ & ( (!\G16|Mux15~2_combout\ & (\G16|Mux11~2_combout\ & (\G18|SAIDA~0_combout\ & !\G16|Mux14~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G16|ALT_INV_Mux14~4_combout\,
	datae => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G17|ALT_INV_ram~269_combout\,
	combout => \G18|SAIDA~47_combout\);

\G14|SAIDA~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~17_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][13]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(13))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][13]~combout\,
	datac => \G18|ALT_INV_SAIDA\(13),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~17_combout\);

\G14|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(13) = ( \G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~17_combout\ ) ) ) # ( !\G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~17_combout\ ) ) ) # ( \G14|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~17_combout\,
	datae => \G14|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(13));

\G7|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][12]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][12]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(12))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][12]~combout\,
	datad => \G18|ALT_INV_SAIDA\(12),
	combout => \G7|Mux19~0_combout\);

\G7|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux19~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux19~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G7|Mux19~1_combout\);

\G17|ram~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~92_combout\ = ( \G17|ram~92_combout\ & ( \rtl~1_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~92_combout\ & ( \rtl~1_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~92_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~92_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~92_combout\);

\G17|ram~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~124_combout\ = ( \G17|ram~124_combout\ & ( \rtl~2_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~124_combout\ & ( \rtl~2_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~124_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~124_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~124_combout\);

\G17|ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~108_combout\ = ( \G17|ram~108_combout\ & ( \rtl~4_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~108_combout\ & ( \rtl~4_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~108_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~108_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~108_combout\);

\G17|ram~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~28_combout\ = ( \G17|ram~28_combout\ & ( \rtl~9_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~28_combout\ & ( \rtl~9_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~28_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~28_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~28_combout\);

\G17|ram~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~60_combout\ = ( \G17|ram~60_combout\ & ( \rtl~10_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~60_combout\ & ( \rtl~10_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~60_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~60_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~60_combout\);

\G17|ram~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~44_combout\ = ( \G17|ram~44_combout\ & ( \rtl~12_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~44_combout\ & ( \rtl~12_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~44_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~44_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~44_combout\);

\G17|ram~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~12_combout\ = ( \G17|ram~12_combout\ & ( \rtl~11_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~12_combout\ & ( \rtl~11_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~12_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~12_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~12_combout\);

\G17|ram~497\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~497_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~12_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~28_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~44_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~60_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~28_combout\,
	datab => \G17|ALT_INV_ram~60_combout\,
	datac => \G17|ALT_INV_ram~44_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~12_combout\,
	combout => \G17|ram~497_combout\);

\G17|ram~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~76_combout\ = ( \G17|ram~76_combout\ & ( \rtl~3_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~76_combout\ & ( \rtl~3_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~76_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~76_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~76_combout\);

\G17|ram~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~369_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~497_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~497_combout\ & ((\G17|ram~76_combout\))) # (\G17|ram~497_combout\ & (\G17|ram~92_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~497_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~497_combout\ & ((\G17|ram~108_combout\))) # (\G17|ram~497_combout\ & (\G17|ram~124_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~92_combout\,
	datab => \G17|ALT_INV_ram~124_combout\,
	datac => \G17|ALT_INV_ram~108_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~497_combout\,
	datag => \G17|ALT_INV_ram~76_combout\,
	combout => \G17|ram~369_combout\);

\G17|ram~220\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~220_combout\ = ( \G17|ram~220_combout\ & ( \rtl~5_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~220_combout\ & ( \rtl~5_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~220_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~220_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~220_combout\);

\G17|ram~252\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~252_combout\ = ( \G17|ram~252_combout\ & ( \rtl~6_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~252_combout\ & ( \rtl~6_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~252_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~252_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~252_combout\);

\G17|ram~236\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~236_combout\ = ( \G17|ram~236_combout\ & ( \rtl~8_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~236_combout\ & ( \rtl~8_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~236_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~236_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~236_combout\);

\G17|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~156_combout\ = ( \G17|ram~156_combout\ & ( \rtl~13_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~156_combout\ & ( \rtl~13_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~156_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~156_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~156_combout\);

\G17|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~188_combout\ = ( \G17|ram~188_combout\ & ( \rtl~14_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~188_combout\ & ( \rtl~14_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~188_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~188_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~188_combout\);

\G17|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~172_combout\ = ( \G17|ram~172_combout\ & ( \rtl~16_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~172_combout\ & ( \rtl~16_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~172_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~172_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~172_combout\);

\G17|ram~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~140_combout\ = ( \G17|ram~140_combout\ & ( \rtl~15_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~140_combout\ & ( \rtl~15_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~140_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~140_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~140_combout\);

\G17|ram~501\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~501_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~140_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~156_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~172_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~188_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~156_combout\,
	datab => \G17|ALT_INV_ram~188_combout\,
	datac => \G17|ALT_INV_ram~172_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~140_combout\,
	combout => \G17|ram~501_combout\);

\G17|ram~204\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~204_combout\ = ( \G17|ram~204_combout\ & ( \rtl~7_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~204_combout\ & ( \rtl~7_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~204_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~204_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~204_combout\);

\G17|ram~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~373_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~501_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~501_combout\ & ((\G17|ram~204_combout\))) # (\G17|ram~501_combout\ & (\G17|ram~220_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~501_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~501_combout\ & ((\G17|ram~236_combout\))) # (\G17|ram~501_combout\ & (\G17|ram~252_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~220_combout\,
	datab => \G17|ALT_INV_ram~252_combout\,
	datac => \G17|ALT_INV_ram~236_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~501_combout\,
	datag => \G17|ALT_INV_ram~204_combout\,
	combout => \G17|ram~373_combout\);

\G17|ram~268\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~268_combout\ = ( \G17|ram~268_combout\ & ( \rtl~0_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( !\G17|ram~268_combout\ & ( \rtl~0_combout\ & ( \G7|Mux19~1_combout\ ) ) ) # ( \G17|ram~268_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux19~1_combout\,
	datae => \G17|ALT_INV_ram~268_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~268_combout\);

\G14|SAIDA~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~16_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][12]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(12))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][12]~combout\,
	datac => \G18|ALT_INV_SAIDA\(12),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~16_combout\);

\G14|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(12) = ( \G14|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~16_combout\ ) ) ) # ( !\G14|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~16_combout\ ) ) ) # ( \G14|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~16_combout\,
	datae => \G14|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(12));

\G7|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~0_combout\ = (!\G4|Mux0~2_combout\ & (((\G7|Reg[0][11]~combout\)))) # (\G4|Mux0~2_combout\ & ((!\Clock_Sistema~input_o\ & (\G7|Reg[0][11]~combout\)) # (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(11))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[0][11]~combout\,
	datad => \G18|ALT_INV_SAIDA\(11),
	combout => \G7|Mux20~0_combout\);

\G7|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~1_combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Mux20~0_combout\ & ( (\G5|escrevereg~combout\ & (\G6|SAIDA[0]~0_combout\ & (\G6|SAIDA[1]~1_combout\ & \G6|SAIDA[2]~3_combout\))) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Mux20~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~3_combout\,
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G7|Mux20~1_combout\);

\G17|ram~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~91_combout\ = ( \G17|ram~91_combout\ & ( \rtl~1_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~91_combout\ & ( \rtl~1_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~91_combout\ & ( !\rtl~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~91_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~91_combout\);

\G17|ram~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~123_combout\ = ( \G17|ram~123_combout\ & ( \rtl~2_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~123_combout\ & ( \rtl~2_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~123_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~123_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~123_combout\);

\G17|ram~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~107_combout\ = ( \G17|ram~107_combout\ & ( \rtl~4_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~107_combout\ & ( \rtl~4_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~107_combout\ & ( !\rtl~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~107_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~107_combout\);

\G17|ram~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~27_combout\ = ( \G17|ram~27_combout\ & ( \rtl~9_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~27_combout\ & ( \rtl~9_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~27_combout\ & ( !\rtl~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~27_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~27_combout\);

\G17|ram~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~59_combout\ = ( \G17|ram~59_combout\ & ( \rtl~10_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~59_combout\ & ( \rtl~10_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~59_combout\ & ( !\rtl~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~59_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~59_combout\);

\G17|ram~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~43_combout\ = ( \G17|ram~43_combout\ & ( \rtl~12_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~43_combout\ & ( \rtl~12_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~43_combout\ & ( !\rtl~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~43_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~43_combout\);

\G17|ram~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~11_combout\ = ( \G17|ram~11_combout\ & ( \rtl~11_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~11_combout\ & ( \rtl~11_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~11_combout\ & ( !\rtl~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~11_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~11_combout\);

\G17|ram~489\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~489_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~11_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~27_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~43_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~59_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~27_combout\,
	datab => \G17|ALT_INV_ram~59_combout\,
	datac => \G17|ALT_INV_ram~43_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~11_combout\,
	combout => \G17|ram~489_combout\);

\G17|ram~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~75_combout\ = ( \G17|ram~75_combout\ & ( \rtl~3_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~75_combout\ & ( \rtl~3_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~75_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~75_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~75_combout\);

\G17|ram~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~361_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~489_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~489_combout\ & ((\G17|ram~75_combout\))) # (\G17|ram~489_combout\ & (\G17|ram~91_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~489_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~489_combout\ & ((\G17|ram~107_combout\))) # (\G17|ram~489_combout\ & (\G17|ram~123_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~91_combout\,
	datab => \G17|ALT_INV_ram~123_combout\,
	datac => \G17|ALT_INV_ram~107_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~489_combout\,
	datag => \G17|ALT_INV_ram~75_combout\,
	combout => \G17|ram~361_combout\);

\G17|ram~219\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~219_combout\ = ( \G17|ram~219_combout\ & ( \rtl~5_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~219_combout\ & ( \rtl~5_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~219_combout\ & ( !\rtl~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~219_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~219_combout\);

\G17|ram~251\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~251_combout\ = ( \G17|ram~251_combout\ & ( \rtl~6_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~251_combout\ & ( \rtl~6_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~251_combout\ & ( !\rtl~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~251_combout\,
	dataf => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~251_combout\);

\G17|ram~235\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~235_combout\ = ( \G17|ram~235_combout\ & ( \rtl~8_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~235_combout\ & ( \rtl~8_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~235_combout\ & ( !\rtl~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~235_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~235_combout\);

\G17|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~155_combout\ = ( \G17|ram~155_combout\ & ( \rtl~13_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~155_combout\ & ( \rtl~13_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~155_combout\ & ( !\rtl~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~155_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~155_combout\);

\G17|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~187_combout\ = ( \G17|ram~187_combout\ & ( \rtl~14_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~187_combout\ & ( \rtl~14_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~187_combout\ & ( !\rtl~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~187_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~187_combout\);

\G17|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~171_combout\ = ( \G17|ram~171_combout\ & ( \rtl~16_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~171_combout\ & ( \rtl~16_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~171_combout\ & ( !\rtl~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~171_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~171_combout\);

\G17|ram~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~139_combout\ = ( \G17|ram~139_combout\ & ( \rtl~15_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~139_combout\ & ( \rtl~15_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~139_combout\ & ( !\rtl~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~139_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~139_combout\);

\G17|ram~493\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~493_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux15~0_combout\ & (((\G17|ram~139_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~155_combout\)))) ) ) # ( \G16|Mux14~2_combout\ & ( 
-- ((!\G16|Mux15~0_combout\ & (((\G17|ram~171_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~0_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~187_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~155_combout\,
	datab => \G17|ALT_INV_ram~187_combout\,
	datac => \G17|ALT_INV_ram~171_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~139_combout\,
	combout => \G17|ram~493_combout\);

\G17|ram~203\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~203_combout\ = ( \G17|ram~203_combout\ & ( \rtl~7_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~203_combout\ & ( \rtl~7_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~203_combout\ & ( !\rtl~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~203_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~203_combout\);

\G17|ram~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~365_combout\ = ( !\G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~493_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~493_combout\ & ((\G17|ram~203_combout\))) # (\G17|ram~493_combout\ & (\G17|ram~219_combout\))))) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~493_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~493_combout\ & ((\G17|ram~235_combout\))) # (\G17|ram~493_combout\ & (\G17|ram~251_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~219_combout\,
	datab => \G17|ALT_INV_ram~251_combout\,
	datac => \G17|ALT_INV_ram~235_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~493_combout\,
	datag => \G17|ALT_INV_ram~203_combout\,
	combout => \G17|ram~365_combout\);

\G17|ram~267\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~267_combout\ = ( \G17|ram~267_combout\ & ( \rtl~0_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( !\G17|ram~267_combout\ & ( \rtl~0_combout\ & ( \G7|Mux20~1_combout\ ) ) ) # ( \G17|ram~267_combout\ & ( !\rtl~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux20~1_combout\,
	datae => \G17|ALT_INV_ram~267_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~267_combout\);

\G14|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~15_combout\ = (\G14|SAIDA~1_combout\ & ((!\G4|Mux0~2_combout\ & (\G7|Reg[0][11]~combout\)) # (\G4|Mux0~2_combout\ & ((\G18|SAIDA\(11))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[0][11]~combout\,
	datac => \G18|ALT_INV_SAIDA\(11),
	datad => \G14|ALT_INV_SAIDA~1_combout\,
	combout => \G14|SAIDA~15_combout\);

\G14|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(11) = ( \G14|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~15_combout\ ) ) ) # ( !\G14|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~15_combout\ ) ) ) # ( \G14|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA~15_combout\,
	datae => \G14|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(11));

\G16|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~45_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][11]~combout\) ) + ( !\G14|SAIDA\(11) ) + ( \G16|Add1~42\ ))
-- \G16|Add1~46\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][11]~combout\) ) + ( !\G14|SAIDA\(11) ) + ( \G16|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][11]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(11),
	cin => \G16|Add1~42\,
	sumout => \G16|Add1~45_sumout\,
	cout => \G16|Add1~46\);

\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][11]~combout\) ) + ( \G14|SAIDA\(11) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][11]~combout\) ) + ( \G14|SAIDA\(11) ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][11]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(11),
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

\G18|SAIDA~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~39_combout\ = ( \G7|Reg[0][11]~combout\ & ( !\G14|SAIDA\(11) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][11]~combout\ & ( !\G14|SAIDA\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][11]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(11),
	combout => \G18|SAIDA~39_combout\);

\G18|SAIDA~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~40_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~39_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~45_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~45_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~39_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~45_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~45_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~45_sumout\,
	datad => \G16|ALT_INV_Add0~45_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~39_combout\,
	combout => \G18|SAIDA~40_combout\);

\G18|SAIDA~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~41_combout\ = ( \G17|ram~267_combout\ & ( !\G18|SAIDA~40_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G17|ram~267_combout\ & ( !\G18|SAIDA~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G17|ALT_INV_ram~267_combout\,
	dataf => \G18|ALT_INV_SAIDA~40_combout\,
	combout => \G18|SAIDA~41_combout\);

\G18|SAIDA~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~42_combout\ = ( \G18|SAIDA~41_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~365_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~365_combout\)) # (\G17|ram~361_combout\))) ) ) # ( 
-- !\G18|SAIDA~41_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~361_combout\,
	datad => \G17|ALT_INV_ram~365_combout\,
	datae => \G18|ALT_INV_SAIDA~41_combout\,
	combout => \G18|SAIDA~42_combout\);

\G18|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(11) = ( \G18|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~42_combout\ ) ) ) # ( !\G18|SAIDA\(11) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~42_combout\ ) ) ) # ( \G18|SAIDA\(11) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~42_combout\,
	datae => \G18|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(11));

\G7|Reg[0][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][11]~combout\ = ( \G7|Reg[0][11]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(11) ) ) ) # ( !\G7|Reg[0][11]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(11) ) ) ) # ( \G7|Reg[0][11]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(11),
	datae => \G7|ALT_INV_Reg[0][11]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][11]~combout\);

\G16|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~49_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][12]~combout\) ) + ( !\G14|SAIDA\(12) ) + ( \G16|Add1~46\ ))
-- \G16|Add1~50\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][12]~combout\) ) + ( !\G14|SAIDA\(12) ) + ( \G16|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][12]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add1~46\,
	sumout => \G16|Add1~49_sumout\,
	cout => \G16|Add1~50\);

\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][12]~combout\) ) + ( \G14|SAIDA\(12) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][12]~combout\) ) + ( \G14|SAIDA\(12) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][12]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

\G18|SAIDA~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~43_combout\ = ( \G7|Reg[0][12]~combout\ & ( !\G14|SAIDA\(12) & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (!\G4|Mux6~0_combout\ & !\G4|Mux7~1_combout\))) ) ) ) # ( !\G7|Reg[0][12]~combout\ & ( !\G14|SAIDA\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux7~1_combout\,
	datae => \G7|ALT_INV_Reg[0][12]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(12),
	combout => \G18|SAIDA~43_combout\);

\G18|SAIDA~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~44_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~43_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~49_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~49_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~43_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~49_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~49_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~49_sumout\,
	datad => \G16|ALT_INV_Add0~49_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~43_combout\,
	combout => \G18|SAIDA~44_combout\);

\G18|SAIDA~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~45_combout\ = ( \G17|ram~268_combout\ & ( !\G18|SAIDA~44_combout\ & ( (!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~4_combout\))) ) ) ) # ( !\G17|ram~268_combout\ & ( !\G18|SAIDA~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G16|ALT_INV_Mux14~4_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G17|ALT_INV_ram~268_combout\,
	dataf => \G18|ALT_INV_SAIDA~44_combout\,
	combout => \G18|SAIDA~45_combout\);

\G18|SAIDA~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~46_combout\ = ( \G18|SAIDA~45_combout\ & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~373_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~373_combout\)) # (\G17|ram~369_combout\))) ) ) # ( 
-- !\G18|SAIDA~45_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010011011111111111111111110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~369_combout\,
	datad => \G17|ALT_INV_ram~373_combout\,
	datae => \G18|ALT_INV_SAIDA~45_combout\,
	combout => \G18|SAIDA~46_combout\);

\G18|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(12) = ( \G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~46_combout\ ) ) ) # ( !\G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~46_combout\ ) ) ) # ( \G18|SAIDA\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~46_combout\,
	datae => \G18|ALT_INV_SAIDA\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(12));

\G7|Reg[0][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][12]~combout\ = ( \G7|Reg[0][12]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(12) ) ) ) # ( !\G7|Reg[0][12]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(12) ) ) ) # ( \G7|Reg[0][12]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(12),
	datae => \G7|ALT_INV_Reg[0][12]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][12]~combout\);

\G16|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~53_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][13]~combout\) ) + ( !\G14|SAIDA\(13) ) + ( \G16|Add1~50\ ))
-- \G16|Add1~54\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][13]~combout\) ) + ( !\G14|SAIDA\(13) ) + ( \G16|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][13]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add1~50\,
	sumout => \G16|Add1~53_sumout\,
	cout => \G16|Add1~54\);

\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][13]~combout\) ) + ( \G14|SAIDA\(13) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][13]~combout\) ) + ( \G14|SAIDA\(13) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][13]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

\G18|SAIDA~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~48_combout\ = (!\G14|SAIDA\(13) & ((!\G7|Reg[0][13]~combout\) # (\G4|rd[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][13]~combout\,
	datab => \G14|ALT_INV_SAIDA\(13),
	datac => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G18|SAIDA~48_combout\);

\G18|SAIDA~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~49_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~48_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~53_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~53_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~48_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~53_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~53_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~53_sumout\,
	datad => \G16|ALT_INV_Add0~53_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~48_combout\,
	combout => \G18|SAIDA~49_combout\);

\G18|SAIDA~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~50_combout\ = ( \G18|SAIDA~47_combout\ & ( \G18|SAIDA~49_combout\ ) ) # ( !\G18|SAIDA~47_combout\ & ( \G18|SAIDA~49_combout\ ) ) # ( \G18|SAIDA~47_combout\ & ( !\G18|SAIDA~49_combout\ ) ) # ( !\G18|SAIDA~47_combout\ & ( !\G18|SAIDA~49_combout\ 
-- & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~381_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~381_combout\)) # (\G17|ram~377_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~377_combout\,
	datad => \G17|ALT_INV_ram~381_combout\,
	datae => \G18|ALT_INV_SAIDA~47_combout\,
	dataf => \G18|ALT_INV_SAIDA~49_combout\,
	combout => \G18|SAIDA~50_combout\);

\G18|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(13) = ( \G18|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~50_combout\ ) ) ) # ( !\G18|SAIDA\(13) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~50_combout\ ) ) ) # ( \G18|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~50_combout\,
	datae => \G18|ALT_INV_SAIDA\(13),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(13));

\G7|Reg[0][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][13]~combout\ = ( \G7|Reg[0][13]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(13) ) ) ) # ( !\G7|Reg[0][13]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(13) ) ) ) # ( \G7|Reg[0][13]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(13),
	datae => \G7|ALT_INV_Reg[0][13]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][13]~combout\);

\G16|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~57_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][14]~combout\) ) + ( !\G14|SAIDA\(14) ) + ( \G16|Add1~54\ ))
-- \G16|Add1~58\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][14]~combout\) ) + ( !\G14|SAIDA\(14) ) + ( \G16|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][14]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add1~54\,
	sumout => \G16|Add1~57_sumout\,
	cout => \G16|Add1~58\);

\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][14]~combout\) ) + ( \G14|SAIDA\(14) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][14]~combout\) ) + ( \G14|SAIDA\(14) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][14]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

\G18|SAIDA~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~52_combout\ = (!\G14|SAIDA\(14) & ((!\G7|Reg[0][14]~combout\) # (\G4|rd[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][14]~combout\,
	datab => \G14|ALT_INV_SAIDA\(14),
	datac => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G18|SAIDA~52_combout\);

\G18|SAIDA~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~53_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~52_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~57_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~57_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~52_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~57_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~57_sumout\,
	datad => \G16|ALT_INV_Add0~57_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~52_combout\,
	combout => \G18|SAIDA~53_combout\);

\G18|SAIDA~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~54_combout\ = ( \G18|SAIDA~51_combout\ & ( \G18|SAIDA~53_combout\ ) ) # ( !\G18|SAIDA~51_combout\ & ( \G18|SAIDA~53_combout\ ) ) # ( \G18|SAIDA~51_combout\ & ( !\G18|SAIDA~53_combout\ ) ) # ( !\G18|SAIDA~51_combout\ & ( !\G18|SAIDA~53_combout\ 
-- & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~389_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~389_combout\)) # (\G17|ram~385_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~385_combout\,
	datad => \G17|ALT_INV_ram~389_combout\,
	datae => \G18|ALT_INV_SAIDA~51_combout\,
	dataf => \G18|ALT_INV_SAIDA~53_combout\,
	combout => \G18|SAIDA~54_combout\);

\G18|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(14) = ( \G18|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~54_combout\ ) ) ) # ( !\G18|SAIDA\(14) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~54_combout\ ) ) ) # ( \G18|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~54_combout\,
	datae => \G18|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(14));

\G7|Reg[0][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][14]~combout\ = ( \G7|Reg[0][14]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(14) ) ) ) # ( !\G7|Reg[0][14]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(14) ) ) ) # ( \G7|Reg[0][14]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(14),
	datae => \G7|ALT_INV_Reg[0][14]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][14]~combout\);

\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][15]~combout\) ) + ( \G14|SAIDA\(15) ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][15]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

\G18|SAIDA~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~56_combout\ = (!\G14|SAIDA\(15) & ((!\G7|Reg[0][15]~combout\) # (\G4|rd[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[0][15]~combout\,
	datab => \G14|ALT_INV_SAIDA\(15),
	datac => \G4|ALT_INV_rd[0]~1_combout\,
	combout => \G18|SAIDA~56_combout\);

\G18|SAIDA~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~57_combout\ = ( !\G5|memparareg~combout\ & ( \G18|SAIDA~56_combout\ & ( (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~61_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~61_sumout\)))) ) ) ) # ( !\G5|memparareg~combout\ & ( 
-- !\G18|SAIDA~56_combout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\)) # (\G16|Mux14~0_combout\ & ((!\G16|Mux14~1_combout\ & ((\G16|Add0~61_sumout\))) # (\G16|Mux14~1_combout\ & (\G16|Add1~61_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111000000000000000000000001010001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux14~0_combout\,
	datab => \G16|ALT_INV_Mux14~1_combout\,
	datac => \G16|ALT_INV_Add1~61_sumout\,
	datad => \G16|ALT_INV_Add0~61_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G18|ALT_INV_SAIDA~56_combout\,
	combout => \G18|SAIDA~57_combout\);

\G18|SAIDA~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~58_combout\ = ( \G18|SAIDA~55_combout\ & ( \G18|SAIDA~57_combout\ ) ) # ( !\G18|SAIDA~55_combout\ & ( \G18|SAIDA~57_combout\ ) ) # ( \G18|SAIDA~55_combout\ & ( !\G18|SAIDA~57_combout\ ) ) # ( !\G18|SAIDA~55_combout\ & ( !\G18|SAIDA~57_combout\ 
-- & ( (!\G18|SAIDA~1_combout\ & (\G18|SAIDA~2_combout\ & ((\G17|ram~397_combout\)))) # (\G18|SAIDA~1_combout\ & (((\G18|SAIDA~2_combout\ & \G17|ram~397_combout\)) # (\G17|ram~393_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~393_combout\,
	datad => \G17|ALT_INV_ram~397_combout\,
	datae => \G18|ALT_INV_SAIDA~55_combout\,
	dataf => \G18|ALT_INV_SAIDA~57_combout\,
	combout => \G18|SAIDA~58_combout\);

\G18|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(15) = ( \G18|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~58_combout\ ) ) ) # ( !\G18|SAIDA\(15) & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA~58_combout\ ) ) ) # ( \G18|SAIDA\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA~58_combout\,
	datae => \G18|ALT_INV_SAIDA\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G18|SAIDA\(15));

\G7|Reg[0][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][15]~combout\ = ( \G7|Reg[0][15]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(15) ) ) ) # ( !\G7|Reg[0][15]~combout\ & ( \G7|Reg[0][0]~0_combout\ & ( \G18|SAIDA\(15) ) ) ) # ( \G7|Reg[0][15]~combout\ & ( !\G7|Reg[0][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G18|ALT_INV_SAIDA\(15),
	datae => \G7|ALT_INV_Reg[0][15]~combout\,
	dataf => \G7|ALT_INV_Reg[0][0]~0_combout\,
	combout => \G7|Reg[0][15]~combout\);

\G16|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~61_sumout\ = SUM(( (!\G4|rd[0]~0_combout\ & \G7|Reg[0][15]~combout\) ) + ( !\G14|SAIDA\(15) ) + ( \G16|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G7|ALT_INV_Reg[0][15]~combout\,
	dataf => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add1~58\,
	sumout => \G16|Add1~61_sumout\);

\G16|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~2_combout\ = ( !\G16|Add1~41_sumout\ & ( !\G16|Add1~61_sumout\ & ( (!\G16|Add1~25_sumout\ & (!\G16|Add1~29_sumout\ & (!\G16|Add1~33_sumout\ & !\G16|Add1~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~25_sumout\,
	datab => \G16|ALT_INV_Add1~29_sumout\,
	datac => \G16|ALT_INV_Add1~33_sumout\,
	datad => \G16|ALT_INV_Add1~37_sumout\,
	datae => \G16|ALT_INV_Add1~41_sumout\,
	dataf => \G16|ALT_INV_Add1~61_sumout\,
	combout => \G16|Equal1~2_combout\);

\G10|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(1));

\G12|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~1_combout\ = ( \G11|S1~1_combout\ & ( \G10|SAIDA\(1) & ( (((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)) # (\G11|S1~0_combout\)) # (\G2|saida\(1)) ) ) ) # ( !\G11|S1~1_combout\ & ( \G10|SAIDA\(1) & ( ((\G11|S1~0_combout\ & 
-- ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) # (\G2|saida\(1)) ) ) ) # ( \G11|S1~1_combout\ & ( !\G10|SAIDA\(1) & ( (\G2|saida\(1) & (!\G11|S1~0_combout\ & ((!\G16|Equal1~1_combout\) # (!\G16|Equal1~2_combout\)))) ) ) ) # ( 
-- !\G11|S1~1_combout\ & ( !\G10|SAIDA\(1) & ( (\G2|saida\(1) & ((!\G11|S1~0_combout\) # ((\G16|Equal1~1_combout\ & \G16|Equal1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101000000000001010101111111010101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(1),
	datab => \G16|ALT_INV_Equal1~1_combout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G11|ALT_INV_S1~0_combout\,
	datae => \G11|ALT_INV_S1~1_combout\,
	dataf => \G10|ALT_INV_SAIDA\(1),
	combout => \G12|SAIDA~1_combout\);

\G12|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(1) = ( \G12|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~1_combout\ ) ) ) # ( !\G12|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~1_combout\ ) ) ) # ( \G12|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~1_combout\,
	datae => \G12|ALT_INV_SAIDA\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(1));

\G13|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~1_combout\ = (\G12|SAIDA\(1) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(1),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~1_combout\);

\G13|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(1) = ( \G13|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~1_combout\ ) ) ) # ( !\G13|SAIDA\(1) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~1_combout\ ) ) ) # ( \G13|SAIDA\(1) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~1_combout\,
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

\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = ( \G4|Mux0~1_combout\ & ( (!\G1|pout\(1) & (!\G1|pout\(2) & (!\G1|pout\(3) & \G4|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(1),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux0~2_combout\);

\G4|rd[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~0_combout\ = ( !\G4|Mux7~1_combout\ & ( (!\G1|pout\(0) & (\G4|Mux0~2_combout\ & (\Clock_Sistema~input_o\ & !\G4|Mux6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux6~0_combout\,
	datae => \G4|ALT_INV_Mux7~1_combout\,
	combout => \G4|rd[0]~0_combout\);

\G16|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~0_combout\ = ( !\G16|Add1~17_sumout\ & ( (!\G16|Add1~1_sumout\ & (!\G16|Add1~5_sumout\ & (!\G16|Add1~9_sumout\ & !\G16|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~1_sumout\,
	datab => \G16|ALT_INV_Add1~5_sumout\,
	datac => \G16|ALT_INV_Add1~9_sumout\,
	datad => \G16|ALT_INV_Add1~13_sumout\,
	datae => \G16|ALT_INV_Add1~17_sumout\,
	combout => \G16|Equal1~0_combout\);

\G16|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~1_combout\ = ( !\G16|Add1~57_sumout\ & ( \G16|Equal1~0_combout\ & ( (!\G16|Add1~21_sumout\ & (!\G16|Add1~45_sumout\ & (!\G16|Add1~49_sumout\ & !\G16|Add1~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~21_sumout\,
	datab => \G16|ALT_INV_Add1~45_sumout\,
	datac => \G16|ALT_INV_Add1~49_sumout\,
	datad => \G16|ALT_INV_Add1~53_sumout\,
	datae => \G16|ALT_INV_Add1~57_sumout\,
	dataf => \G16|ALT_INV_Equal1~0_combout\,
	combout => \G16|Equal1~1_combout\);

\G12|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~0_combout\ = ( \G11|S1~0_combout\ & ( \G11|S1~1_combout\ & ( \G10|SAIDA\(0) ) ) ) # ( !\G11|S1~0_combout\ & ( \G11|S1~1_combout\ & ( (!\G16|Equal1~1_combout\ & (\G2|saida\(0))) # (\G16|Equal1~1_combout\ & ((!\G16|Equal1~2_combout\ & 
-- (\G2|saida\(0))) # (\G16|Equal1~2_combout\ & ((\G10|SAIDA\(0)))))) ) ) ) # ( \G11|S1~0_combout\ & ( !\G11|S1~1_combout\ & ( (!\G16|Equal1~1_combout\ & (((\G10|SAIDA\(0))))) # (\G16|Equal1~1_combout\ & ((!\G16|Equal1~2_combout\ & ((\G10|SAIDA\(0)))) # 
-- (\G16|Equal1~2_combout\ & (\G2|saida\(0))))) ) ) ) # ( !\G11|S1~0_combout\ & ( !\G11|S1~1_combout\ & ( \G2|saida\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011010101010101010100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(0),
	datab => \G10|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Equal1~1_combout\,
	datad => \G16|ALT_INV_Equal1~2_combout\,
	datae => \G11|ALT_INV_S1~0_combout\,
	dataf => \G11|ALT_INV_S1~1_combout\,
	combout => \G12|SAIDA~0_combout\);

\G12|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(0) = ( \G12|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~0_combout\ ) ) ) # ( !\G12|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA~0_combout\ ) ) ) # ( \G12|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G12|ALT_INV_SAIDA~0_combout\,
	datae => \G12|ALT_INV_SAIDA\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G12|SAIDA\(0));

\G13|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~0_combout\ = (\G12|SAIDA\(0) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(0),
	datab => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~0_combout\);

\G13|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(0) = ( \G13|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~0_combout\ ) ) ) # ( !\G13|SAIDA\(0) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA~0_combout\ ) ) ) # ( \G13|SAIDA\(0) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G13|ALT_INV_SAIDA~0_combout\,
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

\G7|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux10~0_combout\ = (!\G7|Reg[0][5]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][5]~combout\,
	combout => \G7|Mux10~0_combout\);

\G7|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux9~0_combout\ = (!\G7|Reg[0][6]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][6]~combout\,
	combout => \G7|Mux9~0_combout\);

\G7|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux8~0_combout\ = (!\G7|Reg[0][7]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][7]~combout\,
	combout => \G7|Mux8~0_combout\);

\G7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux7~0_combout\ = (!\G7|Reg[0][8]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][8]~combout\,
	combout => \G7|Mux7~0_combout\);

\G7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux6~0_combout\ = (!\G7|Reg[0][9]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][9]~combout\,
	combout => \G7|Mux6~0_combout\);

\G7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux5~0_combout\ = (!\G7|Reg[0][10]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][10]~combout\,
	combout => \G7|Mux5~0_combout\);

\G7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux4~0_combout\ = (!\G7|Reg[0][11]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][11]~combout\,
	combout => \G7|Mux4~0_combout\);

\G7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux3~0_combout\ = (!\G7|Reg[0][12]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][12]~combout\,
	combout => \G7|Mux3~0_combout\);

\G7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux2~0_combout\ = (!\G7|Reg[0][13]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][13]~combout\,
	combout => \G7|Mux2~0_combout\);

\G7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux1~0_combout\ = (!\G7|Reg[0][14]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][14]~combout\,
	combout => \G7|Mux1~0_combout\);

\G7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux0~0_combout\ = (!\G7|Reg[0][15]~combout\) # (\G4|rd[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Reg[0][15]~combout\,
	combout => \G7|Mux0~0_combout\);

\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = ( \G16|Add1~21_sumout\ & ( \G16|Add0~21_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux10~0_combout\) # (\G14|SAIDA\(5))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~21_sumout\ & ( \G16|Add0~21_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux10~0_combout\) # (\G14|SAIDA\(5))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~21_sumout\ & ( !\G16|Add0~21_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux10~0_combout\) # ((\G14|SAIDA\(5)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~21_sumout\ & ( !\G16|Add0~21_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux10~0_combout\) # (\G14|SAIDA\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux10~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(5),
	datae => \G16|ALT_INV_Add1~21_sumout\,
	dataf => \G16|ALT_INV_Add0~21_sumout\,
	combout => \G16|Mux10~0_combout\);

\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = ( \G16|Add1~25_sumout\ & ( \G16|Add0~25_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux9~0_combout\) # (\G14|SAIDA\(6))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~25_sumout\ & ( \G16|Add0~25_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux9~0_combout\) # (\G14|SAIDA\(6))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~25_sumout\ & ( !\G16|Add0~25_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux9~0_combout\) # ((\G14|SAIDA\(6)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~25_sumout\ & ( !\G16|Add0~25_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux9~0_combout\) # (\G14|SAIDA\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux9~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(6),
	datae => \G16|ALT_INV_Add1~25_sumout\,
	dataf => \G16|ALT_INV_Add0~25_sumout\,
	combout => \G16|Mux9~0_combout\);

\G16|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~0_combout\ = ( \G16|Add1~29_sumout\ & ( \G16|Add0~29_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux8~0_combout\) # (\G14|SAIDA\(7))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~29_sumout\ & ( \G16|Add0~29_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux8~0_combout\) # (\G14|SAIDA\(7))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~29_sumout\ & ( !\G16|Add0~29_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux8~0_combout\) # ((\G14|SAIDA\(7)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~29_sumout\ & ( !\G16|Add0~29_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux8~0_combout\) # (\G14|SAIDA\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux8~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(7),
	datae => \G16|ALT_INV_Add1~29_sumout\,
	dataf => \G16|ALT_INV_Add0~29_sumout\,
	combout => \G16|Mux8~0_combout\);

\G16|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~0_combout\ = ( \G16|Add1~33_sumout\ & ( \G16|Add0~33_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux7~0_combout\) # (\G14|SAIDA\(8))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~33_sumout\ & ( \G16|Add0~33_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux7~0_combout\) # (\G14|SAIDA\(8))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~33_sumout\ & ( !\G16|Add0~33_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux7~0_combout\) # ((\G14|SAIDA\(8)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~33_sumout\ & ( !\G16|Add0~33_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux7~0_combout\) # (\G14|SAIDA\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux7~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(8),
	datae => \G16|ALT_INV_Add1~33_sumout\,
	dataf => \G16|ALT_INV_Add0~33_sumout\,
	combout => \G16|Mux7~0_combout\);

\G16|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~0_combout\ = ( \G16|Add1~37_sumout\ & ( \G16|Add0~37_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux6~0_combout\) # (\G14|SAIDA\(9))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~37_sumout\ & ( \G16|Add0~37_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux6~0_combout\) # (\G14|SAIDA\(9))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~37_sumout\ & ( !\G16|Add0~37_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux6~0_combout\) # ((\G14|SAIDA\(9)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~37_sumout\ & ( !\G16|Add0~37_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux6~0_combout\) # (\G14|SAIDA\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux6~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(9),
	datae => \G16|ALT_INV_Add1~37_sumout\,
	dataf => \G16|ALT_INV_Add0~37_sumout\,
	combout => \G16|Mux6~0_combout\);

\G16|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~0_combout\ = ( \G16|Add1~41_sumout\ & ( \G16|Add0~41_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux5~0_combout\) # (\G14|SAIDA\(10))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~41_sumout\ & ( \G16|Add0~41_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux5~0_combout\) # (\G14|SAIDA\(10))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~41_sumout\ & ( !\G16|Add0~41_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux5~0_combout\) # ((\G14|SAIDA\(10)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~41_sumout\ & ( !\G16|Add0~41_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux5~0_combout\) # (\G14|SAIDA\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux5~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(10),
	datae => \G16|ALT_INV_Add1~41_sumout\,
	dataf => \G16|ALT_INV_Add0~41_sumout\,
	combout => \G16|Mux5~0_combout\);

\G16|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~0_combout\ = ( \G16|Add1~45_sumout\ & ( \G16|Add0~45_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux4~0_combout\) # (\G14|SAIDA\(11))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~45_sumout\ & ( \G16|Add0~45_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux4~0_combout\) # (\G14|SAIDA\(11))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~45_sumout\ & ( !\G16|Add0~45_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux4~0_combout\) # ((\G14|SAIDA\(11)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~45_sumout\ & ( !\G16|Add0~45_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux4~0_combout\) # (\G14|SAIDA\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux4~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(11),
	datae => \G16|ALT_INV_Add1~45_sumout\,
	dataf => \G16|ALT_INV_Add0~45_sumout\,
	combout => \G16|Mux4~0_combout\);

\G16|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~0_combout\ = ( \G16|Add1~49_sumout\ & ( \G16|Add0~49_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux3~0_combout\) # (\G14|SAIDA\(12))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~49_sumout\ & ( \G16|Add0~49_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux3~0_combout\) # (\G14|SAIDA\(12))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~49_sumout\ & ( !\G16|Add0~49_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux3~0_combout\) # ((\G14|SAIDA\(12)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~49_sumout\ & ( !\G16|Add0~49_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux3~0_combout\) # (\G14|SAIDA\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux3~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(12),
	datae => \G16|ALT_INV_Add1~49_sumout\,
	dataf => \G16|ALT_INV_Add0~49_sumout\,
	combout => \G16|Mux3~0_combout\);

\G16|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~0_combout\ = ( \G16|Add1~53_sumout\ & ( \G16|Add0~53_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux2~0_combout\) # (\G14|SAIDA\(13))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~53_sumout\ & ( \G16|Add0~53_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux2~0_combout\) # (\G14|SAIDA\(13))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~53_sumout\ & ( !\G16|Add0~53_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux2~0_combout\) # ((\G14|SAIDA\(13)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~53_sumout\ & ( !\G16|Add0~53_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux2~0_combout\) # (\G14|SAIDA\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux2~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(13),
	datae => \G16|ALT_INV_Add1~53_sumout\,
	dataf => \G16|ALT_INV_Add0~53_sumout\,
	combout => \G16|Mux2~0_combout\);

\G16|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~0_combout\ = ( \G16|Add1~57_sumout\ & ( \G16|Add0~57_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux1~0_combout\) # (\G14|SAIDA\(14))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~57_sumout\ & ( \G16|Add0~57_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux1~0_combout\) # (\G14|SAIDA\(14))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~57_sumout\ & ( !\G16|Add0~57_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux1~0_combout\) # ((\G14|SAIDA\(14)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~57_sumout\ & ( !\G16|Add0~57_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux1~0_combout\) # (\G14|SAIDA\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux1~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(14),
	datae => \G16|ALT_INV_Add1~57_sumout\,
	dataf => \G16|ALT_INV_Add0~57_sumout\,
	combout => \G16|Mux1~0_combout\);

\G16|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~0_combout\ = ( \G16|Add1~61_sumout\ & ( \G16|Add0~61_sumout\ & ( ((\G16|Mux14~1_combout\ & ((!\G7|Mux0~0_combout\) # (\G14|SAIDA\(15))))) # (\G16|Mux14~0_combout\) ) ) ) # ( !\G16|Add1~61_sumout\ & ( \G16|Add0~61_sumout\ & ( 
-- (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux0~0_combout\) # (\G14|SAIDA\(15))))) # (\G16|Mux14~0_combout\ & (((!\G16|Mux14~1_combout\)))) ) ) ) # ( \G16|Add1~61_sumout\ & ( !\G16|Add0~61_sumout\ & ( (\G16|Mux14~1_combout\ & 
-- ((!\G7|Mux0~0_combout\) # ((\G14|SAIDA\(15)) # (\G16|Mux14~0_combout\)))) ) ) ) # ( !\G16|Add1~61_sumout\ & ( !\G16|Add0~61_sumout\ & ( (!\G16|Mux14~0_combout\ & (\G16|Mux14~1_combout\ & ((!\G7|Mux0~0_combout\) # (\G14|SAIDA\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010110000111100111000001111000011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux0~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux14~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(15),
	datae => \G16|ALT_INV_Add1~61_sumout\,
	dataf => \G16|ALT_INV_Add0~61_sumout\,
	combout => \G16|Mux0~0_combout\);

\G1|G0|G0|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G0|state~0_combout\ = !\G1|G0|G0|state~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G0|G0|ALT_INV_state~q\,
	combout => \G1|G0|G0|state~0_combout\);

\G1|G0|G0|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G1|G0|G0|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G0|state~q\);

\G1|G0|G1|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G1|state~0_combout\ = !\G1|G0|G0|state~q\ $ (!\G1|G0|G1|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G0|G0|ALT_INV_state~q\,
	datab => \G1|G0|G1|ALT_INV_state~q\,
	combout => \G1|G0|G1|state~0_combout\);

\G1|G0|G1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G1|G0|G1|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G1|state~q\);

\G1|G0|G3|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G3|state~0_combout\ = !\G1|G0|G3|state~q\ $ (((!\G1|G0|G0|state~q\) # (!\G1|G0|G1|state~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G0|G0|ALT_INV_state~q\,
	datab => \G1|G0|G1|ALT_INV_state~q\,
	datac => \G1|G0|G3|ALT_INV_state~q\,
	combout => \G1|G0|G3|state~0_combout\);

\G1|G0|G3|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G1|G0|G3|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G3|state~q\);

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

ww_saida_cont_sincz1 <= \saida_cont_sincz1~output_o\;

ww_saida_cont_sincz2 <= \saida_cont_sincz2~output_o\;

ww_saida_cont_sincz3 <= \saida_cont_sincz3~output_o\;

ww_funcionou <= \funcionou~output_o\;

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
END structure;


