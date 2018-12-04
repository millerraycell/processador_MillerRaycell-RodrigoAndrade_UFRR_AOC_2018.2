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

-- DATE "12/03/2018 14:15:11"

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
	Flag_jump_OUT : BUFFER std_logic
	);
END DataPath;

-- Design Ports Information
-- SomadorToPc_outWaveform[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[9]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[10]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[12]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[14]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[8]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[9]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[10]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[11]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[12]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[14]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[15]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[8]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[9]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[11]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[12]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[13]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[14]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[15]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[8]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[10]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[11]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[13]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[14]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[2]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[1]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[5]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[11]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Saida_OperacaoDaULA[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Saida_OperacaoDaULA[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Saida_OperacaoDaULA[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Saida_OperacaoDaULA[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Saida_OperacaoDaULA[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Saida_OperacaoDaULA[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Saida_OperacaoDaULA[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[7]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[8]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[9]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[11]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[12]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[13]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[14]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[15]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[9]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[12]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[14]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[15]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[9]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[11]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[12]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[13]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[14]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[9]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[10]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[11]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[12]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[13]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_regdest_OUT	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[3]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_memparareg_OUT	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevereg_OUT	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_lemem_OUT	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevemem_OUT	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_branch_OUT	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_aluSRC_OUT	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_jump_OUT	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Sistema	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \Clock_Sistema~inputCLKENA0_outclk\ : std_logic;
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
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G4|rt[0]~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][0]~combout\ : std_logic;
SIGNAL \G7|Mux31~1_combout\ : std_logic;
SIGNAL \G16|Add0~66_cout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G7|Reg[0][0]~0_combout\ : std_logic;
SIGNAL \G7|Reg[3][1]~combout\ : std_logic;
SIGNAL \G7|Mux30~1_combout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G7|Reg[0][1]~1_combout\ : std_logic;
SIGNAL \G7|Reg[3][2]~combout\ : std_logic;
SIGNAL \G7|Mux29~1_combout\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G7|Reg[0][2]~2_combout\ : std_logic;
SIGNAL \G7|Reg[3][3]~combout\ : std_logic;
SIGNAL \G7|Mux28~1_combout\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G7|Reg[0][3]~3_combout\ : std_logic;
SIGNAL \G7|Reg[3][4]~combout\ : std_logic;
SIGNAL \G7|Mux27~1_combout\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G7|Reg[0][4]~4_combout\ : std_logic;
SIGNAL \G7|Reg[3][5]~combout\ : std_logic;
SIGNAL \G7|Mux26~1_combout\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G7|Reg[0][5]~5_combout\ : std_logic;
SIGNAL \G7|Reg[3][6]~combout\ : std_logic;
SIGNAL \G7|Mux25~1_combout\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G7|Reg[0][6]~6_combout\ : std_logic;
SIGNAL \G7|Reg[3][7]~combout\ : std_logic;
SIGNAL \G7|Mux24~1_combout\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G7|Reg[0][7]~7_combout\ : std_logic;
SIGNAL \G7|Reg[3][8]~combout\ : std_logic;
SIGNAL \G7|Mux23~1_combout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G7|Reg[0][8]~8_combout\ : std_logic;
SIGNAL \G7|Reg[3][9]~combout\ : std_logic;
SIGNAL \G7|Mux22~1_combout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G7|Reg[0][9]~9_combout\ : std_logic;
SIGNAL \G7|Reg[3][10]~combout\ : std_logic;
SIGNAL \G7|Mux21~1_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G7|Reg[0][10]~10_combout\ : std_logic;
SIGNAL \G7|Reg[3][11]~combout\ : std_logic;
SIGNAL \G7|Mux20~1_combout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G7|Reg[0][11]~11_combout\ : std_logic;
SIGNAL \G7|Reg[3][12]~combout\ : std_logic;
SIGNAL \G7|Mux19~1_combout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G7|Reg[0][12]~12_combout\ : std_logic;
SIGNAL \G7|Reg[3][13]~combout\ : std_logic;
SIGNAL \G7|Mux18~1_combout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G7|Reg[0][13]~13_combout\ : std_logic;
SIGNAL \G7|Reg[3][14]~combout\ : std_logic;
SIGNAL \G7|Mux17~1_combout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G7|Reg[0][14]~14_combout\ : std_logic;
SIGNAL \G7|Reg[3][15]~combout\ : std_logic;
SIGNAL \G7|Mux16~1_combout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G7|Reg[0][15]~15_combout\ : std_logic;
SIGNAL \G7|Mux31~0_combout\ : std_logic;
SIGNAL \G7|Mux30~0_combout\ : std_logic;
SIGNAL \G7|Mux29~0_combout\ : std_logic;
SIGNAL \G7|Mux28~0_combout\ : std_logic;
SIGNAL \G7|Mux27~0_combout\ : std_logic;
SIGNAL \G7|Mux26~0_combout\ : std_logic;
SIGNAL \G7|Mux25~0_combout\ : std_logic;
SIGNAL \G7|Mux24~0_combout\ : std_logic;
SIGNAL \G7|Mux23~0_combout\ : std_logic;
SIGNAL \G7|Mux22~0_combout\ : std_logic;
SIGNAL \G7|Mux21~0_combout\ : std_logic;
SIGNAL \G7|Mux20~0_combout\ : std_logic;
SIGNAL \G7|Mux19~0_combout\ : std_logic;
SIGNAL \G7|Mux18~0_combout\ : std_logic;
SIGNAL \G7|Mux17~0_combout\ : std_logic;
SIGNAL \G7|Mux16~0_combout\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;
SIGNAL \G14|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Reg[3][15]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][14]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][13]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][12]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][11]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][10]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][9]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][8]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][7]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][6]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][5]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][4]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][3]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][2]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][1]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[3][0]~combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G7|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rt[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 0);
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;
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
\G7|ALT_INV_Reg[3][15]~combout\ <= NOT \G7|Reg[3][15]~combout\;
\G7|ALT_INV_Reg[3][14]~combout\ <= NOT \G7|Reg[3][14]~combout\;
\G7|ALT_INV_Reg[3][13]~combout\ <= NOT \G7|Reg[3][13]~combout\;
\G7|ALT_INV_Reg[3][12]~combout\ <= NOT \G7|Reg[3][12]~combout\;
\G7|ALT_INV_Reg[3][11]~combout\ <= NOT \G7|Reg[3][11]~combout\;
\G7|ALT_INV_Reg[3][10]~combout\ <= NOT \G7|Reg[3][10]~combout\;
\G7|ALT_INV_Reg[3][9]~combout\ <= NOT \G7|Reg[3][9]~combout\;
\G7|ALT_INV_Reg[3][8]~combout\ <= NOT \G7|Reg[3][8]~combout\;
\G7|ALT_INV_Reg[3][7]~combout\ <= NOT \G7|Reg[3][7]~combout\;
\G7|ALT_INV_Reg[3][6]~combout\ <= NOT \G7|Reg[3][6]~combout\;
\G7|ALT_INV_Reg[3][5]~combout\ <= NOT \G7|Reg[3][5]~combout\;
\G7|ALT_INV_Reg[3][4]~combout\ <= NOT \G7|Reg[3][4]~combout\;
\G7|ALT_INV_Reg[3][3]~combout\ <= NOT \G7|Reg[3][3]~combout\;
\G7|ALT_INV_Reg[3][2]~combout\ <= NOT \G7|Reg[3][2]~combout\;
\G7|ALT_INV_Reg[3][1]~combout\ <= NOT \G7|Reg[3][1]~combout\;
\G7|ALT_INV_Reg[3][0]~combout\ <= NOT \G7|Reg[3][0]~combout\;
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
\G7|ALT_INV_Mux16~1_combout\ <= NOT \G7|Mux16~1_combout\;
\G7|ALT_INV_Mux17~1_combout\ <= NOT \G7|Mux17~1_combout\;
\G7|ALT_INV_Mux18~1_combout\ <= NOT \G7|Mux18~1_combout\;
\G7|ALT_INV_Mux19~1_combout\ <= NOT \G7|Mux19~1_combout\;
\G7|ALT_INV_Mux20~1_combout\ <= NOT \G7|Mux20~1_combout\;
\G7|ALT_INV_Mux21~1_combout\ <= NOT \G7|Mux21~1_combout\;
\G7|ALT_INV_Mux22~1_combout\ <= NOT \G7|Mux22~1_combout\;
\G7|ALT_INV_Mux23~1_combout\ <= NOT \G7|Mux23~1_combout\;
\G7|ALT_INV_Mux24~1_combout\ <= NOT \G7|Mux24~1_combout\;
\G7|ALT_INV_Mux25~1_combout\ <= NOT \G7|Mux25~1_combout\;
\G7|ALT_INV_Mux26~1_combout\ <= NOT \G7|Mux26~1_combout\;
\G7|ALT_INV_Mux27~1_combout\ <= NOT \G7|Mux27~1_combout\;
\G7|ALT_INV_Mux28~1_combout\ <= NOT \G7|Mux28~1_combout\;
\G7|ALT_INV_Mux29~1_combout\ <= NOT \G7|Mux29~1_combout\;
\G7|ALT_INV_Mux30~1_combout\ <= NOT \G7|Mux30~1_combout\;
\G7|ALT_INV_Mux31~1_combout\ <= NOT \G7|Mux31~1_combout\;
\G4|ALT_INV_rt[0]~0_combout\ <= NOT \G4|rt[0]~0_combout\;
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

-- Location: IOOBUF_X62_Y0_N19
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
	o => ww_SomadorToPc_outWaveform(0));

-- Location: IOOBUF_X28_Y0_N2
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
	o => ww_SomadorToPc_outWaveform(1));

-- Location: IOOBUF_X70_Y0_N36
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
	o => ww_SomadorToPc_outWaveform(2));

-- Location: IOOBUF_X54_Y0_N19
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
	o => ww_SomadorToPc_outWaveform(3));

-- Location: IOOBUF_X54_Y0_N36
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
	o => ww_SomadorToPc_outWaveform(4));

-- Location: IOOBUF_X56_Y0_N19
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
	o => ww_SomadorToPc_outWaveform(5));

-- Location: IOOBUF_X68_Y0_N53
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
	o => ww_SomadorToPc_outWaveform(6));

-- Location: IOOBUF_X68_Y0_N2
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
	o => ww_SomadorToPc_outWaveform(7));

-- Location: IOOBUF_X28_Y0_N19
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
	o => ww_SomadorToPc_outWaveform(8));

-- Location: IOOBUF_X66_Y0_N76
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
	o => ww_SomadorToPc_outWaveform(9));

-- Location: IOOBUF_X66_Y0_N42
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
	o => ww_SomadorToPc_outWaveform(10));

-- Location: IOOBUF_X64_Y0_N2
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
	o => ww_SomadorToPc_outWaveform(11));

-- Location: IOOBUF_X56_Y0_N2
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
	o => ww_SomadorToPc_outWaveform(12));

-- Location: IOOBUF_X64_Y0_N36
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
	o => ww_SomadorToPc_outWaveform(13));

-- Location: IOOBUF_X66_Y0_N93
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
	o => ww_SomadorToPc_outWaveform(14));

-- Location: IOOBUF_X56_Y0_N36
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
	o => ww_SomadorToPc_outWaveform(15));

-- Location: IOOBUF_X70_Y0_N2
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
	o => ww_SaidaPc_outWaveform(0));

-- Location: IOOBUF_X70_Y0_N19
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
	o => ww_SaidaPc_outWaveform(1));

-- Location: IOOBUF_X80_Y81_N53
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
	o => ww_SaidaPc_outWaveform(2));

-- Location: IOOBUF_X70_Y0_N53
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
	o => ww_SaidaPc_outWaveform(3));

-- Location: IOOBUF_X62_Y0_N36
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
	o => ww_SaidaPc_outWaveform(4));

-- Location: IOOBUF_X72_Y0_N36
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
	o => ww_SaidaPc_outWaveform(5));

-- Location: IOOBUF_X58_Y0_N76
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
	o => ww_SaidaPc_outWaveform(6));

-- Location: IOOBUF_X58_Y0_N93
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
	o => ww_SaidaPc_outWaveform(7));

-- Location: IOOBUF_X36_Y0_N19
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
	o => ww_SaidaPc_outWaveform(8));

-- Location: IOOBUF_X72_Y0_N19
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
	o => ww_SaidaPc_outWaveform(9));

-- Location: IOOBUF_X80_Y81_N2
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
	o => ww_SaidaPc_outWaveform(10));

-- Location: IOOBUF_X89_Y8_N22
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
	o => ww_SaidaPc_outWaveform(11));

-- Location: IOOBUF_X78_Y81_N19
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
	o => ww_SaidaPc_outWaveform(12));

-- Location: IOOBUF_X74_Y81_N59
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
	o => ww_SaidaPc_outWaveform(13));

-- Location: IOOBUF_X2_Y0_N93
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
	o => ww_SaidaPc_outWaveform(14));

-- Location: IOOBUF_X74_Y81_N76
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
	o => ww_SaidaPc_outWaveform(15));

-- Location: IOOBUF_X89_Y36_N39
\SaidaRegA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(0));

-- Location: IOOBUF_X32_Y0_N2
\SaidaRegA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(1));

-- Location: IOOBUF_X68_Y0_N19
\SaidaRegA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][2]~2_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(2));

-- Location: IOOBUF_X86_Y81_N2
\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][3]~3_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(3));

-- Location: IOOBUF_X64_Y0_N53
\SaidaRegA_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][4]~4_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(4));

-- Location: IOOBUF_X64_Y0_N19
\SaidaRegA_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][5]~5_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(5));

-- Location: IOOBUF_X89_Y36_N22
\SaidaRegA_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][6]~6_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(6));

-- Location: IOOBUF_X56_Y0_N53
\SaidaRegA_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][7]~7_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(7));

-- Location: IOOBUF_X89_Y37_N22
\SaidaRegA_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][8]~8_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(8));

-- Location: IOOBUF_X84_Y81_N2
\SaidaRegA_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][9]~9_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(9));

-- Location: IOOBUF_X76_Y81_N2
\SaidaRegA_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][10]~10_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(10));

-- Location: IOOBUF_X60_Y0_N36
\SaidaRegA_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][11]~11_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(11));

-- Location: IOOBUF_X38_Y0_N19
\SaidaRegA_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][12]~12_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(12));

-- Location: IOOBUF_X78_Y81_N53
\SaidaRegA_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][13]~13_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(13));

-- Location: IOOBUF_X89_Y4_N79
\SaidaRegA_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][14]~14_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(14));

-- Location: IOOBUF_X54_Y0_N2
\SaidaRegA_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][15]~15_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(15));

-- Location: IOOBUF_X89_Y4_N96
\SaidaRegB_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux31~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(0));

-- Location: IOOBUF_X50_Y0_N59
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
	o => ww_SaidaRegB_outWaveform(1));

-- Location: IOOBUF_X62_Y0_N53
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
	o => ww_SaidaRegB_outWaveform(2));

-- Location: IOOBUF_X50_Y0_N93
\SaidaRegB_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(3));

-- Location: IOOBUF_X34_Y0_N42
\SaidaRegB_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(4));

-- Location: IOOBUF_X32_Y0_N19
\SaidaRegB_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(5));

-- Location: IOOBUF_X60_Y0_N19
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
	o => ww_SaidaRegB_outWaveform(6));

-- Location: IOOBUF_X89_Y4_N45
\SaidaRegB_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(7));

-- Location: IOOBUF_X82_Y81_N76
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
	o => ww_SaidaRegB_outWaveform(8));

-- Location: IOOBUF_X52_Y0_N19
\SaidaRegB_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(9));

-- Location: IOOBUF_X76_Y81_N19
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
	o => ww_SaidaRegB_outWaveform(10));

-- Location: IOOBUF_X84_Y81_N36
\SaidaRegB_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(11));

-- Location: IOOBUF_X52_Y0_N36
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
	o => ww_SaidaRegB_outWaveform(12));

-- Location: IOOBUF_X28_Y0_N53
\SaidaRegB_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(13));

-- Location: IOOBUF_X89_Y36_N56
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
	o => ww_SaidaRegB_outWaveform(14));

-- Location: IOOBUF_X38_Y0_N36
\SaidaRegB_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegB_outWaveform(15));

-- Location: IOOBUF_X76_Y81_N36
\multiplexador_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X64_Y81_N19
\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X30_Y81_N2
\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X64_Y81_N53
\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(0));

-- Location: IOOBUF_X64_Y81_N2
\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(1));

-- Location: IOOBUF_X6_Y0_N53
\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(2));

-- Location: IOOBUF_X36_Y81_N36
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
	o => ww_Instruction_to_Control_outWaveform(0));

-- Location: IOOBUF_X32_Y81_N53
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
	o => ww_Instruction_to_Control_outWaveform(1));

-- Location: IOOBUF_X70_Y81_N36
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
	o => ww_Instruction_to_Control_outWaveform(2));

-- Location: IOOBUF_X52_Y81_N36
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
	o => ww_Instruction_to_Control_outWaveform(3));

-- Location: IOOBUF_X66_Y81_N76
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
	o => ww_Instruction_to_register1_outWaveform(0));

-- Location: IOOBUF_X4_Y0_N19
\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instruction_to_register1_outWaveform(1));

-- Location: IOOBUF_X40_Y81_N53
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
	o => ww_Instruction_to_register1_outWaveform(2));

-- Location: IOOBUF_X70_Y81_N19
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
	o => ww_Instruction_to_register2_outWaveform(0));

-- Location: IOOBUF_X64_Y81_N36
\Instruction_to_register2_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_register2_outWaveform(1));

-- Location: IOOBUF_X86_Y81_N53
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
	o => ww_Instruction_to_register2_outWaveform(2));

-- Location: IOOBUF_X66_Y81_N59
\Instruction_to_controlULA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_controlULA_outWaveform(0));

-- Location: IOOBUF_X62_Y81_N2
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
	o => ww_Instruction_to_controlULA_outWaveform(1));

-- Location: IOOBUF_X38_Y81_N2
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
	o => ww_Instruction_to_controlULA_outWaveform(2));

-- Location: IOOBUF_X72_Y81_N36
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
	o => ww_Instruction_to_extensorDeSinal_outWaveform(0));

-- Location: IOOBUF_X36_Y81_N2
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
	o => ww_Instruction_to_extensorDeSinal_outWaveform(1));

-- Location: IOOBUF_X40_Y81_N36
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
	o => ww_Instruction_to_extensorDeSinal_outWaveform(2));

-- Location: IOOBUF_X32_Y81_N36
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
	o => ww_Instruction_to_extensorDeSinal_outWaveform(3));

-- Location: IOOBUF_X50_Y81_N76
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
	o => ww_Instruction_to_extensorDeSinal_outWaveform(4));

-- Location: IOOBUF_X88_Y81_N54
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
	o => ww_Instruction_to_extensorDeSinal_outWaveform(5));

-- Location: IOOBUF_X8_Y0_N53
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
	o => ww_Instruction_to_Jump_outWaveform(0));

-- Location: IOOBUF_X40_Y81_N2
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
	o => ww_Instruction_to_Jump_outWaveform(1));

-- Location: IOOBUF_X54_Y81_N36
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
	o => ww_Instruction_to_Jump_outWaveform(2));

-- Location: IOOBUF_X88_Y81_N37
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
	o => ww_Instruction_to_Jump_outWaveform(3));

-- Location: IOOBUF_X34_Y81_N76
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
	o => ww_Instruction_to_Jump_outWaveform(4));

-- Location: IOOBUF_X8_Y0_N19
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
	o => ww_Instruction_to_Jump_outWaveform(5));

-- Location: IOOBUF_X62_Y81_N53
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
	o => ww_Instruction_to_Jump_outWaveform(6));

-- Location: IOOBUF_X30_Y81_N36
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
	o => ww_Instruction_to_Jump_outWaveform(7));

-- Location: IOOBUF_X6_Y0_N2
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
	o => ww_Instruction_to_Jump_outWaveform(8));

-- Location: IOOBUF_X34_Y81_N42
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
	o => ww_Instruction_to_Jump_outWaveform(9));

-- Location: IOOBUF_X86_Y81_N19
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
	o => ww_Instruction_to_Jump_outWaveform(10));

-- Location: IOOBUF_X72_Y81_N53
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
	o => ww_Instruction_to_Jump_outWaveform(11));

-- Location: IOOBUF_X70_Y81_N53
\out_Saida_OperacaoDaULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rt[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_Saida_OperacaoDaULA(0));

-- Location: IOOBUF_X58_Y81_N59
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
	o => ww_out_Saida_OperacaoDaULA(1));

-- Location: IOOBUF_X52_Y81_N19
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
	o => ww_out_Saida_OperacaoDaULA(2));

-- Location: IOOBUF_X70_Y81_N2
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
	o => ww_out_Saida_OperacaoDaULA(3));

-- Location: IOOBUF_X68_Y81_N2
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
	o => ww_out_Saida_OperacaoDaULA(4));

-- Location: IOOBUF_X36_Y81_N53
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
	o => ww_out_Saida_OperacaoDaULA(5));

-- Location: IOOBUF_X58_Y81_N76
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
	o => ww_out_Saida_OperacaoDaULA(6));

-- Location: IOOBUF_X52_Y0_N2
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
	o => ww_Data_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X89_Y9_N56
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
	o => ww_Data_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X89_Y6_N5
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
	o => ww_Data_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X89_Y9_N22
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
	o => ww_Data_to_writeRegister_outWaveform(3));

-- Location: IOOBUF_X89_Y9_N39
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
	o => ww_Data_to_writeRegister_outWaveform(4));

-- Location: IOOBUF_X89_Y35_N45
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
	o => ww_Data_to_writeRegister_outWaveform(5));

-- Location: IOOBUF_X89_Y4_N62
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
	o => ww_Data_to_writeRegister_outWaveform(6));

-- Location: IOOBUF_X89_Y38_N56
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
	o => ww_Data_to_writeRegister_outWaveform(7));

-- Location: IOOBUF_X89_Y37_N5
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
	o => ww_Data_to_writeRegister_outWaveform(8));

-- Location: IOOBUF_X89_Y35_N79
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
	o => ww_Data_to_writeRegister_outWaveform(9));

-- Location: IOOBUF_X89_Y8_N39
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
	o => ww_Data_to_writeRegister_outWaveform(10));

-- Location: IOOBUF_X89_Y9_N5
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
	o => ww_Data_to_writeRegister_outWaveform(11));

-- Location: IOOBUF_X89_Y6_N22
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
	o => ww_Data_to_writeRegister_outWaveform(12));

-- Location: IOOBUF_X68_Y0_N36
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
	o => ww_Data_to_writeRegister_outWaveform(13));

-- Location: IOOBUF_X89_Y6_N39
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
	o => ww_Data_to_writeRegister_outWaveform(14));

-- Location: IOOBUF_X89_Y8_N56
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
	o => ww_Data_to_writeRegister_outWaveform(15));

-- Location: IOOBUF_X28_Y0_N36
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
	o => ww_Saida_mult_to_mult_outWaveform(0));

-- Location: IOOBUF_X30_Y0_N36
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
	o => ww_Saida_mult_to_mult_outWaveform(1));

-- Location: IOOBUF_X89_Y36_N5
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
	o => ww_Saida_mult_to_mult_outWaveform(2));

-- Location: IOOBUF_X32_Y0_N53
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
	o => ww_Saida_mult_to_mult_outWaveform(3));

-- Location: IOOBUF_X89_Y37_N56
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
	o => ww_Saida_mult_to_mult_outWaveform(4));

-- Location: IOOBUF_X32_Y0_N36
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
	o => ww_Saida_mult_to_mult_outWaveform(5));

-- Location: IOOBUF_X40_Y0_N36
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
	o => ww_Saida_mult_to_mult_outWaveform(6));

-- Location: IOOBUF_X30_Y0_N2
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
	o => ww_Saida_mult_to_mult_outWaveform(7));

-- Location: IOOBUF_X86_Y81_N36
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
	o => ww_Saida_mult_to_mult_outWaveform(8));

-- Location: IOOBUF_X26_Y0_N59
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
	o => ww_Saida_mult_to_mult_outWaveform(9));

-- Location: IOOBUF_X34_Y0_N76
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
	o => ww_Saida_mult_to_mult_outWaveform(10));

-- Location: IOOBUF_X36_Y0_N2
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
	o => ww_Saida_mult_to_mult_outWaveform(11));

-- Location: IOOBUF_X4_Y0_N53
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
	o => ww_Saida_mult_to_mult_outWaveform(12));

-- Location: IOOBUF_X40_Y0_N53
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
	o => ww_Saida_mult_to_mult_outWaveform(13));

-- Location: IOOBUF_X34_Y0_N93
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
	o => ww_Saida_mult_to_mult_outWaveform(14));

-- Location: IOOBUF_X89_Y35_N96
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
	o => ww_Saida_mult_to_mult_outWaveform(15));

-- Location: IOOBUF_X50_Y0_N76
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
	o => ww_Saida_to_PC_outWaveform(0));

-- Location: IOOBUF_X54_Y0_N53
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
	o => ww_Saida_to_PC_outWaveform(1));

-- Location: IOOBUF_X89_Y37_N39
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
	o => ww_Saida_to_PC_outWaveform(2));

-- Location: IOOBUF_X30_Y0_N53
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
	o => ww_Saida_to_PC_outWaveform(3));

-- Location: IOOBUF_X40_Y0_N19
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
	o => ww_Saida_to_PC_outWaveform(4));

-- Location: IOOBUF_X88_Y81_N20
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
	o => ww_Saida_to_PC_outWaveform(5));

-- Location: IOOBUF_X40_Y0_N2
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
	o => ww_Saida_to_PC_outWaveform(6));

-- Location: IOOBUF_X58_Y0_N42
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
	o => ww_Saida_to_PC_outWaveform(7));

-- Location: IOOBUF_X38_Y0_N2
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
	o => ww_Saida_to_PC_outWaveform(8));

-- Location: IOOBUF_X89_Y38_N5
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
	o => ww_Saida_to_PC_outWaveform(9));

-- Location: IOOBUF_X38_Y0_N53
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
	o => ww_Saida_to_PC_outWaveform(10));

-- Location: IOOBUF_X89_Y38_N22
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
	o => ww_Saida_to_PC_outWaveform(11));

-- Location: IOOBUF_X84_Y81_N19
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
	o => ww_Saida_to_PC_outWaveform(12));

-- Location: IOOBUF_X58_Y0_N59
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
	o => ww_Saida_to_PC_outWaveform(13));

-- Location: IOOBUF_X36_Y0_N36
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
	o => ww_Saida_to_PC_outWaveform(14));

-- Location: IOOBUF_X36_Y0_N53
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
	o => ww_Saida_to_PC_outWaveform(15));

-- Location: IOOBUF_X66_Y0_N59
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
	o => ww_Saida_adress_to_RAM_outWaveform(0));

-- Location: IOOBUF_X50_Y0_N42
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
	o => ww_Saida_adress_to_RAM_outWaveform(1));

-- Location: IOOBUF_X60_Y0_N2
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
	o => ww_Saida_adress_to_RAM_outWaveform(2));

-- Location: IOOBUF_X34_Y0_N59
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
	o => ww_Saida_adress_to_RAM_outWaveform(3));

-- Location: IOOBUF_X82_Y81_N93
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
	o => ww_Saida_adress_to_RAM_outWaveform(4));

-- Location: IOOBUF_X72_Y0_N53
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
	o => ww_Saida_adress_to_RAM_outWaveform(5));

-- Location: IOOBUF_X82_Y81_N59
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
	o => ww_Saida_adress_to_RAM_outWaveform(6));

-- Location: IOOBUF_X89_Y8_N5
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
	o => ww_Saida_adress_to_RAM_outWaveform(7));

-- Location: IOOBUF_X30_Y0_N19
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
	o => ww_Saida_adress_to_RAM_outWaveform(8));

-- Location: IOOBUF_X62_Y0_N2
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
	o => ww_Saida_adress_to_RAM_outWaveform(9));

-- Location: IOOBUF_X84_Y81_N53
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
	o => ww_Saida_adress_to_RAM_outWaveform(10));

-- Location: IOOBUF_X60_Y0_N53
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
	o => ww_Saida_adress_to_RAM_outWaveform(11));

-- Location: IOOBUF_X72_Y0_N2
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
	o => ww_Saida_adress_to_RAM_outWaveform(12));

-- Location: IOOBUF_X89_Y38_N39
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
	o => ww_Saida_adress_to_RAM_outWaveform(13));

-- Location: IOOBUF_X89_Y6_N56
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
	o => ww_Saida_adress_to_RAM_outWaveform(14));

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_Saida_adress_to_RAM_outWaveform(15));

-- Location: IOOBUF_X26_Y81_N93
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
	o => ww_Flag_regdest_OUT);

-- Location: IOOBUF_X50_Y81_N93
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
	o => ww_Flag_origialu_OUT(0));

-- Location: IOOBUF_X88_Y81_N3
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
	o => ww_Flag_origialu_OUT(1));

-- Location: IOOBUF_X32_Y81_N2
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
	o => ww_Flag_origialu_OUT(2));

-- Location: IOOBUF_X36_Y81_N19
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
	o => ww_Flag_origialu_OUT(3));

-- Location: IOOBUF_X60_Y81_N36
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
	o => ww_Flag_memparareg_OUT);

-- Location: IOOBUF_X26_Y0_N93
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
	o => ww_Flag_escrevereg_OUT);

-- Location: IOOBUF_X74_Y81_N42
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
	o => ww_Flag_lemem_OUT);

-- Location: IOOBUF_X32_Y81_N19
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
	o => ww_Flag_escrevemem_OUT);

-- Location: IOOBUF_X78_Y81_N2
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
	o => ww_Flag_branch_OUT);

-- Location: IOOBUF_X72_Y81_N2
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
	o => ww_Flag_aluSRC_OUT);

-- Location: IOOBUF_X60_Y81_N19
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
	o => ww_Flag_jump_OUT);

-- Location: IOIBUF_X89_Y35_N61
\Clock_Sistema~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_Sistema,
	o => \Clock_Sistema~input_o\);

-- Location: CLKCTRL_G10
\Clock_Sistema~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_Sistema~input_o\,
	outclk => \Clock_Sistema~inputCLKENA0_outclk\);

-- Location: LABCELL_X73_Y12_N42
\G12|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(0) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(0) & ( \G2|saida\(0) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(0) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(0) & ( \G2|saida\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(0),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(0),
	combout => \G12|SAIDA\(0));

-- Location: LABCELL_X88_Y35_N51
\G13|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(0) = ( \G13|SAIDA\(0) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(0)) ) ) # ( !\G13|SAIDA\(0) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(0),
	dataf => \G13|ALT_INV_SAIDA\(0),
	combout => \G13|SAIDA\(0));

-- Location: LABCELL_X74_Y12_N57
\G1|pout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(0) = ( \G1|pout\(0) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(0)) ) ) # ( !\G1|pout\(0) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA\(0),
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G1|pout\(0));

-- Location: LABCELL_X73_Y12_N39
\G2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|saida[0]~0_combout\ = ( !\G1|pout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G2|saida[0]~0_combout\);

-- Location: FF_X73_Y12_N40
\G2|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(0));

-- Location: LABCELL_X74_Y12_N48
\G12|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(1) = ( \G12|SAIDA\(1) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(1)) ) ) # ( !\G12|SAIDA\(1) & ( (\Clock_Sistema~input_o\ & \G2|saida\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G2|ALT_INV_saida\(1),
	dataf => \G12|ALT_INV_SAIDA\(1),
	combout => \G12|SAIDA\(1));

-- Location: LABCELL_X88_Y35_N18
\G13|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(1) = ( \G13|SAIDA\(1) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(1)) ) ) # ( !\G13|SAIDA\(1) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(1),
	dataf => \G13|ALT_INV_SAIDA\(1),
	combout => \G13|SAIDA\(1));

-- Location: LABCELL_X75_Y12_N57
\G1|pout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(1) = ( \Clock_Sistema~input_o\ & ( \G1|pout\(1) & ( \G13|SAIDA\(1) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(1) ) ) # ( \Clock_Sistema~input_o\ & ( !\G1|pout\(1) & ( \G13|SAIDA\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(1),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(1),
	combout => \G1|pout\(1));

-- Location: LABCELL_X74_Y12_N0
\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(0) ) + ( \G1|pout\(1) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(0) ) + ( \G1|pout\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(1),
	datad => \G1|ALT_INV_pout\(0),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

-- Location: FF_X74_Y12_N1
\G2|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(1));

-- Location: LABCELL_X75_Y12_N0
\G12|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(2) = ( \G12|SAIDA\(2) & ( \G2|saida\(2) ) ) # ( !\G12|SAIDA\(2) & ( \G2|saida\(2) & ( \Clock_Sistema~input_o\ ) ) ) # ( \G12|SAIDA\(2) & ( !\G2|saida\(2) & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G12|ALT_INV_SAIDA\(2),
	dataf => \G2|ALT_INV_saida\(2),
	combout => \G12|SAIDA\(2));

-- Location: LABCELL_X88_Y35_N27
\G13|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(2) = ( \G13|SAIDA\(2) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(2)) ) ) # ( !\G13|SAIDA\(2) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(2),
	dataf => \G13|ALT_INV_SAIDA\(2),
	combout => \G13|SAIDA\(2));

-- Location: LABCELL_X75_Y12_N30
\G1|pout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(2) = ( \Clock_Sistema~input_o\ & ( \G1|pout\(2) & ( \G13|SAIDA\(2) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(2) ) ) # ( \Clock_Sistema~input_o\ & ( !\G1|pout\(2) & ( \G13|SAIDA\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA\(2),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G1|pout\(2));

-- Location: LABCELL_X74_Y12_N3
\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

-- Location: FF_X74_Y12_N5
\G2|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(2));

-- Location: LABCELL_X73_Y12_N15
\G12|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(3) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(3) & ( \G2|saida\(3) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(3) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(3) & ( \G2|saida\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(3),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(3),
	combout => \G12|SAIDA\(3));

-- Location: LABCELL_X88_Y35_N33
\G13|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(3) = ( \G13|SAIDA\(3) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(3)) ) ) # ( !\G13|SAIDA\(3) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(3),
	dataf => \G13|ALT_INV_SAIDA\(3),
	combout => \G13|SAIDA\(3));

-- Location: LABCELL_X75_Y12_N9
\G1|pout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(3) = ( \G1|pout\(3) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(3)) ) ) # ( !\G1|pout\(3) & ( (\G13|SAIDA\(3) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(3),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(3),
	combout => \G1|pout\(3));

-- Location: LABCELL_X74_Y12_N6
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

-- Location: FF_X74_Y12_N7
\G2|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(3));

-- Location: LABCELL_X74_Y12_N51
\G12|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(4) = ( \G12|SAIDA\(4) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(4)) ) ) # ( !\G12|SAIDA\(4) & ( (\Clock_Sistema~input_o\ & \G2|saida\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G2|ALT_INV_saida\(4),
	dataf => \G12|ALT_INV_SAIDA\(4),
	combout => \G12|SAIDA\(4));

-- Location: LABCELL_X88_Y35_N3
\G13|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(4) = ( \G13|SAIDA\(4) & ( \G12|SAIDA\(4) ) ) # ( !\G13|SAIDA\(4) & ( \G12|SAIDA\(4) & ( \Clock_Sistema~input_o\ ) ) ) # ( \G13|SAIDA\(4) & ( !\G12|SAIDA\(4) & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G13|ALT_INV_SAIDA\(4),
	dataf => \G12|ALT_INV_SAIDA\(4),
	combout => \G13|SAIDA\(4));

-- Location: LABCELL_X75_Y12_N6
\G1|pout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(4) = ( \G1|pout\(4) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(4)) ) ) # ( !\G1|pout\(4) & ( (\G13|SAIDA\(4) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(4),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(4),
	combout => \G1|pout\(4));

-- Location: LABCELL_X74_Y12_N9
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

-- Location: FF_X74_Y12_N10
\G2|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(4));

-- Location: LABCELL_X75_Y12_N42
\G12|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(5) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(5) & ( \G2|saida\(5) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(5) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(5) & ( \G2|saida\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(5),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(5),
	combout => \G12|SAIDA\(5));

-- Location: LABCELL_X88_Y35_N30
\G13|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(5) = ( \G13|SAIDA\(5) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(5)) ) ) # ( !\G13|SAIDA\(5) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(5),
	dataf => \G13|ALT_INV_SAIDA\(5),
	combout => \G13|SAIDA\(5));

-- Location: MLABCELL_X78_Y12_N12
\G1|pout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(5) = ( \Clock_Sistema~input_o\ & ( \G1|pout\(5) & ( \G13|SAIDA\(5) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(5) ) ) # ( \Clock_Sistema~input_o\ & ( !\G1|pout\(5) & ( \G13|SAIDA\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA\(5),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(5),
	combout => \G1|pout\(5));

-- Location: LABCELL_X74_Y12_N12
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

-- Location: FF_X74_Y12_N13
\G2|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(5));

-- Location: LABCELL_X73_Y12_N33
\G12|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(6) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(6) & ( \G2|saida\(6) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(6) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(6) & ( \G2|saida\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(6),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(6),
	combout => \G12|SAIDA\(6));

-- Location: LABCELL_X88_Y35_N6
\G13|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(6) = ( \G13|SAIDA\(6) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(6)) ) ) # ( !\G13|SAIDA\(6) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(6),
	dataf => \G13|ALT_INV_SAIDA\(6),
	combout => \G13|SAIDA\(6));

-- Location: MLABCELL_X82_Y12_N36
\G1|pout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(6) = ( \G13|SAIDA\(6) & ( (\G1|pout\(6)) # (\Clock_Sistema~input_o\) ) ) # ( !\G13|SAIDA\(6) & ( (!\Clock_Sistema~input_o\ & \G1|pout\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G1|ALT_INV_pout\(6),
	dataf => \G13|ALT_INV_SAIDA\(6),
	combout => \G1|pout\(6));

-- Location: LABCELL_X74_Y12_N15
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

-- Location: FF_X74_Y12_N16
\G2|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(6));

-- Location: LABCELL_X73_Y12_N24
\G12|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(7) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(7) & ( \G2|saida\(7) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(7) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(7) & ( \G2|saida\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(7),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(7),
	combout => \G12|SAIDA\(7));

-- Location: LABCELL_X88_Y35_N48
\G13|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(7) = ( \G13|SAIDA\(7) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(7)) ) ) # ( !\G13|SAIDA\(7) & ( (\G12|SAIDA\(7) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(7),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(7),
	combout => \G13|SAIDA\(7));

-- Location: MLABCELL_X82_Y12_N30
\G1|pout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(7) = ( \G1|pout\(7) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(7)) ) ) # ( !\G1|pout\(7) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA\(7),
	dataf => \G1|ALT_INV_pout\(7),
	combout => \G1|pout\(7));

-- Location: LABCELL_X74_Y12_N18
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

-- Location: FF_X74_Y12_N19
\G2|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(7));

-- Location: LABCELL_X75_Y12_N39
\G12|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(8) = ( \G12|SAIDA\(8) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(8)) ) ) # ( !\G12|SAIDA\(8) & ( (\G2|saida\(8) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(8),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(8),
	combout => \G12|SAIDA\(8));

-- Location: LABCELL_X88_Y35_N15
\G13|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(8) = ( \G13|SAIDA\(8) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(8)) ) ) # ( !\G13|SAIDA\(8) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(8),
	dataf => \G13|ALT_INV_SAIDA\(8),
	combout => \G13|SAIDA\(8));

-- Location: MLABCELL_X82_Y12_N21
\G1|pout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(8) = ( \G1|pout\(8) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(8)) ) ) # ( !\G1|pout\(8) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA\(8),
	dataf => \G1|ALT_INV_pout\(8),
	combout => \G1|pout\(8));

-- Location: LABCELL_X74_Y12_N21
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

-- Location: FF_X74_Y12_N22
\G2|saida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(8));

-- Location: LABCELL_X73_Y12_N9
\G12|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(9) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) & ( \G2|saida\(9) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(9) & ( \G2|saida\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(9),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(9),
	combout => \G12|SAIDA\(9));

-- Location: LABCELL_X88_Y35_N54
\G13|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(9) = ( \G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) ) # ( !\G13|SAIDA\(9) & ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(9) ) ) ) # ( \G13|SAIDA\(9) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(9),
	datae => \G13|ALT_INV_SAIDA\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G13|SAIDA\(9));

-- Location: MLABCELL_X82_Y12_N33
\G1|pout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(9) = ( \G1|pout\(9) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(9)) ) ) # ( !\G1|pout\(9) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA\(9),
	dataf => \G1|ALT_INV_pout\(9),
	combout => \G1|pout\(9));

-- Location: LABCELL_X74_Y12_N24
\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

-- Location: FF_X74_Y12_N25
\G2|saida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(9));

-- Location: LABCELL_X73_Y12_N48
\G12|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(10) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(10) & ( \G2|saida\(10) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(10) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(10) & ( \G2|saida\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(10),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(10),
	combout => \G12|SAIDA\(10));

-- Location: LABCELL_X88_Y35_N12
\G13|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(10) = ( \G13|SAIDA\(10) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(10)) ) ) # ( !\G13|SAIDA\(10) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(10),
	dataf => \G13|ALT_INV_SAIDA\(10),
	combout => \G13|SAIDA\(10));

-- Location: MLABCELL_X82_Y12_N18
\G1|pout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(10) = ( \G1|pout\(10) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(10)) ) ) # ( !\G1|pout\(10) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA\(10),
	dataf => \G1|ALT_INV_pout\(10),
	combout => \G1|pout\(10));

-- Location: LABCELL_X74_Y12_N27
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

-- Location: FF_X74_Y12_N28
\G2|saida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(10));

-- Location: LABCELL_X73_Y12_N57
\G12|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(11) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(11) & ( \G2|saida\(11) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(11) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(11) & ( \G2|saida\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(11),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(11),
	combout => \G12|SAIDA\(11));

-- Location: LABCELL_X88_Y35_N39
\G13|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(11) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(11) & ( \G12|SAIDA\(11) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G13|SAIDA\(11) ) ) # ( \Clock_Sistema~input_o\ & ( !\G13|SAIDA\(11) & ( \G12|SAIDA\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(11),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(11),
	combout => \G13|SAIDA\(11));

-- Location: MLABCELL_X87_Y12_N42
\G1|pout[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(11) = ( \G1|pout\(11) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(11)) ) ) # ( !\G1|pout\(11) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA\(11),
	dataf => \G1|ALT_INV_pout\(11),
	combout => \G1|pout\(11));

-- Location: LABCELL_X74_Y12_N30
\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

-- Location: FF_X74_Y12_N32
\G2|saida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(11));

-- Location: LABCELL_X75_Y12_N51
\G12|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(12) = ( \G12|SAIDA\(12) & ( (!\Clock_Sistema~input_o\) # (\G2|saida\(12)) ) ) # ( !\G12|SAIDA\(12) & ( (\G2|saida\(12) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(12),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(12),
	combout => \G12|SAIDA\(12));

-- Location: LABCELL_X88_Y35_N24
\G13|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(12) = ( \G13|SAIDA\(12) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(12)) ) ) # ( !\G13|SAIDA\(12) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(12),
	dataf => \G13|ALT_INV_SAIDA\(12),
	combout => \G13|SAIDA\(12));

-- Location: MLABCELL_X82_Y12_N45
\G1|pout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(12) = ( \G1|pout\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(12) ) ) ) # ( !\G1|pout\(12) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(12) ) ) ) # ( \G1|pout\(12) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(12),
	datae => \G1|ALT_INV_pout\(12),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(12));

-- Location: LABCELL_X74_Y12_N33
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

-- Location: FF_X74_Y12_N34
\G2|saida[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(12));

-- Location: LABCELL_X75_Y12_N12
\G12|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(13) = ( \Clock_Sistema~input_o\ & ( \G12|SAIDA\(13) & ( \G2|saida\(13) ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G12|SAIDA\(13) ) ) # ( \Clock_Sistema~input_o\ & ( !\G12|SAIDA\(13) & ( \G2|saida\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(13),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA\(13),
	combout => \G12|SAIDA\(13));

-- Location: LABCELL_X88_Y35_N9
\G13|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(13) = ( \G13|SAIDA\(13) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(13)) ) ) # ( !\G13|SAIDA\(13) & ( (\G12|SAIDA\(13) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G12|ALT_INV_SAIDA\(13),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(13),
	combout => \G13|SAIDA\(13));

-- Location: MLABCELL_X82_Y12_N27
\G1|pout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(13) = ( \G1|pout\(13) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(13)) ) ) # ( !\G1|pout\(13) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA\(13),
	dataf => \G1|ALT_INV_pout\(13),
	combout => \G1|pout\(13));

-- Location: LABCELL_X74_Y12_N36
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

-- Location: FF_X74_Y12_N38
\G2|saida[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(13));

-- Location: LABCELL_X75_Y12_N21
\G12|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(14) = ( \G12|SAIDA\(14) & ( \G2|saida\(14) ) ) # ( !\G12|SAIDA\(14) & ( \G2|saida\(14) & ( \Clock_Sistema~input_o\ ) ) ) # ( \G12|SAIDA\(14) & ( !\G2|saida\(14) & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G12|ALT_INV_SAIDA\(14),
	dataf => \G2|ALT_INV_saida\(14),
	combout => \G12|SAIDA\(14));

-- Location: LABCELL_X88_Y35_N42
\G13|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(14) = ( \G12|SAIDA\(14) & ( \G13|SAIDA\(14) ) ) # ( !\G12|SAIDA\(14) & ( \G13|SAIDA\(14) & ( !\Clock_Sistema~input_o\ ) ) ) # ( \G12|SAIDA\(14) & ( !\G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G12|ALT_INV_SAIDA\(14),
	dataf => \G13|ALT_INV_SAIDA\(14),
	combout => \G13|SAIDA\(14));

-- Location: MLABCELL_X82_Y12_N54
\G1|pout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(14) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(14) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(14),
	datad => \G1|ALT_INV_pout\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(14));

-- Location: LABCELL_X74_Y12_N39
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

-- Location: FF_X74_Y12_N40
\G2|saida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(14));

-- Location: LABCELL_X74_Y12_N54
\G12|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(15) = ( \G2|saida\(15) & ( (\G12|SAIDA\(15)) # (\Clock_Sistema~input_o\) ) ) # ( !\G2|saida\(15) & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(15),
	dataf => \G2|ALT_INV_saida\(15),
	combout => \G12|SAIDA\(15));

-- Location: LABCELL_X88_Y35_N21
\G13|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(15) = ( \G13|SAIDA\(15) & ( (!\Clock_Sistema~input_o\) # (\G12|SAIDA\(15)) ) ) # ( !\G13|SAIDA\(15) & ( (\Clock_Sistema~input_o\ & \G12|SAIDA\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(15),
	dataf => \G13|ALT_INV_SAIDA\(15),
	combout => \G13|SAIDA\(15));

-- Location: MLABCELL_X82_Y12_N12
\G1|pout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(15) = ( \G1|pout\(15) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(15)) ) ) # ( !\G1|pout\(15) & ( (\G13|SAIDA\(15) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA\(15),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(15),
	combout => \G1|pout\(15));

-- Location: LABCELL_X74_Y12_N42
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

-- Location: FF_X74_Y12_N43
\G2|saida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G2|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(15));

-- Location: LABCELL_X75_Y12_N27
\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(0) & ( !\G1|pout\(3) & ( (!\G1|pout\(2) & (!\G1|pout\(4) & !\G1|pout\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(4),
	datad => \G1|ALT_INV_pout\(1),
	datae => \G1|ALT_INV_pout\(0),
	dataf => \G1|ALT_INV_pout\(3),
	combout => \G4|Mux0~1_combout\);

-- Location: MLABCELL_X82_Y12_N0
\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = ( !\G1|pout\(10) & ( (!\G1|pout\(6) & (!\G1|pout\(7) & (!\G1|pout\(9) & !\G1|pout\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(6),
	datab => \G1|ALT_INV_pout\(7),
	datac => \G1|ALT_INV_pout\(9),
	datad => \G1|ALT_INV_pout\(8),
	dataf => \G1|ALT_INV_pout\(10),
	combout => \G4|Mux0~2_combout\);

-- Location: MLABCELL_X82_Y12_N57
\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = ( !\G1|pout\(15) & ( (!\G1|pout\(14) & (!\G1|pout\(12) & !\G1|pout\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(14),
	datac => \G1|ALT_INV_pout\(12),
	datad => \G1|ALT_INV_pout\(13),
	dataf => \G1|ALT_INV_pout\(15),
	combout => \G4|Mux0~0_combout\);

-- Location: MLABCELL_X82_Y12_N39
\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~0_combout\ & ( (!\G1|pout\(11) & (!\G1|pout\(5) & (\G4|Mux0~1_combout\ & \G4|Mux0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(11),
	datab => \G1|ALT_INV_pout\(5),
	datac => \G4|ALT_INV_Mux0~1_combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G4|ALT_INV_Mux0~0_combout\,
	combout => \G4|Mux0~3_combout\);

-- Location: LABCELL_X85_Y12_N30
\G4|rt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[0]~0_combout\ = ( \G4|Mux0~0_combout\ & ( \G4|Mux0~1_combout\ & ( (\Clock_Sistema~input_o\ & (!\G1|pout\(5) & (\G4|Mux0~2_combout\ & !\G1|pout\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G1|ALT_INV_pout\(5),
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G1|ALT_INV_pout\(11),
	datae => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|rt[0]~0_combout\);

-- Location: LABCELL_X85_Y12_N42
\G7|Reg[3][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][0]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(0) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][0]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[3][0]~combout\,
	datac => \G18|ALT_INV_SAIDA\(0),
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][0]~combout\);

-- Location: LABCELL_X85_Y12_N21
\G7|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~1_combout\ = ( \G18|SAIDA\(0) & ( (!\G4|Mux0~3_combout\) # (\G7|Reg[3][0]~combout\) ) ) # ( !\G18|SAIDA\(0) & ( (\G7|Reg[3][0]~combout\ & \G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[3][0]~combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(0),
	combout => \G7|Mux31~1_combout\);

-- Location: LABCELL_X88_Y12_N9
\G14|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(0) = ( \Clock_Sistema~input_o\ & ( \G14|SAIDA\(0) & ( \G7|Mux31~1_combout\ ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G14|SAIDA\(0) ) ) # ( \Clock_Sistema~input_o\ & ( !\G14|SAIDA\(0) & ( \G7|Mux31~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux31~1_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(0),
	combout => \G14|SAIDA\(0));

-- Location: LABCELL_X83_Y12_N0
\G16|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~66_cout\ = CARRY(( (\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => GND,
	cout => \G16|Add0~66_cout\);

-- Location: LABCELL_X83_Y12_N3
\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( !\G14|SAIDA\(0) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add0~66_cout\ ))
-- \G16|Add0~2\ = CARRY(( !\G14|SAIDA\(0) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(0)) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G14|ALT_INV_SAIDA\(0),
	dataf => \G18|ALT_INV_SAIDA\(0),
	cin => \G16|Add0~66_cout\,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

-- Location: MLABCELL_X82_Y12_N6
\G18|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(0) = ( \G18|SAIDA\(0) & ( \G16|Add0~1_sumout\ ) ) # ( !\G18|SAIDA\(0) & ( \G16|Add0~1_sumout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( \G18|SAIDA\(0) & ( !\G16|Add0~1_sumout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G18|ALT_INV_SAIDA\(0),
	dataf => \G16|ALT_INV_Add0~1_sumout\,
	combout => \G18|SAIDA\(0));

-- Location: LABCELL_X85_Y12_N39
\G7|Reg[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][0]~0_combout\ = ( \G4|Mux0~3_combout\ ) # ( !\G4|Mux0~3_combout\ & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(0),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][0]~0_combout\);

-- Location: LABCELL_X85_Y12_N36
\G7|Reg[3][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][1]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(1) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][1]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(1),
	datad => \G7|ALT_INV_Reg[3][1]~combout\,
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][1]~combout\);

-- Location: MLABCELL_X84_Y12_N54
\G7|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~1_combout\ = ( \G7|Reg[3][1]~combout\ & ( (\G4|Mux0~3_combout\) # (\G18|SAIDA\(1)) ) ) # ( !\G7|Reg[3][1]~combout\ & ( (\G18|SAIDA\(1) & !\G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(1),
	datad => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G7|ALT_INV_Reg[3][1]~combout\,
	combout => \G7|Mux30~1_combout\);

-- Location: MLABCELL_X87_Y12_N51
\G14|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(1) = ( \G14|SAIDA\(1) & ( (!\Clock_Sistema~input_o\) # (\G7|Mux30~1_combout\) ) ) # ( !\G14|SAIDA\(1) & ( (\G7|Mux30~1_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux30~1_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(1),
	combout => \G14|SAIDA\(1));

-- Location: LABCELL_X83_Y12_N6
\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(1))) ) + ( !\G14|SAIDA\(1) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(1))) ) + ( !\G14|SAIDA\(1) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(1),
	dataf => \G14|ALT_INV_SAIDA\(1),
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

-- Location: MLABCELL_X84_Y12_N21
\G18|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(1) = ( \G16|Add0~5_sumout\ & ( (\G18|SAIDA\(1)) # (\Clock_Sistema~input_o\) ) ) # ( !\G16|Add0~5_sumout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(1),
	dataf => \G16|ALT_INV_Add0~5_sumout\,
	combout => \G18|SAIDA\(1));

-- Location: LABCELL_X85_Y18_N27
\G7|Reg[0][1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][1]~1_combout\ = ( \G18|SAIDA\(1) & ( !\G4|Mux0~3_combout\ & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G18|ALT_INV_SAIDA\(1),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][1]~1_combout\);

-- Location: LABCELL_X85_Y12_N51
\G7|Reg[3][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][2]~combout\ = ( \G18|SAIDA\(2) & ( (\G4|rt[0]~0_combout\) # (\G7|Reg[3][2]~combout\) ) ) # ( !\G18|SAIDA\(2) & ( (\G7|Reg[3][2]~combout\ & !\G4|rt[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][2]~combout\,
	datac => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	combout => \G7|Reg[3][2]~combout\);

-- Location: MLABCELL_X87_Y12_N39
\G7|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~1_combout\ = (!\G4|Mux0~3_combout\ & (\G18|SAIDA\(2))) # (\G4|Mux0~3_combout\ & ((\G7|Reg[3][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(2),
	datab => \G7|ALT_INV_Reg[3][2]~combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux29~1_combout\);

-- Location: LABCELL_X88_Y12_N15
\G14|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(2) = ( \G7|Mux29~1_combout\ & ( (\Clock_Sistema~input_o\) # (\G14|SAIDA\(2)) ) ) # ( !\G7|Mux29~1_combout\ & ( (\G14|SAIDA\(2) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(2),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G7|ALT_INV_Mux29~1_combout\,
	combout => \G14|SAIDA\(2));

-- Location: LABCELL_X83_Y12_N9
\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( !\G14|SAIDA\(2) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(2)) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( !\G14|SAIDA\(2) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( (!\Clock_Sistema~input_o\) # ((\G18|SAIDA\(2)) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G14|ALT_INV_SAIDA\(2),
	dataf => \G18|ALT_INV_SAIDA\(2),
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

-- Location: MLABCELL_X82_Y12_N51
\G18|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(2) = ( \G16|Add0~9_sumout\ & ( (\G18|SAIDA\(2)) # (\Clock_Sistema~input_o\) ) ) # ( !\G16|Add0~9_sumout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(2),
	dataf => \G16|ALT_INV_Add0~9_sumout\,
	combout => \G18|SAIDA\(2));

-- Location: LABCELL_X85_Y12_N54
\G7|Reg[0][2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][2]~2_combout\ = ( \G4|Mux0~3_combout\ ) # ( !\G4|Mux0~3_combout\ & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(2),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][2]~2_combout\);

-- Location: LABCELL_X85_Y12_N24
\G7|Reg[3][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][3]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(3) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][3]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(3),
	datac => \G7|ALT_INV_Reg[3][3]~combout\,
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][3]~combout\);

-- Location: MLABCELL_X84_Y14_N45
\G7|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~1_combout\ = ( \G4|Mux0~3_combout\ & ( \G7|Reg[3][3]~combout\ ) ) # ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][3]~combout\,
	datab => \G18|ALT_INV_SAIDA\(3),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux28~1_combout\);

-- Location: MLABCELL_X87_Y14_N51
\G14|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(3) = ( \Clock_Sistema~input_o\ & ( \G14|SAIDA\(3) & ( \G7|Mux28~1_combout\ ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G14|SAIDA\(3) ) ) # ( \Clock_Sistema~input_o\ & ( !\G14|SAIDA\(3) & ( \G7|Mux28~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux28~1_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(3),
	combout => \G14|SAIDA\(3));

-- Location: LABCELL_X83_Y12_N12
\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( !\G14|SAIDA\(3) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(3))) ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( !\G14|SAIDA\(3) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(3))) ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101110100000000000000000001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G14|ALT_INV_SAIDA\(3),
	dataf => \G18|ALT_INV_SAIDA\(3),
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

-- Location: MLABCELL_X84_Y12_N27
\G18|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(3) = ( \G16|Add0~13_sumout\ & ( (\G18|SAIDA\(3)) # (\Clock_Sistema~input_o\) ) ) # ( !\G16|Add0~13_sumout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(3),
	dataf => \G16|ALT_INV_Add0~13_sumout\,
	combout => \G18|SAIDA\(3));

-- Location: LABCELL_X83_Y19_N39
\G7|Reg[0][3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][3]~3_combout\ = ( \Clock_Sistema~input_o\ & ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(3),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][3]~3_combout\);

-- Location: LABCELL_X85_Y12_N3
\G7|Reg[3][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][4]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(4) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][4]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(4),
	datad => \G7|ALT_INV_Reg[3][4]~combout\,
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][4]~combout\);

-- Location: LABCELL_X85_Y12_N12
\G7|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~1_combout\ = ( \G18|SAIDA\(4) & ( (!\G4|Mux0~3_combout\) # (\G7|Reg[3][4]~combout\) ) ) # ( !\G18|SAIDA\(4) & ( (\G7|Reg[3][4]~combout\ & \G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][4]~combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Mux27~1_combout\);

-- Location: LABCELL_X88_Y20_N51
\G14|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(4) = ( \Clock_Sistema~input_o\ & ( \G14|SAIDA\(4) & ( \G7|Mux27~1_combout\ ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G14|SAIDA\(4) ) ) # ( \Clock_Sistema~input_o\ & ( !\G14|SAIDA\(4) & ( \G7|Mux27~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux27~1_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(4),
	combout => \G14|SAIDA\(4));

-- Location: LABCELL_X83_Y12_N15
\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( !\G14|SAIDA\(4) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(4))) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( !\G14|SAIDA\(4) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(4))) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111010100000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G14|ALT_INV_SAIDA\(4),
	dataf => \G18|ALT_INV_SAIDA\(4),
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

-- Location: MLABCELL_X84_Y12_N18
\G18|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(4) = ( \G16|Add0~17_sumout\ & ( (\Clock_Sistema~input_o\) # (\G18|SAIDA\(4)) ) ) # ( !\G16|Add0~17_sumout\ & ( (\G18|SAIDA\(4) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(4),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G16|ALT_INV_Add0~17_sumout\,
	combout => \G18|SAIDA\(4));

-- Location: LABCELL_X81_Y12_N27
\G7|Reg[0][4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][4]~4_combout\ = ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(4) & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Reg[0][4]~4_combout\);

-- Location: MLABCELL_X84_Y12_N12
\G7|Reg[3][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][5]~combout\ = ( \G7|Reg[3][5]~combout\ & ( (!\G4|rt[0]~0_combout\) # (\G18|SAIDA\(5)) ) ) # ( !\G7|Reg[3][5]~combout\ & ( (\G18|SAIDA\(5) & \G4|rt[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(5),
	datac => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Reg[3][5]~combout\,
	combout => \G7|Reg[3][5]~combout\);

-- Location: MLABCELL_X87_Y22_N12
\G7|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~1_combout\ = (!\G4|Mux0~3_combout\ & (\G18|SAIDA\(5))) # (\G4|Mux0~3_combout\ & ((\G7|Reg[3][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(5),
	datab => \G7|ALT_INV_Reg[3][5]~combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux26~1_combout\);

-- Location: MLABCELL_X87_Y22_N21
\G14|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(5) = ( \G14|SAIDA\(5) & ( \G7|Mux26~1_combout\ ) ) # ( !\G14|SAIDA\(5) & ( \G7|Mux26~1_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( \G14|SAIDA\(5) & ( !\G7|Mux26~1_combout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G14|ALT_INV_SAIDA\(5),
	dataf => \G7|ALT_INV_Mux26~1_combout\,
	combout => \G14|SAIDA\(5));

-- Location: LABCELL_X83_Y12_N18
\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(5))) ) + ( !\G14|SAIDA\(5) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(5))) ) + ( !\G14|SAIDA\(5) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA\(5),
	dataf => \G14|ALT_INV_SAIDA\(5),
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

-- Location: MLABCELL_X84_Y12_N51
\G18|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(5) = ( \G16|Add0~21_sumout\ & ( (\Clock_Sistema~input_o\) # (\G18|SAIDA\(5)) ) ) # ( !\G16|Add0~21_sumout\ & ( (\G18|SAIDA\(5) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(5),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G16|ALT_INV_Add0~21_sumout\,
	combout => \G18|SAIDA\(5));

-- Location: LABCELL_X81_Y12_N9
\G7|Reg[0][5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][5]~5_combout\ = ( \G18|SAIDA\(5) & ( \Clock_Sistema~input_o\ & ( !\G4|Mux0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datae => \G18|ALT_INV_SAIDA\(5),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Reg[0][5]~5_combout\);

-- Location: LABCELL_X85_Y12_N48
\G7|Reg[3][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][6]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(6) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][6]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(6),
	datac => \G7|ALT_INV_Reg[3][6]~combout\,
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][6]~combout\);

-- Location: LABCELL_X88_Y12_N39
\G7|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~1_combout\ = ( \G7|Reg[3][6]~combout\ & ( (\G4|Mux0~3_combout\) # (\G18|SAIDA\(6)) ) ) # ( !\G7|Reg[3][6]~combout\ & ( (\G18|SAIDA\(6) & !\G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(6),
	datac => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G7|ALT_INV_Reg[3][6]~combout\,
	combout => \G7|Mux25~1_combout\);

-- Location: LABCELL_X88_Y12_N0
\G14|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(6) = ( \G14|SAIDA\(6) & ( \G7|Mux25~1_combout\ ) ) # ( !\G14|SAIDA\(6) & ( \G7|Mux25~1_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( \G14|SAIDA\(6) & ( !\G7|Mux25~1_combout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G14|ALT_INV_SAIDA\(6),
	dataf => \G7|ALT_INV_Mux25~1_combout\,
	combout => \G14|SAIDA\(6));

-- Location: LABCELL_X83_Y12_N21
\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(6))) ) + ( !\G14|SAIDA\(6) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(6))) ) + ( !\G14|SAIDA\(6) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(6),
	dataf => \G14|ALT_INV_SAIDA\(6),
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

-- Location: MLABCELL_X84_Y12_N9
\G18|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(6) = ( \G16|Add0~25_sumout\ & ( (\G18|SAIDA\(6)) # (\Clock_Sistema~input_o\) ) ) # ( !\G16|Add0~25_sumout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA\(6),
	dataf => \G16|ALT_INV_Add0~25_sumout\,
	combout => \G18|SAIDA\(6));

-- Location: LABCELL_X88_Y12_N12
\G7|Reg[0][6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][6]~6_combout\ = (\Clock_Sistema~input_o\ & (\G18|SAIDA\(6) & !\G4|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA\(6),
	datad => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][6]~6_combout\);

-- Location: MLABCELL_X84_Y12_N39
\G7|Reg[3][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][7]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(7) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][7]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(7),
	datac => \G7|ALT_INV_Reg[3][7]~combout\,
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][7]~combout\);

-- Location: MLABCELL_X87_Y12_N48
\G7|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~1_combout\ = ( \G18|SAIDA\(7) & ( (!\G4|Mux0~3_combout\) # (\G7|Reg[3][7]~combout\) ) ) # ( !\G18|SAIDA\(7) & ( (\G7|Reg[3][7]~combout\ & \G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[3][7]~combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	combout => \G7|Mux24~1_combout\);

-- Location: LABCELL_X88_Y12_N18
\G14|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(7) = ( \Clock_Sistema~input_o\ & ( \G14|SAIDA\(7) & ( \G7|Mux24~1_combout\ ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G14|SAIDA\(7) ) ) # ( \Clock_Sistema~input_o\ & ( !\G14|SAIDA\(7) & ( \G7|Mux24~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux24~1_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(7),
	combout => \G14|SAIDA\(7));

-- Location: LABCELL_X83_Y12_N24
\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( !\G14|SAIDA\(7) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(7))) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( !\G14|SAIDA\(7) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(7))) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA\(7),
	datad => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

-- Location: MLABCELL_X84_Y12_N57
\G18|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(7) = ( \G16|Add0~29_sumout\ & ( (\G18|SAIDA\(7)) # (\Clock_Sistema~input_o\) ) ) # ( !\G16|Add0~29_sumout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(7),
	dataf => \G16|ALT_INV_Add0~29_sumout\,
	combout => \G18|SAIDA\(7));

-- Location: MLABCELL_X84_Y12_N48
\G7|Reg[0][7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][7]~7_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(7),
	combout => \G7|Reg[0][7]~7_combout\);

-- Location: MLABCELL_X84_Y13_N9
\G7|Reg[3][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][8]~combout\ = ( \G7|Reg[3][8]~combout\ & ( (!\G4|rt[0]~0_combout\) # (\G18|SAIDA\(8)) ) ) # ( !\G7|Reg[3][8]~combout\ & ( (\G18|SAIDA\(8) & \G4|rt[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(8),
	datad => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Reg[3][8]~combout\,
	combout => \G7|Reg[3][8]~combout\);

-- Location: LABCELL_X83_Y19_N27
\G7|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~1_combout\ = ( \G18|SAIDA\(8) & ( \G4|Mux0~3_combout\ & ( \G7|Reg[3][8]~combout\ ) ) ) # ( !\G18|SAIDA\(8) & ( \G4|Mux0~3_combout\ & ( \G7|Reg[3][8]~combout\ ) ) ) # ( \G18|SAIDA\(8) & ( !\G4|Mux0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg[3][8]~combout\,
	datae => \G18|ALT_INV_SAIDA\(8),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux23~1_combout\);

-- Location: LABCELL_X83_Y19_N21
\G14|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(8) = ( \G14|SAIDA\(8) & ( \G7|Mux23~1_combout\ ) ) # ( !\G14|SAIDA\(8) & ( \G7|Mux23~1_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( \G14|SAIDA\(8) & ( !\G7|Mux23~1_combout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G14|ALT_INV_SAIDA\(8),
	dataf => \G7|ALT_INV_Mux23~1_combout\,
	combout => \G14|SAIDA\(8));

-- Location: LABCELL_X83_Y12_N27
\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(8))) ) + ( !\G14|SAIDA\(8) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(8))) ) + ( !\G14|SAIDA\(8) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G14|ALT_INV_SAIDA\(8),
	datad => \G18|ALT_INV_SAIDA\(8),
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

-- Location: LABCELL_X83_Y12_N54
\G18|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(8) = ( \G16|Add0~33_sumout\ & ( (\Clock_Sistema~input_o\) # (\G18|SAIDA\(8)) ) ) # ( !\G16|Add0~33_sumout\ & ( (\G18|SAIDA\(8) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(8),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G16|ALT_INV_Add0~33_sumout\,
	combout => \G18|SAIDA\(8));

-- Location: MLABCELL_X84_Y13_N51
\G7|Reg[0][8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][8]~8_combout\ = ( \G18|SAIDA\(8) & ( !\G4|Mux0~3_combout\ & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G18|ALT_INV_SAIDA\(8),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][8]~8_combout\);

-- Location: MLABCELL_X84_Y13_N24
\G7|Reg[3][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][9]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Reg[3][9]~combout\ & ( \G18|SAIDA\(9) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][9]~combout\ ) ) # ( \G4|rt[0]~0_combout\ & ( !\G7|Reg[3][9]~combout\ & ( \G18|SAIDA\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(9),
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Reg[3][9]~combout\,
	combout => \G7|Reg[3][9]~combout\);

-- Location: MLABCELL_X84_Y13_N6
\G7|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~1_combout\ = ( \G4|Mux0~3_combout\ & ( \G7|Reg[3][9]~combout\ ) ) # ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[3][9]~combout\,
	datac => \G18|ALT_INV_SAIDA\(9),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux22~1_combout\);

-- Location: MLABCELL_X84_Y13_N21
\G14|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(9) = ( \G7|Mux22~1_combout\ & ( (\G14|SAIDA\(9)) # (\Clock_Sistema~input_o\) ) ) # ( !\G7|Mux22~1_combout\ & ( (!\Clock_Sistema~input_o\ & \G14|SAIDA\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G14|ALT_INV_SAIDA\(9),
	dataf => \G7|ALT_INV_Mux22~1_combout\,
	combout => \G14|SAIDA\(9));

-- Location: LABCELL_X83_Y12_N30
\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( !\G14|SAIDA\(9) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(9))) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( !\G14|SAIDA\(9) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(9))) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100111100000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G14|ALT_INV_SAIDA\(9),
	dataf => \G18|ALT_INV_SAIDA\(9),
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

-- Location: MLABCELL_X84_Y12_N3
\G18|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(9) = ( \G16|Add0~37_sumout\ & ( (\G18|SAIDA\(9)) # (\Clock_Sistema~input_o\) ) ) # ( !\G16|Add0~37_sumout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(9),
	dataf => \G16|ALT_INV_Add0~37_sumout\,
	combout => \G18|SAIDA\(9));

-- Location: MLABCELL_X84_Y13_N18
\G7|Reg[0][9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][9]~9_combout\ = ( \G18|SAIDA\(9) & ( (\Clock_Sistema~input_o\ & !\G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(9),
	combout => \G7|Reg[0][9]~9_combout\);

-- Location: LABCELL_X85_Y12_N6
\G7|Reg[3][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][10]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(10) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][10]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(10),
	datad => \G7|ALT_INV_Reg[3][10]~combout\,
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][10]~combout\);

-- Location: LABCELL_X81_Y12_N48
\G7|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~1_combout\ = (!\G4|Mux0~3_combout\ & ((\G18|SAIDA\(10)))) # (\G4|Mux0~3_combout\ & (\G7|Reg[3][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][10]~combout\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(10),
	combout => \G7|Mux21~1_combout\);

-- Location: LABCELL_X81_Y12_N54
\G14|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(10) = ( \G14|SAIDA\(10) & ( \G7|Mux21~1_combout\ ) ) # ( !\G14|SAIDA\(10) & ( \G7|Mux21~1_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( \G14|SAIDA\(10) & ( !\G7|Mux21~1_combout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G14|ALT_INV_SAIDA\(10),
	dataf => \G7|ALT_INV_Mux21~1_combout\,
	combout => \G14|SAIDA\(10));

-- Location: LABCELL_X83_Y12_N33
\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(10))) ) + ( !\G14|SAIDA\(10) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(10))) ) + ( !\G14|SAIDA\(10) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(10),
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

-- Location: MLABCELL_X84_Y12_N42
\G18|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(10) = ( \G18|SAIDA\(10) & ( (!\Clock_Sistema~input_o\) # (\G16|Add0~41_sumout\) ) ) # ( !\G18|SAIDA\(10) & ( (\G16|Add0~41_sumout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Add0~41_sumout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(10),
	combout => \G18|SAIDA\(10));

-- Location: LABCELL_X81_Y12_N36
\G7|Reg[0][10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][10]~10_combout\ = ( !\G4|Mux0~3_combout\ & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(10),
	datae => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Reg[0][10]~10_combout\);

-- Location: LABCELL_X85_Y12_N57
\G7|Reg[3][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][11]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(11) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][11]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(11),
	datad => \G7|ALT_INV_Reg[3][11]~combout\,
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][11]~combout\);

-- Location: LABCELL_X83_Y13_N21
\G7|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~1_combout\ = ( \G4|Mux0~3_combout\ & ( \G7|Reg[3][11]~combout\ ) ) # ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][11]~combout\,
	datac => \G18|ALT_INV_SAIDA\(11),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux20~1_combout\);

-- Location: LABCELL_X83_Y13_N27
\G14|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(11) = ( \G14|SAIDA\(11) & ( \G7|Mux20~1_combout\ ) ) # ( !\G14|SAIDA\(11) & ( \G7|Mux20~1_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( \G14|SAIDA\(11) & ( !\G7|Mux20~1_combout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G14|ALT_INV_SAIDA\(11),
	dataf => \G7|ALT_INV_Mux20~1_combout\,
	combout => \G14|SAIDA\(11));

-- Location: LABCELL_X83_Y12_N36
\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(11))) ) + ( !\G14|SAIDA\(11) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(11))) ) + ( !\G14|SAIDA\(11) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G14|ALT_INV_SAIDA\(11),
	datad => \G18|ALT_INV_SAIDA\(11),
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

-- Location: MLABCELL_X84_Y12_N0
\G18|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(11) = ( \G16|Add0~45_sumout\ & ( (\Clock_Sistema~input_o\) # (\G18|SAIDA\(11)) ) ) # ( !\G16|Add0~45_sumout\ & ( (\G18|SAIDA\(11) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(11),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G16|ALT_INV_Add0~45_sumout\,
	combout => \G18|SAIDA\(11));

-- Location: MLABCELL_X82_Y12_N3
\G7|Reg[0][11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][11]~11_combout\ = ( \Clock_Sistema~input_o\ & ( (!\G4|Mux0~3_combout\ & \G18|SAIDA\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(11),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Reg[0][11]~11_combout\);

-- Location: LABCELL_X85_Y12_N15
\G7|Reg[3][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][12]~combout\ = ( \G7|Reg[3][12]~combout\ & ( (!\G4|rt[0]~0_combout\) # (\G18|SAIDA\(12)) ) ) # ( !\G7|Reg[3][12]~combout\ & ( (\G18|SAIDA\(12) & \G4|rt[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(12),
	datac => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Reg[3][12]~combout\,
	combout => \G7|Reg[3][12]~combout\);

-- Location: LABCELL_X85_Y12_N0
\G7|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~1_combout\ = ( \G7|Reg[3][12]~combout\ & ( (\G4|Mux0~3_combout\) # (\G18|SAIDA\(12)) ) ) # ( !\G7|Reg[3][12]~combout\ & ( (\G18|SAIDA\(12) & !\G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(12),
	datac => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G7|ALT_INV_Reg[3][12]~combout\,
	combout => \G7|Mux19~1_combout\);

-- Location: LABCELL_X88_Y12_N51
\G14|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(12) = ( \Clock_Sistema~input_o\ & ( \G14|SAIDA\(12) & ( \G7|Mux19~1_combout\ ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G14|SAIDA\(12) ) ) # ( \Clock_Sistema~input_o\ & ( !\G14|SAIDA\(12) & ( \G7|Mux19~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux19~1_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(12),
	combout => \G14|SAIDA\(12));

-- Location: LABCELL_X83_Y12_N39
\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(12))) ) + ( !\G14|SAIDA\(12) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(12))) ) + ( !\G14|SAIDA\(12) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(12),
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

-- Location: MLABCELL_X84_Y12_N6
\G18|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(12) = ( \G18|SAIDA\(12) & ( (!\Clock_Sistema~input_o\) # (\G16|Add0~49_sumout\) ) ) # ( !\G18|SAIDA\(12) & ( (\G16|Add0~49_sumout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Add0~49_sumout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(12),
	combout => \G18|SAIDA\(12));

-- Location: LABCELL_X81_Y12_N18
\G7|Reg[0][12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][12]~12_combout\ = ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(12),
	combout => \G7|Reg[0][12]~12_combout\);

-- Location: MLABCELL_X84_Y13_N42
\G7|Reg[3][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][13]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G7|Reg[3][13]~combout\ & ( \G18|SAIDA\(13) ) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][13]~combout\ ) ) # ( \G4|rt[0]~0_combout\ & ( !\G7|Reg[3][13]~combout\ & ( \G18|SAIDA\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(13),
	datae => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Reg[3][13]~combout\,
	combout => \G7|Reg[3][13]~combout\);

-- Location: MLABCELL_X84_Y13_N39
\G7|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~1_combout\ = ( \G7|Reg[3][13]~combout\ & ( (\G4|Mux0~3_combout\) # (\G18|SAIDA\(13)) ) ) # ( !\G7|Reg[3][13]~combout\ & ( (\G18|SAIDA\(13) & !\G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(13),
	datac => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G7|ALT_INV_Reg[3][13]~combout\,
	combout => \G7|Mux18~1_combout\);

-- Location: MLABCELL_X87_Y22_N24
\G14|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(13) = ( \G7|Mux18~1_combout\ & ( \G14|SAIDA\(13) ) ) # ( !\G7|Mux18~1_combout\ & ( \G14|SAIDA\(13) & ( !\Clock_Sistema~input_o\ ) ) ) # ( \G7|Mux18~1_combout\ & ( !\G14|SAIDA\(13) & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G7|ALT_INV_Mux18~1_combout\,
	dataf => \G14|ALT_INV_SAIDA\(13),
	combout => \G14|SAIDA\(13));

-- Location: LABCELL_X83_Y12_N42
\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(13))) ) + ( !\G14|SAIDA\(13) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(13))) ) + ( !\G14|SAIDA\(13) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(13),
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

-- Location: MLABCELL_X84_Y12_N24
\G18|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(13) = ( \G16|Add0~53_sumout\ & ( (\G18|SAIDA\(13)) # (\Clock_Sistema~input_o\) ) ) # ( !\G16|Add0~53_sumout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA\(13),
	dataf => \G16|ALT_INV_Add0~53_sumout\,
	combout => \G18|SAIDA\(13));

-- Location: MLABCELL_X84_Y13_N15
\G7|Reg[0][13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][13]~13_combout\ = ( \Clock_Sistema~input_o\ & ( (\G18|SAIDA\(13) & !\G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(13),
	datac => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Reg[0][13]~13_combout\);

-- Location: LABCELL_X85_Y12_N9
\G7|Reg[3][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][14]~combout\ = ( \G7|Reg[3][14]~combout\ & ( (!\G4|rt[0]~0_combout\) # (\G18|SAIDA\(14)) ) ) # ( !\G7|Reg[3][14]~combout\ & ( (\G18|SAIDA\(14) & \G4|rt[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(14),
	datac => \G4|ALT_INV_rt[0]~0_combout\,
	dataf => \G7|ALT_INV_Reg[3][14]~combout\,
	combout => \G7|Reg[3][14]~combout\);

-- Location: MLABCELL_X87_Y12_N57
\G7|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~1_combout\ = ( \G18|SAIDA\(14) & ( (!\G4|Mux0~3_combout\) # (\G7|Reg[3][14]~combout\) ) ) # ( !\G18|SAIDA\(14) & ( (\G4|Mux0~3_combout\ & \G7|Reg[3][14]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \G7|ALT_INV_Reg[3][14]~combout\,
	dataf => \G18|ALT_INV_SAIDA\(14),
	combout => \G7|Mux17~1_combout\);

-- Location: MLABCELL_X87_Y12_N15
\G14|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(14) = ( \G7|Mux17~1_combout\ & ( (\Clock_Sistema~input_o\) # (\G14|SAIDA\(14)) ) ) # ( !\G7|Mux17~1_combout\ & ( (\G14|SAIDA\(14) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(14),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G7|ALT_INV_Mux17~1_combout\,
	combout => \G14|SAIDA\(14));

-- Location: LABCELL_X83_Y12_N45
\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(14))) ) + ( !\G14|SAIDA\(14) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(14))) ) + ( !\G14|SAIDA\(14) $ (((!\G4|Mux0~3_combout\) # (!\Clock_Sistema~input_o\))) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(14),
	dataf => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

-- Location: MLABCELL_X84_Y12_N33
\G18|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(14) = ( \G18|SAIDA\(14) & ( (!\Clock_Sistema~input_o\) # (\G16|Add0~57_sumout\) ) ) # ( !\G18|SAIDA\(14) & ( (\G16|Add0~57_sumout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(14),
	combout => \G18|SAIDA\(14));

-- Location: MLABCELL_X87_Y12_N21
\G7|Reg[0][14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][14]~14_combout\ = ( \Clock_Sistema~input_o\ & ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(14),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][14]~14_combout\);

-- Location: LABCELL_X85_Y12_N18
\G7|Reg[3][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[3][15]~combout\ = ( \G4|rt[0]~0_combout\ & ( \G18|SAIDA\(15) ) ) # ( !\G4|rt[0]~0_combout\ & ( \G7|Reg[3][15]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(15),
	datac => \G7|ALT_INV_Reg[3][15]~combout\,
	dataf => \G4|ALT_INV_rt[0]~0_combout\,
	combout => \G7|Reg[3][15]~combout\);

-- Location: MLABCELL_X84_Y12_N15
\G7|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~1_combout\ = ( \G18|SAIDA\(15) & ( (!\G4|Mux0~3_combout\) # (\G7|Reg[3][15]~combout\) ) ) # ( !\G18|SAIDA\(15) & ( (\G7|Reg[3][15]~combout\ & \G4|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[3][15]~combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(15),
	combout => \G7|Mux16~1_combout\);

-- Location: LABCELL_X88_Y12_N33
\G14|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(15) = ( \Clock_Sistema~input_o\ & ( \G14|SAIDA\(15) & ( \G7|Mux16~1_combout\ ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G14|SAIDA\(15) ) ) # ( \Clock_Sistema~input_o\ & ( !\G14|SAIDA\(15) & ( \G7|Mux16~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux16~1_combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(15),
	combout => \G14|SAIDA\(15));

-- Location: LABCELL_X83_Y12_N48
\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( !\G14|SAIDA\(15) $ (((!\Clock_Sistema~input_o\) # (!\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(15))) ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G14|ALT_INV_SAIDA\(15),
	dataf => \G18|ALT_INV_SAIDA\(15),
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

-- Location: LABCELL_X83_Y12_N57
\G18|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(15) = (!\Clock_Sistema~input_o\ & ((\G18|SAIDA\(15)))) # (\Clock_Sistema~input_o\ & (\G16|Add0~61_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~61_sumout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(15),
	combout => \G18|SAIDA\(15));

-- Location: LABCELL_X85_Y12_N27
\G7|Reg[0][15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][15]~15_combout\ = ( !\G4|Mux0~3_combout\ & ( (\G18|SAIDA\(15) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(15),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Reg[0][15]~15_combout\);

-- Location: LABCELL_X85_Y12_N45
\G7|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~0_combout\ = ( \G4|Mux0~3_combout\ & ( (!\Clock_Sistema~input_o\) # (\G7|Reg[3][0]~combout\) ) ) # ( !\G4|Mux0~3_combout\ & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \G7|ALT_INV_Reg[3][0]~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux31~0_combout\);

-- Location: MLABCELL_X84_Y12_N45
\G7|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~0_combout\ = ( \G7|Reg[3][1]~combout\ & ( (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(1)) # (\G4|Mux0~3_combout\))) ) ) # ( !\G7|Reg[3][1]~combout\ & ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(1),
	dataf => \G7|ALT_INV_Reg[3][1]~combout\,
	combout => \G7|Mux30~0_combout\);

-- Location: MLABCELL_X87_Y12_N9
\G7|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~0_combout\ = ( \Clock_Sistema~input_o\ & ( \G4|Mux0~3_combout\ & ( \G7|Reg[3][2]~combout\ ) ) ) # ( !\Clock_Sistema~input_o\ & ( \G4|Mux0~3_combout\ ) ) # ( \Clock_Sistema~input_o\ & ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(2) ) ) ) # ( 
-- !\Clock_Sistema~input_o\ & ( !\G4|Mux0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][2]~combout\,
	datac => \G18|ALT_INV_SAIDA\(2),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux29~0_combout\);

-- Location: MLABCELL_X84_Y14_N12
\G7|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~0_combout\ = ( \G18|SAIDA\(3) & ( \G4|Mux0~3_combout\ & ( (\G7|Reg[3][3]~combout\ & \Clock_Sistema~input_o\) ) ) ) # ( !\G18|SAIDA\(3) & ( \G4|Mux0~3_combout\ & ( (\G7|Reg[3][3]~combout\ & \Clock_Sistema~input_o\) ) ) ) # ( \G18|SAIDA\(3) & ( 
-- !\G4|Mux0~3_combout\ & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][3]~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G18|ALT_INV_SAIDA\(3),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux28~0_combout\);

-- Location: LABCELL_X80_Y18_N27
\G7|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~0_combout\ = ( \G18|SAIDA\(4) & ( \G4|Mux0~3_combout\ & ( (\G7|Reg[3][4]~combout\ & \Clock_Sistema~input_o\) ) ) ) # ( !\G18|SAIDA\(4) & ( \G4|Mux0~3_combout\ & ( (\G7|Reg[3][4]~combout\ & \Clock_Sistema~input_o\) ) ) ) # ( \G18|SAIDA\(4) & ( 
-- !\G4|Mux0~3_combout\ & ( \Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[3][4]~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G18|ALT_INV_SAIDA\(4),
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux27~0_combout\);

-- Location: MLABCELL_X84_Y12_N36
\G7|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~0_combout\ = ( \G7|Reg[3][5]~combout\ & ( (\Clock_Sistema~input_o\ & ((\G4|Mux0~3_combout\) # (\G18|SAIDA\(5)))) ) ) # ( !\G7|Reg[3][5]~combout\ & ( (\G18|SAIDA\(5) & (\Clock_Sistema~input_o\ & !\G4|Mux0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(5),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G7|ALT_INV_Reg[3][5]~combout\,
	combout => \G7|Mux26~0_combout\);

-- Location: LABCELL_X88_Y12_N54
\G7|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~0_combout\ = ( \G4|Mux0~3_combout\ & ( \Clock_Sistema~input_o\ & ( \G7|Reg[3][6]~combout\ ) ) ) # ( !\G4|Mux0~3_combout\ & ( \Clock_Sistema~input_o\ & ( \G18|SAIDA\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(6),
	datac => \G7|ALT_INV_Reg[3][6]~combout\,
	datae => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Mux25~0_combout\);

-- Location: MLABCELL_X87_Y12_N54
\G7|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~0_combout\ = ( \G7|Reg[3][7]~combout\ & ( (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(7)) # (\G4|Mux0~3_combout\))) ) ) # ( !\G7|Reg[3][7]~combout\ & ( (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(7),
	dataf => \G7|ALT_INV_Reg[3][7]~combout\,
	combout => \G7|Mux24~0_combout\);

-- Location: LABCELL_X83_Y19_N33
\G7|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~0_combout\ = ( \Clock_Sistema~input_o\ & ( \G4|Mux0~3_combout\ & ( \G7|Reg[3][8]~combout\ ) ) ) # ( \Clock_Sistema~input_o\ & ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(8),
	datac => \G7|ALT_INV_Reg[3][8]~combout\,
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux23~0_combout\);

-- Location: MLABCELL_X84_Y13_N57
\G7|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~0_combout\ = ( \G18|SAIDA\(9) & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux0~3_combout\) # (\G7|Reg[3][9]~combout\))) ) ) # ( !\G18|SAIDA\(9) & ( (\G7|Reg[3][9]~combout\ & (\G4|Mux0~3_combout\ & \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][9]~combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(9),
	combout => \G7|Mux22~0_combout\);

-- Location: LABCELL_X81_Y12_N12
\G7|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~0_combout\ = ( \G18|SAIDA\(10) & ( \G7|Reg[3][10]~combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( !\G18|SAIDA\(10) & ( \G7|Reg[3][10]~combout\ & ( (\G4|Mux0~3_combout\ & \Clock_Sistema~input_o\) ) ) ) # ( \G18|SAIDA\(10) & ( 
-- !\G7|Reg[3][10]~combout\ & ( (!\G4|Mux0~3_combout\ & \Clock_Sistema~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G18|ALT_INV_SAIDA\(10),
	dataf => \G7|ALT_INV_Reg[3][10]~combout\,
	combout => \G7|Mux21~0_combout\);

-- Location: LABCELL_X83_Y13_N39
\G7|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~0_combout\ = ( \Clock_Sistema~input_o\ & ( \G4|Mux0~3_combout\ & ( \G7|Reg[3][11]~combout\ ) ) ) # ( \Clock_Sistema~input_o\ & ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[3][11]~combout\,
	datac => \G18|ALT_INV_SAIDA\(11),
	datae => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux20~0_combout\);

-- Location: LABCELL_X81_Y12_N45
\G7|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~0_combout\ = ( \G4|Mux0~3_combout\ & ( \G18|SAIDA\(12) & ( (\Clock_Sistema~input_o\ & \G7|Reg[3][12]~combout\) ) ) ) # ( !\G4|Mux0~3_combout\ & ( \G18|SAIDA\(12) & ( \Clock_Sistema~input_o\ ) ) ) # ( \G4|Mux0~3_combout\ & ( !\G18|SAIDA\(12) & ( 
-- (\Clock_Sistema~input_o\ & \G7|Reg[3][12]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[3][12]~combout\,
	datae => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(12),
	combout => \G7|Mux19~0_combout\);

-- Location: MLABCELL_X84_Y13_N36
\G7|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~0_combout\ = ( \G4|Mux0~3_combout\ & ( (\G7|Reg[3][13]~combout\ & \Clock_Sistema~input_o\) ) ) # ( !\G4|Mux0~3_combout\ & ( (\G18|SAIDA\(13) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(13),
	datab => \G7|ALT_INV_Reg[3][13]~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G7|Mux18~0_combout\);

-- Location: MLABCELL_X87_Y12_N45
\G7|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~0_combout\ = ( \G18|SAIDA\(14) & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux0~3_combout\) # (\G7|Reg[3][14]~combout\))) ) ) # ( !\G18|SAIDA\(14) & ( (\Clock_Sistema~input_o\ & (\G7|Reg[3][14]~combout\ & \G4|Mux0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[3][14]~combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G18|ALT_INV_SAIDA\(14),
	combout => \G7|Mux17~0_combout\);

-- Location: MLABCELL_X82_Y12_N24
\G7|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~0_combout\ = ( \G7|Reg[3][15]~combout\ & ( (\Clock_Sistema~input_o\ & ((\G18|SAIDA\(15)) # (\G4|Mux0~3_combout\))) ) ) # ( !\G7|Reg[3][15]~combout\ & ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G18|SAIDA\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G18|ALT_INV_SAIDA\(15),
	dataf => \G7|ALT_INV_Reg[3][15]~combout\,
	combout => \G7|Mux16~0_combout\);

-- Location: LABCELL_X45_Y48_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


