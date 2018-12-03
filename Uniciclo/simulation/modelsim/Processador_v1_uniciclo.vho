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

-- DATE "12/02/2018 01:05:19"

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

-- Design Ports Information
-- SomadorToPc_outWaveform[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[8]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[9]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[10]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[11]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[12]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[14]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SomadorToPc_outWaveform[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[9]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[10]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[11]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[12]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[14]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaPc_outWaveform[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[9]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[10]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[14]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegA_outWaveform[15]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[3]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[8]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[9]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[10]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[11]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[12]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[13]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[14]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaRegB_outWaveform[15]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplexador_to_writeRegister_outWaveform[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_multiplexador_outWaveform[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Control_outWaveform[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register1_outWaveform[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_register2_outWaveform[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_controlULA_outWaveform[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_extensorDeSinal_outWaveform[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[8]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[10]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_to_Jump_outWaveform[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[7]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[9]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[10]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[11]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[12]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[13]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[14]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_to_writeRegister_outWaveform[15]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[3]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[5]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[10]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[14]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_mult_to_mult_outWaveform[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[6]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[8]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[9]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[10]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[11]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[12]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[13]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[14]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_to_PC_outWaveform[15]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[3]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[7]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[11]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[13]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[14]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_adress_to_RAM_outWaveform[15]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_cont_sincz1	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_cont_sincz2	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_cont_sincz3	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funcionou	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_regdest_OUT	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_origialu_OUT[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_memparareg_OUT	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevereg_OUT	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_lemem_OUT	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_escrevemem_OUT	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_branch_OUT	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_aluSRC_OUT	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_jump_OUT	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \Clock_Sistema~inputCLKENA0_outclk\ : std_logic;
SIGNAL \G4|op[0]~0_combout\ : std_logic;
SIGNAL \G5|origalu[1]~0_combout\ : std_logic;
SIGNAL \G16|ZeroULA~0_combout\ : std_logic;
SIGNAL \G16|ZeroULA~1_combout\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G12|SAIDA~1_combout\ : std_logic;
SIGNAL \G13|SAIDA~1_combout\ : std_logic;
SIGNAL \G4|Mux2~0_combout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~1_combout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G10|Add0~2\ : std_logic;
SIGNAL \G10|Add0~6\ : std_logic;
SIGNAL \G10|Add0~9_sumout\ : std_logic;
SIGNAL \G12|SAIDA~4_combout\ : std_logic;
SIGNAL \G13|SAIDA~4_combout\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|tipoi[3]~2_combout\ : std_logic;
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
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G10|Add0~26\ : std_logic;
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
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G4|tipoi[0]~0_combout\ : std_logic;
SIGNAL \G10|Add0~1_sumout\ : std_logic;
SIGNAL \G12|SAIDA~2_combout\ : std_logic;
SIGNAL \G13|SAIDA~2_combout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G10|Add0~5_sumout\ : std_logic;
SIGNAL \G12|SAIDA~3_combout\ : std_logic;
SIGNAL \G13|SAIDA~3_combout\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G4|Mux6~1_combout\ : std_logic;
SIGNAL \G5|regdest~0_combout\ : std_logic;
SIGNAL \G5|escrevereg~combout\ : std_logic;
SIGNAL \G4|Mux5~0_combout\ : std_logic;
SIGNAL \G4|tipoi[2]~3_combout\ : std_logic;
SIGNAL \G5|regdest~combout\ : std_logic;
SIGNAL \G6|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|rd[0]~0_combout\ : std_logic;
SIGNAL \G4|Mux3~0_combout\ : std_logic;
SIGNAL \G6|SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G6|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G7|Mux15~1_combout\ : std_logic;
SIGNAL \G16|Mux15~0_combout\ : std_logic;
SIGNAL \G4|funct[0]~0_combout\ : std_logic;
SIGNAL \G16|Mux15~1_combout\ : std_logic;
SIGNAL \G4|Mux3~1_combout\ : std_logic;
SIGNAL \G7|Reg[1][0]~0_combout\ : std_logic;
SIGNAL \G7|Reg[1][0]~3_combout\ : std_logic;
SIGNAL \G7|Reg[1][15]~combout\ : std_logic;
SIGNAL \G14|SAIDA~15_combout\ : std_logic;
SIGNAL \G16|Mux13~1_combout\ : std_logic;
SIGNAL \G7|Mux15~2_combout\ : std_logic;
SIGNAL \G18|SAIDA~56_combout\ : std_logic;
SIGNAL \G5|Equal1~0_combout\ : std_logic;
SIGNAL \G5|memparareg~combout\ : std_logic;
SIGNAL \G4|Equal0~0_combout\ : std_logic;
SIGNAL \G7|Reg[1][4]~combout\ : std_logic;
SIGNAL \G14|SAIDA~4_combout\ : std_logic;
SIGNAL \G16|Mux11~1_combout\ : std_logic;
SIGNAL \G7|Mux12~0_combout\ : std_logic;
SIGNAL \G7|Mux12~1_combout\ : std_logic;
SIGNAL \G7|Reg~2_combout\ : std_logic;
SIGNAL \G7|Reg[1][0]~combout\ : std_logic;
SIGNAL \G7|Mux31~0_combout\ : std_logic;
SIGNAL \G7|Mux11~0_combout\ : std_logic;
SIGNAL \G16|Mux11~0_combout\ : std_logic;
SIGNAL \G17|ram.we_a~0_combout\ : std_logic;
SIGNAL \G7|Reg~1_combout\ : std_logic;
SIGNAL \G14|SAIDA~0_combout\ : std_logic;
SIGNAL \G16|Add1~66_cout\ : std_logic;
SIGNAL \G16|Add1~2\ : std_logic;
SIGNAL \G16|Add1~6\ : std_logic;
SIGNAL \G16|Add1~10\ : std_logic;
SIGNAL \G16|Add1~13_sumout\ : std_logic;
SIGNAL \G16|Mux12~0_combout\ : std_logic;
SIGNAL \G7|Mux14~0_combout\ : std_logic;
SIGNAL \G16|Add1~5_sumout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G16|Mux14~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \G17|ram~80_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \G17|ram~96_combout\ : std_logic;
SIGNAL \G17|ram~112_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \G17|ram~32_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \G17|ram~48_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \G17|ram~16_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \G17|ram~0_combout\ : std_logic;
SIGNAL \G17|ram~401_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \G17|ram~64_combout\ : std_logic;
SIGNAL \G17|ram~272_combout\ : std_logic;
SIGNAL \G18|SAIDA~2_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \G17|ram~256_combout\ : std_logic;
SIGNAL \G16|Add1~1_sumout\ : std_logic;
SIGNAL \G16|Mux15~3_combout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G18|SAIDA~3_combout\ : std_logic;
SIGNAL \G16|Mux12~1_combout\ : std_logic;
SIGNAL \G18|SAIDA~0_combout\ : std_logic;
SIGNAL \G16|Mux13~2_combout\ : std_logic;
SIGNAL \G16|Mux14~1_combout\ : std_logic;
SIGNAL \G16|Mux14~2_combout\ : std_logic;
SIGNAL \G16|Mux15~4_combout\ : std_logic;
SIGNAL \G16|Mux13~3_combout\ : std_logic;
SIGNAL \G16|Add1~9_sumout\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G17|ram~280_combout\ : std_logic;
SIGNAL \G18|SAIDA~4_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \G17|ram~208_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \G17|ram~224_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \G17|ram~176_combout\ : std_logic;
SIGNAL \rtl~16_combout\ : std_logic;
SIGNAL \G17|ram~160_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \G17|ram~144_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \G17|ram~128_combout\ : std_logic;
SIGNAL \G17|ram~405_combout\ : std_logic;
SIGNAL \G17|ram~240_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \G17|ram~192_combout\ : std_logic;
SIGNAL \G17|ram~276_combout\ : std_logic;
SIGNAL \G18|SAIDA~5_combout\ : std_logic;
SIGNAL \G7|Mux15~0_combout\ : std_logic;
SIGNAL \G16|Mux15~2_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \G7|Mux30~0_combout\ : std_logic;
SIGNAL \G17|ram~113_combout\ : std_logic;
SIGNAL \G17|ram~81_combout\ : std_logic;
SIGNAL \G17|ram~97_combout\ : std_logic;
SIGNAL \G17|ram~17_combout\ : std_logic;
SIGNAL \G17|ram~33_combout\ : std_logic;
SIGNAL \G17|ram~49_combout\ : std_logic;
SIGNAL \G17|ram~1_combout\ : std_logic;
SIGNAL \G17|ram~409_combout\ : std_logic;
SIGNAL \G17|ram~65_combout\ : std_logic;
SIGNAL \G17|ram~281_combout\ : std_logic;
SIGNAL \G17|ram~209_combout\ : std_logic;
SIGNAL \G17|ram~241_combout\ : std_logic;
SIGNAL \G17|ram~225_combout\ : std_logic;
SIGNAL \G17|ram~161_combout\ : std_logic;
SIGNAL \G17|ram~177_combout\ : std_logic;
SIGNAL \G17|ram~145_combout\ : std_logic;
SIGNAL \G17|ram~129_combout\ : std_logic;
SIGNAL \G17|ram~413_combout\ : std_logic;
SIGNAL \G17|ram~193_combout\ : std_logic;
SIGNAL \G17|ram~285_combout\ : std_logic;
SIGNAL \G17|ram~257_combout\ : std_logic;
SIGNAL \G18|SAIDA~6_combout\ : std_logic;
SIGNAL \G18|SAIDA~7_combout\ : std_logic;
SIGNAL \G7|Reg[1][1]~combout\ : std_logic;
SIGNAL \G14|SAIDA~1_combout\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G18|SAIDA~1_combout\ : std_logic;
SIGNAL \G7|Mux29~0_combout\ : std_logic;
SIGNAL \G17|ram~18_combout\ : std_logic;
SIGNAL \G17|ram~34_combout\ : std_logic;
SIGNAL \G17|ram~50_combout\ : std_logic;
SIGNAL \G17|ram~2_combout\ : std_logic;
SIGNAL \G17|ram~417_combout\ : std_logic;
SIGNAL \G17|ram~98_combout\ : std_logic;
SIGNAL \G17|ram~114_combout\ : std_logic;
SIGNAL \G17|ram~82_combout\ : std_logic;
SIGNAL \G17|ram~66_combout\ : std_logic;
SIGNAL \G17|ram~289_combout\ : std_logic;
SIGNAL \G18|SAIDA~8_combout\ : std_logic;
SIGNAL \G17|ram~258_combout\ : std_logic;
SIGNAL \G18|SAIDA~9_combout\ : std_logic;
SIGNAL \G17|ram~210_combout\ : std_logic;
SIGNAL \G17|ram~226_combout\ : std_logic;
SIGNAL \G17|ram~242_combout\ : std_logic;
SIGNAL \G17|ram~178_combout\ : std_logic;
SIGNAL \G17|ram~162_combout\ : std_logic;
SIGNAL \G17|ram~146_combout\ : std_logic;
SIGNAL \G17|ram~130_combout\ : std_logic;
SIGNAL \G17|ram~421_combout\ : std_logic;
SIGNAL \G17|ram~194_combout\ : std_logic;
SIGNAL \G17|ram~293_combout\ : std_logic;
SIGNAL \G18|SAIDA~10_combout\ : std_logic;
SIGNAL \G7|Reg[1][2]~combout\ : std_logic;
SIGNAL \G14|SAIDA~2_combout\ : std_logic;
SIGNAL \G7|Mux13~0_combout\ : std_logic;
SIGNAL \G16|Mux13~0_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \G7|Mux28~0_combout\ : std_logic;
SIGNAL \G7|Mux28~1_combout\ : std_logic;
SIGNAL \G17|ram~243_combout\ : std_logic;
SIGNAL \G17|ram~211_combout\ : std_logic;
SIGNAL \G17|ram~227_combout\ : std_logic;
SIGNAL \G17|ram~179_combout\ : std_logic;
SIGNAL \G17|ram~163_combout\ : std_logic;
SIGNAL \G17|ram~147_combout\ : std_logic;
SIGNAL \G17|ram~131_combout\ : std_logic;
SIGNAL \G17|ram~425_combout\ : std_logic;
SIGNAL \G17|ram~195_combout\ : std_logic;
SIGNAL \G17|ram~297_combout\ : std_logic;
SIGNAL \G17|ram~83_combout\ : std_logic;
SIGNAL \G17|ram~115_combout\ : std_logic;
SIGNAL \G17|ram~99_combout\ : std_logic;
SIGNAL \G17|ram~51_combout\ : std_logic;
SIGNAL \G17|ram~35_combout\ : std_logic;
SIGNAL \G17|ram~19_combout\ : std_logic;
SIGNAL \G17|ram~3_combout\ : std_logic;
SIGNAL \G17|ram~429_combout\ : std_logic;
SIGNAL \G17|ram~67_combout\ : std_logic;
SIGNAL \G17|ram~301_combout\ : std_logic;
SIGNAL \G16|Mux13~4_combout\ : std_logic;
SIGNAL \G17|ram~259_combout\ : std_logic;
SIGNAL \G18|SAIDA~11_combout\ : std_logic;
SIGNAL \G18|SAIDA~12_combout\ : std_logic;
SIGNAL \G7|Reg[1][3]~combout\ : std_logic;
SIGNAL \G14|SAIDA~3_combout\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G16|Mux12~2_combout\ : std_logic;
SIGNAL \G7|Mux27~0_combout\ : std_logic;
SIGNAL \G17|ram~116_combout\ : std_logic;
SIGNAL \G17|ram~100_combout\ : std_logic;
SIGNAL \G17|ram~84_combout\ : std_logic;
SIGNAL \G17|ram~36_combout\ : std_logic;
SIGNAL \G17|ram~52_combout\ : std_logic;
SIGNAL \G17|ram~20_combout\ : std_logic;
SIGNAL \G17|ram~4_combout\ : std_logic;
SIGNAL \G17|ram~433_combout\ : std_logic;
SIGNAL \G17|ram~68_combout\ : std_logic;
SIGNAL \G17|ram~305_combout\ : std_logic;
SIGNAL \G17|ram~260_combout\ : std_logic;
SIGNAL \G18|SAIDA~13_combout\ : std_logic;
SIGNAL \G17|ram~148_combout\ : std_logic;
SIGNAL \G17|ram~164_combout\ : std_logic;
SIGNAL \G17|ram~180_combout\ : std_logic;
SIGNAL \G17|ram~132_combout\ : std_logic;
SIGNAL \G17|ram~437_combout\ : std_logic;
SIGNAL \G17|ram~228_combout\ : std_logic;
SIGNAL \G17|ram~212_combout\ : std_logic;
SIGNAL \G17|ram~244_combout\ : std_logic;
SIGNAL \G17|ram~196_combout\ : std_logic;
SIGNAL \G17|ram~309_combout\ : std_logic;
SIGNAL \G18|SAIDA~14_combout\ : std_logic;
SIGNAL \G16|Add1~14\ : std_logic;
SIGNAL \G16|Add1~17_sumout\ : std_logic;
SIGNAL \G16|Mux11~2_combout\ : std_logic;
SIGNAL \G7|Reg[1][14]~combout\ : std_logic;
SIGNAL \G7|Mux17~0_combout\ : std_logic;
SIGNAL \G17|ram~270_combout\ : std_logic;
SIGNAL \G18|SAIDA~51_combout\ : std_logic;
SIGNAL \G17|ram~94_combout\ : std_logic;
SIGNAL \G17|ram~126_combout\ : std_logic;
SIGNAL \G17|ram~110_combout\ : std_logic;
SIGNAL \G17|ram~46_combout\ : std_logic;
SIGNAL \G17|ram~62_combout\ : std_logic;
SIGNAL \G17|ram~30_combout\ : std_logic;
SIGNAL \G17|ram~14_combout\ : std_logic;
SIGNAL \G17|ram~513_combout\ : std_logic;
SIGNAL \G17|ram~78_combout\ : std_logic;
SIGNAL \G17|ram~385_combout\ : std_logic;
SIGNAL \G17|ram~254_combout\ : std_logic;
SIGNAL \G17|ram~222_combout\ : std_logic;
SIGNAL \G17|ram~238_combout\ : std_logic;
SIGNAL \G17|ram~174_combout\ : std_logic;
SIGNAL \G17|ram~158_combout\ : std_logic;
SIGNAL \G17|ram~190_combout\ : std_logic;
SIGNAL \G17|ram~142_combout\ : std_logic;
SIGNAL \G17|ram~517_combout\ : std_logic;
SIGNAL \G17|ram~206_combout\ : std_logic;
SIGNAL \G17|ram~389_combout\ : std_logic;
SIGNAL \G14|SAIDA~14_combout\ : std_logic;
SIGNAL \G7|Reg[1][13]~combout\ : std_logic;
SIGNAL \G7|Mux18~0_combout\ : std_logic;
SIGNAL \G17|ram~269_combout\ : std_logic;
SIGNAL \G18|SAIDA~47_combout\ : std_logic;
SIGNAL \G14|SAIDA~13_combout\ : std_logic;
SIGNAL \G7|Reg[1][12]~combout\ : std_logic;
SIGNAL \G14|SAIDA~12_combout\ : std_logic;
SIGNAL \G7|Reg[1][11]~combout\ : std_logic;
SIGNAL \G14|SAIDA~11_combout\ : std_logic;
SIGNAL \G18|SAIDA~39_combout\ : std_logic;
SIGNAL \G7|Reg[1][10]~combout\ : std_logic;
SIGNAL \G14|SAIDA~10_combout\ : std_logic;
SIGNAL \G7|Reg[1][9]~combout\ : std_logic;
SIGNAL \G7|Mux22~0_combout\ : std_logic;
SIGNAL \G17|ram~249_combout\ : std_logic;
SIGNAL \G17|ram~169_combout\ : std_logic;
SIGNAL \G17|ram~153_combout\ : std_logic;
SIGNAL \G17|ram~185_combout\ : std_logic;
SIGNAL \G17|ram~137_combout\ : std_logic;
SIGNAL \G17|ram~477_combout\ : std_logic;
SIGNAL \G17|ram~233_combout\ : std_logic;
SIGNAL \G17|ram~217_combout\ : std_logic;
SIGNAL \G17|ram~201_combout\ : std_logic;
SIGNAL \G17|ram~349_combout\ : std_logic;
SIGNAL \G14|SAIDA~9_combout\ : std_logic;
SIGNAL \G7|Mux23~0_combout\ : std_logic;
SIGNAL \G17|ram~56_combout\ : std_logic;
SIGNAL \G17|ram~40_combout\ : std_logic;
SIGNAL \G17|ram~24_combout\ : std_logic;
SIGNAL \G17|ram~8_combout\ : std_logic;
SIGNAL \G17|ram~465_combout\ : std_logic;
SIGNAL \G17|ram~88_combout\ : std_logic;
SIGNAL \G17|ram~104_combout\ : std_logic;
SIGNAL \G17|ram~120_combout\ : std_logic;
SIGNAL \G17|ram~72_combout\ : std_logic;
SIGNAL \G17|ram~337_combout\ : std_logic;
SIGNAL \G7|Mux25~0_combout\ : std_logic;
SIGNAL \G17|ram~262_combout\ : std_logic;
SIGNAL \G7|Reg[1][5]~combout\ : std_logic;
SIGNAL \G7|Mux26~0_combout\ : std_logic;
SIGNAL \G17|ram~261_combout\ : std_logic;
SIGNAL \G14|SAIDA~5_combout\ : std_logic;
SIGNAL \G16|Add1~18\ : std_logic;
SIGNAL \G16|Add1~21_sumout\ : std_logic;
SIGNAL \G18|SAIDA~15_combout\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G18|SAIDA~16_combout\ : std_logic;
SIGNAL \G18|SAIDA~17_combout\ : std_logic;
SIGNAL \G17|ram~245_combout\ : std_logic;
SIGNAL \G17|ram~149_combout\ : std_logic;
SIGNAL \G17|ram~165_combout\ : std_logic;
SIGNAL \G17|ram~181_combout\ : std_logic;
SIGNAL \G17|ram~133_combout\ : std_logic;
SIGNAL \G17|ram~445_combout\ : std_logic;
SIGNAL \G17|ram~229_combout\ : std_logic;
SIGNAL \G17|ram~213_combout\ : std_logic;
SIGNAL \G17|ram~197_combout\ : std_logic;
SIGNAL \G17|ram~317_combout\ : std_logic;
SIGNAL \G17|ram~53_combout\ : std_logic;
SIGNAL \G17|ram~37_combout\ : std_logic;
SIGNAL \G17|ram~21_combout\ : std_logic;
SIGNAL \G17|ram~5_combout\ : std_logic;
SIGNAL \G17|ram~441_combout\ : std_logic;
SIGNAL \G17|ram~101_combout\ : std_logic;
SIGNAL \G17|ram~85_combout\ : std_logic;
SIGNAL \G17|ram~117_combout\ : std_logic;
SIGNAL \G17|ram~69_combout\ : std_logic;
SIGNAL \G17|ram~313_combout\ : std_logic;
SIGNAL \G18|SAIDA~18_combout\ : std_logic;
SIGNAL \G16|Add1~22\ : std_logic;
SIGNAL \G16|Add1~25_sumout\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G18|SAIDA~19_combout\ : std_logic;
SIGNAL \G18|SAIDA~20_combout\ : std_logic;
SIGNAL \G18|SAIDA~21_combout\ : std_logic;
SIGNAL \G17|ram~214_combout\ : std_logic;
SIGNAL \G17|ram~182_combout\ : std_logic;
SIGNAL \G17|ram~166_combout\ : std_logic;
SIGNAL \G17|ram~150_combout\ : std_logic;
SIGNAL \G17|ram~134_combout\ : std_logic;
SIGNAL \G17|ram~453_combout\ : std_logic;
SIGNAL \G17|ram~230_combout\ : std_logic;
SIGNAL \G17|ram~246_combout\ : std_logic;
SIGNAL \G17|ram~198_combout\ : std_logic;
SIGNAL \G17|ram~325_combout\ : std_logic;
SIGNAL \G17|ram~86_combout\ : std_logic;
SIGNAL \G17|ram~54_combout\ : std_logic;
SIGNAL \G17|ram~38_combout\ : std_logic;
SIGNAL \G17|ram~22_combout\ : std_logic;
SIGNAL \G17|ram~6_combout\ : std_logic;
SIGNAL \G17|ram~449_combout\ : std_logic;
SIGNAL \G17|ram~102_combout\ : std_logic;
SIGNAL \G17|ram~118_combout\ : std_logic;
SIGNAL \G17|ram~70_combout\ : std_logic;
SIGNAL \G17|ram~321_combout\ : std_logic;
SIGNAL \G18|SAIDA~22_combout\ : std_logic;
SIGNAL \G7|Reg[1][6]~combout\ : std_logic;
SIGNAL \G14|SAIDA~6_combout\ : std_logic;
SIGNAL \G16|Add1~26\ : std_logic;
SIGNAL \G16|Add1~29_sumout\ : std_logic;
SIGNAL \G18|SAIDA~23_combout\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G18|SAIDA~24_combout\ : std_logic;
SIGNAL \G7|Mux24~0_combout\ : std_logic;
SIGNAL \G17|ram~263_combout\ : std_logic;
SIGNAL \G18|SAIDA~25_combout\ : std_logic;
SIGNAL \G17|ram~167_combout\ : std_logic;
SIGNAL \G17|ram~183_combout\ : std_logic;
SIGNAL \G17|ram~151_combout\ : std_logic;
SIGNAL \G17|ram~135_combout\ : std_logic;
SIGNAL \G17|ram~461_combout\ : std_logic;
SIGNAL \G17|ram~215_combout\ : std_logic;
SIGNAL \G17|ram~231_combout\ : std_logic;
SIGNAL \G17|ram~247_combout\ : std_logic;
SIGNAL \G17|ram~199_combout\ : std_logic;
SIGNAL \G17|ram~333_combout\ : std_logic;
SIGNAL \G17|ram~87_combout\ : std_logic;
SIGNAL \G17|ram~23_combout\ : std_logic;
SIGNAL \G17|ram~39_combout\ : std_logic;
SIGNAL \G17|ram~55_combout\ : std_logic;
SIGNAL \G17|ram~7_combout\ : std_logic;
SIGNAL \G17|ram~457_combout\ : std_logic;
SIGNAL \G17|ram~103_combout\ : std_logic;
SIGNAL \G17|ram~119_combout\ : std_logic;
SIGNAL \G17|ram~71_combout\ : std_logic;
SIGNAL \G17|ram~329_combout\ : std_logic;
SIGNAL \G18|SAIDA~26_combout\ : std_logic;
SIGNAL \G7|Reg[1][7]~combout\ : std_logic;
SIGNAL \G14|SAIDA~7_combout\ : std_logic;
SIGNAL \G16|Add1~30\ : std_logic;
SIGNAL \G16|Add1~33_sumout\ : std_logic;
SIGNAL \G18|SAIDA~27_combout\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G18|SAIDA~28_combout\ : std_logic;
SIGNAL \G17|ram~264_combout\ : std_logic;
SIGNAL \G18|SAIDA~29_combout\ : std_logic;
SIGNAL \G17|ram~248_combout\ : std_logic;
SIGNAL \G17|ram~216_combout\ : std_logic;
SIGNAL \G17|ram~232_combout\ : std_logic;
SIGNAL \G17|ram~152_combout\ : std_logic;
SIGNAL \G17|ram~184_combout\ : std_logic;
SIGNAL \G17|ram~168_combout\ : std_logic;
SIGNAL \G17|ram~136_combout\ : std_logic;
SIGNAL \G17|ram~469_combout\ : std_logic;
SIGNAL \G17|ram~200_combout\ : std_logic;
SIGNAL \G17|ram~341_combout\ : std_logic;
SIGNAL \G18|SAIDA~30_combout\ : std_logic;
SIGNAL \G7|Reg[1][8]~combout\ : std_logic;
SIGNAL \G14|SAIDA~8_combout\ : std_logic;
SIGNAL \G16|Add1~34\ : std_logic;
SIGNAL \G16|Add1~37_sumout\ : std_logic;
SIGNAL \G18|SAIDA~31_combout\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G18|SAIDA~32_combout\ : std_logic;
SIGNAL \G17|ram~265_combout\ : std_logic;
SIGNAL \G18|SAIDA~33_combout\ : std_logic;
SIGNAL \G17|ram~121_combout\ : std_logic;
SIGNAL \G17|ram~41_combout\ : std_logic;
SIGNAL \G17|ram~57_combout\ : std_logic;
SIGNAL \G17|ram~25_combout\ : std_logic;
SIGNAL \G17|ram~9_combout\ : std_logic;
SIGNAL \G17|ram~473_combout\ : std_logic;
SIGNAL \G17|ram~105_combout\ : std_logic;
SIGNAL \G17|ram~89_combout\ : std_logic;
SIGNAL \G17|ram~73_combout\ : std_logic;
SIGNAL \G17|ram~345_combout\ : std_logic;
SIGNAL \G18|SAIDA~34_combout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G18|SAIDA~35_combout\ : std_logic;
SIGNAL \G16|Add1~38\ : std_logic;
SIGNAL \G16|Add1~41_sumout\ : std_logic;
SIGNAL \G18|SAIDA~36_combout\ : std_logic;
SIGNAL \G7|Mux21~0_combout\ : std_logic;
SIGNAL \G17|ram~266_combout\ : std_logic;
SIGNAL \G18|SAIDA~37_combout\ : std_logic;
SIGNAL \G17|ram~170_combout\ : std_logic;
SIGNAL \G17|ram~186_combout\ : std_logic;
SIGNAL \G17|ram~154_combout\ : std_logic;
SIGNAL \G17|ram~138_combout\ : std_logic;
SIGNAL \G17|ram~485_combout\ : std_logic;
SIGNAL \G17|ram~234_combout\ : std_logic;
SIGNAL \G17|ram~250_combout\ : std_logic;
SIGNAL \G17|ram~218_combout\ : std_logic;
SIGNAL \G17|ram~202_combout\ : std_logic;
SIGNAL \G17|ram~357_combout\ : std_logic;
SIGNAL \G17|ram~42_combout\ : std_logic;
SIGNAL \G17|ram~26_combout\ : std_logic;
SIGNAL \G17|ram~58_combout\ : std_logic;
SIGNAL \G17|ram~10_combout\ : std_logic;
SIGNAL \G17|ram~481_combout\ : std_logic;
SIGNAL \G17|ram~106_combout\ : std_logic;
SIGNAL \G17|ram~90_combout\ : std_logic;
SIGNAL \G17|ram~122_combout\ : std_logic;
SIGNAL \G17|ram~74_combout\ : std_logic;
SIGNAL \G17|ram~353_combout\ : std_logic;
SIGNAL \G18|SAIDA~38_combout\ : std_logic;
SIGNAL \G16|Add1~42\ : std_logic;
SIGNAL \G16|Add1~45_sumout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G18|SAIDA~40_combout\ : std_logic;
SIGNAL \G7|Mux20~0_combout\ : std_logic;
SIGNAL \G17|ram~267_combout\ : std_logic;
SIGNAL \G18|SAIDA~41_combout\ : std_logic;
SIGNAL \G17|ram~171_combout\ : std_logic;
SIGNAL \G17|ram~155_combout\ : std_logic;
SIGNAL \G17|ram~187_combout\ : std_logic;
SIGNAL \G17|ram~139_combout\ : std_logic;
SIGNAL \G17|ram~493_combout\ : std_logic;
SIGNAL \G17|ram~235_combout\ : std_logic;
SIGNAL \G17|ram~219_combout\ : std_logic;
SIGNAL \G17|ram~251_combout\ : std_logic;
SIGNAL \G17|ram~203_combout\ : std_logic;
SIGNAL \G17|ram~365_combout\ : std_logic;
SIGNAL \G17|ram~123_combout\ : std_logic;
SIGNAL \G17|ram~43_combout\ : std_logic;
SIGNAL \G17|ram~59_combout\ : std_logic;
SIGNAL \G17|ram~27_combout\ : std_logic;
SIGNAL \G17|ram~11_combout\ : std_logic;
SIGNAL \G17|ram~489_combout\ : std_logic;
SIGNAL \G17|ram~107_combout\ : std_logic;
SIGNAL \G17|ram~91_combout\ : std_logic;
SIGNAL \G17|ram~75_combout\ : std_logic;
SIGNAL \G17|ram~361_combout\ : std_logic;
SIGNAL \G18|SAIDA~42_combout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G18|SAIDA~43_combout\ : std_logic;
SIGNAL \G16|Add1~46\ : std_logic;
SIGNAL \G16|Add1~49_sumout\ : std_logic;
SIGNAL \G18|SAIDA~44_combout\ : std_logic;
SIGNAL \G7|Mux19~0_combout\ : std_logic;
SIGNAL \G17|ram~268_combout\ : std_logic;
SIGNAL \G18|SAIDA~45_combout\ : std_logic;
SIGNAL \G17|ram~220_combout\ : std_logic;
SIGNAL \G17|ram~156_combout\ : std_logic;
SIGNAL \G17|ram~172_combout\ : std_logic;
SIGNAL \G17|ram~188_combout\ : std_logic;
SIGNAL \G17|ram~140_combout\ : std_logic;
SIGNAL \G17|ram~501_combout\ : std_logic;
SIGNAL \G17|ram~236_combout\ : std_logic;
SIGNAL \G17|ram~252_combout\ : std_logic;
SIGNAL \G17|ram~204_combout\ : std_logic;
SIGNAL \G17|ram~373_combout\ : std_logic;
SIGNAL \G17|ram~44_combout\ : std_logic;
SIGNAL \G17|ram~28_combout\ : std_logic;
SIGNAL \G17|ram~60_combout\ : std_logic;
SIGNAL \G17|ram~12_combout\ : std_logic;
SIGNAL \G17|ram~497_combout\ : std_logic;
SIGNAL \G17|ram~92_combout\ : std_logic;
SIGNAL \G17|ram~108_combout\ : std_logic;
SIGNAL \G17|ram~124_combout\ : std_logic;
SIGNAL \G17|ram~76_combout\ : std_logic;
SIGNAL \G17|ram~369_combout\ : std_logic;
SIGNAL \G18|SAIDA~46_combout\ : std_logic;
SIGNAL \G16|Add1~50\ : std_logic;
SIGNAL \G16|Add1~53_sumout\ : std_logic;
SIGNAL \G18|SAIDA~48_combout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G18|SAIDA~49_combout\ : std_logic;
SIGNAL \G17|ram~61_combout\ : std_logic;
SIGNAL \G17|ram~45_combout\ : std_logic;
SIGNAL \G17|ram~29_combout\ : std_logic;
SIGNAL \G17|ram~13_combout\ : std_logic;
SIGNAL \G17|ram~505_combout\ : std_logic;
SIGNAL \G17|ram~125_combout\ : std_logic;
SIGNAL \G17|ram~109_combout\ : std_logic;
SIGNAL \G17|ram~93_combout\ : std_logic;
SIGNAL \G17|ram~77_combout\ : std_logic;
SIGNAL \G17|ram~377_combout\ : std_logic;
SIGNAL \G17|ram~253_combout\ : std_logic;
SIGNAL \G17|ram~157_combout\ : std_logic;
SIGNAL \G17|ram~173_combout\ : std_logic;
SIGNAL \G17|ram~189_combout\ : std_logic;
SIGNAL \G17|ram~141_combout\ : std_logic;
SIGNAL \G17|ram~509_combout\ : std_logic;
SIGNAL \G17|ram~237_combout\ : std_logic;
SIGNAL \G17|ram~221_combout\ : std_logic;
SIGNAL \G17|ram~205_combout\ : std_logic;
SIGNAL \G17|ram~381_combout\ : std_logic;
SIGNAL \G18|SAIDA~50_combout\ : std_logic;
SIGNAL \G16|Add1~54\ : std_logic;
SIGNAL \G16|Add1~57_sumout\ : std_logic;
SIGNAL \G18|SAIDA~52_combout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G18|SAIDA~53_combout\ : std_logic;
SIGNAL \G18|SAIDA~54_combout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G18|SAIDA~57_combout\ : std_logic;
SIGNAL \G7|Mux16~0_combout\ : std_logic;
SIGNAL \G17|ram~271_combout\ : std_logic;
SIGNAL \G18|SAIDA~55_combout\ : std_logic;
SIGNAL \G17|ram~255_combout\ : std_logic;
SIGNAL \G17|ram~159_combout\ : std_logic;
SIGNAL \G17|ram~175_combout\ : std_logic;
SIGNAL \G17|ram~191_combout\ : std_logic;
SIGNAL \G17|ram~143_combout\ : std_logic;
SIGNAL \G17|ram~525_combout\ : std_logic;
SIGNAL \G17|ram~239_combout\ : std_logic;
SIGNAL \G17|ram~223_combout\ : std_logic;
SIGNAL \G17|ram~207_combout\ : std_logic;
SIGNAL \G17|ram~397_combout\ : std_logic;
SIGNAL \G17|ram~47_combout\ : std_logic;
SIGNAL \G17|ram~63_combout\ : std_logic;
SIGNAL \G17|ram~31_combout\ : std_logic;
SIGNAL \G17|ram~15_combout\ : std_logic;
SIGNAL \G17|ram~521_combout\ : std_logic;
SIGNAL \G17|ram~127_combout\ : std_logic;
SIGNAL \G17|ram~111_combout\ : std_logic;
SIGNAL \G17|ram~95_combout\ : std_logic;
SIGNAL \G17|ram~79_combout\ : std_logic;
SIGNAL \G17|ram~393_combout\ : std_logic;
SIGNAL \G18|SAIDA~58_combout\ : std_logic;
SIGNAL \G16|Add1~58\ : std_logic;
SIGNAL \G16|Add1~61_sumout\ : std_logic;
SIGNAL \G16|Equal1~2_combout\ : std_logic;
SIGNAL \G16|Equal1~0_combout\ : std_logic;
SIGNAL \G16|Equal1~1_combout\ : std_logic;
SIGNAL \G16|Equal1~3_combout\ : std_logic;
SIGNAL \G10|Add0~29_sumout\ : std_logic;
SIGNAL \G12|SAIDA~9_combout\ : std_logic;
SIGNAL \G13|SAIDA~9_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G4|Mux5~1_combout\ : std_logic;
SIGNAL \G4|rs[1]~1_combout\ : std_logic;
SIGNAL \G5|origalu[2]~1_combout\ : std_logic;
SIGNAL \G12|SAIDA~0_combout\ : std_logic;
SIGNAL \G13|SAIDA~0_combout\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G2|saida[0]~DUPLICATE_q\ : std_logic;
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
SIGNAL \G4|rs[0]~0_combout\ : std_logic;
SIGNAL \G4|rs[2]~2_combout\ : std_logic;
SIGNAL \G4|rt[0]~0_combout\ : std_logic;
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
SIGNAL \G1|G0|G0|state~DUPLICATE_q\ : std_logic;
SIGNAL \G1|G0|G1|state~0_combout\ : std_logic;
SIGNAL \G1|G0|G1|state~q\ : std_logic;
SIGNAL \G1|G0|G1|state~DUPLICATE_q\ : std_logic;
SIGNAL \G1|G0|G3|state~0_combout\ : std_logic;
SIGNAL \G1|G0|G3|state~q\ : std_logic;
SIGNAL \G9|AUX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G15|SAIDA\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G10|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G3|resshift\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G12|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G9|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G18|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G13|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G14|SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G5|origalu\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1|G0|G1|ALT_INV_state~DUPLICATE_q\ : std_logic;
SIGNAL \G1|G0|G0|ALT_INV_state~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_saida[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;
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
SIGNAL \G7|ALT_INV_Reg[1][15]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][14]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][13]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][12]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][11]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][10]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][9]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][8]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][7]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][6]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][5]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][4]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][3]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][2]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][1]~combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][0]~combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G5|ALT_INV_escrevereg~combout\ : std_logic;
SIGNAL \G5|ALT_INV_regdest~combout\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rtl~16_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~15_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~14_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~13_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~12_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~11_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~10_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~9_combout\ : std_logic;
SIGNAL \G9|ALT_INV_SAIDA\ : std_logic_vector(5 DOWNTO 2);
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
SIGNAL \G14|ALT_INV_SAIDA~0_combout\ : std_logic;
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
SIGNAL \G10|ALT_INV_SAIDA\ : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \G12|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G12|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_ZeroULA~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_ZeroULA~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][0]~3_combout\ : std_logic;
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
SIGNAL \G16|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~10_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~9_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~8_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~7_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~6_combout\ : std_logic;
SIGNAL \G5|ALT_INV_regdest~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_tipoi[2]~3_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~5_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~4_combout\ : std_logic;
SIGNAL \G17|ALT_INV_ram~280_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~3_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~1_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \G1|G0|G3|ALT_INV_state~q\ : std_logic;
SIGNAL \G1|G0|G1|ALT_INV_state~q\ : std_logic;
SIGNAL \G1|G0|G0|ALT_INV_state~q\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G15|ALT_INV_SAIDA\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \G16|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_op[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rs[1]~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~2_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~0_combout\ : std_logic;
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
SIGNAL \G7|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Reg[1][0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[2]~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[1]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \G6|ALT_INV_SAIDA[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_saida\ : std_logic_vector(15 DOWNTO 1);
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
SIGNAL \G16|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add1~1_sumout\ : std_logic;

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
\G1|G0|G1|ALT_INV_state~DUPLICATE_q\ <= NOT \G1|G0|G1|state~DUPLICATE_q\;
\G1|G0|G0|ALT_INV_state~DUPLICATE_q\ <= NOT \G1|G0|G0|state~DUPLICATE_q\;
\G2|ALT_INV_saida[0]~DUPLICATE_q\ <= NOT \G2|saida[0]~DUPLICATE_q\;
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;
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
\G7|ALT_INV_Reg[1][15]~combout\ <= NOT \G7|Reg[1][15]~combout\;
\G7|ALT_INV_Reg[1][14]~combout\ <= NOT \G7|Reg[1][14]~combout\;
\G7|ALT_INV_Reg[1][13]~combout\ <= NOT \G7|Reg[1][13]~combout\;
\G7|ALT_INV_Reg[1][12]~combout\ <= NOT \G7|Reg[1][12]~combout\;
\G7|ALT_INV_Reg[1][11]~combout\ <= NOT \G7|Reg[1][11]~combout\;
\G7|ALT_INV_Reg[1][10]~combout\ <= NOT \G7|Reg[1][10]~combout\;
\G7|ALT_INV_Reg[1][9]~combout\ <= NOT \G7|Reg[1][9]~combout\;
\G7|ALT_INV_Reg[1][8]~combout\ <= NOT \G7|Reg[1][8]~combout\;
\G7|ALT_INV_Reg[1][7]~combout\ <= NOT \G7|Reg[1][7]~combout\;
\G7|ALT_INV_Reg[1][6]~combout\ <= NOT \G7|Reg[1][6]~combout\;
\G7|ALT_INV_Reg[1][5]~combout\ <= NOT \G7|Reg[1][5]~combout\;
\G7|ALT_INV_Reg[1][4]~combout\ <= NOT \G7|Reg[1][4]~combout\;
\G7|ALT_INV_Reg[1][3]~combout\ <= NOT \G7|Reg[1][3]~combout\;
\G7|ALT_INV_Reg[1][2]~combout\ <= NOT \G7|Reg[1][2]~combout\;
\G7|ALT_INV_Reg[1][1]~combout\ <= NOT \G7|Reg[1][1]~combout\;
\G7|ALT_INV_Reg[1][0]~combout\ <= NOT \G7|Reg[1][0]~combout\;
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
\G5|ALT_INV_escrevereg~combout\ <= NOT \G5|escrevereg~combout\;
\G5|ALT_INV_regdest~combout\ <= NOT \G5|regdest~combout\;
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
\ALT_INV_rtl~16_combout\ <= NOT \rtl~16_combout\;
\ALT_INV_rtl~15_combout\ <= NOT \rtl~15_combout\;
\ALT_INV_rtl~14_combout\ <= NOT \rtl~14_combout\;
\ALT_INV_rtl~13_combout\ <= NOT \rtl~13_combout\;
\ALT_INV_rtl~12_combout\ <= NOT \rtl~12_combout\;
\ALT_INV_rtl~11_combout\ <= NOT \rtl~11_combout\;
\ALT_INV_rtl~10_combout\ <= NOT \rtl~10_combout\;
\ALT_INV_rtl~9_combout\ <= NOT \rtl~9_combout\;
\G9|ALT_INV_SAIDA\(5) <= NOT \G9|SAIDA\(5);
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
\G14|ALT_INV_SAIDA~0_combout\ <= NOT \G14|SAIDA~0_combout\;
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
\G16|ALT_INV_ZeroULA~1_combout\ <= NOT \G16|ZeroULA~1_combout\;
\G16|ALT_INV_ZeroULA~0_combout\ <= NOT \G16|ZeroULA~0_combout\;
\G16|ALT_INV_Equal1~3_combout\ <= NOT \G16|Equal1~3_combout\;
\G16|ALT_INV_Equal1~2_combout\ <= NOT \G16|Equal1~2_combout\;
\G16|ALT_INV_Equal1~1_combout\ <= NOT \G16|Equal1~1_combout\;
\G16|ALT_INV_Equal1~0_combout\ <= NOT \G16|Equal1~0_combout\;
\G10|ALT_INV_SAIDA\(0) <= NOT \G10|SAIDA\(0);
\G7|ALT_INV_Reg[1][0]~3_combout\ <= NOT \G7|Reg[1][0]~3_combout\;
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
\G16|ALT_INV_Mux13~4_combout\ <= NOT \G16|Mux13~4_combout\;
\G18|ALT_INV_SAIDA~10_combout\ <= NOT \G18|SAIDA~10_combout\;
\G18|ALT_INV_SAIDA~9_combout\ <= NOT \G18|SAIDA~9_combout\;
\G18|ALT_INV_SAIDA~8_combout\ <= NOT \G18|SAIDA~8_combout\;
\G18|ALT_INV_SAIDA~7_combout\ <= NOT \G18|SAIDA~7_combout\;
\G18|ALT_INV_SAIDA~6_combout\ <= NOT \G18|SAIDA~6_combout\;
\G5|ALT_INV_regdest~0_combout\ <= NOT \G5|regdest~0_combout\;
\G4|ALT_INV_tipoi[2]~3_combout\ <= NOT \G4|tipoi[2]~3_combout\;
\G18|ALT_INV_SAIDA~5_combout\ <= NOT \G18|SAIDA~5_combout\;
\G18|ALT_INV_SAIDA~4_combout\ <= NOT \G18|SAIDA~4_combout\;
\G17|ALT_INV_ram~280_combout\ <= NOT \G17|ram~280_combout\;
\G16|ALT_INV_Mux13~3_combout\ <= NOT \G16|Mux13~3_combout\;
\G16|ALT_INV_Mux15~4_combout\ <= NOT \G16|Mux15~4_combout\;
\G16|ALT_INV_Mux14~2_combout\ <= NOT \G16|Mux14~2_combout\;
\G16|ALT_INV_Mux14~1_combout\ <= NOT \G16|Mux14~1_combout\;
\G16|ALT_INV_Mux13~2_combout\ <= NOT \G16|Mux13~2_combout\;
\G18|ALT_INV_SAIDA~3_combout\ <= NOT \G18|SAIDA~3_combout\;
\G16|ALT_INV_Mux15~3_combout\ <= NOT \G16|Mux15~3_combout\;
\G18|ALT_INV_SAIDA~2_combout\ <= NOT \G18|SAIDA~2_combout\;
\G16|ALT_INV_Mux12~2_combout\ <= NOT \G16|Mux12~2_combout\;
\G16|ALT_INV_Mux11~2_combout\ <= NOT \G16|Mux11~2_combout\;
\G18|ALT_INV_SAIDA~1_combout\ <= NOT \G18|SAIDA~1_combout\;
\G18|ALT_INV_SAIDA~0_combout\ <= NOT \G18|SAIDA~0_combout\;
\G16|ALT_INV_Mux12~1_combout\ <= NOT \G16|Mux12~1_combout\;
\G16|ALT_INV_Mux11~1_combout\ <= NOT \G16|Mux11~1_combout\;
\G7|ALT_INV_Mux15~2_combout\ <= NOT \G7|Mux15~2_combout\;
\G16|ALT_INV_Mux13~1_combout\ <= NOT \G16|Mux13~1_combout\;
\G1|G0|G3|ALT_INV_state~q\ <= NOT \G1|G0|G3|state~q\;
\G1|G0|G1|ALT_INV_state~q\ <= NOT \G1|G0|G1|state~q\;
\G1|G0|G0|ALT_INV_state~q\ <= NOT \G1|G0|G0|state~q\;
\G16|ALT_INV_Mux11~0_combout\ <= NOT \G16|Mux11~0_combout\;
\G16|ALT_INV_Mux12~0_combout\ <= NOT \G16|Mux12~0_combout\;
\G16|ALT_INV_Mux13~0_combout\ <= NOT \G16|Mux13~0_combout\;
\G16|ALT_INV_Mux14~0_combout\ <= NOT \G16|Mux14~0_combout\;
\G16|ALT_INV_Mux15~2_combout\ <= NOT \G16|Mux15~2_combout\;
\G16|ALT_INV_Mux15~1_combout\ <= NOT \G16|Mux15~1_combout\;
\G15|ALT_INV_SAIDA\(0) <= NOT \G15|SAIDA\(0);
\G16|ALT_INV_Mux15~0_combout\ <= NOT \G16|Mux15~0_combout\;
\G15|ALT_INV_SAIDA\(4) <= NOT \G15|SAIDA\(4);
\G15|ALT_INV_SAIDA\(3) <= NOT \G15|SAIDA\(3);
\G15|ALT_INV_SAIDA\(5) <= NOT \G15|SAIDA\(5);
\G4|ALT_INV_Mux1~0_combout\ <= NOT \G4|Mux1~0_combout\;
\G4|ALT_INV_Mux2~0_combout\ <= NOT \G4|Mux2~0_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_op[0]~0_combout\ <= NOT \G4|op[0]~0_combout\;
\G4|ALT_INV_rs[1]~1_combout\ <= NOT \G4|rs[1]~1_combout\;
\G7|ALT_INV_Mux16~0_combout\ <= NOT \G7|Mux16~0_combout\;
\G7|ALT_INV_Mux17~0_combout\ <= NOT \G7|Mux17~0_combout\;
\G7|ALT_INV_Mux18~0_combout\ <= NOT \G7|Mux18~0_combout\;
\G7|ALT_INV_Mux19~0_combout\ <= NOT \G7|Mux19~0_combout\;
\G7|ALT_INV_Mux20~0_combout\ <= NOT \G7|Mux20~0_combout\;
\G7|ALT_INV_Mux21~0_combout\ <= NOT \G7|Mux21~0_combout\;
\G7|ALT_INV_Mux22~0_combout\ <= NOT \G7|Mux22~0_combout\;
\G7|ALT_INV_Mux23~0_combout\ <= NOT \G7|Mux23~0_combout\;
\G7|ALT_INV_Mux24~0_combout\ <= NOT \G7|Mux24~0_combout\;
\G7|ALT_INV_Mux25~0_combout\ <= NOT \G7|Mux25~0_combout\;
\G7|ALT_INV_Mux26~0_combout\ <= NOT \G7|Mux26~0_combout\;
\G7|ALT_INV_Mux27~0_combout\ <= NOT \G7|Mux27~0_combout\;
\G7|ALT_INV_Mux28~1_combout\ <= NOT \G7|Mux28~1_combout\;
\G7|ALT_INV_Mux28~0_combout\ <= NOT \G7|Mux28~0_combout\;
\G7|ALT_INV_Mux29~0_combout\ <= NOT \G7|Mux29~0_combout\;
\G7|ALT_INV_Reg~2_combout\ <= NOT \G7|Reg~2_combout\;
\G7|ALT_INV_Mux30~0_combout\ <= NOT \G7|Mux30~0_combout\;
\G7|ALT_INV_Reg~1_combout\ <= NOT \G7|Reg~1_combout\;
\G7|ALT_INV_Mux31~0_combout\ <= NOT \G7|Mux31~0_combout\;
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
\G7|ALT_INV_Mux15~1_combout\ <= NOT \G7|Mux15~1_combout\;
\G7|ALT_INV_Mux11~0_combout\ <= NOT \G7|Mux11~0_combout\;
\G7|ALT_INV_Mux12~1_combout\ <= NOT \G7|Mux12~1_combout\;
\G7|ALT_INV_Mux13~0_combout\ <= NOT \G7|Mux13~0_combout\;
\G7|ALT_INV_Mux14~0_combout\ <= NOT \G7|Mux14~0_combout\;
\G7|ALT_INV_Reg[1][0]~0_combout\ <= NOT \G7|Reg[1][0]~0_combout\;
\G4|ALT_INV_Mux3~1_combout\ <= NOT \G4|Mux3~1_combout\;
\G4|ALT_INV_Equal0~0_combout\ <= NOT \G4|Equal0~0_combout\;
\G7|ALT_INV_Mux15~0_combout\ <= NOT \G7|Mux15~0_combout\;
\G7|ALT_INV_Mux12~0_combout\ <= NOT \G7|Mux12~0_combout\;
\G4|ALT_INV_rd[0]~0_combout\ <= NOT \G4|rd[0]~0_combout\;
\G4|ALT_INV_Mux6~1_combout\ <= NOT \G4|Mux6~1_combout\;
\G4|ALT_INV_Mux6~0_combout\ <= NOT \G4|Mux6~0_combout\;
\G6|ALT_INV_SAIDA[2]~2_combout\ <= NOT \G6|SAIDA[2]~2_combout\;
\G4|ALT_INV_Mux3~0_combout\ <= NOT \G4|Mux3~0_combout\;
\G6|ALT_INV_SAIDA[1]~1_combout\ <= NOT \G6|SAIDA[1]~1_combout\;
\G4|ALT_INV_Mux5~1_combout\ <= NOT \G4|Mux5~1_combout\;
\G6|ALT_INV_SAIDA[0]~0_combout\ <= NOT \G6|SAIDA[0]~0_combout\;
\G4|ALT_INV_Mux0~2_combout\ <= NOT \G4|Mux0~2_combout\;
\G4|ALT_INV_Mux5~0_combout\ <= NOT \G4|Mux5~0_combout\;
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
\G16|ALT_INV_Add1~61_sumout\ <= NOT \G16|Add1~61_sumout\;
\G16|ALT_INV_Add0~61_sumout\ <= NOT \G16|Add0~61_sumout\;
\G16|ALT_INV_Add1~57_sumout\ <= NOT \G16|Add1~57_sumout\;
\G16|ALT_INV_Add0~57_sumout\ <= NOT \G16|Add0~57_sumout\;
\G16|ALT_INV_Add1~53_sumout\ <= NOT \G16|Add1~53_sumout\;
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G16|ALT_INV_Add1~49_sumout\ <= NOT \G16|Add1~49_sumout\;
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G16|ALT_INV_Add1~45_sumout\ <= NOT \G16|Add1~45_sumout\;
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G16|ALT_INV_Add1~41_sumout\ <= NOT \G16|Add1~41_sumout\;
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G16|ALT_INV_Add1~37_sumout\ <= NOT \G16|Add1~37_sumout\;
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G16|ALT_INV_Add1~33_sumout\ <= NOT \G16|Add1~33_sumout\;
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
\G16|ALT_INV_Add1~29_sumout\ <= NOT \G16|Add1~29_sumout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
\G16|ALT_INV_Add1~25_sumout\ <= NOT \G16|Add1~25_sumout\;
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G16|ALT_INV_Add1~21_sumout\ <= NOT \G16|Add1~21_sumout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G16|ALT_INV_Add1~17_sumout\ <= NOT \G16|Add1~17_sumout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G16|ALT_INV_Add1~13_sumout\ <= NOT \G16|Add1~13_sumout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G16|ALT_INV_Add1~9_sumout\ <= NOT \G16|Add1~9_sumout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G16|ALT_INV_Add1~5_sumout\ <= NOT \G16|Add1~5_sumout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G16|ALT_INV_Add1~1_sumout\ <= NOT \G16|Add1~1_sumout\;

-- Location: IOOBUF_X68_Y0_N36
\SomadorToPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SomadorToPc_outWaveform(0));

-- Location: IOOBUF_X88_Y81_N37
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

-- Location: IOOBUF_X60_Y81_N19
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

-- Location: IOOBUF_X84_Y81_N36
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

-- Location: IOOBUF_X56_Y0_N53
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

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X66_Y81_N76
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X50_Y0_N42
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

-- Location: IOOBUF_X82_Y81_N42
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

-- Location: IOOBUF_X64_Y81_N2
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

-- Location: IOOBUF_X86_Y81_N53
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

-- Location: IOOBUF_X80_Y81_N19
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

-- Location: IOOBUF_X89_Y38_N5
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

-- Location: IOOBUF_X56_Y81_N53
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

-- Location: IOOBUF_X82_Y81_N93
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X89_Y38_N22
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

-- Location: IOOBUF_X88_Y81_N54
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X72_Y81_N36
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

-- Location: IOOBUF_X54_Y0_N53
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

-- Location: IOOBUF_X66_Y81_N59
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X88_Y81_N3
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

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X84_Y81_N53
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

-- Location: IOOBUF_X32_Y0_N36
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

-- Location: IOOBUF_X84_Y81_N19
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

-- Location: IOOBUF_X86_Y81_N19
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

-- Location: IOOBUF_X89_Y4_N62
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
	o => ww_SaidaRegA_outWaveform(0));

-- Location: IOOBUF_X62_Y81_N53
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
	o => ww_SaidaRegA_outWaveform(1));

-- Location: IOOBUF_X58_Y0_N42
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
	o => ww_SaidaRegA_outWaveform(2));

-- Location: IOOBUF_X56_Y81_N2
\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Mux12~1_combout\,
	devoe => ww_devoe,
	o => ww_SaidaRegA_outWaveform(3));

-- Location: IOOBUF_X68_Y81_N2
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
	o => ww_SaidaRegA_outWaveform(4));

-- Location: IOOBUF_X64_Y81_N53
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
	o => ww_SaidaRegA_outWaveform(5));

-- Location: IOOBUF_X70_Y81_N2
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
	o => ww_SaidaRegA_outWaveform(6));

-- Location: IOOBUF_X62_Y0_N53
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
	o => ww_SaidaRegA_outWaveform(7));

-- Location: IOOBUF_X56_Y0_N2
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
	o => ww_SaidaRegA_outWaveform(8));

-- Location: IOOBUF_X62_Y0_N36
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
	o => ww_SaidaRegA_outWaveform(9));

-- Location: IOOBUF_X62_Y0_N2
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
	o => ww_SaidaRegA_outWaveform(10));

-- Location: IOOBUF_X70_Y81_N36
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
	o => ww_SaidaRegA_outWaveform(11));

-- Location: IOOBUF_X66_Y81_N42
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
	o => ww_SaidaRegA_outWaveform(12));

-- Location: IOOBUF_X72_Y81_N53
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
	o => ww_SaidaRegA_outWaveform(13));

-- Location: IOOBUF_X54_Y0_N2
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
	o => ww_SaidaRegA_outWaveform(14));

-- Location: IOOBUF_X62_Y81_N19
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
	o => ww_SaidaRegA_outWaveform(15));

-- Location: IOOBUF_X89_Y6_N56
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

-- Location: IOOBUF_X64_Y81_N19
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

-- Location: IOOBUF_X78_Y81_N2
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

-- Location: IOOBUF_X72_Y81_N2
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
	o => ww_SaidaRegB_outWaveform(3));

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X89_Y36_N22
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

-- Location: IOOBUF_X89_Y37_N39
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

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X70_Y81_N19
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

-- Location: IOOBUF_X74_Y81_N93
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

-- Location: IOOBUF_X89_Y6_N39
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

-- Location: IOOBUF_X89_Y4_N96
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
	o => ww_multiplexador_to_writeRegister_outWaveform(0));

-- Location: IOOBUF_X66_Y0_N59
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
	o => ww_multiplexador_to_writeRegister_outWaveform(1));

-- Location: IOOBUF_X70_Y0_N36
\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|ALT_INV_SAIDA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_multiplexador_to_writeRegister_outWaveform(2));

-- Location: IOOBUF_X66_Y0_N42
\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(0));

-- Location: IOOBUF_X38_Y0_N19
\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(1));

-- Location: IOOBUF_X89_Y9_N56
\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_multiplexador_outWaveform(2));

-- Location: IOOBUF_X54_Y0_N19
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
	o => ww_Instruction_to_Control_outWaveform(0));

-- Location: IOOBUF_X34_Y0_N93
\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_Control_outWaveform(1));

-- Location: IOOBUF_X52_Y81_N19
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

-- Location: IOOBUF_X32_Y81_N19
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

-- Location: IOOBUF_X56_Y81_N19
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
	o => ww_Instruction_to_register1_outWaveform(0));

-- Location: IOOBUF_X54_Y81_N19
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
	o => ww_Instruction_to_register1_outWaveform(1));

-- Location: IOOBUF_X50_Y81_N76
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

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X30_Y81_N36
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
	o => ww_Instruction_to_register2_outWaveform(1));

-- Location: IOOBUF_X30_Y81_N53
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

-- Location: IOOBUF_X66_Y0_N76
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
	o => ww_Instruction_to_controlULA_outWaveform(0));

-- Location: IOOBUF_X28_Y81_N19
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

-- Location: IOOBUF_X28_Y0_N19
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

-- Location: IOOBUF_X74_Y81_N42
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
	o => ww_Instruction_to_extensorDeSinal_outWaveform(0));

-- Location: IOOBUF_X34_Y0_N42
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

-- Location: IOOBUF_X56_Y0_N36
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
	o => ww_Instruction_to_extensorDeSinal_outWaveform(2));

-- Location: IOOBUF_X54_Y81_N36
\Instruction_to_extensorDeSinal_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(3));

-- Location: IOOBUF_X66_Y81_N93
\Instruction_to_extensorDeSinal_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|tipoi[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_Instruction_to_extensorDeSinal_outWaveform(4));

-- Location: IOOBUF_X60_Y81_N53
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

-- Location: IOOBUF_X38_Y81_N36
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

-- Location: IOOBUF_X26_Y81_N59
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

-- Location: IOOBUF_X58_Y81_N42
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

-- Location: IOOBUF_X60_Y81_N36
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

-- Location: IOOBUF_X40_Y0_N53
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

-- Location: IOOBUF_X38_Y81_N53
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

-- Location: IOOBUF_X6_Y0_N53
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

-- Location: IOOBUF_X52_Y81_N53
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

-- Location: IOOBUF_X26_Y81_N76
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

-- Location: IOOBUF_X8_Y0_N53
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

-- Location: IOOBUF_X64_Y81_N36
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

-- Location: IOOBUF_X32_Y81_N36
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

-- Location: IOOBUF_X89_Y8_N56
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

-- Location: IOOBUF_X89_Y4_N45
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X89_Y9_N5
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

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X89_Y6_N5
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

-- Location: IOOBUF_X89_Y38_N39
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

-- Location: IOOBUF_X89_Y36_N5
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

-- Location: IOOBUF_X80_Y81_N36
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X89_Y8_N22
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

-- Location: IOOBUF_X89_Y36_N39
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

-- Location: IOOBUF_X89_Y9_N39
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X86_Y81_N2
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X74_Y81_N76
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

-- Location: IOOBUF_X89_Y6_N22
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: IOOBUF_X34_Y81_N76
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X70_Y81_N53
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

-- Location: IOOBUF_X78_Y81_N36
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X50_Y0_N76
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

-- Location: IOOBUF_X38_Y81_N2
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X72_Y81_N19
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

-- Location: IOOBUF_X80_Y81_N53
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X82_Y81_N76
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X82_Y81_N59
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

-- Location: IOOBUF_X88_Y81_N20
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X58_Y81_N93
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

-- Location: IOOBUF_X80_Y81_N2
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

-- Location: IOOBUF_X86_Y81_N36
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

-- Location: IOOBUF_X50_Y0_N59
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X58_Y81_N76
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

-- Location: IOOBUF_X84_Y81_N2
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

-- Location: IOOBUF_X76_Y81_N36
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

-- Location: IOOBUF_X89_Y35_N96
\Saida_adress_to_RAM_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux15~2_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(0));

-- Location: IOOBUF_X89_Y35_N45
\Saida_adress_to_RAM_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_adress_to_RAM_outWaveform(1));

-- Location: IOOBUF_X89_Y35_N79
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
	o => ww_Saida_adress_to_RAM_outWaveform(2));

-- Location: IOOBUF_X78_Y81_N53
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
	o => ww_Saida_adress_to_RAM_outWaveform(3));

-- Location: IOOBUF_X26_Y0_N93
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
	o => ww_Saida_adress_to_RAM_outWaveform(4));

-- Location: IOOBUF_X50_Y0_N93
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
	o => ww_Saida_adress_to_RAM_outWaveform(5));

-- Location: IOOBUF_X68_Y0_N2
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
	o => ww_Saida_adress_to_RAM_outWaveform(6));

-- Location: IOOBUF_X76_Y81_N2
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
	o => ww_Saida_adress_to_RAM_outWaveform(7));

-- Location: IOOBUF_X74_Y81_N59
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
	o => ww_Saida_adress_to_RAM_outWaveform(8));

-- Location: IOOBUF_X62_Y81_N2
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
	o => ww_Saida_adress_to_RAM_outWaveform(9));

-- Location: IOOBUF_X66_Y0_N93
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
	o => ww_Saida_adress_to_RAM_outWaveform(10));

-- Location: IOOBUF_X70_Y0_N19
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
	o => ww_Saida_adress_to_RAM_outWaveform(11));

-- Location: IOOBUF_X68_Y0_N19
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
	o => ww_Saida_adress_to_RAM_outWaveform(12));

-- Location: IOOBUF_X68_Y81_N53
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
	o => ww_Saida_adress_to_RAM_outWaveform(13));

-- Location: IOOBUF_X58_Y81_N59
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
	o => ww_Saida_adress_to_RAM_outWaveform(14));

-- Location: IOOBUF_X50_Y81_N42
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
	o => ww_Saida_adress_to_RAM_outWaveform(15));

-- Location: IOOBUF_X40_Y81_N2
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
	o => ww_saida_cont_sincz1);

-- Location: IOOBUF_X50_Y81_N93
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
	o => ww_saida_cont_sincz2);

-- Location: IOOBUF_X50_Y81_N59
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
	o => ww_saida_cont_sincz3);

-- Location: IOOBUF_X4_Y0_N53
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
	o => ww_funcionou);

-- Location: IOOBUF_X64_Y0_N2
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
	o => ww_Flag_regdest_OUT);

-- Location: IOOBUF_X78_Y81_N19
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
	o => ww_Flag_origialu_OUT(0));

-- Location: IOOBUF_X76_Y81_N19
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
	o => ww_Flag_origialu_OUT(1));

-- Location: IOOBUF_X68_Y81_N19
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
	o => ww_Flag_origialu_OUT(2));

-- Location: IOOBUF_X34_Y81_N59
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

-- Location: IOOBUF_X89_Y37_N56
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
	o => ww_Flag_memparareg_OUT);

-- Location: IOOBUF_X58_Y0_N76
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
	o => ww_Flag_escrevereg_OUT);

-- Location: IOOBUF_X89_Y37_N5
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
	o => ww_Flag_lemem_OUT);

-- Location: IOOBUF_X76_Y81_N53
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
	o => ww_Flag_escrevemem_OUT);

-- Location: IOOBUF_X62_Y81_N36
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
	o => ww_Flag_branch_OUT);

-- Location: IOOBUF_X56_Y0_N19
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
	o => ww_Flag_aluSRC_OUT);

-- Location: IOOBUF_X68_Y81_N36
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

-- Location: MLABCELL_X87_Y33_N9
\G5|origalu[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu\(0) = ( \G5|regdest~0_combout\ & ( \G4|Mux6~1_combout\ ) ) # ( !\G5|regdest~0_combout\ & ( \G5|origalu\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux6~1_combout\,
	datac => \G5|ALT_INV_origalu\(0),
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|origalu\(0));

-- Location: FF_X84_Y32_N23
\G15|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G5|origalu\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(3));

-- Location: FF_X84_Y32_N26
\G15|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G5|origalu\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(5));

-- Location: MLABCELL_X87_Y33_N54
\G4|op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|op[0]~0_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux6~1_combout\,
	combout => \G4|op[0]~0_combout\);

-- Location: MLABCELL_X87_Y33_N27
\G5|origalu[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[1]~0_combout\ = ( \G4|op[0]~0_combout\ ) # ( !\G4|op[0]~0_combout\ & ( !\G4|rs[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_rs[1]~1_combout\,
	dataf => \G4|ALT_INV_op[0]~0_combout\,
	combout => \G5|origalu[1]~0_combout\);

-- Location: MLABCELL_X87_Y33_N24
\G5|origalu[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu\(1) = ( \G5|origalu\(1) & ( (!\G5|origalu[1]~0_combout\) # (!\G5|regdest~0_combout\) ) ) # ( !\G5|origalu\(1) & ( (!\G5|origalu[1]~0_combout\ & \G5|regdest~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_origalu[1]~0_combout\,
	datac => \G5|ALT_INV_regdest~0_combout\,
	dataf => \G5|ALT_INV_origalu\(1),
	combout => \G5|origalu\(1));

-- Location: FF_X84_Y32_N32
\G15|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G5|origalu\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(4));

-- Location: LABCELL_X85_Y32_N0
\G16|ZeroULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|ZeroULA~0_combout\ = ( !\G15|SAIDA\(4) & ( (!\G15|SAIDA\(3) & \G15|SAIDA\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G15|ALT_INV_SAIDA\(3),
	datad => \G15|ALT_INV_SAIDA\(5),
	dataf => \G15|ALT_INV_SAIDA\(4),
	combout => \G16|ZeroULA~0_combout\);

-- Location: LABCELL_X85_Y32_N18
\G16|ZeroULA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|ZeroULA~1_combout\ = ( \G15|SAIDA\(3) & ( \G15|SAIDA\(4) & ( !\G15|SAIDA\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G15|ALT_INV_SAIDA\(5),
	datae => \G15|ALT_INV_SAIDA\(3),
	dataf => \G15|ALT_INV_SAIDA\(4),
	combout => \G16|ZeroULA~1_combout\);

-- Location: MLABCELL_X87_Y37_N0
\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout\(1),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

-- Location: FF_X87_Y37_N1
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

-- Location: FF_X88_Y35_N43
\G10|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(1));

-- Location: LABCELL_X88_Y35_N42
\G12|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~1_combout\ = ( \G2|saida\(1) & ( \G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~1_combout\) # ((!\G5|origalu\(2)) # (\G10|SAIDA\(1))) ) ) ) # ( !\G2|saida\(1) & ( \G16|Equal1~3_combout\ & ( (\G16|ZeroULA~1_combout\ & (\G10|SAIDA\(1) & 
-- \G5|origalu\(2))) ) ) ) # ( \G2|saida\(1) & ( !\G16|Equal1~3_combout\ & ( ((!\G5|origalu\(2)) # (!\G16|ZeroULA~0_combout\)) # (\G10|SAIDA\(1)) ) ) ) # ( !\G2|saida\(1) & ( !\G16|Equal1~3_combout\ & ( (\G10|SAIDA\(1) & (\G5|origalu\(2) & 
-- \G16|ZeroULA~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111001100000001000000011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_ZeroULA~1_combout\,
	datab => \G10|ALT_INV_SAIDA\(1),
	datac => \G5|ALT_INV_origalu\(2),
	datad => \G16|ALT_INV_ZeroULA~0_combout\,
	datae => \G2|ALT_INV_saida\(1),
	dataf => \G16|ALT_INV_Equal1~3_combout\,
	combout => \G12|SAIDA~1_combout\);

-- Location: LABCELL_X88_Y35_N36
\G12|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(1) = ( \G12|SAIDA~1_combout\ & ( (\G12|SAIDA\(1)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~1_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(1),
	dataf => \G12|ALT_INV_SAIDA~1_combout\,
	combout => \G12|SAIDA\(1));

-- Location: LABCELL_X85_Y35_N6
\G13|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~1_combout\ = ( \G12|SAIDA\(1) & ( !\G5|origalu\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G5|ALT_INV_origalu\(2),
	dataf => \G12|ALT_INV_SAIDA\(1),
	combout => \G13|SAIDA~1_combout\);

-- Location: LABCELL_X85_Y35_N9
\G13|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(1) = ( \G13|SAIDA\(1) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~1_combout\) ) ) # ( !\G13|SAIDA\(1) & ( (\G13|SAIDA~1_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA~1_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(1),
	combout => \G13|SAIDA\(1));

-- Location: MLABCELL_X87_Y35_N42
\G1|pout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(1) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(1) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(1),
	datad => \G1|ALT_INV_pout\(1),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(1));

-- Location: MLABCELL_X87_Y35_N18
\G4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux2~0_combout\ = ( \G1|pout\(2) & ( (!\G1|pout\(1) & !\G1|pout\(3)) ) ) # ( !\G1|pout\(2) & ( (!\G1|pout\(3) & ((!\G1|pout\(1)) # (!\G1|pout\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G1|ALT_INV_pout\(0),
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G4|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y37_N6
\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

-- Location: MLABCELL_X87_Y37_N9
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

-- Location: FF_X87_Y37_N10
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

-- Location: MLABCELL_X87_Y35_N45
\G4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = ( \G1|pout\(2) & ( (!\G1|pout\(3) & (\G1|pout\(0) & !\G1|pout\(1))) ) ) # ( !\G1|pout\(2) & ( (!\G1|pout\(3) & (!\G1|pout\(0) & \G1|pout\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(3),
	datab => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout\(1),
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G4|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y33_N0
\G4|tipoi[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~1_combout\ = ( \G4|Mux0~3_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux1~0_combout\ & ((\G4|Mux5~1_combout\) # (\G4|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux6~0_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux5~1_combout\,
	datad => \G4|ALT_INV_Mux1~0_combout\,
	dataf => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G4|tipoi[2]~1_combout\);

-- Location: FF_X87_Y33_N2
\G9|AUX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|tipoi[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(4));

-- Location: FF_X87_Y34_N26
\G9|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G9|AUX\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(4));

-- Location: MLABCELL_X87_Y37_N3
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

-- Location: FF_X87_Y37_N4
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

-- Location: MLABCELL_X87_Y34_N0
\G10|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~1_sumout\ = SUM(( \G9|SAIDA\(2) ) + ( \G2|saida\(2) ) + ( !VCC ))
-- \G10|Add0~2\ = CARRY(( \G9|SAIDA\(2) ) + ( \G2|saida\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(2),
	datab => \G2|ALT_INV_saida\(2),
	cin => GND,
	sumout => \G10|Add0~1_sumout\,
	cout => \G10|Add0~2\);

-- Location: MLABCELL_X87_Y34_N3
\G10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~5_sumout\ = SUM(( \G2|saida\(3) ) + ( GND ) + ( \G10|Add0~2\ ))
-- \G10|Add0~6\ = CARRY(( \G2|saida\(3) ) + ( GND ) + ( \G10|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(3),
	cin => \G10|Add0~2\,
	sumout => \G10|Add0~5_sumout\,
	cout => \G10|Add0~6\);

-- Location: MLABCELL_X87_Y34_N6
\G10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~9_sumout\ = SUM(( \G2|saida\(4) ) + ( \G9|SAIDA\(4) ) + ( \G10|Add0~6\ ))
-- \G10|Add0~10\ = CARRY(( \G2|saida\(4) ) + ( \G9|SAIDA\(4) ) + ( \G10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G9|ALT_INV_SAIDA\(4),
	datad => \G2|ALT_INV_saida\(4),
	cin => \G10|Add0~6\,
	sumout => \G10|Add0~9_sumout\,
	cout => \G10|Add0~10\);

-- Location: FF_X88_Y32_N53
\G10|SAIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(4));

-- Location: LABCELL_X88_Y32_N12
\G12|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~4_combout\ = ( \G2|saida\(4) & ( \G10|SAIDA\(4) ) ) # ( !\G2|saida\(4) & ( \G10|SAIDA\(4) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & ((\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(4) & ( !\G10|SAIDA\(4) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (!\G16|ZeroULA~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000001010001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~0_combout\,
	datae => \G2|ALT_INV_saida\(4),
	dataf => \G10|ALT_INV_SAIDA\(4),
	combout => \G12|SAIDA~4_combout\);

-- Location: LABCELL_X88_Y32_N36
\G12|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(4) = ( \G12|SAIDA~4_combout\ & ( (\G12|SAIDA\(4)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~4_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(4),
	dataf => \G12|ALT_INV_SAIDA~4_combout\,
	combout => \G12|SAIDA\(4));

-- Location: LABCELL_X85_Y35_N21
\G13|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~4_combout\ = (\G12|SAIDA\(4) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(4),
	datac => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~4_combout\);

-- Location: LABCELL_X88_Y35_N21
\G13|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(4) = ( \G13|SAIDA\(4) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~4_combout\) ) ) # ( !\G13|SAIDA\(4) & ( (\G13|SAIDA~4_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA~4_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(4),
	combout => \G13|SAIDA\(4));

-- Location: LABCELL_X88_Y35_N57
\G1|pout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(4) = ( \G1|pout\(4) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(4)) ) ) # ( !\G1|pout\(4) & ( (\G13|SAIDA\(4) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA\(4),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(4),
	combout => \G1|pout\(4));

-- Location: MLABCELL_X87_Y37_N12
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

-- Location: FF_X87_Y37_N13
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

-- Location: MLABCELL_X87_Y35_N0
\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = ( \G4|Mux0~1_combout\ & ( !\G1|pout\(1) & ( (\G4|Mux0~0_combout\ & (!\G1|pout\(0) & (!\G1|pout\(3) & !\G1|pout\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~0_combout\,
	datab => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G1|ALT_INV_pout\(2),
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G1|ALT_INV_pout\(1),
	combout => \G4|Mux0~2_combout\);

-- Location: MLABCELL_X87_Y33_N36
\G4|tipoi[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[3]~2_combout\ = ( \Clock_Sistema~input_o\ & ( (\G4|Mux0~2_combout\ & ((\G4|Mux6~1_combout\) # (\G4|Mux5~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux5~1_combout\,
	datac => \G4|ALT_INV_Mux6~1_combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|tipoi[3]~2_combout\);

-- Location: FF_X87_Y33_N31
\G9|AUX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|tipoi[3]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(5));

-- Location: FF_X87_Y34_N23
\G9|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G9|AUX\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(5));

-- Location: MLABCELL_X87_Y34_N9
\G10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~13_sumout\ = SUM(( \G2|saida\(5) ) + ( \G9|SAIDA\(5) ) + ( \G10|Add0~10\ ))
-- \G10|Add0~14\ = CARRY(( \G2|saida\(5) ) + ( \G9|SAIDA\(5) ) + ( \G10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(5),
	datad => \G2|ALT_INV_saida\(5),
	cin => \G10|Add0~10\,
	sumout => \G10|Add0~13_sumout\,
	cout => \G10|Add0~14\);

-- Location: FF_X88_Y32_N43
\G10|SAIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(5));

-- Location: LABCELL_X88_Y32_N15
\G12|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~5_combout\ = ( \G2|saida\(5) & ( \G10|SAIDA\(5) ) ) # ( !\G2|saida\(5) & ( \G10|SAIDA\(5) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & (\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((\G16|ZeroULA~1_combout\))))) ) ) ) # ( 
-- \G2|saida\(5) & ( !\G10|SAIDA\(5) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & (!\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111110101000000100000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~0_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G2|ALT_INV_saida\(5),
	dataf => \G10|ALT_INV_SAIDA\(5),
	combout => \G12|SAIDA~5_combout\);

-- Location: LABCELL_X88_Y32_N39
\G12|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(5) = ( \G12|SAIDA~5_combout\ & ( (\G12|SAIDA\(5)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~5_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(5),
	dataf => \G12|ALT_INV_SAIDA~5_combout\,
	combout => \G12|SAIDA\(5));

-- Location: LABCELL_X85_Y35_N12
\G13|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~5_combout\ = (!\G5|origalu\(2) & \G12|SAIDA\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_origalu\(2),
	datac => \G12|ALT_INV_SAIDA\(5),
	combout => \G13|SAIDA~5_combout\);

-- Location: MLABCELL_X87_Y35_N51
\G13|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(5) = ( \G13|SAIDA\(5) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~5_combout\) ) ) # ( !\G13|SAIDA\(5) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA~5_combout\,
	dataf => \G13|ALT_INV_SAIDA\(5),
	combout => \G13|SAIDA\(5));

-- Location: LABCELL_X88_Y35_N27
\G1|pout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(5) = ( \G1|pout\(5) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(5)) ) ) # ( !\G1|pout\(5) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G13|ALT_INV_SAIDA\(5),
	dataf => \G1|ALT_INV_pout\(5),
	combout => \G1|pout\(5));

-- Location: MLABCELL_X87_Y37_N15
\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(6),
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

-- Location: FF_X87_Y37_N17
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

-- Location: MLABCELL_X87_Y34_N12
\G10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~17_sumout\ = SUM(( \G9|SAIDA\(5) ) + ( \G2|saida\(6) ) + ( \G10|Add0~14\ ))
-- \G10|Add0~18\ = CARRY(( \G9|SAIDA\(5) ) + ( \G2|saida\(6) ) + ( \G10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G9|ALT_INV_SAIDA\(5),
	datab => \G2|ALT_INV_saida\(6),
	cin => \G10|Add0~14\,
	sumout => \G10|Add0~17_sumout\,
	cout => \G10|Add0~18\);

-- Location: FF_X88_Y32_N37
\G10|SAIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(6));

-- Location: LABCELL_X88_Y32_N6
\G12|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~6_combout\ = ( \G2|saida\(6) & ( \G10|SAIDA\(6) ) ) # ( !\G2|saida\(6) & ( \G10|SAIDA\(6) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & ((\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(6) & ( !\G10|SAIDA\(6) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (!\G16|ZeroULA~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000001010001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~0_combout\,
	datae => \G2|ALT_INV_saida\(6),
	dataf => \G10|ALT_INV_SAIDA\(6),
	combout => \G12|SAIDA~6_combout\);

-- Location: LABCELL_X88_Y32_N54
\G12|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(6) = ( \G12|SAIDA~6_combout\ & ( (\G12|SAIDA\(6)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~6_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(6),
	dataf => \G12|ALT_INV_SAIDA~6_combout\,
	combout => \G12|SAIDA\(6));

-- Location: LABCELL_X85_Y35_N33
\G13|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~6_combout\ = (\G12|SAIDA\(6) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(6),
	datac => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~6_combout\);

-- Location: LABCELL_X88_Y35_N39
\G13|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(6) = ( \G13|SAIDA\(6) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~6_combout\) ) ) # ( !\G13|SAIDA\(6) & ( (\G13|SAIDA~6_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA~6_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(6),
	combout => \G13|SAIDA\(6));

-- Location: LABCELL_X88_Y35_N30
\G1|pout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(6) = ( \G1|pout\(6) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(6)) ) ) # ( !\G1|pout\(6) & ( (\G13|SAIDA\(6) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA\(6),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(6),
	combout => \G1|pout\(6));

-- Location: MLABCELL_X87_Y37_N18
\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

-- Location: FF_X87_Y37_N20
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

-- Location: MLABCELL_X87_Y34_N15
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

-- Location: FF_X87_Y34_N17
\G10|SAIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(7));

-- Location: LABCELL_X88_Y32_N9
\G12|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~7_combout\ = ( \G2|saida\(7) & ( \G10|SAIDA\(7) ) ) # ( !\G2|saida\(7) & ( \G10|SAIDA\(7) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & (\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((\G16|ZeroULA~1_combout\))))) ) ) ) # ( 
-- \G2|saida\(7) & ( !\G10|SAIDA\(7) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & (!\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111110101000000100000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~0_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G2|ALT_INV_saida\(7),
	dataf => \G10|ALT_INV_SAIDA\(7),
	combout => \G12|SAIDA~7_combout\);

-- Location: LABCELL_X88_Y32_N57
\G12|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(7) = ( \G12|SAIDA~7_combout\ & ( (\G12|SAIDA\(7)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~7_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(7),
	dataf => \G12|ALT_INV_SAIDA~7_combout\,
	combout => \G12|SAIDA\(7));

-- Location: LABCELL_X85_Y35_N51
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

-- Location: LABCELL_X88_Y35_N6
\G13|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(7) = ( \G13|SAIDA\(7) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~7_combout\) ) ) # ( !\G13|SAIDA\(7) & ( (\G13|SAIDA~7_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA~7_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(7),
	combout => \G13|SAIDA\(7));

-- Location: LABCELL_X88_Y35_N9
\G1|pout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(7) = ( \G1|pout\(7) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(7)) ) ) # ( !\G1|pout\(7) & ( (\G13|SAIDA\(7) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA\(7),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(7),
	combout => \G1|pout\(7));

-- Location: MLABCELL_X87_Y37_N21
\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

-- Location: FF_X87_Y37_N22
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

-- Location: MLABCELL_X87_Y34_N18
\G10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~25_sumout\ = SUM(( \G2|saida\(8) ) + ( GND ) + ( \G10|Add0~22\ ))
-- \G10|Add0~26\ = CARRY(( \G2|saida\(8) ) + ( GND ) + ( \G10|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_saida\(8),
	cin => \G10|Add0~22\,
	sumout => \G10|Add0~25_sumout\,
	cout => \G10|Add0~26\);

-- Location: FF_X88_Y34_N32
\G10|SAIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(8));

-- Location: LABCELL_X88_Y34_N42
\G12|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~8_combout\ = ( \G5|origalu\(2) & ( \G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~1_combout\ & ((\G2|saida\(8)))) # (\G16|ZeroULA~1_combout\ & (\G10|SAIDA\(8))) ) ) ) # ( !\G5|origalu\(2) & ( \G16|Equal1~3_combout\ & ( \G2|saida\(8) ) ) ) # ( 
-- \G5|origalu\(2) & ( !\G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~0_combout\ & ((\G2|saida\(8)))) # (\G16|ZeroULA~0_combout\ & (\G10|SAIDA\(8))) ) ) ) # ( !\G5|origalu\(2) & ( !\G16|Equal1~3_combout\ & ( \G2|saida\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111010001110100001111000011110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G10|ALT_INV_SAIDA\(8),
	datab => \G16|ALT_INV_ZeroULA~0_combout\,
	datac => \G2|ALT_INV_saida\(8),
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G5|ALT_INV_origalu\(2),
	dataf => \G16|ALT_INV_Equal1~3_combout\,
	combout => \G12|SAIDA~8_combout\);

-- Location: LABCELL_X88_Y34_N36
\G12|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(8) = ( \G12|SAIDA~8_combout\ & ( (\G12|SAIDA\(8)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~8_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(8),
	dataf => \G12|ALT_INV_SAIDA~8_combout\,
	combout => \G12|SAIDA\(8));

-- Location: MLABCELL_X87_Y34_N57
\G13|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~8_combout\ = ( !\G5|origalu\(2) & ( \G12|SAIDA\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(8),
	dataf => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~8_combout\);

-- Location: LABCELL_X88_Y35_N48
\G13|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(8) = ( \G13|SAIDA\(8) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~8_combout\) ) ) # ( !\G13|SAIDA\(8) & ( (\G13|SAIDA~8_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA~8_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(8),
	combout => \G13|SAIDA\(8));

-- Location: LABCELL_X88_Y35_N24
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

-- Location: MLABCELL_X87_Y37_N24
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

-- Location: MLABCELL_X87_Y37_N27
\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(10),
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

-- Location: FF_X87_Y37_N28
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

-- Location: FF_X87_Y37_N25
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

-- Location: MLABCELL_X87_Y34_N21
\G10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~29_sumout\ = SUM(( \G2|saida\(9) ) + ( GND ) + ( \G10|Add0~26\ ))
-- \G10|Add0~30\ = CARRY(( \G2|saida\(9) ) + ( GND ) + ( \G10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(9),
	cin => \G10|Add0~26\,
	sumout => \G10|Add0~29_sumout\,
	cout => \G10|Add0~30\);

-- Location: MLABCELL_X87_Y34_N24
\G10|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~33_sumout\ = SUM(( \G2|saida\(10) ) + ( GND ) + ( \G10|Add0~30\ ))
-- \G10|Add0~34\ = CARRY(( \G2|saida\(10) ) + ( GND ) + ( \G10|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(10),
	cin => \G10|Add0~30\,
	sumout => \G10|Add0~33_sumout\,
	cout => \G10|Add0~34\);

-- Location: FF_X88_Y34_N46
\G10|SAIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(10));

-- Location: LABCELL_X88_Y34_N27
\G12|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~10_combout\ = ( \G2|saida\(10) & ( \G16|Equal1~3_combout\ & ( (!\G5|origalu\(2)) # ((!\G16|ZeroULA~1_combout\) # (\G10|SAIDA\(10))) ) ) ) # ( !\G2|saida\(10) & ( \G16|Equal1~3_combout\ & ( (\G5|origalu\(2) & (\G10|SAIDA\(10) & 
-- \G16|ZeroULA~1_combout\)) ) ) ) # ( \G2|saida\(10) & ( !\G16|Equal1~3_combout\ & ( (!\G5|origalu\(2)) # ((!\G16|ZeroULA~0_combout\) # (\G10|SAIDA\(10))) ) ) ) # ( !\G2|saida\(10) & ( !\G16|Equal1~3_combout\ & ( (\G5|origalu\(2) & (\G10|SAIDA\(10) & 
-- \G16|ZeroULA~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111111111011101100000001000000011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G10|ALT_INV_SAIDA\(10),
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~0_combout\,
	datae => \G2|ALT_INV_saida\(10),
	dataf => \G16|ALT_INV_Equal1~3_combout\,
	combout => \G12|SAIDA~10_combout\);

-- Location: LABCELL_X88_Y34_N39
\G12|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(10) = ( \G12|SAIDA~10_combout\ & ( (\G12|SAIDA\(10)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~10_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(10),
	dataf => \G12|ALT_INV_SAIDA~10_combout\,
	combout => \G12|SAIDA\(10));

-- Location: LABCELL_X88_Y36_N45
\G13|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~10_combout\ = ( \G12|SAIDA\(10) & ( !\G5|origalu\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	dataf => \G12|ALT_INV_SAIDA\(10),
	combout => \G13|SAIDA~10_combout\);

-- Location: LABCELL_X88_Y36_N48
\G13|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(10) = ( \G13|SAIDA\(10) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~10_combout\) ) ) # ( !\G13|SAIDA\(10) & ( (\G13|SAIDA~10_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA~10_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(10),
	combout => \G13|SAIDA\(10));

-- Location: LABCELL_X88_Y36_N27
\G1|pout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(10) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(10) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(10),
	datad => \G1|ALT_INV_pout\(10),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(10));

-- Location: MLABCELL_X87_Y37_N30
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

-- Location: FF_X87_Y37_N31
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

-- Location: MLABCELL_X87_Y34_N27
\G10|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~37_sumout\ = SUM(( \G2|saida\(11) ) + ( GND ) + ( \G10|Add0~34\ ))
-- \G10|Add0~38\ = CARRY(( \G2|saida\(11) ) + ( GND ) + ( \G10|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(11),
	cin => \G10|Add0~34\,
	sumout => \G10|Add0~37_sumout\,
	cout => \G10|Add0~38\);

-- Location: FF_X88_Y34_N19
\G10|SAIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~37_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(11));

-- Location: LABCELL_X88_Y34_N57
\G12|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~11_combout\ = ( \G16|ZeroULA~0_combout\ & ( \G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~1_combout\ & (((\G2|saida\(11))))) # (\G16|ZeroULA~1_combout\ & ((!\G5|origalu\(2) & ((\G2|saida\(11)))) # (\G5|origalu\(2) & (\G10|SAIDA\(11))))) ) ) ) # ( 
-- !\G16|ZeroULA~0_combout\ & ( \G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~1_combout\ & (((\G2|saida\(11))))) # (\G16|ZeroULA~1_combout\ & ((!\G5|origalu\(2) & ((\G2|saida\(11)))) # (\G5|origalu\(2) & (\G10|SAIDA\(11))))) ) ) ) # ( \G16|ZeroULA~0_combout\ & ( 
-- !\G16|Equal1~3_combout\ & ( (!\G5|origalu\(2) & ((\G2|saida\(11)))) # (\G5|origalu\(2) & (\G10|SAIDA\(11))) ) ) ) # ( !\G16|ZeroULA~0_combout\ & ( !\G16|Equal1~3_combout\ & ( \G2|saida\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110101010100001111000111010000111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G10|ALT_INV_SAIDA\(11),
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \G2|ALT_INV_saida\(11),
	datad => \G5|ALT_INV_origalu\(2),
	datae => \G16|ALT_INV_ZeroULA~0_combout\,
	dataf => \G16|ALT_INV_Equal1~3_combout\,
	combout => \G12|SAIDA~11_combout\);

-- Location: LABCELL_X88_Y34_N21
\G12|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(11) = ( \G12|SAIDA\(11) & ( \G12|SAIDA~11_combout\ ) ) # ( !\G12|SAIDA\(11) & ( \G12|SAIDA~11_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( \G12|SAIDA\(11) & ( !\G12|SAIDA~11_combout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G12|ALT_INV_SAIDA\(11),
	dataf => \G12|ALT_INV_SAIDA~11_combout\,
	combout => \G12|SAIDA\(11));

-- Location: LABCELL_X88_Y34_N15
\G13|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~11_combout\ = (\G12|SAIDA\(11) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(11),
	datad => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~11_combout\);

-- Location: LABCELL_X88_Y34_N30
\G13|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(11) = ( \G13|SAIDA\(11) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~11_combout\) ) ) # ( !\G13|SAIDA\(11) & ( (\G13|SAIDA~11_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA~11_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(11),
	combout => \G13|SAIDA\(11));

-- Location: LABCELL_X88_Y36_N12
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

-- Location: MLABCELL_X87_Y37_N33
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

-- Location: FF_X87_Y37_N35
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

-- Location: MLABCELL_X87_Y34_N30
\G10|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~41_sumout\ = SUM(( \G2|saida\(12) ) + ( GND ) + ( \G10|Add0~38\ ))
-- \G10|Add0~42\ = CARRY(( \G2|saida\(12) ) + ( GND ) + ( \G10|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(12),
	cin => \G10|Add0~38\,
	sumout => \G10|Add0~41_sumout\,
	cout => \G10|Add0~42\);

-- Location: FF_X87_Y34_N31
\G10|SAIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(12));

-- Location: LABCELL_X88_Y35_N15
\G12|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~12_combout\ = ( \G16|ZeroULA~1_combout\ & ( \G16|Equal1~3_combout\ & ( (!\G5|origalu\(2) & ((\G2|saida\(12)))) # (\G5|origalu\(2) & (\G10|SAIDA\(12))) ) ) ) # ( !\G16|ZeroULA~1_combout\ & ( \G16|Equal1~3_combout\ & ( \G2|saida\(12) ) ) ) # ( 
-- \G16|ZeroULA~1_combout\ & ( !\G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~0_combout\ & (((\G2|saida\(12))))) # (\G16|ZeroULA~0_combout\ & ((!\G5|origalu\(2) & ((\G2|saida\(12)))) # (\G5|origalu\(2) & (\G10|SAIDA\(12))))) ) ) ) # ( !\G16|ZeroULA~1_combout\ & 
-- ( !\G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~0_combout\ & (((\G2|saida\(12))))) # (\G16|ZeroULA~0_combout\ & ((!\G5|origalu\(2) & ((\G2|saida\(12)))) # (\G5|origalu\(2) & (\G10|SAIDA\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011101000011110001110100001111000011110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G10|ALT_INV_SAIDA\(12),
	datab => \G16|ALT_INV_ZeroULA~0_combout\,
	datac => \G2|ALT_INV_saida\(12),
	datad => \G5|ALT_INV_origalu\(2),
	datae => \G16|ALT_INV_ZeroULA~1_combout\,
	dataf => \G16|ALT_INV_Equal1~3_combout\,
	combout => \G12|SAIDA~12_combout\);

-- Location: LABCELL_X88_Y35_N51
\G12|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(12) = ( \G12|SAIDA~12_combout\ & ( (\G12|SAIDA\(12)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~12_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(12),
	dataf => \G12|ALT_INV_SAIDA~12_combout\,
	combout => \G12|SAIDA\(12));

-- Location: LABCELL_X88_Y36_N24
\G13|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~12_combout\ = (\G12|SAIDA\(12) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(12),
	datac => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~12_combout\);

-- Location: LABCELL_X88_Y36_N57
\G13|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(12) = ( \G13|SAIDA\(12) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~12_combout\) ) ) # ( !\G13|SAIDA\(12) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA~12_combout\,
	dataf => \G13|ALT_INV_SAIDA\(12),
	combout => \G13|SAIDA\(12));

-- Location: LABCELL_X88_Y36_N42
\G1|pout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(12) = ( \G1|pout\(12) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(12)) ) ) # ( !\G1|pout\(12) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G13|ALT_INV_SAIDA\(12),
	dataf => \G1|ALT_INV_pout\(12),
	combout => \G1|pout\(12));

-- Location: MLABCELL_X87_Y37_N36
\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(13),
	cin => \G2|Add0~46\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

-- Location: FF_X87_Y37_N38
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

-- Location: MLABCELL_X87_Y34_N33
\G10|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~45_sumout\ = SUM(( \G2|saida\(13) ) + ( GND ) + ( \G10|Add0~42\ ))
-- \G10|Add0~46\ = CARRY(( \G2|saida\(13) ) + ( GND ) + ( \G10|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(13),
	cin => \G10|Add0~42\,
	sumout => \G10|Add0~45_sumout\,
	cout => \G10|Add0~46\);

-- Location: FF_X87_Y34_N35
\G10|SAIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(13));

-- Location: LABCELL_X88_Y32_N27
\G12|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~13_combout\ = ( \G2|saida\(13) & ( \G10|SAIDA\(13) ) ) # ( !\G2|saida\(13) & ( \G10|SAIDA\(13) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & (\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((\G16|ZeroULA~1_combout\))))) ) ) ) # ( 
-- \G2|saida\(13) & ( !\G10|SAIDA\(13) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & (!\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111110101000000100000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~0_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G2|ALT_INV_saida\(13),
	dataf => \G10|ALT_INV_SAIDA\(13),
	combout => \G12|SAIDA~13_combout\);

-- Location: LABCELL_X88_Y32_N21
\G12|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(13) = ( \G12|SAIDA~13_combout\ & ( (\G12|SAIDA\(13)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~13_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(13),
	dataf => \G12|ALT_INV_SAIDA~13_combout\,
	combout => \G12|SAIDA\(13));

-- Location: LABCELL_X88_Y36_N54
\G13|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~13_combout\ = (\G12|SAIDA\(13) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(13),
	datac => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~13_combout\);

-- Location: LABCELL_X88_Y36_N33
\G13|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(13) = ( \G13|SAIDA\(13) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~13_combout\) ) ) # ( !\G13|SAIDA\(13) & ( (\G13|SAIDA~13_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA~13_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(13),
	combout => \G13|SAIDA\(13));

-- Location: LABCELL_X88_Y36_N15
\G1|pout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(13) = ( \G13|SAIDA\(13) & ( (\G1|pout\(13)) # (\Clock_Sistema~input_o\) ) ) # ( !\G13|SAIDA\(13) & ( (!\Clock_Sistema~input_o\ & \G1|pout\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G1|ALT_INV_pout\(13),
	dataf => \G13|ALT_INV_SAIDA\(13),
	combout => \G1|pout\(13));

-- Location: MLABCELL_X87_Y37_N39
\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

-- Location: FF_X87_Y37_N40
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

-- Location: FF_X88_Y36_N20
\G3|resshift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(14));

-- Location: MLABCELL_X87_Y34_N36
\G10|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~49_sumout\ = SUM(( \G2|saida\(14) ) + ( GND ) + ( \G10|Add0~46\ ))
-- \G10|Add0~50\ = CARRY(( \G2|saida\(14) ) + ( GND ) + ( \G10|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_saida\(14),
	cin => \G10|Add0~46\,
	sumout => \G10|Add0~49_sumout\,
	cout => \G10|Add0~50\);

-- Location: FF_X88_Y32_N19
\G10|SAIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~49_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(14));

-- Location: LABCELL_X88_Y32_N30
\G12|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~14_combout\ = ( \G2|saida\(14) & ( \G10|SAIDA\(14) ) ) # ( !\G2|saida\(14) & ( \G10|SAIDA\(14) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & ((\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(14) & ( !\G10|SAIDA\(14) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (!\G16|ZeroULA~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000001010001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~0_combout\,
	datae => \G2|ALT_INV_saida\(14),
	dataf => \G10|ALT_INV_SAIDA\(14),
	combout => \G12|SAIDA~14_combout\);

-- Location: LABCELL_X88_Y32_N42
\G12|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(14) = ( \G12|SAIDA~14_combout\ & ( (\Clock_Sistema~input_o\) # (\G12|SAIDA\(14)) ) ) # ( !\G12|SAIDA~14_combout\ & ( (\G12|SAIDA\(14) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(14),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G12|ALT_INV_SAIDA~14_combout\,
	combout => \G12|SAIDA\(14));

-- Location: LABCELL_X88_Y36_N18
\G13|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~14_combout\ = ( \G12|SAIDA\(14) & ( (!\G5|origalu\(2)) # (\G3|resshift\(14)) ) ) # ( !\G12|SAIDA\(14) & ( (\G5|origalu\(2) & \G3|resshift\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_origalu\(2),
	datad => \G3|ALT_INV_resshift\(14),
	dataf => \G12|ALT_INV_SAIDA\(14),
	combout => \G13|SAIDA~14_combout\);

-- Location: LABCELL_X88_Y36_N21
\G13|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(14) = ( \G13|SAIDA~14_combout\ & ( (\G13|SAIDA\(14)) # (\Clock_Sistema~input_o\) ) ) # ( !\G13|SAIDA~14_combout\ & ( (!\Clock_Sistema~input_o\ & \G13|SAIDA\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G13|ALT_INV_SAIDA\(14),
	dataf => \G13|ALT_INV_SAIDA~14_combout\,
	combout => \G13|SAIDA\(14));

-- Location: LABCELL_X88_Y36_N3
\G1|pout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(14) = ( \G13|SAIDA\(14) & ( \Clock_Sistema~input_o\ ) ) # ( \G13|SAIDA\(14) & ( !\Clock_Sistema~input_o\ & ( \G1|pout\(14) ) ) ) # ( !\G13|SAIDA\(14) & ( !\Clock_Sistema~input_o\ & ( \G1|pout\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(14),
	datae => \G13|ALT_INV_SAIDA\(14),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(14));

-- Location: MLABCELL_X87_Y37_N42
\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(15),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~57_sumout\);

-- Location: FF_X87_Y37_N43
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

-- Location: MLABCELL_X87_Y34_N39
\G10|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|Add0~53_sumout\ = SUM(( \G2|saida\(15) ) + ( GND ) + ( \G10|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_saida\(15),
	cin => \G10|Add0~50\,
	sumout => \G10|Add0~53_sumout\);

-- Location: FF_X87_Y34_N41
\G10|SAIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(15));

-- Location: LABCELL_X88_Y32_N33
\G12|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~15_combout\ = ( \G2|saida\(15) & ( \G10|SAIDA\(15) ) ) # ( !\G2|saida\(15) & ( \G10|SAIDA\(15) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & (\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((\G16|ZeroULA~1_combout\))))) ) ) ) # ( 
-- \G2|saida\(15) & ( !\G10|SAIDA\(15) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & (!\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111110101000000100000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~0_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G2|ALT_INV_saida\(15),
	dataf => \G10|ALT_INV_SAIDA\(15),
	combout => \G12|SAIDA~15_combout\);

-- Location: LABCELL_X88_Y32_N45
\G12|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(15) = ( \G12|SAIDA~15_combout\ & ( (\G12|SAIDA\(15)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~15_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G12|ALT_INV_SAIDA\(15),
	dataf => \G12|ALT_INV_SAIDA~15_combout\,
	combout => \G12|SAIDA\(15));

-- Location: FF_X87_Y34_N50
\G3|resshift[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G3|resshift\(15));

-- Location: MLABCELL_X87_Y34_N48
\G13|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~15_combout\ = ( \G3|resshift\(15) & ( \G5|origalu\(2) ) ) # ( \G3|resshift\(15) & ( !\G5|origalu\(2) & ( \G12|SAIDA\(15) ) ) ) # ( !\G3|resshift\(15) & ( !\G5|origalu\(2) & ( \G12|SAIDA\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G12|ALT_INV_SAIDA\(15),
	datae => \G3|ALT_INV_resshift\(15),
	dataf => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~15_combout\);

-- Location: LABCELL_X85_Y35_N30
\G13|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(15) = ( \G13|SAIDA\(15) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~15_combout\) ) ) # ( !\G13|SAIDA\(15) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA~15_combout\,
	dataf => \G13|ALT_INV_SAIDA\(15),
	combout => \G13|SAIDA\(15));

-- Location: LABCELL_X88_Y36_N36
\G1|pout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(15) = ( \G1|pout\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(15) ) ) ) # ( !\G1|pout\(15) & ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(15) ) ) ) # ( \G1|pout\(15) & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(15),
	datae => \G1|ALT_INV_pout\(15),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(15));

-- Location: LABCELL_X88_Y36_N6
\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(10) & ( !\G1|pout\(11) & ( (!\G1|pout\(15) & (!\G1|pout\(13) & (!\G1|pout\(14) & !\G1|pout\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(15),
	datab => \G1|ALT_INV_pout\(13),
	datac => \G1|ALT_INV_pout\(14),
	datad => \G1|ALT_INV_pout\(12),
	datae => \G1|ALT_INV_pout\(10),
	dataf => \G1|ALT_INV_pout\(11),
	combout => \G4|Mux0~1_combout\);

-- Location: MLABCELL_X87_Y32_N0
\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux0~0_combout\,
	combout => \G4|Mux0~3_combout\);

-- Location: LABCELL_X85_Y33_N15
\G4|tipoi[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[0]~0_combout\ = ( \Clock_Sistema~input_o\ & ( (\G4|Mux2~0_combout\ & (\G4|Mux0~3_combout\ & ((\G4|Mux5~1_combout\) # (\G4|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux6~0_combout\,
	datab => \G4|ALT_INV_Mux5~1_combout\,
	datac => \G4|ALT_INV_Mux2~0_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|tipoi[0]~0_combout\);

-- Location: FF_X85_Y33_N46
\G9|AUX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G4|tipoi[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|AUX\(2));

-- Location: FF_X87_Y34_N14
\G9|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G9|AUX\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|SAIDA\(2));

-- Location: FF_X87_Y34_N1
\G10|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G10|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(2));

-- Location: LABCELL_X88_Y32_N3
\G12|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~2_combout\ = ( \G10|SAIDA\(2) & ( \G2|saida\(2) ) ) # ( !\G10|SAIDA\(2) & ( \G2|saida\(2) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & (!\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G10|SAIDA\(2) & ( !\G2|saida\(2) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & (\G16|ZeroULA~0_combout\)) # (\G16|Equal1~3_combout\ & ((\G16|ZeroULA~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000001010111111011111010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~0_combout\,
	datad => \G16|ALT_INV_ZeroULA~1_combout\,
	datae => \G10|ALT_INV_SAIDA\(2),
	dataf => \G2|ALT_INV_saida\(2),
	combout => \G12|SAIDA~2_combout\);

-- Location: LABCELL_X88_Y32_N51
\G12|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(2) = ( \G12|SAIDA~2_combout\ & ( (\G12|SAIDA\(2)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~2_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(2),
	dataf => \G12|ALT_INV_SAIDA~2_combout\,
	combout => \G12|SAIDA\(2));

-- Location: LABCELL_X81_Y35_N15
\G13|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~2_combout\ = (!\G5|origalu\(2) & \G12|SAIDA\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_origalu\(2),
	datac => \G12|ALT_INV_SAIDA\(2),
	combout => \G13|SAIDA~2_combout\);

-- Location: MLABCELL_X87_Y35_N27
\G13|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(2) = ( \G13|SAIDA\(2) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~2_combout\) ) ) # ( !\G13|SAIDA\(2) & ( (\G13|SAIDA~2_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA~2_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(2),
	combout => \G13|SAIDA\(2));

-- Location: MLABCELL_X87_Y35_N39
\G1|pout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(2) = ( \G1|pout\(2) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(2)) ) ) # ( !\G1|pout\(2) & ( (\G13|SAIDA\(2) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G13|ALT_INV_SAIDA\(2),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G1|pout\(2));

-- Location: FF_X87_Y37_N8
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

-- Location: FF_X88_Y34_N34
\G10|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(3));

-- Location: LABCELL_X88_Y34_N9
\G12|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~3_combout\ = ( \G5|origalu\(2) & ( \G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~1_combout\ & ((\G2|saida\(3)))) # (\G16|ZeroULA~1_combout\ & (\G10|SAIDA\(3))) ) ) ) # ( !\G5|origalu\(2) & ( \G16|Equal1~3_combout\ & ( \G2|saida\(3) ) ) ) # ( 
-- \G5|origalu\(2) & ( !\G16|Equal1~3_combout\ & ( (!\G16|ZeroULA~0_combout\ & ((\G2|saida\(3)))) # (\G16|ZeroULA~0_combout\ & (\G10|SAIDA\(3))) ) ) ) # ( !\G5|origalu\(2) & ( !\G16|Equal1~3_combout\ & ( \G2|saida\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000001011111010100000000111111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G10|ALT_INV_SAIDA\(3),
	datab => \G16|ALT_INV_ZeroULA~1_combout\,
	datac => \G16|ALT_INV_ZeroULA~0_combout\,
	datad => \G2|ALT_INV_saida\(3),
	datae => \G5|ALT_INV_origalu\(2),
	dataf => \G16|ALT_INV_Equal1~3_combout\,
	combout => \G12|SAIDA~3_combout\);

-- Location: LABCELL_X88_Y34_N0
\G12|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(3) = ( \G12|SAIDA\(3) & ( \G12|SAIDA~3_combout\ ) ) # ( !\G12|SAIDA\(3) & ( \G12|SAIDA~3_combout\ & ( \Clock_Sistema~input_o\ ) ) ) # ( \G12|SAIDA\(3) & ( !\G12|SAIDA~3_combout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G12|ALT_INV_SAIDA\(3),
	dataf => \G12|ALT_INV_SAIDA~3_combout\,
	combout => \G12|SAIDA\(3));

-- Location: LABCELL_X85_Y35_N3
\G13|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~3_combout\ = (\G12|SAIDA\(3) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(3),
	datac => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~3_combout\);

-- Location: MLABCELL_X87_Y35_N21
\G13|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(3) = ( \G13|SAIDA\(3) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~3_combout\) ) ) # ( !\G13|SAIDA\(3) & ( (\Clock_Sistema~input_o\ & \G13|SAIDA~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G13|ALT_INV_SAIDA~3_combout\,
	dataf => \G13|ALT_INV_SAIDA\(3),
	combout => \G13|SAIDA\(3));

-- Location: MLABCELL_X87_Y35_N36
\G1|pout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(3) = ( \G1|pout\(3) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA\(3)) ) ) # ( !\G1|pout\(3) & ( (\G13|SAIDA\(3) & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA\(3),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G1|ALT_INV_pout\(3),
	combout => \G1|pout\(3));

-- Location: MLABCELL_X87_Y35_N33
\G4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux6~0_combout\ = ( \G1|pout\(1) & ( (!\G1|pout\(3) & ((!\G1|pout\(2)) # (!\G1|pout\(0)))) ) ) # ( !\G1|pout\(1) & ( (!\G1|pout\(3) & ((\G1|pout\(0)) # (\G1|pout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(3),
	datab => \G1|ALT_INV_pout\(2),
	datac => \G1|ALT_INV_pout\(0),
	dataf => \G1|ALT_INV_pout\(1),
	combout => \G4|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y35_N30
\G4|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux6~1_combout\ = ( \G4|Mux0~1_combout\ & ( (\G4|Mux6~0_combout\ & \G4|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux6~0_combout\,
	datad => \G4|ALT_INV_Mux0~0_combout\,
	dataf => \G4|ALT_INV_Mux0~1_combout\,
	combout => \G4|Mux6~1_combout\);

-- Location: MLABCELL_X87_Y33_N18
\G5|regdest~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|regdest~0_combout\ = ( \G4|Mux6~1_combout\ & ( (\Clock_Sistema~input_o\ & !\G4|Mux5~1_combout\) ) ) # ( !\G4|Mux6~1_combout\ & ( \Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux5~1_combout\,
	dataf => \G4|ALT_INV_Mux6~1_combout\,
	combout => \G5|regdest~0_combout\);

-- Location: MLABCELL_X87_Y33_N42
\G5|escrevereg\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|escrevereg~combout\ = ( \G5|escrevereg~combout\ & ( (!\G4|rs[1]~1_combout\) # (!\G5|regdest~0_combout\) ) ) # ( !\G5|escrevereg~combout\ & ( (!\G4|rs[1]~1_combout\ & \G5|regdest~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[1]~1_combout\,
	datac => \G5|ALT_INV_regdest~0_combout\,
	dataf => \G5|ALT_INV_escrevereg~combout\,
	combout => \G5|escrevereg~combout\);

-- Location: MLABCELL_X87_Y35_N24
\G4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux5~0_combout\ = ( !\G1|pout\(2) & ( (\G4|Mux0~0_combout\ & (\G1|pout\(0) & (!\G1|pout\(3) & \G4|Mux0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~0_combout\,
	datab => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G1|ALT_INV_pout\(2),
	combout => \G4|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y33_N48
\G4|tipoi[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|tipoi[2]~3_combout\ = ( \G4|Mux5~1_combout\ & ( !\Clock_Sistema~input_o\ ) ) # ( !\G4|Mux5~1_combout\ & ( (!\Clock_Sistema~input_o\) # (!\G4|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux6~1_combout\,
	dataf => \G4|ALT_INV_Mux5~1_combout\,
	combout => \G4|tipoi[2]~3_combout\);

-- Location: MLABCELL_X87_Y33_N51
\G5|regdest\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|regdest~combout\ = ( \G5|regdest~combout\ & ( (!\G5|regdest~0_combout\) # (\G4|tipoi[2]~3_combout\) ) ) # ( !\G5|regdest~combout\ & ( (\G5|regdest~0_combout\ & \G4|tipoi[2]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_regdest~0_combout\,
	datab => \G4|ALT_INV_tipoi[2]~3_combout\,
	dataf => \G5|ALT_INV_regdest~combout\,
	combout => \G5|regdest~combout\);

-- Location: LABCELL_X88_Y31_N24
\G6|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[0]~0_combout\ = ( \Clock_Sistema~input_o\ & ( (!\G5|regdest~combout\ & (\G4|Mux0~2_combout\)) # (\G5|regdest~combout\ & ((\G4|Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux5~0_combout\,
	datad => \G5|ALT_INV_regdest~combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G6|SAIDA[0]~0_combout\);

-- Location: LABCELL_X88_Y31_N33
\G4|rd[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~0_combout\ = ( \Clock_Sistema~input_o\ & ( (!\G4|Mux6~1_combout\ & (!\G4|Mux5~1_combout\ & \G4|Mux0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Mux6~1_combout\,
	datac => \G4|ALT_INV_Mux5~1_combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|rd[0]~0_combout\);

-- Location: MLABCELL_X87_Y35_N9
\G4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~0_combout\ = ( !\G1|pout\(0) & ( \G1|pout\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|ALT_INV_pout\(2),
	dataf => \G1|ALT_INV_pout\(0),
	combout => \G4|Mux3~0_combout\);

-- Location: LABCELL_X88_Y31_N6
\G6|SAIDA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[2]~2_combout\ = ( \G4|Mux0~1_combout\ & ( \Clock_Sistema~input_o\ & ( (!\G4|Mux0~0_combout\) # ((!\G4|Mux3~0_combout\) # ((!\G5|regdest~combout\) # (\G1|pout\(3)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \Clock_Sistema~input_o\ ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\Clock_Sistema~input_o\ ) ) # ( !\G4|Mux0~1_combout\ & ( !\Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~0_combout\,
	datab => \G4|ALT_INV_Mux3~0_combout\,
	datac => \G5|ALT_INV_regdest~combout\,
	datad => \G1|ALT_INV_pout\(3),
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G6|SAIDA[2]~2_combout\);

-- Location: LABCELL_X88_Y31_N12
\G6|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|SAIDA[1]~1_combout\ = ( \Clock_Sistema~input_o\ & ( (!\G4|Mux5~1_combout\) # (!\G5|regdest~combout\) ) ) # ( !\Clock_Sistema~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux5~1_combout\,
	datad => \G5|ALT_INV_regdest~combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G6|SAIDA[1]~1_combout\);

-- Location: LABCELL_X88_Y31_N30
\G7|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~1_combout\ = ( \G6|SAIDA[1]~1_combout\ & ( (!\G6|SAIDA[0]~0_combout\ & (!\G4|rd[0]~0_combout\ & \G6|SAIDA[2]~2_combout\)) ) ) # ( !\G6|SAIDA[1]~1_combout\ & ( (\G6|SAIDA[0]~0_combout\ & (\G4|rd[0]~0_combout\ & \G6|SAIDA[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~2_combout\,
	dataf => \G6|ALT_INV_SAIDA[1]~1_combout\,
	combout => \G7|Mux15~1_combout\);

-- Location: MLABCELL_X84_Y32_N15
\G16|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~0_combout\ = ( !\G15|SAIDA\(5) & ( (!\G15|SAIDA\(4) & !\G15|SAIDA\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G15|ALT_INV_SAIDA\(4),
	datad => \G15|ALT_INV_SAIDA\(3),
	dataf => \G15|ALT_INV_SAIDA\(5),
	combout => \G16|Mux15~0_combout\);

-- Location: MLABCELL_X84_Y32_N39
\G4|funct[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|funct[0]~0_combout\ = ( !\G4|Mux5~1_combout\ & ( (\Clock_Sistema~input_o\ & (!\G4|Mux6~0_combout\ & (\G4|Mux2~0_combout\ & \G4|Mux0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux6~0_combout\,
	datac => \G4|ALT_INV_Mux2~0_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G4|ALT_INV_Mux5~1_combout\,
	combout => \G4|funct[0]~0_combout\);

-- Location: FF_X84_Y32_N41
\G15|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G4|funct[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G15|SAIDA\(0));

-- Location: MLABCELL_X84_Y32_N51
\G16|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~1_combout\ = ( \G15|SAIDA\(0) & ( (!\G15|SAIDA\(5) & (!\G15|SAIDA\(4) & !\G15|SAIDA\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G15|ALT_INV_SAIDA\(5),
	datac => \G15|ALT_INV_SAIDA\(4),
	datad => \G15|ALT_INV_SAIDA\(3),
	dataf => \G15|ALT_INV_SAIDA\(0),
	combout => \G16|Mux15~1_combout\);

-- Location: MLABCELL_X87_Y35_N6
\G4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux3~1_combout\ = ( !\G1|pout\(3) & ( (\G4|Mux3~0_combout\ & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Mux3~0_combout\,
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G1|ALT_INV_pout\(3),
	combout => \G4|Mux3~1_combout\);

-- Location: LABCELL_X88_Y31_N18
\G7|Reg[1][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][0]~0_combout\ = ( \G4|Mux3~1_combout\ & ( (\G5|escrevereg~combout\ & ((!\Clock_Sistema~input_o\) # (!\G5|regdest~combout\))) ) ) # ( !\G4|Mux3~1_combout\ & ( (\G5|escrevereg~combout\ & ((!\Clock_Sistema~input_o\) # ((!\G4|Mux5~1_combout\) # 
-- (!\G5|regdest~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010001000101010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux5~1_combout\,
	datad => \G5|ALT_INV_regdest~combout\,
	dataf => \G4|ALT_INV_Mux3~1_combout\,
	combout => \G7|Reg[1][0]~0_combout\);

-- Location: LABCELL_X83_Y31_N45
\G7|Reg[1][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][0]~3_combout\ = ( \G6|SAIDA[0]~0_combout\ & ( \G7|Reg[1][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Reg[1][0]~0_combout\,
	dataf => \G6|ALT_INV_SAIDA[0]~0_combout\,
	combout => \G7|Reg[1][0]~3_combout\);

-- Location: MLABCELL_X84_Y32_N57
\G7|Reg[1][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][15]~combout\ = ( \G7|Reg[1][0]~3_combout\ & ( \G18|SAIDA\(15) ) ) # ( !\G7|Reg[1][0]~3_combout\ & ( \G7|Reg[1][15]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(15),
	datad => \G7|ALT_INV_Reg[1][15]~combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~3_combout\,
	combout => \G7|Reg[1][15]~combout\);

-- Location: LABCELL_X88_Y33_N12
\G14|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~15_combout\ = ( !\G5|escrevereg~combout\ & ( (\G7|Reg[1][15]~combout\ & \G4|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[1][15]~combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G5|ALT_INV_escrevereg~combout\,
	combout => \G14|SAIDA~15_combout\);

-- Location: LABCELL_X88_Y33_N39
\G14|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(15) = ( \G14|SAIDA\(15) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~15_combout\) ) ) # ( !\G14|SAIDA\(15) & ( (\G14|SAIDA~15_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA~15_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(15),
	combout => \G14|SAIDA\(15));

-- Location: LABCELL_X88_Y33_N54
\G16|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~1_combout\ = ( \G4|Mux0~1_combout\ & ( \G1|pout\(3) & ( \G5|escrevereg~combout\ ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G1|pout\(3) & ( \G5|escrevereg~combout\ ) ) ) # ( \G4|Mux0~1_combout\ & ( !\G1|pout\(3) & ( (\G5|escrevereg~combout\ & 
-- ((!\G4|Mux3~0_combout\) # ((!\G5|regdest~combout\) # (!\G4|Mux0~0_combout\)))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G1|pout\(3) & ( \G5|escrevereg~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux3~0_combout\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G5|ALT_INV_regdest~combout\,
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G1|ALT_INV_pout\(3),
	combout => \G16|Mux13~1_combout\);

-- Location: LABCELL_X88_Y33_N27
\G7|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~2_combout\ = ( \G5|regdest~combout\ & ( (!\G4|Mux5~0_combout\ & (\G16|Mux13~1_combout\ & ((!\G4|Mux0~2_combout\) # (\G4|Mux6~1_combout\)))) ) ) # ( !\G5|regdest~combout\ & ( (!\G4|Mux0~2_combout\ & \G16|Mux13~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000100010100000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux5~0_combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux6~1_combout\,
	datad => \G16|ALT_INV_Mux13~1_combout\,
	dataf => \G5|ALT_INV_regdest~combout\,
	combout => \G7|Mux15~2_combout\);

-- Location: LABCELL_X85_Y32_N45
\G18|SAIDA~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~56_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G18|SAIDA\(15) & !\G14|SAIDA\(15)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(15),
	datac => \G14|ALT_INV_SAIDA\(15),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G18|SAIDA~56_combout\);

-- Location: MLABCELL_X87_Y33_N6
\G5|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|Equal1~0_combout\ = ( \G4|op[0]~0_combout\ & ( \G4|rs[1]~1_combout\ ) ) # ( !\G4|op[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rs[1]~1_combout\,
	dataf => \G4|ALT_INV_op[0]~0_combout\,
	combout => \G5|Equal1~0_combout\);

-- Location: MLABCELL_X87_Y33_N57
\G5|memparareg\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|memparareg~combout\ = ( \G5|regdest~0_combout\ & ( !\G5|Equal1~0_combout\ ) ) # ( !\G5|regdest~0_combout\ & ( \G5|memparareg~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_Equal1~0_combout\,
	datad => \G5|ALT_INV_memparareg~combout\,
	dataf => \G5|ALT_INV_regdest~0_combout\,
	combout => \G5|memparareg~combout\);

-- Location: MLABCELL_X87_Y33_N39
\G4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Equal0~0_combout\ = ( \G4|Mux6~1_combout\ ) # ( !\G4|Mux6~1_combout\ & ( \G4|Mux5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G4|ALT_INV_Mux5~1_combout\,
	dataf => \G4|ALT_INV_Mux6~1_combout\,
	combout => \G4|Equal0~0_combout\);

-- Location: LABCELL_X83_Y31_N6
\G7|Reg[1][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][4]~combout\ = ( \G7|Reg[1][4]~combout\ & ( (!\G7|Reg[1][0]~3_combout\) # (\G18|SAIDA\(4)) ) ) # ( !\G7|Reg[1][4]~combout\ & ( (\G7|Reg[1][0]~3_combout\ & \G18|SAIDA\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[1][0]~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(4),
	dataf => \G7|ALT_INV_Reg[1][4]~combout\,
	combout => \G7|Reg[1][4]~combout\);

-- Location: LABCELL_X85_Y31_N12
\G14|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~4_combout\ = ( \G7|Reg[1][4]~combout\ & ( (\G4|Mux0~2_combout\ & ((!\G5|escrevereg~combout\) # (\G4|Equal0~0_combout\))) ) ) # ( !\G7|Reg[1][4]~combout\ & ( (\G4|Equal0~0_combout\ & (\G4|Mux0~2_combout\ & \G5|escrevereg~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G5|ALT_INV_escrevereg~combout\,
	dataf => \G7|ALT_INV_Reg[1][4]~combout\,
	combout => \G14|SAIDA~4_combout\);

-- Location: LABCELL_X85_Y31_N51
\G14|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(4) = ( \G14|SAIDA\(4) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~4_combout\) ) ) # ( !\G14|SAIDA\(4) & ( (\G14|SAIDA~4_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA~4_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(4),
	combout => \G14|SAIDA\(4));

-- Location: MLABCELL_X84_Y30_N54
\G16|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~1_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G18|SAIDA\(4) & !\G14|SAIDA\(4)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(4),
	datab => \G14|ALT_INV_SAIDA\(4),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Mux11~1_combout\);

-- Location: LABCELL_X88_Y33_N45
\G7|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux12~0_combout\ = (\G5|escrevereg~combout\ & \Clock_Sistema~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Mux12~0_combout\);

-- Location: LABCELL_X85_Y31_N6
\G7|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux12~1_combout\ = ( \G18|SAIDA\(3) & ( \G7|Mux12~0_combout\ & ( (\G6|SAIDA[2]~2_combout\ & ((!\G6|SAIDA[1]~1_combout\ & (\G6|SAIDA[0]~0_combout\ & \G4|rd[0]~0_combout\)) # (\G6|SAIDA[1]~1_combout\ & (!\G6|SAIDA[0]~0_combout\ & 
-- !\G4|rd[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datab => \G6|ALT_INV_SAIDA[2]~2_combout\,
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G4|ALT_INV_rd[0]~0_combout\,
	datae => \G18|ALT_INV_SAIDA\(3),
	dataf => \G7|ALT_INV_Mux12~0_combout\,
	combout => \G7|Mux12~1_combout\);

-- Location: LABCELL_X88_Y31_N42
\G7|Reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~2_combout\ = ( \G7|Reg[1][0]~0_combout\ & ( (!\G6|SAIDA[0]~0_combout\ & \G18|SAIDA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(2),
	dataf => \G7|ALT_INV_Reg[1][0]~0_combout\,
	combout => \G7|Reg~2_combout\);

-- Location: MLABCELL_X84_Y30_N6
\G7|Reg[1][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][0]~combout\ = ( \G7|Reg[1][0]~combout\ & ( (!\G7|Reg[1][0]~3_combout\) # (\G18|SAIDA\(0)) ) ) # ( !\G7|Reg[1][0]~combout\ & ( (\G18|SAIDA\(0) & \G7|Reg[1][0]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(0),
	datac => \G7|ALT_INV_Reg[1][0]~3_combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~combout\,
	combout => \G7|Reg[1][0]~combout\);

-- Location: LABCELL_X88_Y31_N48
\G7|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~0_combout\ = ( \G7|Reg[1][0]~0_combout\ & ( \G6|SAIDA[0]~0_combout\ & ( (!\G4|Mux0~2_combout\) # ((!\Clock_Sistema~input_o\) # (\G7|Reg[1][0]~combout\)) ) ) ) # ( !\G7|Reg[1][0]~0_combout\ & ( \G6|SAIDA[0]~0_combout\ & ( (!\G4|Mux0~2_combout\) # 
-- ((!\Clock_Sistema~input_o\) # (\G7|Reg[1][0]~combout\)) ) ) ) # ( \G7|Reg[1][0]~0_combout\ & ( !\G6|SAIDA[0]~0_combout\ & ( (!\Clock_Sistema~input_o\) # ((!\G4|Mux0~2_combout\ & ((\G18|SAIDA\(0)))) # (\G4|Mux0~2_combout\ & (\G7|Reg[1][0]~combout\))) ) ) ) 
-- # ( !\G7|Reg[1][0]~0_combout\ & ( !\G6|SAIDA[0]~0_combout\ & ( (!\G4|Mux0~2_combout\) # ((!\Clock_Sistema~input_o\) # (\G7|Reg[1][0]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111100011111101111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[1][0]~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(0),
	datae => \G7|ALT_INV_Reg[1][0]~0_combout\,
	dataf => \G6|ALT_INV_SAIDA[0]~0_combout\,
	combout => \G7|Mux31~0_combout\);

-- Location: LABCELL_X85_Y31_N9
\G7|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux11~0_combout\ = ( \G7|Mux12~0_combout\ & ( \G18|SAIDA\(4) & ( (\G6|SAIDA[2]~2_combout\ & ((!\G6|SAIDA[1]~1_combout\ & (\G4|rd[0]~0_combout\ & \G6|SAIDA[0]~0_combout\)) # (\G6|SAIDA[1]~1_combout\ & (!\G4|rd[0]~0_combout\ & 
-- !\G6|SAIDA[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datab => \G6|ALT_INV_SAIDA[2]~2_combout\,
	datac => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datae => \G7|ALT_INV_Mux12~0_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Mux11~0_combout\);

-- Location: LABCELL_X85_Y33_N51
\G16|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~0_combout\ = ( \G16|Mux15~1_combout\ & ( \G14|SAIDA\(4) & ( (!\G16|Mux15~0_combout\) # (\G16|Add1~17_sumout\) ) ) ) # ( !\G16|Mux15~1_combout\ & ( \G14|SAIDA\(4) & ( (\G16|Add0~17_sumout\ & \G16|Mux15~0_combout\) ) ) ) # ( \G16|Mux15~1_combout\ 
-- & ( !\G14|SAIDA\(4) & ( (!\G16|Mux15~0_combout\ & ((\G7|Mux11~0_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~17_sumout\)) ) ) ) # ( !\G16|Mux15~1_combout\ & ( !\G14|SAIDA\(4) & ( (\G16|Add0~17_sumout\ & \G16|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010100000011000000111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~17_sumout\,
	datab => \G16|ALT_INV_Add0~17_sumout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G7|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux15~1_combout\,
	dataf => \G14|ALT_INV_SAIDA\(4),
	combout => \G16|Mux11~0_combout\);

-- Location: LABCELL_X81_Y33_N45
\G17|ram.we_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram.we_a~0_combout\ = ( \G5|origalu\(1) & ( (!\G5|memparareg~combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G5|ALT_INV_origalu\(1),
	combout => \G17|ram.we_a~0_combout\);

-- Location: LABCELL_X88_Y31_N21
\G7|Reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg~1_combout\ = ( \G7|Reg[1][0]~0_combout\ & ( (\G18|SAIDA\(1)) # (\G6|SAIDA[0]~0_combout\) ) ) # ( !\G7|Reg[1][0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(1),
	dataf => \G7|ALT_INV_Reg[1][0]~0_combout\,
	combout => \G7|Reg~1_combout\);

-- Location: LABCELL_X85_Y31_N30
\G14|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~0_combout\ = ( \G5|escrevereg~combout\ & ( \G7|Reg[1][0]~combout\ & ( (\G4|Equal0~0_combout\ & (\G4|Mux0~3_combout\ & \G4|Mux2~0_combout\)) ) ) ) # ( !\G5|escrevereg~combout\ & ( \G7|Reg[1][0]~combout\ ) ) # ( \G5|escrevereg~combout\ & ( 
-- !\G7|Reg[1][0]~combout\ & ( (\G4|Equal0~0_combout\ & (\G4|Mux0~3_combout\ & \G4|Mux2~0_combout\)) ) ) ) # ( !\G5|escrevereg~combout\ & ( !\G7|Reg[1][0]~combout\ & ( !\G4|Mux0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000001000111111111111111110000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G4|ALT_INV_Mux2~0_combout\,
	datae => \G5|ALT_INV_escrevereg~combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~combout\,
	combout => \G14|SAIDA~0_combout\);

-- Location: LABCELL_X85_Y31_N0
\G14|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(0) = (!\Clock_Sistema~input_o\ & ((\G14|SAIDA\(0)))) # (\Clock_Sistema~input_o\ & (\G14|SAIDA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(0));

-- Location: MLABCELL_X87_Y31_N0
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

-- Location: MLABCELL_X87_Y31_N3
\G16|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~1_sumout\ = SUM(( ((!\G5|escrevereg~combout\) # ((!\Clock_Sistema~input_o\) # (!\G7|Mux15~1_combout\))) # (\G18|SAIDA\(0)) ) + ( !\G14|SAIDA\(0) ) + ( \G16|Add1~66_cout\ ))
-- \G16|Add1~2\ = CARRY(( ((!\G5|escrevereg~combout\) # ((!\Clock_Sistema~input_o\) # (!\G7|Mux15~1_combout\))) # (\G18|SAIDA\(0)) ) + ( !\G14|SAIDA\(0) ) + ( \G16|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(0),
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G7|ALT_INV_Mux15~1_combout\,
	dataf => \G14|ALT_INV_SAIDA\(0),
	cin => \G16|Add1~66_cout\,
	sumout => \G16|Add1~1_sumout\,
	cout => \G16|Add1~2\);

-- Location: MLABCELL_X87_Y31_N6
\G16|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~5_sumout\ = SUM(( !\G14|SAIDA\(1) ) + ( (!\Clock_Sistema~input_o\) # ((\G7|Reg~1_combout\ & ((!\G4|Mux0~2_combout\) # (\G4|Equal0~0_combout\)))) ) + ( \G16|Add1~2\ ))
-- \G16|Add1~6\ = CARRY(( !\G14|SAIDA\(1) ) + ( (!\Clock_Sistema~input_o\) # ((\G7|Reg~1_combout\ & ((!\G4|Mux0~2_combout\) # (\G4|Equal0~0_combout\)))) ) + ( \G16|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G14|ALT_INV_SAIDA\(1),
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add1~2\,
	sumout => \G16|Add1~5_sumout\,
	cout => \G16|Add1~6\);

-- Location: MLABCELL_X87_Y31_N9
\G16|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~9_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (((!\G4|Equal0~0_combout\ & \G4|Mux0~2_combout\)) # (\G7|Reg~2_combout\))) ) + ( !\G14|SAIDA\(2) ) + ( \G16|Add1~6\ ))
-- \G16|Add1~10\ = CARRY(( (\Clock_Sistema~input_o\ & (((!\G4|Equal0~0_combout\ & \G4|Mux0~2_combout\)) # (\G7|Reg~2_combout\))) ) + ( !\G14|SAIDA\(2) ) + ( \G16|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G7|ALT_INV_Reg~2_combout\,
	dataf => \G14|ALT_INV_SAIDA\(2),
	cin => \G16|Add1~6\,
	sumout => \G16|Add1~9_sumout\,
	cout => \G16|Add1~10\);

-- Location: MLABCELL_X87_Y31_N12
\G16|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~13_sumout\ = SUM(( (\G5|escrevereg~combout\ & (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & \G18|SAIDA\(3)))) ) + ( !\G14|SAIDA\(3) ) + ( \G16|Add1~10\ ))
-- \G16|Add1~14\ = CARRY(( (\G5|escrevereg~combout\ & (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & \G18|SAIDA\(3)))) ) + ( !\G14|SAIDA\(3) ) + ( \G16|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA\(3),
	dataf => \G14|ALT_INV_SAIDA\(3),
	cin => \G16|Add1~10\,
	sumout => \G16|Add1~13_sumout\,
	cout => \G16|Add1~14\);

-- Location: MLABCELL_X82_Y32_N42
\G16|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~0_combout\ = ( \G16|Mux15~1_combout\ & ( \G14|SAIDA\(3) & ( (!\G16|Mux15~0_combout\) # (\G16|Add1~13_sumout\) ) ) ) # ( !\G16|Mux15~1_combout\ & ( \G14|SAIDA\(3) & ( (\G16|Add0~13_sumout\ & \G16|Mux15~0_combout\) ) ) ) # ( \G16|Mux15~1_combout\ 
-- & ( !\G14|SAIDA\(3) & ( (!\G16|Mux15~0_combout\ & (\G7|Mux12~1_combout\)) # (\G16|Mux15~0_combout\ & ((\G16|Add1~13_sumout\))) ) ) ) # ( !\G16|Mux15~1_combout\ & ( !\G14|SAIDA\(3) & ( (\G16|Add0~13_sumout\ & \G16|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111100000000010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~13_sumout\,
	datab => \G7|ALT_INV_Mux12~1_combout\,
	datac => \G16|ALT_INV_Add1~13_sumout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Mux15~1_combout\,
	dataf => \G14|ALT_INV_SAIDA\(3),
	combout => \G16|Mux12~0_combout\);

-- Location: LABCELL_X85_Y31_N36
\G7|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux14~0_combout\ = ( \G18|SAIDA\(1) & ( \G7|Reg[1][0]~0_combout\ & ( ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~2_combout\)) # (\G4|Equal0~0_combout\) ) ) ) # ( !\G18|SAIDA\(1) & ( \G7|Reg[1][0]~0_combout\ & ( (!\Clock_Sistema~input_o\) # 
-- ((\G6|SAIDA[0]~0_combout\ & ((!\G4|Mux0~2_combout\) # (\G4|Equal0~0_combout\)))) ) ) ) # ( \G18|SAIDA\(1) & ( !\G7|Reg[1][0]~0_combout\ & ( ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~2_combout\)) # (\G4|Equal0~0_combout\) ) ) ) # ( !\G18|SAIDA\(1) & ( 
-- !\G7|Reg[1][0]~0_combout\ & ( ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~2_combout\)) # (\G4|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011101111111111101110111001111110011011111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	datae => \G18|ALT_INV_SAIDA\(1),
	dataf => \G7|ALT_INV_Reg[1][0]~0_combout\,
	combout => \G7|Mux14~0_combout\);

-- Location: MLABCELL_X84_Y31_N0
\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( \G7|Mux15~0_combout\ ) + ( \G14|SAIDA\(0) ) + ( !VCC ))
-- \G16|Add0~2\ = CARRY(( \G7|Mux15~0_combout\ ) + ( \G14|SAIDA\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(0),
	datad => \G7|ALT_INV_Mux15~0_combout\,
	cin => GND,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

-- Location: MLABCELL_X84_Y31_N3
\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( \G14|SAIDA\(1) ) + ( (!\Clock_Sistema~input_o\) # ((\G7|Reg~1_combout\ & ((!\G4|Mux0~2_combout\) # (\G4|Equal0~0_combout\)))) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( \G14|SAIDA\(1) ) + ( (!\Clock_Sistema~input_o\) # ((\G7|Reg~1_combout\ & ((!\G4|Mux0~2_combout\) # (\G4|Equal0~0_combout\)))) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G14|ALT_INV_SAIDA\(1),
	dataf => \G7|ALT_INV_Reg~1_combout\,
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

-- Location: LABCELL_X83_Y31_N54
\G16|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~0_combout\ = ( \G16|Add1~5_sumout\ & ( \G16|Add0~5_sumout\ & ( ((\G16|Mux15~1_combout\ & ((\G14|SAIDA\(1)) # (\G7|Mux14~0_combout\)))) # (\G16|Mux15~0_combout\) ) ) ) # ( !\G16|Add1~5_sumout\ & ( \G16|Add0~5_sumout\ & ( (!\G16|Mux15~0_combout\ 
-- & (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(1)) # (\G7|Mux14~0_combout\)))) # (\G16|Mux15~0_combout\ & (((!\G16|Mux15~1_combout\)))) ) ) ) # ( \G16|Add1~5_sumout\ & ( !\G16|Add0~5_sumout\ & ( (\G16|Mux15~1_combout\ & (((\G16|Mux15~0_combout\) # 
-- (\G14|SAIDA\(1))) # (\G7|Mux14~0_combout\))) ) ) ) # ( !\G16|Add1~5_sumout\ & ( !\G16|Add0~5_sumout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(1)) # (\G7|Mux14~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111111100001111011100000000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux14~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(1),
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Mux15~1_combout\,
	datae => \G16|ALT_INV_Add1~5_sumout\,
	dataf => \G16|ALT_INV_Add0~5_sumout\,
	combout => \G16|Mux14~0_combout\);

-- Location: LABCELL_X81_Y33_N3
\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = ( !\G16|Mux14~0_combout\ & ( \G16|Mux15~2_combout\ & ( (\G16|Mux13~0_combout\ & (!\G16|Mux11~0_combout\ & (\G17|ram.we_a~0_combout\ & !\G16|Mux12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G17|ALT_INV_ram.we_a~0_combout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~1_combout\);

-- Location: LABCELL_X80_Y34_N48
\G17|ram~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~80_combout\ = ( \G17|ram~80_combout\ & ( (!\rtl~1_combout\) # (\G7|Mux31~0_combout\) ) ) # ( !\G17|ram~80_combout\ & ( (\G7|Mux31~0_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux31~0_combout\,
	datac => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~80_combout\,
	combout => \G17|ram~80_combout\);

-- Location: LABCELL_X81_Y33_N0
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( !\G16|Mux15~2_combout\ & ( \G16|Mux14~0_combout\ & ( (\G16|Mux13~0_combout\ & (!\G16|Mux11~0_combout\ & (!\G16|Mux12~0_combout\ & \G17|ram.we_a~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux11~0_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G17|ALT_INV_ram.we_a~0_combout\,
	datae => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux14~0_combout\,
	combout => \rtl~4_combout\);

-- Location: LABCELL_X81_Y34_N27
\G17|ram~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~96_combout\ = ( \G17|ram~96_combout\ & ( (!\rtl~4_combout\) # (\G7|Mux31~0_combout\) ) ) # ( !\G17|ram~96_combout\ & ( (\G7|Mux31~0_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux31~0_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~96_combout\,
	combout => \G17|ram~96_combout\);

-- Location: LABCELL_X80_Y34_N36
\G17|ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~112_combout\ = ( \rtl~2_combout\ & ( \G7|Mux31~0_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~112_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux31~0_combout\,
	datad => \G17|ALT_INV_ram~112_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~112_combout\);

-- Location: LABCELL_X81_Y33_N9
\rtl~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = ( \G16|Mux14~0_combout\ & ( !\G16|Mux15~2_combout\ & ( (!\G16|Mux13~0_combout\ & (!\G16|Mux12~0_combout\ & (\G17|ram.we_a~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G17|ALT_INV_ram.we_a~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~12_combout\);

-- Location: LABCELL_X80_Y34_N21
\G17|ram~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~32_combout\ = ( \G7|Mux31~0_combout\ & ( (\rtl~12_combout\) # (\G17|ram~32_combout\) ) ) # ( !\G7|Mux31~0_combout\ & ( (\G17|ram~32_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~32_combout\,
	datac => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	combout => \G17|ram~32_combout\);

-- Location: LABCELL_X81_Y33_N36
\rtl~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = ( \G16|Mux15~2_combout\ & ( !\G16|Mux12~0_combout\ & ( (!\G16|Mux13~0_combout\ & (\G16|Mux14~0_combout\ & (!\G16|Mux11~0_combout\ & \G17|ram.we_a~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G17|ALT_INV_ram.we_a~0_combout\,
	datae => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux12~0_combout\,
	combout => \rtl~10_combout\);

-- Location: LABCELL_X80_Y34_N30
\G17|ram~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~48_combout\ = ( \G7|Mux31~0_combout\ & ( (\rtl~10_combout\) # (\G17|ram~48_combout\) ) ) # ( !\G7|Mux31~0_combout\ & ( (\G17|ram~48_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~48_combout\,
	datac => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	combout => \G17|ram~48_combout\);

-- Location: LABCELL_X81_Y33_N6
\rtl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = ( \G16|Mux15~2_combout\ & ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (!\G16|Mux12~0_combout\ & (!\G16|Mux11~0_combout\ & \G17|ram.we_a~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G17|ALT_INV_ram.we_a~0_combout\,
	datae => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux14~0_combout\,
	combout => \rtl~9_combout\);

-- Location: LABCELL_X80_Y34_N33
\G17|ram~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~16_combout\ = ( \G7|Mux31~0_combout\ & ( (\rtl~9_combout\) # (\G17|ram~16_combout\) ) ) # ( !\G7|Mux31~0_combout\ & ( (\G17|ram~16_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~16_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	combout => \G17|ram~16_combout\);

-- Location: LABCELL_X81_Y32_N12
\rtl~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = ( !\G16|Mux14~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux12~0_combout\ & (!\G16|Mux13~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G16|ALT_INV_Mux13~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~11_combout\);

-- Location: LABCELL_X80_Y34_N57
\G17|ram~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~0_combout\ = ( \rtl~11_combout\ & ( \G7|Mux31~0_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datad => \G17|ALT_INV_ram~0_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~0_combout\);

-- Location: LABCELL_X80_Y34_N6
\G17|ram~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~401_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~0_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~16_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~32_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~48_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~32_combout\,
	datad => \G17|ALT_INV_ram~48_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~16_combout\,
	datag => \G17|ALT_INV_ram~0_combout\,
	combout => \G17|ram~401_combout\);

-- Location: LABCELL_X81_Y33_N24
\rtl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = ( !\G16|Mux11~0_combout\ & ( \G16|Mux13~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux14~0_combout\ & (!\G16|Mux12~0_combout\ & \G17|ram.we_a~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G17|ALT_INV_ram.we_a~0_combout\,
	datae => \G16|ALT_INV_Mux11~0_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	combout => \rtl~3_combout\);

-- Location: LABCELL_X81_Y34_N54
\G17|ram~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~64_combout\ = ( \rtl~3_combout\ & ( \G7|Mux31~0_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~64_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux31~0_combout\,
	datad => \G17|ALT_INV_ram~64_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~64_combout\);

-- Location: LABCELL_X80_Y34_N12
\G17|ram~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~272_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~401_combout\))))) # (\G16|Mux13~0_combout\ & (((!\G17|ram~401_combout\ & ((\G17|ram~64_combout\))) # (\G17|ram~401_combout\ & (\G17|ram~80_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~401_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~401_combout\ & (\G17|ram~96_combout\)) # (\G17|ram~401_combout\ & ((\G17|ram~112_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~80_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~96_combout\,
	datad => \G17|ALT_INV_ram~112_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~401_combout\,
	datag => \G17|ALT_INV_ram~64_combout\,
	combout => \G17|ram~272_combout\);

-- Location: LABCELL_X83_Y34_N42
\G18|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~2_combout\ = ( \G16|Mux12~2_combout\ & ( !\G16|Mux11~2_combout\ & ( !\G5|memparareg~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_memparareg~combout\,
	datae => \G16|ALT_INV_Mux12~2_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G18|SAIDA~2_combout\);

-- Location: LABCELL_X81_Y33_N27
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( !\G16|Mux13~0_combout\ & ( \G16|Mux11~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux14~0_combout\ & (\G17|ram.we_a~0_combout\ & !\G16|Mux12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G17|ALT_INV_ram.we_a~0_combout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G16|ALT_INV_Mux11~0_combout\,
	combout => \rtl~0_combout\);

-- Location: LABCELL_X83_Y32_N24
\G17|ram~256\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~256_combout\ = ( \G17|ram~256_combout\ & ( (!\rtl~0_combout\) # (\G7|Mux31~0_combout\) ) ) # ( !\G17|ram~256_combout\ & ( (\rtl~0_combout\ & \G7|Mux31~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G7|ALT_INV_Mux31~0_combout\,
	dataf => \G17|ALT_INV_ram~256_combout\,
	combout => \G17|ram~256_combout\);

-- Location: LABCELL_X85_Y32_N51
\G16|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~3_combout\ = ( !\G18|SAIDA\(0) & ( \G7|Mux15~2_combout\ & ( !\G14|SAIDA\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G14|ALT_INV_SAIDA\(0),
	datae => \G18|ALT_INV_SAIDA\(0),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Mux15~3_combout\);

-- Location: LABCELL_X85_Y32_N6
\G18|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~3_combout\ = ( \G5|memparareg~combout\ & ( \G16|Add0~1_sumout\ & ( (!\G16|Mux15~1_combout\ & (\G16|Mux15~0_combout\)) # (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G16|Mux15~3_combout\))) # (\G16|Mux15~0_combout\ & 
-- (\G16|Add1~1_sumout\)))) ) ) ) # ( \G5|memparareg~combout\ & ( !\G16|Add0~1_sumout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G16|Mux15~3_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010000000100000000000000000110011100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~1_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Add1~1_sumout\,
	datad => \G16|ALT_INV_Mux15~3_combout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Add0~1_sumout\,
	combout => \G18|SAIDA~3_combout\);

-- Location: LABCELL_X85_Y32_N3
\G16|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~1_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G18|SAIDA\(3) & !\G14|SAIDA\(3)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(3),
	datad => \G14|ALT_INV_SAIDA\(3),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G16|Mux12~1_combout\);

-- Location: MLABCELL_X84_Y32_N27
\G18|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~0_combout\ = ( \G16|Mux12~1_combout\ & ( \G16|Add0~13_sumout\ & ( (!\G5|memparareg~combout\ & ((!\G16|Mux15~0_combout\) # ((!\G16|Add1~13_sumout\ & \G16|Mux15~1_combout\)))) ) ) ) # ( !\G16|Mux12~1_combout\ & ( \G16|Add0~13_sumout\ & ( 
-- (!\G5|memparareg~combout\ & ((!\G16|Mux15~0_combout\ & ((!\G16|Mux15~1_combout\))) # (\G16|Mux15~0_combout\ & (!\G16|Add1~13_sumout\ & \G16|Mux15~1_combout\)))) ) ) ) # ( \G16|Mux12~1_combout\ & ( !\G16|Add0~13_sumout\ & ( (!\G5|memparareg~combout\ & 
-- ((!\G16|Add1~13_sumout\) # ((!\G16|Mux15~0_combout\) # (!\G16|Mux15~1_combout\)))) ) ) ) # ( !\G16|Mux12~1_combout\ & ( !\G16|Add0~13_sumout\ & ( (!\G5|memparareg~combout\ & ((!\G16|Mux15~1_combout\) # ((!\G16|Add1~13_sumout\ & \G16|Mux15~0_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001000000000111111100000000011000010000000001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~13_sumout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G5|ALT_INV_memparareg~combout\,
	datae => \G16|ALT_INV_Mux12~1_combout\,
	dataf => \G16|ALT_INV_Add0~13_sumout\,
	combout => \G18|SAIDA~0_combout\);

-- Location: LABCELL_X88_Y33_N0
\G16|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~2_combout\ = ( \G5|regdest~combout\ & ( (!\G4|Mux5~0_combout\ & \G16|Mux13~1_combout\) ) ) # ( !\G5|regdest~combout\ & ( (!\G4|Mux0~2_combout\ & \G16|Mux13~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Mux5~0_combout\,
	datad => \G16|ALT_INV_Mux13~1_combout\,
	dataf => \G5|ALT_INV_regdest~combout\,
	combout => \G16|Mux13~2_combout\);

-- Location: LABCELL_X85_Y33_N24
\G16|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~1_combout\ = ( \G16|Mux13~2_combout\ & ( (!\G14|SAIDA\(1) & ((!\G18|SAIDA\(1)) # ((!\G4|Equal0~0_combout\ & \G4|Mux0~2_combout\)))) ) ) # ( !\G16|Mux13~2_combout\ & ( (!\G4|Equal0~0_combout\ & (\G4|Mux0~2_combout\ & !\G14|SAIDA\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011001110000000001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Equal0~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(1),
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G14|ALT_INV_SAIDA\(1),
	dataf => \G16|ALT_INV_Mux13~2_combout\,
	combout => \G16|Mux14~1_combout\);

-- Location: MLABCELL_X84_Y32_N6
\G16|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux14~2_combout\ = ( \G16|Add0~5_sumout\ & ( (!\G16|Mux15~0_combout\ & (((\G16|Mux15~1_combout\ & !\G16|Mux14~1_combout\)))) # (\G16|Mux15~0_combout\ & (((!\G16|Mux15~1_combout\)) # (\G16|Add1~5_sumout\))) ) ) # ( !\G16|Add0~5_sumout\ & ( 
-- (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G16|Mux14~1_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000001000011010000000100111101001100010011110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~5_sumout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Mux14~1_combout\,
	dataf => \G16|ALT_INV_Add0~5_sumout\,
	combout => \G16|Mux14~2_combout\);

-- Location: LABCELL_X83_Y32_N27
\G16|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~4_combout\ = ( \G16|Add0~1_sumout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux15~1_combout\ & ((!\G16|Mux15~3_combout\)))) # (\G16|Mux15~0_combout\ & ((!\G16|Mux15~1_combout\) # ((\G16|Add1~1_sumout\)))) ) ) # ( !\G16|Add0~1_sumout\ & ( 
-- (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G16|Mux15~3_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000001001000110000000101100111010001010110011101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G16|ALT_INV_Add1~1_sumout\,
	datad => \G16|ALT_INV_Mux15~3_combout\,
	dataf => \G16|ALT_INV_Add0~1_sumout\,
	combout => \G16|Mux15~4_combout\);

-- Location: MLABCELL_X87_Y33_N21
\G16|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~3_combout\ = ( \G18|SAIDA\(2) & ( (!\G14|SAIDA\(2) & (!\G16|Mux13~2_combout\ & ((!\G4|Mux0~2_combout\) # (\G4|Equal0~0_combout\)))) ) ) # ( !\G18|SAIDA\(2) & ( (!\G14|SAIDA\(2) & ((!\G4|Mux0~2_combout\) # (\G4|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010100010000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G16|ALT_INV_Mux13~2_combout\,
	dataf => \G18|ALT_INV_SAIDA\(2),
	combout => \G16|Mux13~3_combout\);

-- Location: MLABCELL_X84_Y31_N6
\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & !\G4|Equal0~0_combout\)) # (\G7|Reg~2_combout\))) ) + ( \G14|SAIDA\(2) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & !\G4|Equal0~0_combout\)) # (\G7|Reg~2_combout\))) ) + ( \G14|SAIDA\(2) ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G7|ALT_INV_Reg~2_combout\,
	dataf => \G14|ALT_INV_SAIDA\(2),
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

-- Location: LABCELL_X83_Y32_N30
\G17|ram~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~280_combout\ = ( \G16|Add0~9_sumout\ & ( \G16|Mux15~0_combout\ & ( (!\G16|Mux15~4_combout\ & (\G16|Mux15~1_combout\ & !\G16|Add1~9_sumout\)) ) ) ) # ( !\G16|Add0~9_sumout\ & ( \G16|Mux15~0_combout\ & ( (!\G16|Mux15~4_combout\ & 
-- ((!\G16|Mux15~1_combout\) # (!\G16|Add1~9_sumout\))) ) ) ) # ( \G16|Add0~9_sumout\ & ( !\G16|Mux15~0_combout\ & ( (!\G16|Mux15~4_combout\ & ((!\G16|Mux15~1_combout\) # (\G16|Mux13~3_combout\))) ) ) ) # ( !\G16|Add0~9_sumout\ & ( !\G16|Mux15~0_combout\ & ( 
-- (!\G16|Mux15~4_combout\ & ((!\G16|Mux15~1_combout\) # (\G16|Mux13~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010101010100010000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~4_combout\,
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G16|ALT_INV_Mux13~3_combout\,
	datad => \G16|ALT_INV_Add1~9_sumout\,
	datae => \G16|ALT_INV_Add0~9_sumout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G17|ram~280_combout\);

-- Location: LABCELL_X83_Y32_N15
\G18|SAIDA~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~4_combout\ = ( \G16|Mux14~2_combout\ & ( \G17|ram~280_combout\ & ( !\G18|SAIDA~3_combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( \G17|ram~280_combout\ & ( (!\G18|SAIDA~3_combout\ & ((!\G17|ram~256_combout\) # ((!\G16|Mux11~2_combout\) # 
-- (!\G18|SAIDA~0_combout\)))) ) ) ) # ( \G16|Mux14~2_combout\ & ( !\G17|ram~280_combout\ & ( !\G18|SAIDA~3_combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( !\G17|ram~280_combout\ & ( !\G18|SAIDA~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~256_combout\,
	datab => \G18|ALT_INV_SAIDA~3_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G18|ALT_INV_SAIDA~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~280_combout\,
	combout => \G18|SAIDA~4_combout\);

-- Location: LABCELL_X81_Y33_N33
\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = ( \G16|Mux12~0_combout\ & ( !\G16|Mux14~0_combout\ & ( (\G16|Mux15~2_combout\ & (\G17|ram.we_a~0_combout\ & (\G16|Mux13~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram.we_a~0_combout\,
	datac => \G16|ALT_INV_Mux13~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux12~0_combout\,
	dataf => \G16|ALT_INV_Mux14~0_combout\,
	combout => \rtl~5_combout\);

-- Location: LABCELL_X81_Y34_N42
\G17|ram~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~208_combout\ = ( \rtl~5_combout\ & ( \G7|Mux31~0_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~208_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G17|ALT_INV_ram~208_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~208_combout\);

-- Location: LABCELL_X81_Y33_N48
\rtl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = ( !\G16|Mux15~2_combout\ & ( \G16|Mux13~0_combout\ & ( (!\G16|Mux11~0_combout\ & (\G17|ram.we_a~0_combout\ & (\G16|Mux12~0_combout\ & \G16|Mux14~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~0_combout\,
	datab => \G17|ALT_INV_ram.we_a~0_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G16|ALT_INV_Mux14~0_combout\,
	datae => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	combout => \rtl~8_combout\);

-- Location: LABCELL_X80_Y34_N51
\G17|ram~224\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~224_combout\ = ( \G17|ram~224_combout\ & ( (!\rtl~8_combout\) # (\G7|Mux31~0_combout\) ) ) # ( !\G17|ram~224_combout\ & ( (\rtl~8_combout\ & \G7|Mux31~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~8_combout\,
	datac => \G7|ALT_INV_Mux31~0_combout\,
	dataf => \G17|ALT_INV_ram~224_combout\,
	combout => \G17|ram~224_combout\);

-- Location: LABCELL_X81_Y33_N51
\rtl~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = ( !\G16|Mux13~0_combout\ & ( \G16|Mux15~2_combout\ & ( (!\G16|Mux11~0_combout\ & (\G17|ram.we_a~0_combout\ & (\G16|Mux14~0_combout\ & \G16|Mux12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~0_combout\,
	datab => \G17|ALT_INV_ram.we_a~0_combout\,
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~14_combout\);

-- Location: LABCELL_X81_Y34_N24
\G17|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~176_combout\ = ( \G17|ram~176_combout\ & ( (!\rtl~14_combout\) # (\G7|Mux31~0_combout\) ) ) # ( !\G17|ram~176_combout\ & ( (\G7|Mux31~0_combout\ & \rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G17|ALT_INV_ram~176_combout\,
	combout => \G17|ram~176_combout\);

-- Location: LABCELL_X81_Y33_N39
\rtl~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~16_combout\ = ( \G16|Mux12~0_combout\ & ( !\G16|Mux15~2_combout\ & ( (!\G16|Mux13~0_combout\ & (\G16|Mux14~0_combout\ & (\G17|ram.we_a~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G17|ALT_INV_ram.we_a~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux12~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~16_combout\);

-- Location: LABCELL_X80_Y34_N54
\G17|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~160_combout\ = ( \G7|Mux31~0_combout\ & ( (\G17|ram~160_combout\) # (\rtl~16_combout\) ) ) # ( !\G7|Mux31~0_combout\ & ( (!\rtl~16_combout\ & \G17|ram~160_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~160_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	combout => \G17|ram~160_combout\);

-- Location: LABCELL_X81_Y33_N15
\rtl~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = ( !\G16|Mux13~0_combout\ & ( \G16|Mux15~2_combout\ & ( (\G16|Mux12~0_combout\ & (\G17|ram.we_a~0_combout\ & (!\G16|Mux11~0_combout\ & !\G16|Mux14~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~0_combout\,
	datab => \G17|ALT_INV_ram.we_a~0_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G16|ALT_INV_Mux14~0_combout\,
	datae => \G16|ALT_INV_Mux13~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	combout => \rtl~13_combout\);

-- Location: LABCELL_X80_Y34_N39
\G17|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~144_combout\ = ( \G7|Mux31~0_combout\ & ( (\rtl~13_combout\) # (\G17|ram~144_combout\) ) ) # ( !\G7|Mux31~0_combout\ & ( (\G17|ram~144_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~144_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	combout => \G17|ram~144_combout\);

-- Location: LABCELL_X81_Y32_N36
\rtl~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = ( !\G16|Mux14~0_combout\ & ( \G17|ram.we_a~0_combout\ & ( (!\G16|Mux15~2_combout\ & (\G16|Mux12~0_combout\ & (!\G16|Mux13~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux12~0_combout\,
	datac => \G16|ALT_INV_Mux13~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram.we_a~0_combout\,
	combout => \rtl~15_combout\);

-- Location: LABCELL_X80_Y34_N18
\G17|ram~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~128_combout\ = ( \G17|ram~128_combout\ & ( (!\rtl~15_combout\) # (\G7|Mux31~0_combout\) ) ) # ( !\G17|ram~128_combout\ & ( (\rtl~15_combout\ & \G7|Mux31~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~15_combout\,
	datad => \G7|ALT_INV_Mux31~0_combout\,
	dataf => \G17|ALT_INV_ram~128_combout\,
	combout => \G17|ram~128_combout\);

-- Location: LABCELL_X80_Y34_N42
\G17|ram~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~405_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~128_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~144_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~160_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~176_combout\)))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~176_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~160_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~144_combout\,
	datag => \G17|ALT_INV_ram~128_combout\,
	combout => \G17|ram~405_combout\);

-- Location: LABCELL_X81_Y34_N39
\G17|ram~240\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~240_combout\ = ( \G17|ram~240_combout\ & ( (!\rtl~6_combout\) # (\G7|Mux31~0_combout\) ) ) # ( !\G17|ram~240_combout\ & ( (\G7|Mux31~0_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux31~0_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~240_combout\,
	combout => \G17|ram~240_combout\);

-- Location: LABCELL_X81_Y33_N12
\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = ( !\G16|Mux15~2_combout\ & ( \G16|Mux13~0_combout\ & ( (\G16|Mux12~0_combout\ & (\G17|ram.we_a~0_combout\ & (!\G16|Mux14~0_combout\ & !\G16|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux12~0_combout\,
	datab => \G17|ALT_INV_ram.we_a~0_combout\,
	datac => \G16|ALT_INV_Mux14~0_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	datae => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	combout => \rtl~7_combout\);

-- Location: LABCELL_X81_Y34_N36
\G17|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~192_combout\ = ( \rtl~7_combout\ & ( \G7|Mux31~0_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~192_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux31~0_combout\,
	datad => \G17|ALT_INV_ram~192_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~192_combout\);

-- Location: LABCELL_X80_Y34_N0
\G17|ram~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~276_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~405_combout\))))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~405_combout\ & (((\G17|ram~192_combout\)))) # (\G17|ram~405_combout\ & (\G17|ram~208_combout\)))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~405_combout\))))) # (\G16|Mux13~0_combout\ & (((!\G17|ram~405_combout\ & (\G17|ram~224_combout\)) # (\G17|ram~405_combout\ & ((\G17|ram~240_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110111011000001011010101000000101101110110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~208_combout\,
	datac => \G17|ALT_INV_ram~224_combout\,
	datad => \G17|ALT_INV_ram~405_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~240_combout\,
	datag => \G17|ALT_INV_ram~192_combout\,
	combout => \G17|ram~276_combout\);

-- Location: LABCELL_X80_Y34_N24
\G18|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~5_combout\ = ( \G17|ram~276_combout\ & ( ((!\G18|SAIDA~4_combout\) # ((\G18|SAIDA~1_combout\ & \G17|ram~272_combout\))) # (\G18|SAIDA~2_combout\) ) ) # ( !\G17|ram~276_combout\ & ( (!\G18|SAIDA~4_combout\) # ((\G18|SAIDA~1_combout\ & 
-- \G17|ram~272_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001111111110001000111111111000111111111111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G17|ALT_INV_ram~272_combout\,
	datac => \G18|ALT_INV_SAIDA~2_combout\,
	datad => \G18|ALT_INV_SAIDA~4_combout\,
	dataf => \G17|ALT_INV_ram~276_combout\,
	combout => \G18|SAIDA~5_combout\);

-- Location: LABCELL_X80_Y34_N27
\G18|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(0) = ( \G18|SAIDA~5_combout\ & ( (\G18|SAIDA\(0)) # (\Clock_Sistema~input_o\) ) ) # ( !\G18|SAIDA~5_combout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(0),
	dataf => \G18|ALT_INV_SAIDA~5_combout\,
	combout => \G18|SAIDA\(0));

-- Location: LABCELL_X88_Y31_N36
\G7|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux15~0_combout\ = ( \G18|SAIDA\(0) & ( \G7|Mux12~0_combout\ ) ) # ( !\G18|SAIDA\(0) & ( \G7|Mux12~0_combout\ & ( (!\G6|SAIDA[2]~2_combout\) # ((!\G6|SAIDA[0]~0_combout\ & ((!\G6|SAIDA[1]~1_combout\) # (\G4|rd[0]~0_combout\))) # 
-- (\G6|SAIDA[0]~0_combout\ & ((!\G4|rd[0]~0_combout\) # (\G6|SAIDA[1]~1_combout\)))) ) ) ) # ( \G18|SAIDA\(0) & ( !\G7|Mux12~0_combout\ ) ) # ( !\G18|SAIDA\(0) & ( !\G7|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G6|ALT_INV_SAIDA[0]~0_combout\,
	datab => \G6|ALT_INV_SAIDA[1]~1_combout\,
	datac => \G4|ALT_INV_rd[0]~0_combout\,
	datad => \G6|ALT_INV_SAIDA[2]~2_combout\,
	datae => \G18|ALT_INV_SAIDA\(0),
	dataf => \G7|ALT_INV_Mux12~0_combout\,
	combout => \G7|Mux15~0_combout\);

-- Location: LABCELL_X83_Y31_N30
\G16|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux15~2_combout\ = ( \G16|Add1~1_sumout\ & ( \G16|Mux15~0_combout\ & ( (\G16|Mux15~1_combout\) # (\G16|Add0~1_sumout\) ) ) ) # ( !\G16|Add1~1_sumout\ & ( \G16|Mux15~0_combout\ & ( (\G16|Add0~1_sumout\ & !\G16|Mux15~1_combout\) ) ) ) # ( 
-- \G16|Add1~1_sumout\ & ( !\G16|Mux15~0_combout\ & ( (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(0)) # (\G7|Mux15~0_combout\))) ) ) ) # ( !\G16|Add1~1_sumout\ & ( !\G16|Mux15~0_combout\ & ( (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(0)) # (\G7|Mux15~0_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(0),
	datac => \G16|ALT_INV_Add0~1_sumout\,
	datad => \G16|ALT_INV_Mux15~1_combout\,
	datae => \G16|ALT_INV_Add1~1_sumout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G16|Mux15~2_combout\);

-- Location: LABCELL_X81_Y33_N30
\rtl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = ( \G16|Mux14~0_combout\ & ( !\G16|Mux12~0_combout\ & ( (\G16|Mux15~2_combout\ & (\G17|ram.we_a~0_combout\ & (!\G16|Mux11~0_combout\ & \G16|Mux13~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G17|ALT_INV_ram.we_a~0_combout\,
	datac => \G16|ALT_INV_Mux11~0_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux12~0_combout\,
	combout => \rtl~2_combout\);

-- Location: LABCELL_X85_Y33_N36
\G7|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux30~0_combout\ = ( \G7|Reg~1_combout\ & ( ((!\Clock_Sistema~input_o\) # (!\G4|Mux0~2_combout\)) # (\G7|Reg[1][1]~combout\) ) ) # ( !\G7|Reg~1_combout\ & ( (!\Clock_Sistema~input_o\) # ((\G7|Reg[1][1]~combout\ & \G4|Mux0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[1][1]~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G7|ALT_INV_Reg~1_combout\,
	combout => \G7|Mux30~0_combout\);

-- Location: LABCELL_X85_Y33_N9
\G17|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~113_combout\ = ( \G7|Mux30~0_combout\ & ( (\G17|ram~113_combout\) # (\rtl~2_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (!\rtl~2_combout\ & \G17|ram~113_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~2_combout\,
	datac => \G17|ALT_INV_ram~113_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~113_combout\);

-- Location: LABCELL_X85_Y33_N12
\G17|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~81_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~1_combout\) # (\G17|ram~81_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~81_combout\ & !\rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~81_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~81_combout\);

-- Location: LABCELL_X85_Y33_N0
\G17|ram~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~97_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~4_combout\) # (\G17|ram~97_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~97_combout\ & !\rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~97_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~97_combout\);

-- Location: MLABCELL_X84_Y33_N57
\G17|ram~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~17_combout\ = ( \G7|Mux30~0_combout\ & ( (\G17|ram~17_combout\) # (\rtl~9_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (!\rtl~9_combout\ & \G17|ram~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~9_combout\,
	datad => \G17|ALT_INV_ram~17_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~17_combout\);

-- Location: MLABCELL_X84_Y33_N54
\G17|ram~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~33_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~12_combout\) # (\G17|ram~33_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~33_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~33_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~33_combout\);

-- Location: LABCELL_X85_Y33_N33
\G17|ram~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~49_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~10_combout\) # (\G17|ram~49_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~49_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~49_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~49_combout\);

-- Location: MLABCELL_X84_Y33_N36
\G17|ram~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~1_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~11_combout\) # (\G17|ram~1_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~1_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~1_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~1_combout\);

-- Location: MLABCELL_X84_Y33_N42
\G17|ram~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~409_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~1_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~17_combout\)))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~2_combout\ & (\G17|ram~33_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~49_combout\)))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~17_combout\,
	datac => \G17|ALT_INV_ram~33_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~49_combout\,
	datag => \G17|ALT_INV_ram~1_combout\,
	combout => \G17|ram~409_combout\);

-- Location: LABCELL_X85_Y33_N39
\G17|ram~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~65_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~3_combout\) # (\G17|ram~65_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~65_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~65_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~65_combout\);

-- Location: MLABCELL_X84_Y33_N24
\G17|ram~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~281_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~409_combout\ & (((\G17|ram~65_combout\ & \G16|Mux13~0_combout\)))) # (\G17|ram~409_combout\ & (((!\G16|Mux13~0_combout\)) # (\G17|ram~81_combout\)))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G17|ram~409_combout\ & (((\G17|ram~97_combout\ & \G16|Mux13~0_combout\)))) # (\G17|ram~409_combout\ & (((!\G16|Mux13~0_combout\)) # (\G17|ram~113_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~113_combout\,
	datab => \G17|ALT_INV_ram~81_combout\,
	datac => \G17|ALT_INV_ram~97_combout\,
	datad => \G17|ALT_INV_ram~409_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~65_combout\,
	combout => \G17|ram~281_combout\);

-- Location: LABCELL_X85_Y33_N30
\G17|ram~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~209_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~5_combout\) # (\G17|ram~209_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~209_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~209_combout\,
	datac => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~209_combout\);

-- Location: LABCELL_X85_Y33_N42
\G17|ram~241\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~241_combout\ = ( \rtl~6_combout\ & ( \G7|Mux30~0_combout\ ) ) # ( !\rtl~6_combout\ & ( \G7|Mux30~0_combout\ & ( \G17|ram~241_combout\ ) ) ) # ( !\rtl~6_combout\ & ( !\G7|Mux30~0_combout\ & ( \G17|ram~241_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~241_combout\,
	datae => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~241_combout\);

-- Location: MLABCELL_X84_Y33_N0
\G17|ram~225\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~225_combout\ = ( \G7|Mux30~0_combout\ & ( (\G17|ram~225_combout\) # (\rtl~8_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (!\rtl~8_combout\ & \G17|ram~225_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~8_combout\,
	datad => \G17|ALT_INV_ram~225_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~225_combout\);

-- Location: MLABCELL_X84_Y33_N3
\G17|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~161_combout\ = ( \G7|Mux30~0_combout\ & ( (\G17|ram~161_combout\) # (\rtl~16_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (!\rtl~16_combout\ & \G17|ram~161_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~161_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~161_combout\);

-- Location: MLABCELL_X84_Y33_N9
\G17|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~177_combout\ = ( \G7|Mux30~0_combout\ & ( (\G17|ram~177_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (!\rtl~14_combout\ & \G17|ram~177_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~14_combout\,
	datac => \G17|ALT_INV_ram~177_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~177_combout\);

-- Location: MLABCELL_X84_Y33_N6
\G17|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~145_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~13_combout\) # (\G17|ram~145_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~145_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~145_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~145_combout\);

-- Location: MLABCELL_X84_Y33_N39
\G17|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~129_combout\ = ( \G7|Mux30~0_combout\ & ( (\rtl~15_combout\) # (\G17|ram~129_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (\G17|ram~129_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~129_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~129_combout\);

-- Location: MLABCELL_X84_Y33_N30
\G17|ram~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~413_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~129_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~145_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~161_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~177_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~161_combout\,
	datad => \G17|ALT_INV_ram~177_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~145_combout\,
	datag => \G17|ALT_INV_ram~129_combout\,
	combout => \G17|ram~413_combout\);

-- Location: LABCELL_X85_Y33_N21
\G17|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~193_combout\ = ( \G7|Mux30~0_combout\ & ( (\G17|ram~193_combout\) # (\rtl~7_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (!\rtl~7_combout\ & \G17|ram~193_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~7_combout\,
	datad => \G17|ALT_INV_ram~193_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~193_combout\);

-- Location: MLABCELL_X84_Y33_N48
\G17|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~285_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~413_combout\ & (((\G17|ram~193_combout\ & \G16|Mux13~0_combout\)))) # (\G17|ram~413_combout\ & (((!\G16|Mux13~0_combout\)) # (\G17|ram~209_combout\)))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G17|ram~413_combout\ & (((\G17|ram~225_combout\ & \G16|Mux13~0_combout\)))) # (\G17|ram~413_combout\ & (((!\G16|Mux13~0_combout\)) # (\G17|ram~241_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~209_combout\,
	datab => \G17|ALT_INV_ram~241_combout\,
	datac => \G17|ALT_INV_ram~225_combout\,
	datad => \G17|ALT_INV_ram~413_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~193_combout\,
	combout => \G17|ram~285_combout\);

-- Location: LABCELL_X85_Y33_N27
\G17|ram~257\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~257_combout\ = ( \G7|Mux30~0_combout\ & ( (\G17|ram~257_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Mux30~0_combout\ & ( (!\rtl~0_combout\ & \G17|ram~257_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~257_combout\,
	dataf => \G7|ALT_INV_Mux30~0_combout\,
	combout => \G17|ram~257_combout\);

-- Location: MLABCELL_X84_Y33_N12
\G18|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~6_combout\ = ( \G16|Mux14~2_combout\ & ( \G16|Mux11~2_combout\ & ( \G5|memparareg~combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( \G16|Mux11~2_combout\ & ( (\G17|ram~257_combout\ & (\G18|SAIDA~0_combout\ & \G17|ram~280_combout\)) ) ) ) # ( 
-- \G16|Mux14~2_combout\ & ( !\G16|Mux11~2_combout\ & ( \G5|memparareg~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000001010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~257_combout\,
	datab => \G5|ALT_INV_memparareg~combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G18|SAIDA~6_combout\);

-- Location: MLABCELL_X84_Y33_N18
\G18|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~7_combout\ = ( \G18|SAIDA~6_combout\ ) # ( !\G18|SAIDA~6_combout\ & ( (!\G17|ram~281_combout\ & (((\G17|ram~285_combout\ & \G18|SAIDA~2_combout\)))) # (\G17|ram~281_combout\ & (((\G17|ram~285_combout\ & \G18|SAIDA~2_combout\)) # 
-- (\G18|SAIDA~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~281_combout\,
	datab => \G18|ALT_INV_SAIDA~1_combout\,
	datac => \G17|ALT_INV_ram~285_combout\,
	datad => \G18|ALT_INV_SAIDA~2_combout\,
	dataf => \G18|ALT_INV_SAIDA~6_combout\,
	combout => \G18|SAIDA~7_combout\);

-- Location: MLABCELL_X84_Y33_N21
\G18|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(1) = ( \G18|SAIDA~7_combout\ & ( (\G18|SAIDA\(1)) # (\Clock_Sistema~input_o\) ) ) # ( !\G18|SAIDA~7_combout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(1),
	dataf => \G18|ALT_INV_SAIDA~7_combout\,
	combout => \G18|SAIDA\(1));

-- Location: LABCELL_X85_Y33_N57
\G7|Reg[1][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][1]~combout\ = ( \G7|Reg[1][1]~combout\ & ( \G18|SAIDA\(1) ) ) # ( !\G7|Reg[1][1]~combout\ & ( \G18|SAIDA\(1) & ( \G7|Reg[1][0]~3_combout\ ) ) ) # ( \G7|Reg[1][1]~combout\ & ( !\G18|SAIDA\(1) & ( !\G7|Reg[1][0]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[1][0]~3_combout\,
	datae => \G7|ALT_INV_Reg[1][1]~combout\,
	dataf => \G18|ALT_INV_SAIDA\(1),
	combout => \G7|Reg[1][1]~combout\);

-- Location: LABCELL_X88_Y33_N30
\G14|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~1_combout\ = ( \G7|Reg[1][1]~combout\ & ( !\G5|escrevereg~combout\ ) ) # ( !\G7|Reg[1][1]~combout\ & ( (!\G5|escrevereg~combout\ & !\G4|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G7|ALT_INV_Reg[1][1]~combout\,
	combout => \G14|SAIDA~1_combout\);

-- Location: LABCELL_X88_Y33_N33
\G14|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(1) = ( \G14|SAIDA\(1) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~1_combout\) ) ) # ( !\G14|SAIDA\(1) & ( (\G14|SAIDA~1_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA~1_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(1),
	combout => \G14|SAIDA\(1));

-- Location: MLABCELL_X84_Y31_N9
\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( \G7|Mux12~1_combout\ ) + ( \G14|SAIDA\(3) ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( \G7|Mux12~1_combout\ ) + ( \G14|SAIDA\(3) ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA\(3),
	datad => \G7|ALT_INV_Mux12~1_combout\,
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

-- Location: MLABCELL_X84_Y31_N12
\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(4)))) ) + ( \G14|SAIDA\(4) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(4)))) ) + ( \G14|SAIDA\(4) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(4),
	dataf => \G14|ALT_INV_SAIDA\(4),
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

-- Location: MLABCELL_X84_Y32_N18
\G18|SAIDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~1_combout\ = ( \G18|SAIDA~0_combout\ & ( \G16|Mux15~0_combout\ & ( (!\G16|Mux15~1_combout\ & ((!\G16|Add0~17_sumout\))) # (\G16|Mux15~1_combout\ & (!\G16|Add1~17_sumout\)) ) ) ) # ( \G18|SAIDA~0_combout\ & ( !\G16|Mux15~0_combout\ & ( 
-- (!\G16|Mux15~1_combout\) # (\G16|Mux11~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001111110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~1_combout\,
	datab => \G16|ALT_INV_Add1~17_sumout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Add0~17_sumout\,
	datae => \G18|ALT_INV_SAIDA~0_combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G18|SAIDA~1_combout\);

-- Location: MLABCELL_X82_Y31_N57
\G7|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux29~0_combout\ = ( \G7|Reg~2_combout\ & ( (\Clock_Sistema~input_o\ & ((!\G4|Mux0~2_combout\) # (\G7|Reg[1][2]~combout\))) ) ) # ( !\G7|Reg~2_combout\ & ( (\G7|Reg[1][2]~combout\ & (\G4|Mux0~2_combout\ & \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[1][2]~combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G7|ALT_INV_Reg~2_combout\,
	combout => \G7|Mux29~0_combout\);

-- Location: LABCELL_X80_Y33_N51
\G17|ram~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~18_combout\ = ( \G7|Mux29~0_combout\ & ( (\rtl~9_combout\) # (\G17|ram~18_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (\G17|ram~18_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~18_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~18_combout\);

-- Location: LABCELL_X80_Y33_N39
\G17|ram~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~34_combout\ = ( \G7|Mux29~0_combout\ & ( (\rtl~12_combout\) # (\G17|ram~34_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (\G17|ram~34_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~34_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~34_combout\);

-- Location: LABCELL_X80_Y33_N48
\G17|ram~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~50_combout\ = ( \G7|Mux29~0_combout\ & ( (\rtl~10_combout\) # (\G17|ram~50_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (\G17|ram~50_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~50_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~50_combout\);

-- Location: LABCELL_X81_Y32_N33
\G17|ram~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~2_combout\ = ( \G7|Mux29~0_combout\ & ( (\rtl~11_combout\) # (\G17|ram~2_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (\G17|ram~2_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~2_combout\,
	datac => \ALT_INV_rtl~11_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~2_combout\);

-- Location: LABCELL_X80_Y33_N24
\G17|ram~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~417_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~2_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~18_combout\)))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~34_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~50_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001110111000011000011001100001100011101110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~18_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~34_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~50_combout\,
	datag => \G17|ALT_INV_ram~2_combout\,
	combout => \G17|ram~417_combout\);

-- Location: LABCELL_X80_Y33_N15
\G17|ram~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~98_combout\ = ( \G7|Mux29~0_combout\ & ( (\rtl~4_combout\) # (\G17|ram~98_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (\G17|ram~98_combout\ & !\rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~98_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~98_combout\);

-- Location: LABCELL_X80_Y33_N12
\G17|ram~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~114_combout\ = ( \G17|ram~114_combout\ & ( (!\rtl~2_combout\) # (\G7|Mux29~0_combout\) ) ) # ( !\G17|ram~114_combout\ & ( (\G7|Mux29~0_combout\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux29~0_combout\,
	datac => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~114_combout\,
	combout => \G17|ram~114_combout\);

-- Location: LABCELL_X80_Y33_N18
\G17|ram~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~82_combout\ = ( \G17|ram~82_combout\ & ( (!\rtl~1_combout\) # (\G7|Mux29~0_combout\) ) ) # ( !\G17|ram~82_combout\ & ( (\G7|Mux29~0_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~82_combout\,
	combout => \G17|ram~82_combout\);

-- Location: LABCELL_X81_Y32_N51
\G17|ram~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~66_combout\ = ( \G7|Mux29~0_combout\ & ( (\rtl~3_combout\) # (\G17|ram~66_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (\G17|ram~66_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~66_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~66_combout\);

-- Location: LABCELL_X80_Y33_N30
\G17|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~289_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~417_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~66_combout\))) # (\G17|ram~417_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~82_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~417_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~98_combout\))) # (\G17|ram~417_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~114_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~417_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~98_combout\,
	datad => \G17|ALT_INV_ram~114_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~82_combout\,
	datag => \G17|ALT_INV_ram~66_combout\,
	combout => \G17|ram~289_combout\);

-- Location: LABCELL_X83_Y32_N48
\G18|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~8_combout\ = ( \G5|memparareg~combout\ & ( \G16|Mux15~1_combout\ & ( (!\G16|Mux15~0_combout\ & (!\G16|Mux13~3_combout\)) # (\G16|Mux15~0_combout\ & ((\G16|Add1~9_sumout\))) ) ) ) # ( \G5|memparareg~combout\ & ( !\G16|Mux15~1_combout\ & ( 
-- (\G16|Add0~9_sumout\ & \G16|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000001010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~3_combout\,
	datab => \G16|ALT_INV_Add0~9_sumout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Add1~9_sumout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Mux15~1_combout\,
	combout => \G18|SAIDA~8_combout\);

-- Location: LABCELL_X83_Y32_N45
\G17|ram~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~258_combout\ = ( \G7|Mux29~0_combout\ & ( (\G17|ram~258_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (!\rtl~0_combout\ & \G17|ram~258_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~258_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~258_combout\);

-- Location: LABCELL_X83_Y32_N6
\G18|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~9_combout\ = ( !\G18|SAIDA~8_combout\ & ( \G17|ram~258_combout\ & ( (!\G17|ram~280_combout\) # ((!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # (\G16|Mux14~2_combout\))) ) ) ) # ( !\G18|SAIDA~8_combout\ & ( !\G17|ram~258_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~280_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Mux14~2_combout\,
	datad => \G18|ALT_INV_SAIDA~0_combout\,
	datae => \G18|ALT_INV_SAIDA~8_combout\,
	dataf => \G17|ALT_INV_ram~258_combout\,
	combout => \G18|SAIDA~9_combout\);

-- Location: LABCELL_X81_Y34_N21
\G17|ram~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~210_combout\ = ( \rtl~5_combout\ & ( \G7|Mux29~0_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~210_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux29~0_combout\,
	datad => \G17|ALT_INV_ram~210_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~210_combout\);

-- Location: LABCELL_X80_Y33_N21
\G17|ram~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~226_combout\ = ( \G7|Mux29~0_combout\ & ( (\G17|ram~226_combout\) # (\rtl~8_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (!\rtl~8_combout\ & \G17|ram~226_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~8_combout\,
	datad => \G17|ALT_INV_ram~226_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~226_combout\);

-- Location: LABCELL_X81_Y34_N18
\G17|ram~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~242_combout\ = ( \G17|ram~242_combout\ & ( (!\rtl~6_combout\) # (\G7|Mux29~0_combout\) ) ) # ( !\G17|ram~242_combout\ & ( (\G7|Mux29~0_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~242_combout\,
	combout => \G17|ram~242_combout\);

-- Location: LABCELL_X80_Y33_N3
\G17|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~178_combout\ = ( \G7|Mux29~0_combout\ & ( (\G17|ram~178_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (!\rtl~14_combout\ & \G17|ram~178_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~14_combout\,
	datad => \G17|ALT_INV_ram~178_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~178_combout\);

-- Location: LABCELL_X80_Y33_N36
\G17|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~162_combout\ = ( \G7|Mux29~0_combout\ & ( (\G17|ram~162_combout\) # (\rtl~16_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (!\rtl~16_combout\ & \G17|ram~162_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~162_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~162_combout\);

-- Location: LABCELL_X81_Y33_N18
\G17|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~146_combout\ = ( \G7|Mux29~0_combout\ & ( (\G17|ram~146_combout\) # (\rtl~13_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (!\rtl~13_combout\ & \G17|ram~146_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~13_combout\,
	datac => \G17|ALT_INV_ram~146_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~146_combout\);

-- Location: LABCELL_X81_Y32_N45
\G17|ram~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~130_combout\ = ( \G7|Mux29~0_combout\ & ( (\rtl~15_combout\) # (\G17|ram~130_combout\) ) ) # ( !\G7|Mux29~0_combout\ & ( (\G17|ram~130_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~130_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Mux29~0_combout\,
	combout => \G17|ram~130_combout\);

-- Location: LABCELL_X80_Y33_N42
\G17|ram~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~421_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~130_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~146_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~162_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~178_combout\))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110000110011111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~178_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~162_combout\,
	datad => \G17|ALT_INV_ram~146_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~130_combout\,
	combout => \G17|ram~421_combout\);

-- Location: LABCELL_X81_Y34_N0
\G17|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~194_combout\ = ( \rtl~7_combout\ & ( \G17|ram~194_combout\ & ( \G7|Mux29~0_combout\ ) ) ) # ( !\rtl~7_combout\ & ( \G17|ram~194_combout\ ) ) # ( \rtl~7_combout\ & ( !\G17|ram~194_combout\ & ( \G7|Mux29~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G7|ALT_INV_Mux29~0_combout\,
	datae => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~194_combout\,
	combout => \G17|ram~194_combout\);

-- Location: LABCELL_X80_Y33_N54
\G17|ram~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~293_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~421_combout\))))) # (\G16|Mux13~0_combout\ & (((!\G17|ram~421_combout\ & ((\G17|ram~194_combout\))) # (\G17|ram~421_combout\ & (\G17|ram~210_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~421_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~421_combout\ & (\G17|ram~226_combout\)) # (\G17|ram~421_combout\ & ((\G17|ram~242_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~210_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~226_combout\,
	datad => \G17|ALT_INV_ram~242_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~421_combout\,
	datag => \G17|ALT_INV_ram~194_combout\,
	combout => \G17|ram~293_combout\);

-- Location: LABCELL_X80_Y33_N6
\G18|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~10_combout\ = ( \G17|ram~293_combout\ & ( (!\G18|SAIDA~9_combout\) # (((\G18|SAIDA~1_combout\ & \G17|ram~289_combout\)) # (\G18|SAIDA~2_combout\)) ) ) # ( !\G17|ram~293_combout\ & ( (!\G18|SAIDA~9_combout\) # ((\G18|SAIDA~1_combout\ & 
-- \G17|ram~289_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100011111000111110001111111111111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G17|ALT_INV_ram~289_combout\,
	datac => \G18|ALT_INV_SAIDA~9_combout\,
	datad => \G18|ALT_INV_SAIDA~2_combout\,
	dataf => \G17|ALT_INV_ram~293_combout\,
	combout => \G18|SAIDA~10_combout\);

-- Location: LABCELL_X80_Y33_N9
\G18|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(2) = ( \G18|SAIDA~10_combout\ & ( (\Clock_Sistema~input_o\) # (\G18|SAIDA\(2)) ) ) # ( !\G18|SAIDA~10_combout\ & ( (\G18|SAIDA\(2) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(2),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA~10_combout\,
	combout => \G18|SAIDA\(2));

-- Location: LABCELL_X83_Y31_N48
\G7|Reg[1][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][2]~combout\ = ( \G7|Reg[1][2]~combout\ & ( (!\G7|Reg[1][0]~3_combout\) # (\G18|SAIDA\(2)) ) ) # ( !\G7|Reg[1][2]~combout\ & ( (\G7|Reg[1][0]~3_combout\ & \G18|SAIDA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[1][0]~3_combout\,
	datac => \G18|ALT_INV_SAIDA\(2),
	dataf => \G7|ALT_INV_Reg[1][2]~combout\,
	combout => \G7|Reg[1][2]~combout\);

-- Location: LABCELL_X88_Y33_N21
\G14|SAIDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~2_combout\ = ( \G4|Mux0~3_combout\ & ( \G5|escrevereg~combout\ & ( (\G4|Mux1~0_combout\ & \G4|Equal0~0_combout\) ) ) ) # ( \G4|Mux0~3_combout\ & ( !\G5|escrevereg~combout\ & ( (\G7|Reg[1][2]~combout\ & \G4|Mux0~2_combout\) ) ) ) # ( 
-- !\G4|Mux0~3_combout\ & ( !\G5|escrevereg~combout\ & ( (\G7|Reg[1][2]~combout\ & \G4|Mux0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux1~0_combout\,
	datab => \G4|ALT_INV_Equal0~0_combout\,
	datac => \G7|ALT_INV_Reg[1][2]~combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	datae => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G5|ALT_INV_escrevereg~combout\,
	combout => \G14|SAIDA~2_combout\);

-- Location: MLABCELL_X87_Y33_N3
\G14|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(2) = ( \Clock_Sistema~input_o\ & ( \G14|SAIDA~2_combout\ ) ) # ( !\Clock_Sistema~input_o\ & ( \G14|SAIDA\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA~2_combout\,
	datad => \G14|ALT_INV_SAIDA\(2),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G14|SAIDA\(2));

-- Location: MLABCELL_X87_Y33_N12
\G7|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux13~0_combout\ = ( !\G6|SAIDA[0]~0_combout\ & ( \G4|Equal0~0_combout\ & ( (\G7|Reg[1][0]~0_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(2))) ) ) ) # ( \G6|SAIDA[0]~0_combout\ & ( !\G4|Equal0~0_combout\ & ( (\G4|Mux0~2_combout\ & 
-- \Clock_Sistema~input_o\) ) ) ) # ( !\G6|SAIDA[0]~0_combout\ & ( !\G4|Equal0~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G7|Reg[1][0]~0_combout\ & \G18|SAIDA\(2))) # (\G4|Mux0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000111000001010000010100000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[1][0]~0_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(2),
	datae => \G6|ALT_INV_SAIDA[0]~0_combout\,
	dataf => \G4|ALT_INV_Equal0~0_combout\,
	combout => \G7|Mux13~0_combout\);

-- Location: LABCELL_X83_Y33_N54
\G16|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~0_combout\ = ( \G16|Mux15~0_combout\ & ( \G16|Add0~9_sumout\ & ( (!\G16|Mux15~1_combout\) # (\G16|Add1~9_sumout\) ) ) ) # ( !\G16|Mux15~0_combout\ & ( \G16|Add0~9_sumout\ & ( (\G16|Mux15~1_combout\ & ((\G7|Mux13~0_combout\) # (\G14|SAIDA\(2)))) 
-- ) ) ) # ( \G16|Mux15~0_combout\ & ( !\G16|Add0~9_sumout\ & ( (\G16|Add1~9_sumout\ & \G16|Mux15~1_combout\) ) ) ) # ( !\G16|Mux15~0_combout\ & ( !\G16|Add0~9_sumout\ & ( (\G16|Mux15~1_combout\ & ((\G7|Mux13~0_combout\) # (\G14|SAIDA\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000011001100000000010111111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(2),
	datab => \G16|ALT_INV_Add1~9_sumout\,
	datac => \G7|ALT_INV_Mux13~0_combout\,
	datad => \G16|ALT_INV_Mux15~1_combout\,
	datae => \G16|ALT_INV_Mux15~0_combout\,
	dataf => \G16|ALT_INV_Add0~9_sumout\,
	combout => \G16|Mux13~0_combout\);

-- Location: LABCELL_X81_Y33_N54
\rtl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = ( \G16|Mux15~2_combout\ & ( !\G16|Mux11~0_combout\ & ( (\G16|Mux13~0_combout\ & (\G16|Mux14~0_combout\ & (\G16|Mux12~0_combout\ & \G17|ram.we_a~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux14~0_combout\,
	datac => \G16|ALT_INV_Mux12~0_combout\,
	datad => \G17|ALT_INV_ram.we_a~0_combout\,
	datae => \G16|ALT_INV_Mux15~2_combout\,
	dataf => \G16|ALT_INV_Mux11~0_combout\,
	combout => \rtl~6_combout\);

-- Location: LABCELL_X88_Y31_N27
\G7|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~0_combout\ = ( !\G6|SAIDA[0]~0_combout\ & ( (\G7|Reg[1][0]~0_combout\ & !\G4|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg[1][0]~0_combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G6|ALT_INV_SAIDA[0]~0_combout\,
	combout => \G7|Mux28~0_combout\);

-- Location: MLABCELL_X82_Y33_N27
\G7|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux28~1_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][3]~combout\)) # (\G18|SAIDA\(3)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\G4|Mux0~2_combout\ & (\G7|Reg[1][3]~combout\ & 
-- \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000001101110000000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G18|ALT_INV_SAIDA\(3),
	datac => \G7|ALT_INV_Reg[1][3]~combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux28~1_combout\);

-- Location: MLABCELL_X82_Y33_N51
\G17|ram~243\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~243_combout\ = ( \G7|Mux28~1_combout\ & ( (\rtl~6_combout\) # (\G17|ram~243_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (\G17|ram~243_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~243_combout\,
	datac => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~243_combout\);

-- Location: LABCELL_X79_Y33_N3
\G17|ram~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~211_combout\ = ( \rtl~5_combout\ & ( \G7|Mux28~1_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~211_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux28~1_combout\,
	datad => \G17|ALT_INV_ram~211_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~211_combout\);

-- Location: MLABCELL_X82_Y33_N30
\G17|ram~227\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~227_combout\ = ( \G7|Mux28~1_combout\ & ( (\rtl~8_combout\) # (\G17|ram~227_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (\G17|ram~227_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~227_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~227_combout\);

-- Location: LABCELL_X83_Y33_N3
\G17|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~179_combout\ = ( \G7|Mux28~1_combout\ & ( (\G17|ram~179_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (!\rtl~14_combout\ & \G17|ram~179_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datad => \G17|ALT_INV_ram~179_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~179_combout\);

-- Location: LABCELL_X83_Y33_N18
\G17|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~163_combout\ = ( \G7|Mux28~1_combout\ & ( (\rtl~16_combout\) # (\G17|ram~163_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (\G17|ram~163_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~163_combout\,
	datac => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~163_combout\);

-- Location: LABCELL_X83_Y33_N36
\G17|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~147_combout\ = ( \G7|Mux28~1_combout\ & ( (\rtl~13_combout\) # (\G17|ram~147_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (\G17|ram~147_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~147_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~147_combout\);

-- Location: LABCELL_X83_Y33_N0
\G17|ram~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~131_combout\ = ( \G7|Mux28~1_combout\ & ( (\G17|ram~131_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (!\rtl~15_combout\ & \G17|ram~131_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~131_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~131_combout\);

-- Location: LABCELL_X83_Y33_N6
\G17|ram~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~425_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~131_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~147_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~163_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~179_combout\)))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~179_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~163_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~147_combout\,
	datag => \G17|ALT_INV_ram~131_combout\,
	combout => \G17|ram~425_combout\);

-- Location: MLABCELL_X82_Y33_N24
\G17|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~195_combout\ = ( \G7|Mux28~1_combout\ & ( (\rtl~7_combout\) # (\G17|ram~195_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (\G17|ram~195_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~195_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~195_combout\);

-- Location: LABCELL_X83_Y33_N24
\G17|ram~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~297_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~425_combout\ & (((\G17|ram~195_combout\ & \G16|Mux13~0_combout\)))) # (\G17|ram~425_combout\ & (((!\G16|Mux13~0_combout\)) # (\G17|ram~211_combout\)))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G17|ram~425_combout\ & (((\G17|ram~227_combout\ & \G16|Mux13~0_combout\)))) # (\G17|ram~425_combout\ & (((!\G16|Mux13~0_combout\)) # (\G17|ram~243_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~243_combout\,
	datab => \G17|ALT_INV_ram~211_combout\,
	datac => \G17|ALT_INV_ram~227_combout\,
	datad => \G17|ALT_INV_ram~425_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~195_combout\,
	combout => \G17|ram~297_combout\);

-- Location: MLABCELL_X82_Y33_N21
\G17|ram~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~83_combout\ = ( \G7|Mux28~1_combout\ & ( (\G17|ram~83_combout\) # (\rtl~1_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (!\rtl~1_combout\ & \G17|ram~83_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~1_combout\,
	datad => \G17|ALT_INV_ram~83_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~83_combout\);

-- Location: LABCELL_X81_Y34_N30
\G17|ram~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~115_combout\ = ( \rtl~2_combout\ & ( \G7|Mux28~1_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~115_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux28~1_combout\,
	datad => \G17|ALT_INV_ram~115_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~115_combout\);

-- Location: MLABCELL_X82_Y33_N0
\G17|ram~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~99_combout\ = ( \G7|Mux28~1_combout\ & ( (\G17|ram~99_combout\) # (\rtl~4_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (!\rtl~4_combout\ & \G17|ram~99_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~4_combout\,
	datad => \G17|ALT_INV_ram~99_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~99_combout\);

-- Location: LABCELL_X83_Y33_N21
\G17|ram~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~51_combout\ = ( \G7|Mux28~1_combout\ & ( (\G17|ram~51_combout\) # (\rtl~10_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (!\rtl~10_combout\ & \G17|ram~51_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~10_combout\,
	datad => \G17|ALT_INV_ram~51_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~51_combout\);

-- Location: MLABCELL_X82_Y33_N12
\G17|ram~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~35_combout\ = ( \G7|Mux28~1_combout\ & ( (\rtl~12_combout\) # (\G17|ram~35_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (\G17|ram~35_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~35_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~35_combout\);

-- Location: LABCELL_X83_Y33_N39
\G17|ram~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~19_combout\ = ( \G7|Mux28~1_combout\ & ( (\G17|ram~19_combout\) # (\rtl~9_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (!\rtl~9_combout\ & \G17|ram~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~9_combout\,
	datac => \G17|ALT_INV_ram~19_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~19_combout\);

-- Location: MLABCELL_X82_Y33_N3
\G17|ram~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~3_combout\ = ( \G7|Mux28~1_combout\ & ( (\G17|ram~3_combout\) # (\rtl~11_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (!\rtl~11_combout\ & \G17|ram~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~11_combout\,
	datad => \G17|ALT_INV_ram~3_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~3_combout\);

-- Location: LABCELL_X83_Y33_N30
\G17|ram~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~429_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~3_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~19_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~35_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~51_combout\))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110000110011111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~51_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~35_combout\,
	datad => \G17|ALT_INV_ram~19_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~3_combout\,
	combout => \G17|ram~429_combout\);

-- Location: MLABCELL_X82_Y33_N15
\G17|ram~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~67_combout\ = ( \G7|Mux28~1_combout\ & ( (\rtl~3_combout\) # (\G17|ram~67_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (\G17|ram~67_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~67_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~67_combout\);

-- Location: LABCELL_X83_Y33_N12
\G17|ram~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~301_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~429_combout\ & (((\G17|ram~67_combout\ & \G16|Mux13~0_combout\)))) # (\G17|ram~429_combout\ & (((!\G16|Mux13~0_combout\)) # (\G17|ram~83_combout\)))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G17|ram~429_combout\ & (((\G17|ram~99_combout\ & \G16|Mux13~0_combout\)))) # (\G17|ram~429_combout\ & (((!\G16|Mux13~0_combout\)) # (\G17|ram~115_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~83_combout\,
	datab => \G17|ALT_INV_ram~115_combout\,
	datac => \G17|ALT_INV_ram~99_combout\,
	datad => \G17|ALT_INV_ram~429_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~67_combout\,
	combout => \G17|ram~301_combout\);

-- Location: LABCELL_X83_Y32_N54
\G16|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~4_combout\ = ( \G16|Add1~9_sumout\ & ( (!\G16|Mux15~1_combout\ & (\G16|Add0~9_sumout\ & (\G16|Mux15~0_combout\))) # (\G16|Mux15~1_combout\ & (((!\G16|Mux13~3_combout\) # (\G16|Mux15~0_combout\)))) ) ) # ( !\G16|Add1~9_sumout\ & ( 
-- (!\G16|Mux15~1_combout\ & (\G16|Add0~9_sumout\ & (\G16|Mux15~0_combout\))) # (\G16|Mux15~1_combout\ & (((!\G16|Mux15~0_combout\ & !\G16|Mux13~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001000000010010100100000001001010111000001110101011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~1_combout\,
	datab => \G16|ALT_INV_Add0~9_sumout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Mux13~3_combout\,
	dataf => \G16|ALT_INV_Add1~9_sumout\,
	combout => \G16|Mux13~4_combout\);

-- Location: LABCELL_X83_Y32_N57
\G17|ram~259\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~259_combout\ = ( \G7|Mux28~1_combout\ & ( (\G17|ram~259_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Mux28~1_combout\ & ( (!\rtl~0_combout\ & \G17|ram~259_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~259_combout\,
	dataf => \G7|ALT_INV_Mux28~1_combout\,
	combout => \G17|ram~259_combout\);

-- Location: LABCELL_X83_Y32_N36
\G18|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~11_combout\ = ( \G17|ram~259_combout\ & ( \G18|SAIDA~0_combout\ & ( (\G16|Mux11~2_combout\ & (!\G16|Mux13~4_combout\ & (!\G16|Mux15~4_combout\ & !\G16|Mux14~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G16|ALT_INV_Mux13~4_combout\,
	datac => \G16|ALT_INV_Mux15~4_combout\,
	datad => \G16|ALT_INV_Mux14~2_combout\,
	datae => \G17|ALT_INV_ram~259_combout\,
	dataf => \G18|ALT_INV_SAIDA~0_combout\,
	combout => \G18|SAIDA~11_combout\);

-- Location: LABCELL_X83_Y33_N42
\G18|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~12_combout\ = ( \G16|Mux11~2_combout\ & ( \G18|SAIDA~11_combout\ ) ) # ( !\G16|Mux11~2_combout\ & ( \G18|SAIDA~11_combout\ ) ) # ( \G16|Mux11~2_combout\ & ( !\G18|SAIDA~11_combout\ & ( (\G5|memparareg~combout\ & \G16|Mux12~2_combout\) ) ) ) # ( 
-- !\G16|Mux11~2_combout\ & ( !\G18|SAIDA~11_combout\ & ( (!\G5|memparareg~combout\ & ((!\G16|Mux12~2_combout\ & ((\G17|ram~301_combout\))) # (\G16|Mux12~2_combout\ & (\G17|ram~297_combout\)))) # (\G5|memparareg~combout\ & (((\G16|Mux12~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001011111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~297_combout\,
	datab => \G17|ALT_INV_ram~301_combout\,
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G16|ALT_INV_Mux11~2_combout\,
	dataf => \G18|ALT_INV_SAIDA~11_combout\,
	combout => \G18|SAIDA~12_combout\);

-- Location: LABCELL_X83_Y33_N48
\G18|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(3) = ( \G18|SAIDA~12_combout\ & ( (\Clock_Sistema~input_o\) # (\G18|SAIDA\(3)) ) ) # ( !\G18|SAIDA~12_combout\ & ( (\G18|SAIDA\(3) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(3),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA~12_combout\,
	combout => \G18|SAIDA\(3));

-- Location: LABCELL_X83_Y31_N36
\G7|Reg[1][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][3]~combout\ = ( \G7|Reg[1][0]~3_combout\ & ( \G18|SAIDA\(3) ) ) # ( !\G7|Reg[1][0]~3_combout\ & ( \G7|Reg[1][3]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(3),
	datad => \G7|ALT_INV_Reg[1][3]~combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~3_combout\,
	combout => \G7|Reg[1][3]~combout\);

-- Location: LABCELL_X85_Y31_N42
\G14|SAIDA~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~3_combout\ = ( \G7|Reg[1][3]~combout\ & ( (\G4|Mux0~2_combout\ & ((!\G5|escrevereg~combout\) # (\G4|Equal0~0_combout\))) ) ) # ( !\G7|Reg[1][3]~combout\ & ( (\G4|Mux0~2_combout\ & (\G4|Equal0~0_combout\ & \G5|escrevereg~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G4|ALT_INV_Equal0~0_combout\,
	datad => \G5|ALT_INV_escrevereg~combout\,
	dataf => \G7|ALT_INV_Reg[1][3]~combout\,
	combout => \G14|SAIDA~3_combout\);

-- Location: LABCELL_X85_Y31_N18
\G14|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(3) = ( \G14|SAIDA\(3) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~3_combout\) ) ) # ( !\G14|SAIDA\(3) & ( (\G14|SAIDA~3_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA~3_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(3),
	combout => \G14|SAIDA\(3));

-- Location: LABCELL_X83_Y31_N42
\G16|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~2_combout\ = ( \G16|Mux15~1_combout\ & ( (!\G16|Mux15~0_combout\ & ((!\G16|Mux12~1_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~13_sumout\)) ) ) # ( !\G16|Mux15~1_combout\ & ( (\G16|Add0~13_sumout\ & \G16|Mux15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~13_sumout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Add1~13_sumout\,
	datad => \G16|ALT_INV_Mux12~1_combout\,
	dataf => \G16|ALT_INV_Mux15~1_combout\,
	combout => \G16|Mux12~2_combout\);

-- Location: MLABCELL_X82_Y30_N27
\G7|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux27~0_combout\ = ( \G18|SAIDA\(4) & ( (\Clock_Sistema~input_o\ & (((\G7|Reg[1][4]~combout\ & \G4|Mux0~2_combout\)) # (\G7|Mux28~0_combout\))) ) ) # ( !\G18|SAIDA\(4) & ( (\G7|Reg[1][4]~combout\ & (\G4|Mux0~2_combout\ & \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000011110000000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[1][4]~combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G7|ALT_INV_Mux28~0_combout\,
	dataf => \G18|ALT_INV_SAIDA\(4),
	combout => \G7|Mux27~0_combout\);

-- Location: MLABCELL_X82_Y30_N33
\G17|ram~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~116_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~2_combout\) # (\G17|ram~116_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~116_combout\ & !\rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~116_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~116_combout\);

-- Location: MLABCELL_X82_Y30_N36
\G17|ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~100_combout\ = ( \G17|ram~100_combout\ & ( \G7|Mux27~0_combout\ ) ) # ( !\G17|ram~100_combout\ & ( \G7|Mux27~0_combout\ & ( \rtl~4_combout\ ) ) ) # ( \G17|ram~100_combout\ & ( !\G7|Mux27~0_combout\ & ( !\rtl~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~4_combout\,
	datae => \G17|ALT_INV_ram~100_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~100_combout\);

-- Location: MLABCELL_X82_Y30_N30
\G17|ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~84_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~1_combout\) # (\G17|ram~84_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~84_combout\ & !\rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~84_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~84_combout\);

-- Location: LABCELL_X81_Y30_N0
\G17|ram~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~36_combout\ = ( \G7|Mux27~0_combout\ & ( (\G17|ram~36_combout\) # (\rtl~12_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (!\rtl~12_combout\ & \G17|ram~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~12_combout\,
	datad => \G17|ALT_INV_ram~36_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~36_combout\);

-- Location: LABCELL_X81_Y30_N30
\G17|ram~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~52_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~10_combout\) # (\G17|ram~52_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~52_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~52_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~52_combout\);

-- Location: MLABCELL_X82_Y30_N6
\G17|ram~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~20_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~9_combout\) # (\G17|ram~20_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~20_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~20_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~20_combout\);

-- Location: LABCELL_X81_Y30_N9
\G17|ram~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~4_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~11_combout\) # (\G17|ram~4_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~4_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~4_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~4_combout\);

-- Location: LABCELL_X81_Y30_N36
\G17|ram~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~433_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~4_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~20_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~36_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~52_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~36_combout\,
	datad => \G17|ALT_INV_ram~52_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~20_combout\,
	datag => \G17|ALT_INV_ram~4_combout\,
	combout => \G17|ram~433_combout\);

-- Location: MLABCELL_X82_Y30_N24
\G17|ram~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~68_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~3_combout\) # (\G17|ram~68_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~68_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~68_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~68_combout\);

-- Location: LABCELL_X81_Y30_N18
\G17|ram~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~305_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~433_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~433_combout\ & (\G17|ram~68_combout\)) # (\G17|ram~433_combout\ & ((\G17|ram~84_combout\)))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((((\G17|ram~433_combout\))))) # (\G16|Mux13~0_combout\ & (((!\G17|ram~433_combout\ & ((\G17|ram~100_combout\))) # (\G17|ram~433_combout\ & (\G17|ram~116_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~116_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~100_combout\,
	datad => \G17|ALT_INV_ram~84_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~433_combout\,
	datag => \G17|ALT_INV_ram~68_combout\,
	combout => \G17|ram~305_combout\);

-- Location: MLABCELL_X82_Y30_N54
\G17|ram~260\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~260_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~0_combout\) # (\G17|ram~260_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~260_combout\ & !\rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~260_combout\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~260_combout\);

-- Location: MLABCELL_X82_Y30_N42
\G18|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~13_combout\ = ( !\G16|Mux14~2_combout\ & ( !\G16|Mux13~4_combout\ & ( (!\G16|Mux15~4_combout\ & (\G17|ram~260_combout\ & !\G16|Mux12~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G16|ALT_INV_Mux15~4_combout\,
	datac => \G17|ALT_INV_ram~260_combout\,
	datad => \G16|ALT_INV_Mux12~2_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux13~4_combout\,
	combout => \G18|SAIDA~13_combout\);

-- Location: LABCELL_X81_Y30_N54
\G17|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~148_combout\ = ( \G17|ram~148_combout\ & ( \G7|Mux27~0_combout\ ) ) # ( !\G17|ram~148_combout\ & ( \G7|Mux27~0_combout\ & ( \rtl~13_combout\ ) ) ) # ( \G17|ram~148_combout\ & ( !\G7|Mux27~0_combout\ & ( !\rtl~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rtl~13_combout\,
	datae => \G17|ALT_INV_ram~148_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~148_combout\);

-- Location: LABCELL_X81_Y30_N33
\G17|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~164_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~16_combout\) # (\G17|ram~164_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~164_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~164_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~164_combout\);

-- Location: LABCELL_X81_Y30_N15
\G17|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~180_combout\ = ( \G7|Mux27~0_combout\ & ( (\G17|ram~180_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (!\rtl~14_combout\ & \G17|ram~180_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~14_combout\,
	datac => \G17|ALT_INV_ram~180_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~180_combout\);

-- Location: LABCELL_X81_Y30_N3
\G17|ram~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~132_combout\ = ( \G7|Mux27~0_combout\ & ( (\G17|ram~132_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (!\rtl~15_combout\ & \G17|ram~132_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~132_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~132_combout\);

-- Location: LABCELL_X81_Y30_N48
\G17|ram~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~437_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~132_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~148_combout\)))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~164_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~180_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001110111000011000011001100001100011101110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~148_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~164_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~180_combout\,
	datag => \G17|ALT_INV_ram~132_combout\,
	combout => \G17|ram~437_combout\);

-- Location: MLABCELL_X82_Y30_N12
\G17|ram~228\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~228_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~8_combout\) # (\G17|ram~228_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~228_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~228_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~228_combout\);

-- Location: MLABCELL_X82_Y30_N57
\G17|ram~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~212_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~5_combout\) # (\G17|ram~212_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~212_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~212_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~212_combout\);

-- Location: LABCELL_X81_Y30_N12
\G17|ram~244\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~244_combout\ = ( \G17|ram~244_combout\ & ( (!\rtl~6_combout\) # (\G7|Mux27~0_combout\) ) ) # ( !\G17|ram~244_combout\ & ( (\rtl~6_combout\ & \G7|Mux27~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~6_combout\,
	datac => \G7|ALT_INV_Mux27~0_combout\,
	dataf => \G17|ALT_INV_ram~244_combout\,
	combout => \G17|ram~244_combout\);

-- Location: MLABCELL_X82_Y30_N15
\G17|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~196_combout\ = ( \G7|Mux27~0_combout\ & ( (\rtl~7_combout\) # (\G17|ram~196_combout\) ) ) # ( !\G7|Mux27~0_combout\ & ( (\G17|ram~196_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~196_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G7|ALT_INV_Mux27~0_combout\,
	combout => \G17|ram~196_combout\);

-- Location: LABCELL_X81_Y30_N24
\G17|ram~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~309_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~437_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~196_combout\))) # (\G17|ram~437_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~212_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~437_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~228_combout\))) # (\G17|ram~437_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~244_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001010111010001100100011001000110010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~437_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~228_combout\,
	datad => \G17|ALT_INV_ram~212_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~244_combout\,
	datag => \G17|ALT_INV_ram~196_combout\,
	combout => \G17|ram~309_combout\);

-- Location: LABCELL_X81_Y30_N42
\G18|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~14_combout\ = ( \G18|SAIDA~13_combout\ & ( \G17|ram~309_combout\ & ( ((!\G5|memparareg~combout\ & ((\G17|ram~305_combout\) # (\G16|Mux12~2_combout\)))) # (\G16|Mux11~2_combout\) ) ) ) # ( !\G18|SAIDA~13_combout\ & ( \G17|ram~309_combout\ & ( 
-- (!\G16|Mux11~2_combout\ & (!\G5|memparareg~combout\ & ((\G17|ram~305_combout\) # (\G16|Mux12~2_combout\)))) # (\G16|Mux11~2_combout\ & (((\G5|memparareg~combout\)))) ) ) ) # ( \G18|SAIDA~13_combout\ & ( !\G17|ram~309_combout\ & ( ((!\G16|Mux12~2_combout\ 
-- & (\G17|ram~305_combout\ & !\G5|memparareg~combout\))) # (\G16|Mux11~2_combout\) ) ) ) # ( !\G18|SAIDA~13_combout\ & ( !\G17|ram~309_combout\ & ( (!\G16|Mux11~2_combout\ & (!\G16|Mux12~2_combout\ & (\G17|ram~305_combout\ & !\G5|memparareg~combout\))) # 
-- (\G16|Mux11~2_combout\ & (((\G5|memparareg~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001010101010111010101010100101010010101010111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G16|ALT_INV_Mux12~2_combout\,
	datac => \G17|ALT_INV_ram~305_combout\,
	datad => \G5|ALT_INV_memparareg~combout\,
	datae => \G18|ALT_INV_SAIDA~13_combout\,
	dataf => \G17|ALT_INV_ram~309_combout\,
	combout => \G18|SAIDA~14_combout\);

-- Location: LABCELL_X81_Y30_N6
\G18|SAIDA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(4) = ( \G18|SAIDA~14_combout\ & ( (\Clock_Sistema~input_o\) # (\G18|SAIDA\(4)) ) ) # ( !\G18|SAIDA~14_combout\ & ( (\G18|SAIDA\(4) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(4),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA~14_combout\,
	combout => \G18|SAIDA\(4));

-- Location: MLABCELL_X87_Y31_N15
\G16|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~17_sumout\ = SUM(( (\G5|escrevereg~combout\ & (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & \G18|SAIDA\(4)))) ) + ( !\G14|SAIDA\(4) ) + ( \G16|Add1~14\ ))
-- \G16|Add1~18\ = CARRY(( (\G5|escrevereg~combout\ & (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & \G18|SAIDA\(4)))) ) + ( !\G14|SAIDA\(4) ) + ( \G16|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA\(4),
	dataf => \G14|ALT_INV_SAIDA\(4),
	cin => \G16|Add1~14\,
	sumout => \G16|Add1~17_sumout\,
	cout => \G16|Add1~18\);

-- Location: MLABCELL_X84_Y32_N54
\G16|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~2_combout\ = ( \G16|Add0~17_sumout\ & ( (!\G16|Mux15~1_combout\ & (\G16|Mux15~0_combout\)) # (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G16|Mux11~1_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~17_sumout\)))) ) ) # ( 
-- !\G16|Add0~17_sumout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G16|Mux11~1_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001010001010000000101100111001000110110011100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~1_combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Add1~17_sumout\,
	datad => \G16|ALT_INV_Mux11~1_combout\,
	dataf => \G16|ALT_INV_Add0~17_sumout\,
	combout => \G16|Mux11~2_combout\);

-- Location: LABCELL_X83_Y31_N39
\G7|Reg[1][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][14]~combout\ = ( \G7|Reg[1][14]~combout\ & ( (!\G7|Reg[1][0]~3_combout\) # (\G18|SAIDA\(14)) ) ) # ( !\G7|Reg[1][14]~combout\ & ( (\G18|SAIDA\(14) & \G7|Reg[1][0]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(14),
	datab => \G7|ALT_INV_Reg[1][0]~3_combout\,
	dataf => \G7|ALT_INV_Reg[1][14]~combout\,
	combout => \G7|Reg[1][14]~combout\);

-- Location: MLABCELL_X82_Y31_N15
\G7|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux17~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][14]~combout\)) # (\G18|SAIDA\(14)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\G4|Mux0~2_combout\ & (\Clock_Sistema~input_o\ & 
-- \G7|Reg[1][14]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G7|ALT_INV_Reg[1][14]~combout\,
	datad => \G18|ALT_INV_SAIDA\(14),
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux17~0_combout\);

-- Location: LABCELL_X83_Y32_N42
\G17|ram~270\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~270_combout\ = ( \G17|ram~270_combout\ & ( (!\rtl~0_combout\) # (\G7|Mux17~0_combout\) ) ) # ( !\G17|ram~270_combout\ & ( (\G7|Mux17~0_combout\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datac => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~270_combout\,
	combout => \G17|ram~270_combout\);

-- Location: LABCELL_X83_Y32_N18
\G18|SAIDA~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~51_combout\ = ( !\G16|Mux15~4_combout\ & ( \G18|SAIDA~0_combout\ & ( (\G16|Mux11~2_combout\ & (!\G16|Mux13~4_combout\ & (!\G16|Mux14~2_combout\ & \G17|ram~270_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G16|ALT_INV_Mux13~4_combout\,
	datac => \G16|ALT_INV_Mux14~2_combout\,
	datad => \G17|ALT_INV_ram~270_combout\,
	datae => \G16|ALT_INV_Mux15~4_combout\,
	dataf => \G18|ALT_INV_SAIDA~0_combout\,
	combout => \G18|SAIDA~51_combout\);

-- Location: LABCELL_X81_Y35_N57
\G17|ram~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~94_combout\ = ( \rtl~1_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~94_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux17~0_combout\,
	datad => \G17|ALT_INV_ram~94_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~94_combout\);

-- Location: LABCELL_X81_Y35_N24
\G17|ram~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~126_combout\ = ( \rtl~2_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~126_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datac => \G17|ALT_INV_ram~126_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~126_combout\);

-- Location: LABCELL_X81_Y35_N27
\G17|ram~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~110_combout\ = ( \G17|ram~110_combout\ & ( (!\rtl~4_combout\) # (\G7|Mux17~0_combout\) ) ) # ( !\G17|ram~110_combout\ & ( (\G7|Mux17~0_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~110_combout\,
	combout => \G17|ram~110_combout\);

-- Location: MLABCELL_X82_Y35_N33
\G17|ram~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~46_combout\ = ( \G17|ram~46_combout\ & ( (!\rtl~12_combout\) # (\G7|Mux17~0_combout\) ) ) # ( !\G17|ram~46_combout\ & ( (\G7|Mux17~0_combout\ & \rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G17|ALT_INV_ram~46_combout\,
	combout => \G17|ram~46_combout\);

-- Location: LABCELL_X81_Y35_N9
\G17|ram~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~62_combout\ = ( \rtl~10_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~62_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datac => \G17|ALT_INV_ram~62_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~62_combout\);

-- Location: LABCELL_X81_Y35_N6
\G17|ram~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~30_combout\ = ( \G17|ram~30_combout\ & ( (!\rtl~9_combout\) # (\G7|Mux17~0_combout\) ) ) # ( !\G17|ram~30_combout\ & ( (\G7|Mux17~0_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~30_combout\,
	combout => \G17|ram~30_combout\);

-- Location: MLABCELL_X82_Y35_N36
\G17|ram~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~14_combout\ = ( \rtl~11_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datad => \G17|ALT_INV_ram~14_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~14_combout\);

-- Location: MLABCELL_X82_Y35_N54
\G17|ram~513\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~513_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~14_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~30_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~46_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~62_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~46_combout\,
	datad => \G17|ALT_INV_ram~62_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~30_combout\,
	datag => \G17|ALT_INV_ram~14_combout\,
	combout => \G17|ram~513_combout\);

-- Location: LABCELL_X81_Y35_N54
\G17|ram~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~78_combout\ = ( \rtl~3_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~3_combout\ & ( \G17|ram~78_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datad => \G17|ALT_INV_ram~78_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~78_combout\);

-- Location: MLABCELL_X82_Y35_N6
\G17|ram~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~385_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~513_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~513_combout\ & ((\G17|ram~78_combout\))) # (\G17|ram~513_combout\ & (\G17|ram~94_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~513_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~513_combout\ & ((\G17|ram~110_combout\))) # (\G17|ram~513_combout\ & (\G17|ram~126_combout\))))) ) )

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
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~513_combout\,
	datag => \G17|ALT_INV_ram~78_combout\,
	combout => \G17|ram~385_combout\);

-- Location: LABCELL_X81_Y35_N21
\G17|ram~254\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~254_combout\ = (!\rtl~6_combout\ & (\G17|ram~254_combout\)) # (\rtl~6_combout\ & ((\G7|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~254_combout\,
	datac => \G7|ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	combout => \G17|ram~254_combout\);

-- Location: LABCELL_X81_Y35_N36
\G17|ram~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~222_combout\ = ( \rtl~5_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~222_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datad => \G17|ALT_INV_ram~222_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~222_combout\);

-- Location: LABCELL_X81_Y35_N0
\G17|ram~238\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~238_combout\ = ( \rtl~8_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~8_combout\ & ( \G7|Mux17~0_combout\ & ( \G17|ram~238_combout\ ) ) ) # ( !\rtl~8_combout\ & ( !\G7|Mux17~0_combout\ & ( \G17|ram~238_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~238_combout\,
	datae => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Mux17~0_combout\,
	combout => \G17|ram~238_combout\);

-- Location: MLABCELL_X82_Y35_N18
\G17|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~174_combout\ = ( \rtl~16_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~174_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datac => \G17|ALT_INV_ram~174_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~174_combout\);

-- Location: MLABCELL_X82_Y35_N39
\G17|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~158_combout\ = ( \G17|ram~158_combout\ & ( (!\rtl~13_combout\) # (\G7|Mux17~0_combout\) ) ) # ( !\G17|ram~158_combout\ & ( (\G7|Mux17~0_combout\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G17|ALT_INV_ram~158_combout\,
	combout => \G17|ram~158_combout\);

-- Location: MLABCELL_X82_Y35_N27
\G17|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~190_combout\ = ( \G7|Mux17~0_combout\ & ( (\G17|ram~190_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Mux17~0_combout\ & ( (!\rtl~14_combout\ & \G17|ram~190_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datad => \G17|ALT_INV_ram~190_combout\,
	dataf => \G7|ALT_INV_Mux17~0_combout\,
	combout => \G17|ram~190_combout\);

-- Location: MLABCELL_X82_Y35_N21
\G17|ram~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~142_combout\ = ( \rtl~15_combout\ & ( \G7|Mux17~0_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~142_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux17~0_combout\,
	datad => \G17|ALT_INV_ram~142_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~142_combout\);

-- Location: MLABCELL_X82_Y35_N42
\G17|ram~517\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~517_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~142_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~158_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~174_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~190_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~174_combout\,
	datad => \G17|ALT_INV_ram~158_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~190_combout\,
	datag => \G17|ALT_INV_ram~142_combout\,
	combout => \G17|ram~517_combout\);

-- Location: LABCELL_X81_Y35_N18
\G17|ram~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~206_combout\ = ( \G17|ram~206_combout\ & ( (!\rtl~7_combout\) # (\G7|Mux17~0_combout\) ) ) # ( !\G17|ram~206_combout\ & ( (\G7|Mux17~0_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux17~0_combout\,
	datac => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~206_combout\,
	combout => \G17|ram~206_combout\);

-- Location: MLABCELL_X82_Y35_N12
\G17|ram~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~389_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~517_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~517_combout\ & ((\G17|ram~206_combout\))) # (\G17|ram~517_combout\ & (\G17|ram~222_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~517_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~517_combout\ & ((\G17|ram~238_combout\))) # (\G17|ram~517_combout\ & (\G17|ram~254_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~254_combout\,
	datab => \G17|ALT_INV_ram~222_combout\,
	datac => \G17|ALT_INV_ram~238_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~517_combout\,
	datag => \G17|ALT_INV_ram~206_combout\,
	combout => \G17|ram~389_combout\);

-- Location: LABCELL_X85_Y31_N21
\G14|SAIDA~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~14_combout\ = ( \G7|Reg[1][14]~combout\ & ( (\G4|Mux0~2_combout\ & !\G5|escrevereg~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G5|ALT_INV_escrevereg~combout\,
	dataf => \G7|ALT_INV_Reg[1][14]~combout\,
	combout => \G14|SAIDA~14_combout\);

-- Location: LABCELL_X88_Y33_N9
\G14|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(14) = ( \G14|SAIDA\(14) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~14_combout\) ) ) # ( !\G14|SAIDA\(14) & ( (\Clock_Sistema~input_o\ & \G14|SAIDA~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G14|ALT_INV_SAIDA~14_combout\,
	dataf => \G14|ALT_INV_SAIDA\(14),
	combout => \G14|SAIDA\(14));

-- Location: MLABCELL_X84_Y30_N48
\G7|Reg[1][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][13]~combout\ = ( \G7|Reg[1][13]~combout\ & ( (!\G7|Reg[1][0]~3_combout\) # (\G18|SAIDA\(13)) ) ) # ( !\G7|Reg[1][13]~combout\ & ( (\G18|SAIDA\(13) & \G7|Reg[1][0]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(13),
	datad => \G7|ALT_INV_Reg[1][0]~3_combout\,
	dataf => \G7|ALT_INV_Reg[1][13]~combout\,
	combout => \G7|Reg[1][13]~combout\);

-- Location: LABCELL_X88_Y31_N45
\G7|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux18~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][13]~combout\)) # (\G18|SAIDA\(13)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux0~2_combout\ & 
-- \G7|Reg[1][13]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100010001000100110001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(13),
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G7|ALT_INV_Reg[1][13]~combout\,
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux18~0_combout\);

-- Location: LABCELL_X80_Y32_N54
\G17|ram~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~269_combout\ = ( \rtl~0_combout\ & ( \G7|Mux18~0_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~269_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux18~0_combout\,
	datad => \G17|ALT_INV_ram~269_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~269_combout\);

-- Location: LABCELL_X80_Y32_N6
\G18|SAIDA~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~47_combout\ = ( !\G16|Mux14~2_combout\ & ( !\G16|Mux15~4_combout\ & ( (\G16|Mux11~2_combout\ & (\G17|ram~269_combout\ & (!\G16|Mux13~4_combout\ & \G18|SAIDA~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G17|ALT_INV_ram~269_combout\,
	datac => \G16|ALT_INV_Mux13~4_combout\,
	datad => \G18|ALT_INV_SAIDA~0_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux15~4_combout\,
	combout => \G18|SAIDA~47_combout\);

-- Location: LABCELL_X85_Y30_N36
\G14|SAIDA~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~13_combout\ = ( \G4|Mux0~2_combout\ & ( \G7|Reg[1][13]~combout\ & ( !\G5|escrevereg~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G5|ALT_INV_escrevereg~combout\,
	datae => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G7|ALT_INV_Reg[1][13]~combout\,
	combout => \G14|SAIDA~13_combout\);

-- Location: LABCELL_X88_Y34_N51
\G14|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(13) = ( \G14|SAIDA\(13) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~13_combout\) ) ) # ( !\G14|SAIDA\(13) & ( (\G14|SAIDA~13_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA~13_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(13),
	combout => \G14|SAIDA\(13));

-- Location: MLABCELL_X84_Y30_N45
\G7|Reg[1][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][12]~combout\ = ( \G7|Reg[1][0]~3_combout\ & ( \G18|SAIDA\(12) ) ) # ( !\G7|Reg[1][0]~3_combout\ & ( \G7|Reg[1][12]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(12),
	datad => \G7|ALT_INV_Reg[1][12]~combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~3_combout\,
	combout => \G7|Reg[1][12]~combout\);

-- Location: MLABCELL_X84_Y30_N9
\G14|SAIDA~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~12_combout\ = ( \G7|Reg[1][12]~combout\ & ( (\G4|Mux0~2_combout\ & !\G5|escrevereg~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	dataf => \G7|ALT_INV_Reg[1][12]~combout\,
	combout => \G14|SAIDA~12_combout\);

-- Location: LABCELL_X88_Y34_N48
\G14|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(12) = ( \G14|SAIDA\(12) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~12_combout\) ) ) # ( !\G14|SAIDA\(12) & ( (\G14|SAIDA~12_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA~12_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(12),
	combout => \G14|SAIDA\(12));

-- Location: LABCELL_X85_Y31_N27
\G7|Reg[1][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][11]~combout\ = ( \G7|Reg[1][0]~3_combout\ & ( \G18|SAIDA\(11) ) ) # ( !\G7|Reg[1][0]~3_combout\ & ( \G7|Reg[1][11]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(11),
	datad => \G7|ALT_INV_Reg[1][11]~combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~3_combout\,
	combout => \G7|Reg[1][11]~combout\);

-- Location: LABCELL_X85_Y31_N45
\G14|SAIDA~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~11_combout\ = ( \G7|Reg[1][11]~combout\ & ( (\G4|Mux0~2_combout\ & !\G5|escrevereg~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G5|ALT_INV_escrevereg~combout\,
	dataf => \G7|ALT_INV_Reg[1][11]~combout\,
	combout => \G14|SAIDA~11_combout\);

-- Location: LABCELL_X88_Y35_N18
\G14|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(11) = ( \G14|SAIDA\(11) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~11_combout\) ) ) # ( !\G14|SAIDA\(11) & ( (\Clock_Sistema~input_o\ & \G14|SAIDA~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G14|ALT_INV_SAIDA~11_combout\,
	dataf => \G14|ALT_INV_SAIDA\(11),
	combout => \G14|SAIDA\(11));

-- Location: MLABCELL_X87_Y32_N6
\G18|SAIDA~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~39_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G18|SAIDA\(11) & !\G14|SAIDA\(11)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(11),
	datab => \G14|ALT_INV_SAIDA\(11),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G18|SAIDA~39_combout\);

-- Location: LABCELL_X83_Y31_N51
\G7|Reg[1][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][10]~combout\ = ( \G7|Reg[1][10]~combout\ & ( (!\G7|Reg[1][0]~3_combout\) # (\G18|SAIDA\(10)) ) ) # ( !\G7|Reg[1][10]~combout\ & ( (\G18|SAIDA\(10) & \G7|Reg[1][0]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(10),
	datad => \G7|ALT_INV_Reg[1][0]~3_combout\,
	dataf => \G7|ALT_INV_Reg[1][10]~combout\,
	combout => \G7|Reg[1][10]~combout\);

-- Location: LABCELL_X85_Y33_N6
\G14|SAIDA~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~10_combout\ = ( !\G5|escrevereg~combout\ & ( (\G4|Mux0~2_combout\ & \G7|Reg[1][10]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G7|ALT_INV_Reg[1][10]~combout\,
	dataf => \G5|ALT_INV_escrevereg~combout\,
	combout => \G14|SAIDA~10_combout\);

-- Location: LABCELL_X88_Y33_N24
\G14|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(10) = ( \G14|SAIDA\(10) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~10_combout\) ) ) # ( !\G14|SAIDA\(10) & ( (\G14|SAIDA~10_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G14|ALT_INV_SAIDA~10_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(10),
	combout => \G14|SAIDA\(10));

-- Location: LABCELL_X85_Y31_N15
\G7|Reg[1][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][9]~combout\ = ( \G7|Reg[1][0]~3_combout\ & ( \G18|SAIDA\(9) ) ) # ( !\G7|Reg[1][0]~3_combout\ & ( \G7|Reg[1][9]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(9),
	datac => \G7|ALT_INV_Reg[1][9]~combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~3_combout\,
	combout => \G7|Reg[1][9]~combout\);

-- Location: LABCELL_X88_Y31_N57
\G7|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux22~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][9]~combout\)) # (\G18|SAIDA\(9)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux0~2_combout\ & 
-- \G7|Reg[1][9]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G7|ALT_INV_Reg[1][9]~combout\,
	datad => \G18|ALT_INV_SAIDA\(9),
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux22~0_combout\);

-- Location: MLABCELL_X82_Y33_N18
\G17|ram~249\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~249_combout\ = ( \G17|ram~249_combout\ & ( (!\rtl~6_combout\) # (\G7|Mux22~0_combout\) ) ) # ( !\G17|ram~249_combout\ & ( (\G7|Mux22~0_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~249_combout\,
	combout => \G17|ram~249_combout\);

-- Location: LABCELL_X83_Y35_N3
\G17|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~169_combout\ = ( \rtl~16_combout\ & ( \G7|Mux22~0_combout\ ) ) # ( !\rtl~16_combout\ & ( \G17|ram~169_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~169_combout\,
	datac => \G7|ALT_INV_Mux22~0_combout\,
	dataf => \ALT_INV_rtl~16_combout\,
	combout => \G17|ram~169_combout\);

-- Location: LABCELL_X83_Y35_N15
\G17|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~153_combout\ = ( \G7|Mux22~0_combout\ & ( (\rtl~13_combout\) # (\G17|ram~153_combout\) ) ) # ( !\G7|Mux22~0_combout\ & ( (\G17|ram~153_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~153_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G17|ram~153_combout\);

-- Location: LABCELL_X83_Y35_N51
\G17|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~185_combout\ = ( \G7|Mux22~0_combout\ & ( (\rtl~14_combout\) # (\G17|ram~185_combout\) ) ) # ( !\G7|Mux22~0_combout\ & ( (\G17|ram~185_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~185_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G17|ram~185_combout\);

-- Location: MLABCELL_X82_Y33_N48
\G17|ram~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~137_combout\ = ( \rtl~15_combout\ & ( \G7|Mux22~0_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~137_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datad => \G17|ALT_INV_ram~137_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~137_combout\);

-- Location: LABCELL_X83_Y35_N18
\G17|ram~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~477_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~137_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~153_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~169_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~185_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~169_combout\,
	datad => \G17|ALT_INV_ram~153_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~185_combout\,
	datag => \G17|ALT_INV_ram~137_combout\,
	combout => \G17|ram~477_combout\);

-- Location: MLABCELL_X82_Y33_N54
\G17|ram~233\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~233_combout\ = ( \rtl~8_combout\ & ( \G7|Mux22~0_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~233_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datad => \G17|ALT_INV_ram~233_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~233_combout\);

-- Location: MLABCELL_X82_Y35_N30
\G17|ram~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~217_combout\ = ( \G17|ram~217_combout\ & ( (!\rtl~5_combout\) # (\G7|Mux22~0_combout\) ) ) # ( !\G17|ram~217_combout\ & ( (\G7|Mux22~0_combout\ & \rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G17|ALT_INV_ram~217_combout\,
	combout => \G17|ram~217_combout\);

-- Location: MLABCELL_X82_Y31_N33
\G17|ram~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~201_combout\ = ( \G17|ram~201_combout\ & ( (!\rtl~7_combout\) # (\G7|Mux22~0_combout\) ) ) # ( !\G17|ram~201_combout\ & ( (\G7|Mux22~0_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~201_combout\,
	combout => \G17|ram~201_combout\);

-- Location: LABCELL_X83_Y35_N42
\G17|ram~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~349_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~477_combout\ & (\G17|ram~201_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~477_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~217_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~477_combout\ & (((\G17|ram~233_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~477_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~249_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~249_combout\,
	datab => \G17|ALT_INV_ram~477_combout\,
	datac => \G17|ALT_INV_ram~233_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~217_combout\,
	datag => \G17|ALT_INV_ram~201_combout\,
	combout => \G17|ram~349_combout\);

-- Location: LABCELL_X85_Y31_N48
\G14|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~9_combout\ = ( \G7|Reg[1][9]~combout\ & ( (!\G5|escrevereg~combout\ & \G4|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G7|ALT_INV_Reg[1][9]~combout\,
	combout => \G14|SAIDA~9_combout\);

-- Location: LABCELL_X88_Y35_N33
\G14|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(9) = ( \G14|SAIDA\(9) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~9_combout\) ) ) # ( !\G14|SAIDA\(9) & ( (\Clock_Sistema~input_o\ & \G14|SAIDA~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G14|ALT_INV_SAIDA~9_combout\,
	dataf => \G14|ALT_INV_SAIDA\(9),
	combout => \G14|SAIDA\(9));

-- Location: MLABCELL_X82_Y31_N24
\G7|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux23~0_combout\ = ( \G18|SAIDA\(8) & ( (\Clock_Sistema~input_o\ & (((\G7|Reg[1][8]~combout\ & \G4|Mux0~2_combout\)) # (\G7|Mux28~0_combout\))) ) ) # ( !\G18|SAIDA\(8) & ( (\G7|Reg[1][8]~combout\ & (\G4|Mux0~2_combout\ & \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000001101110000000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[1][8]~combout\,
	datab => \G7|ALT_INV_Mux28~0_combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(8),
	combout => \G7|Mux23~0_combout\);

-- Location: LABCELL_X81_Y31_N18
\G17|ram~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~56_combout\ = ( \rtl~10_combout\ & ( \G7|Mux23~0_combout\ ) ) # ( !\rtl~10_combout\ & ( \G17|ram~56_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~56_combout\,
	datad => \G7|ALT_INV_Mux23~0_combout\,
	dataf => \ALT_INV_rtl~10_combout\,
	combout => \G17|ram~56_combout\);

-- Location: LABCELL_X81_Y31_N54
\G17|ram~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~40_combout\ = (!\rtl~12_combout\ & ((\G17|ram~40_combout\))) # (\rtl~12_combout\ & (\G7|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux23~0_combout\,
	datac => \G17|ALT_INV_ram~40_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~40_combout\);

-- Location: LABCELL_X81_Y31_N21
\G17|ram~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~24_combout\ = ( \G17|ram~24_combout\ & ( (!\rtl~9_combout\) # (\G7|Mux23~0_combout\) ) ) # ( !\G17|ram~24_combout\ & ( (\G7|Mux23~0_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~24_combout\,
	combout => \G17|ram~24_combout\);

-- Location: LABCELL_X81_Y31_N39
\G17|ram~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~8_combout\ = ( \G7|Mux23~0_combout\ & ( (\G17|ram~8_combout\) # (\rtl~11_combout\) ) ) # ( !\G7|Mux23~0_combout\ & ( (!\rtl~11_combout\ & \G17|ram~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~11_combout\,
	datad => \G17|ALT_INV_ram~8_combout\,
	dataf => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G17|ram~8_combout\);

-- Location: LABCELL_X81_Y31_N42
\G17|ram~465\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~465_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux15~2_combout\ & (\G17|ram~8_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~2_combout\ & (((\G17|ram~24_combout\) # (\G16|Mux13~0_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~40_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~56_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000111010011001100111111001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~56_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~40_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~24_combout\,
	datag => \G17|ALT_INV_ram~8_combout\,
	combout => \G17|ram~465_combout\);

-- Location: MLABCELL_X82_Y30_N48
\G17|ram~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~88_combout\ = ( \G17|ram~88_combout\ & ( (!\rtl~1_combout\) # (\G7|Mux23~0_combout\) ) ) # ( !\G17|ram~88_combout\ & ( (\G7|Mux23~0_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~88_combout\,
	combout => \G17|ram~88_combout\);

-- Location: LABCELL_X81_Y31_N12
\G17|ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~104_combout\ = ( \G17|ram~104_combout\ & ( (!\rtl~4_combout\) # (\G7|Mux23~0_combout\) ) ) # ( !\G17|ram~104_combout\ & ( (\rtl~4_combout\ & \G7|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~4_combout\,
	datad => \G7|ALT_INV_Mux23~0_combout\,
	dataf => \G17|ALT_INV_ram~104_combout\,
	combout => \G17|ram~104_combout\);

-- Location: MLABCELL_X82_Y31_N27
\G17|ram~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~120_combout\ = ( \G7|Mux23~0_combout\ & ( (\G17|ram~120_combout\) # (\rtl~2_combout\) ) ) # ( !\G7|Mux23~0_combout\ & ( (!\rtl~2_combout\ & \G17|ram~120_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~2_combout\,
	datad => \G17|ALT_INV_ram~120_combout\,
	dataf => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G17|ram~120_combout\);

-- Location: LABCELL_X80_Y30_N45
\G17|ram~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~72_combout\ = ( \G17|ram~72_combout\ & ( \G7|Mux23~0_combout\ ) ) # ( !\G17|ram~72_combout\ & ( \G7|Mux23~0_combout\ & ( \rtl~3_combout\ ) ) ) # ( \G17|ram~72_combout\ & ( !\G7|Mux23~0_combout\ & ( !\rtl~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~3_combout\,
	datae => \G17|ALT_INV_ram~72_combout\,
	dataf => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G17|ram~72_combout\);

-- Location: LABCELL_X81_Y31_N48
\G17|ram~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~337_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~465_combout\ & (((\G17|ram~72_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~465_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~88_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~465_combout\ & (((\G17|ram~104_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~465_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~120_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~465_combout\,
	datab => \G17|ALT_INV_ram~88_combout\,
	datac => \G17|ALT_INV_ram~104_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~120_combout\,
	datag => \G17|ALT_INV_ram~72_combout\,
	combout => \G17|ram~337_combout\);

-- Location: LABCELL_X88_Y31_N3
\G7|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux25~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][6]~combout\)) # (\G18|SAIDA\(6)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux0~2_combout\ & 
-- \G7|Reg[1][6]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G7|ALT_INV_Reg[1][6]~combout\,
	datad => \G18|ALT_INV_SAIDA\(6),
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux25~0_combout\);

-- Location: MLABCELL_X82_Y31_N42
\G17|ram~262\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~262_combout\ = ( \G17|ram~262_combout\ & ( (!\rtl~0_combout\) # (\G7|Mux25~0_combout\) ) ) # ( !\G17|ram~262_combout\ & ( (\G7|Mux25~0_combout\ & \rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \G17|ALT_INV_ram~262_combout\,
	combout => \G17|ram~262_combout\);

-- Location: MLABCELL_X82_Y31_N45
\G7|Reg[1][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][5]~combout\ = ( \G7|Reg[1][0]~3_combout\ & ( \G18|SAIDA\(5) ) ) # ( !\G7|Reg[1][0]~3_combout\ & ( \G7|Reg[1][5]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(5),
	datad => \G7|ALT_INV_Reg[1][5]~combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~3_combout\,
	combout => \G7|Reg[1][5]~combout\);

-- Location: LABCELL_X88_Y31_N0
\G7|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux26~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][5]~combout\)) # (\G18|SAIDA\(5)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux0~2_combout\ & 
-- \G7|Reg[1][5]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000101000101010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G18|ALT_INV_SAIDA\(5),
	datad => \G7|ALT_INV_Reg[1][5]~combout\,
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux26~0_combout\);

-- Location: LABCELL_X85_Y35_N24
\G17|ram~261\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~261_combout\ = ( \G7|Mux26~0_combout\ & ( (\G17|ram~261_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (!\rtl~0_combout\ & \G17|ram~261_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~261_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~261_combout\);

-- Location: LABCELL_X88_Y33_N51
\G14|SAIDA~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~5_combout\ = ( !\G5|escrevereg~combout\ & ( (\G7|Reg[1][5]~combout\ & \G4|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg[1][5]~combout\,
	datad => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G5|ALT_INV_escrevereg~combout\,
	combout => \G14|SAIDA~5_combout\);

-- Location: LABCELL_X88_Y33_N48
\G14|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(5) = ( \G14|SAIDA\(5) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~5_combout\) ) ) # ( !\G14|SAIDA\(5) & ( (\G14|SAIDA~5_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA~5_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(5),
	combout => \G14|SAIDA\(5));

-- Location: MLABCELL_X87_Y31_N18
\G16|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~21_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(5)))) ) + ( !\G14|SAIDA\(5) ) + ( \G16|Add1~18\ ))
-- \G16|Add1~22\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(5)))) ) + ( !\G14|SAIDA\(5) ) + ( \G16|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(5),
	dataf => \G14|ALT_INV_SAIDA\(5),
	cin => \G16|Add1~18\,
	sumout => \G16|Add1~21_sumout\,
	cout => \G16|Add1~22\);

-- Location: LABCELL_X85_Y33_N3
\G18|SAIDA~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~15_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G18|SAIDA\(5) & !\G14|SAIDA\(5)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(5),
	datac => \G14|ALT_INV_SAIDA\(5),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G18|SAIDA~15_combout\);

-- Location: MLABCELL_X84_Y31_N15
\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( \G14|SAIDA\(5) ) + ( (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(5)))) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( \G14|SAIDA\(5) ) + ( (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(5)))) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G14|ALT_INV_SAIDA\(5),
	dataf => \G18|ALT_INV_SAIDA\(5),
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

-- Location: MLABCELL_X84_Y35_N24
\G18|SAIDA~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~16_combout\ = ( \G16|Mux15~1_combout\ & ( \G16|Add0~21_sumout\ & ( (\G5|memparareg~combout\ & ((!\G16|Mux15~0_combout\ & ((!\G18|SAIDA~15_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~21_sumout\)))) ) ) ) # ( !\G16|Mux15~1_combout\ & ( 
-- \G16|Add0~21_sumout\ & ( (\G16|Mux15~0_combout\ & \G5|memparareg~combout\) ) ) ) # ( \G16|Mux15~1_combout\ & ( !\G16|Add0~21_sumout\ & ( (\G5|memparareg~combout\ & ((!\G16|Mux15~0_combout\ & ((!\G18|SAIDA~15_combout\))) # (\G16|Mux15~0_combout\ & 
-- (\G16|Add1~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000000100000011000000110000110100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~21_sumout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G5|ALT_INV_memparareg~combout\,
	datad => \G18|ALT_INV_SAIDA~15_combout\,
	datae => \G16|ALT_INV_Mux15~1_combout\,
	dataf => \G16|ALT_INV_Add0~21_sumout\,
	combout => \G18|SAIDA~16_combout\);

-- Location: MLABCELL_X84_Y35_N54
\G18|SAIDA~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~17_combout\ = ( \G18|SAIDA~0_combout\ & ( !\G18|SAIDA~16_combout\ & ( (!\G17|ram~280_combout\) # ((!\G16|Mux11~2_combout\) # ((!\G17|ram~261_combout\) # (\G16|Mux14~2_combout\))) ) ) ) # ( !\G18|SAIDA~0_combout\ & ( !\G18|SAIDA~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~280_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G16|ALT_INV_Mux14~2_combout\,
	datad => \G17|ALT_INV_ram~261_combout\,
	datae => \G18|ALT_INV_SAIDA~0_combout\,
	dataf => \G18|ALT_INV_SAIDA~16_combout\,
	combout => \G18|SAIDA~17_combout\);

-- Location: LABCELL_X85_Y35_N18
\G17|ram~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~245_combout\ = ( \G7|Mux26~0_combout\ & ( (\G17|ram~245_combout\) # (\rtl~6_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (!\rtl~6_combout\ & \G17|ram~245_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~6_combout\,
	datac => \G17|ALT_INV_ram~245_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~245_combout\);

-- Location: MLABCELL_X84_Y35_N0
\G17|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~149_combout\ = ( \G7|Mux26~0_combout\ & ( (\rtl~13_combout\) # (\G17|ram~149_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (\G17|ram~149_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~149_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~149_combout\);

-- Location: MLABCELL_X84_Y35_N18
\G17|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~165_combout\ = ( \G7|Mux26~0_combout\ & ( (\rtl~16_combout\) # (\G17|ram~165_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (\G17|ram~165_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~165_combout\,
	datac => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~165_combout\);

-- Location: MLABCELL_X84_Y35_N45
\G17|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~181_combout\ = ( \G7|Mux26~0_combout\ & ( (\G17|ram~181_combout\) # (\rtl~14_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (!\rtl~14_combout\ & \G17|ram~181_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~14_combout\,
	datad => \G17|ALT_INV_ram~181_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~181_combout\);

-- Location: LABCELL_X85_Y35_N45
\G17|ram~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~133_combout\ = ( \rtl~15_combout\ & ( \G7|Mux26~0_combout\ ) ) # ( !\rtl~15_combout\ & ( \G17|ram~133_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~133_combout\,
	datad => \G7|ALT_INV_Mux26~0_combout\,
	dataf => \ALT_INV_rtl~15_combout\,
	combout => \G17|ram~133_combout\);

-- Location: MLABCELL_X84_Y35_N30
\G17|ram~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~445_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~133_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~149_combout\))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~165_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~181_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~149_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~165_combout\,
	datad => \G17|ALT_INV_ram~181_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~133_combout\,
	combout => \G17|ram~445_combout\);

-- Location: LABCELL_X81_Y35_N30
\G17|ram~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~229_combout\ = ( \G7|Mux26~0_combout\ & ( (\rtl~8_combout\) # (\G17|ram~229_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (\G17|ram~229_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~229_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~229_combout\);

-- Location: LABCELL_X85_Y35_N57
\G17|ram~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~213_combout\ = ( \G7|Mux26~0_combout\ & ( (\G17|ram~213_combout\) # (\rtl~5_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (!\rtl~5_combout\ & \G17|ram~213_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~5_combout\,
	datad => \G17|ALT_INV_ram~213_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~213_combout\);

-- Location: LABCELL_X81_Y35_N39
\G17|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~197_combout\ = ( \G7|Mux26~0_combout\ & ( (\G17|ram~197_combout\) # (\rtl~7_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (!\rtl~7_combout\ & \G17|ram~197_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~7_combout\,
	datac => \G17|ALT_INV_ram~197_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~197_combout\);

-- Location: MLABCELL_X84_Y35_N6
\G17|ram~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~317_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~445_combout\ & (\G17|ram~197_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~445_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~213_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~445_combout\ & (((\G17|ram~229_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~445_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~245_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~245_combout\,
	datab => \G17|ALT_INV_ram~445_combout\,
	datac => \G17|ALT_INV_ram~229_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~213_combout\,
	datag => \G17|ALT_INV_ram~197_combout\,
	combout => \G17|ram~317_combout\);

-- Location: MLABCELL_X84_Y35_N3
\G17|ram~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~53_combout\ = (!\rtl~10_combout\ & ((\G17|ram~53_combout\))) # (\rtl~10_combout\ & (\G7|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~10_combout\,
	datac => \G7|ALT_INV_Mux26~0_combout\,
	datad => \G17|ALT_INV_ram~53_combout\,
	combout => \G17|ram~53_combout\);

-- Location: MLABCELL_X84_Y35_N21
\G17|ram~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~37_combout\ = ( \G7|Mux26~0_combout\ & ( (\G17|ram~37_combout\) # (\rtl~12_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (!\rtl~12_combout\ & \G17|ram~37_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~12_combout\,
	datad => \G17|ALT_INV_ram~37_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~37_combout\);

-- Location: MLABCELL_X84_Y35_N42
\G17|ram~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~21_combout\ = ( \G7|Mux26~0_combout\ & ( (\rtl~9_combout\) # (\G17|ram~21_combout\) ) ) # ( !\G7|Mux26~0_combout\ & ( (\G17|ram~21_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~21_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~21_combout\);

-- Location: LABCELL_X85_Y35_N0
\G17|ram~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~5_combout\ = ( \rtl~11_combout\ & ( \G7|Mux26~0_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux26~0_combout\,
	datad => \G17|ALT_INV_ram~5_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~5_combout\);

-- Location: MLABCELL_X84_Y35_N12
\G17|ram~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~441_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~5_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~21_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~37_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~53_combout\))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110000110011111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~53_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~37_combout\,
	datad => \G17|ALT_INV_ram~21_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~5_combout\,
	combout => \G17|ram~441_combout\);

-- Location: LABCELL_X81_Y35_N12
\G17|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~101_combout\ = ( \G17|ram~101_combout\ & ( (!\rtl~4_combout\) # (\G7|Mux26~0_combout\) ) ) # ( !\G17|ram~101_combout\ & ( (\G7|Mux26~0_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~101_combout\,
	combout => \G17|ram~101_combout\);

-- Location: LABCELL_X85_Y35_N48
\G17|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~85_combout\ = ( \G17|ram~85_combout\ & ( (!\rtl~1_combout\) # (\G7|Mux26~0_combout\) ) ) # ( !\G17|ram~85_combout\ & ( (\G7|Mux26~0_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~85_combout\,
	combout => \G17|ram~85_combout\);

-- Location: LABCELL_X85_Y35_N15
\G17|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~117_combout\ = ( \G17|ram~117_combout\ & ( (!\rtl~2_combout\) # (\G7|Mux26~0_combout\) ) ) # ( !\G17|ram~117_combout\ & ( (\G7|Mux26~0_combout\ & \rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G17|ALT_INV_ram~117_combout\,
	combout => \G17|ram~117_combout\);

-- Location: LABCELL_X81_Y35_N51
\G17|ram~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~69_combout\ = ( \rtl~3_combout\ & ( \G7|Mux26~0_combout\ ) ) # ( !\rtl~3_combout\ & ( \G7|Mux26~0_combout\ & ( \G17|ram~69_combout\ ) ) ) # ( !\rtl~3_combout\ & ( !\G7|Mux26~0_combout\ & ( \G17|ram~69_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~69_combout\,
	datae => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Mux26~0_combout\,
	combout => \G17|ram~69_combout\);

-- Location: MLABCELL_X84_Y35_N48
\G17|ram~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~313_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~441_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~441_combout\ & (\G17|ram~69_combout\)) # (\G17|ram~441_combout\ & (((\G17|ram~85_combout\)))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~441_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~441_combout\ & (\G17|ram~101_combout\)) # (\G17|ram~441_combout\ & (((\G17|ram~117_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~441_combout\,
	datac => \G17|ALT_INV_ram~101_combout\,
	datad => \G17|ALT_INV_ram~85_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~117_combout\,
	datag => \G17|ALT_INV_ram~69_combout\,
	combout => \G17|ram~313_combout\);

-- Location: MLABCELL_X84_Y35_N36
\G18|SAIDA~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~18_combout\ = ( \G17|ram~313_combout\ & ( (!\G18|SAIDA~17_combout\) # (((\G17|ram~317_combout\ & \G18|SAIDA~2_combout\)) # (\G18|SAIDA~1_combout\)) ) ) # ( !\G17|ram~313_combout\ & ( (!\G18|SAIDA~17_combout\) # ((\G17|ram~317_combout\ & 
-- \G18|SAIDA~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011111111111010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~17_combout\,
	datab => \G17|ALT_INV_ram~317_combout\,
	datac => \G18|ALT_INV_SAIDA~2_combout\,
	datad => \G18|ALT_INV_SAIDA~1_combout\,
	dataf => \G17|ALT_INV_ram~313_combout\,
	combout => \G18|SAIDA~18_combout\);

-- Location: MLABCELL_X84_Y35_N39
\G18|SAIDA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(5) = ( \G18|SAIDA~18_combout\ & ( (\Clock_Sistema~input_o\) # (\G18|SAIDA\(5)) ) ) # ( !\G18|SAIDA~18_combout\ & ( (\G18|SAIDA\(5) & !\Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(5),
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA~18_combout\,
	combout => \G18|SAIDA\(5));

-- Location: MLABCELL_X87_Y31_N21
\G16|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~25_sumout\ = SUM(( !\G14|SAIDA\(6) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add1~22\ ))
-- \G16|Add1~26\ = CARRY(( !\G14|SAIDA\(6) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(6)))) ) + ( \G16|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G14|ALT_INV_SAIDA\(6),
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add1~22\,
	sumout => \G16|Add1~25_sumout\,
	cout => \G16|Add1~26\);

-- Location: MLABCELL_X84_Y31_N18
\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( \G14|SAIDA\(6) ) + ( (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(6)))) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( \G14|SAIDA\(6) ) + ( (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(6)))) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G14|ALT_INV_SAIDA\(6),
	dataf => \G18|ALT_INV_SAIDA\(6),
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

-- Location: LABCELL_X85_Y32_N27
\G18|SAIDA~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~19_combout\ = ( !\G14|SAIDA\(6) & ( (!\G18|SAIDA\(6)) # (!\G7|Mux15~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(6),
	datad => \G7|ALT_INV_Mux15~2_combout\,
	dataf => \G14|ALT_INV_SAIDA\(6),
	combout => \G18|SAIDA~19_combout\);

-- Location: LABCELL_X85_Y32_N12
\G18|SAIDA~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~20_combout\ = ( \G5|memparareg~combout\ & ( \G16|Mux15~0_combout\ & ( (!\G16|Mux15~1_combout\ & ((\G16|Add0~25_sumout\))) # (\G16|Mux15~1_combout\ & (\G16|Add1~25_sumout\)) ) ) ) # ( \G5|memparareg~combout\ & ( !\G16|Mux15~0_combout\ & ( 
-- (\G16|Mux15~1_combout\ & !\G18|SAIDA~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~25_sumout\,
	datab => \G16|ALT_INV_Add0~25_sumout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA~19_combout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G18|SAIDA~20_combout\);

-- Location: LABCELL_X81_Y32_N0
\G18|SAIDA~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~21_combout\ = ( \G17|ram~280_combout\ & ( \G16|Mux11~2_combout\ & ( (!\G18|SAIDA~20_combout\ & ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~262_combout\) # (\G16|Mux14~2_combout\)))) ) ) ) # ( !\G17|ram~280_combout\ & ( \G16|Mux11~2_combout\ & ( 
-- !\G18|SAIDA~20_combout\ ) ) ) # ( \G17|ram~280_combout\ & ( !\G16|Mux11~2_combout\ & ( !\G18|SAIDA~20_combout\ ) ) ) # ( !\G17|ram~280_combout\ & ( !\G16|Mux11~2_combout\ & ( !\G18|SAIDA~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~0_combout\,
	datab => \G17|ALT_INV_ram~262_combout\,
	datac => \G18|ALT_INV_SAIDA~20_combout\,
	datad => \G16|ALT_INV_Mux14~2_combout\,
	datae => \G17|ALT_INV_ram~280_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G18|SAIDA~21_combout\);

-- Location: MLABCELL_X82_Y31_N36
\G17|ram~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~214_combout\ = ( \rtl~5_combout\ & ( \G7|Mux25~0_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~214_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datad => \G17|ALT_INV_ram~214_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~214_combout\);

-- Location: LABCELL_X80_Y31_N33
\G17|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~182_combout\ = ( \G17|ram~182_combout\ & ( (!\rtl~14_combout\) # (\G7|Mux25~0_combout\) ) ) # ( !\G17|ram~182_combout\ & ( (\rtl~14_combout\ & \G7|Mux25~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datad => \G7|ALT_INV_Mux25~0_combout\,
	dataf => \G17|ALT_INV_ram~182_combout\,
	combout => \G17|ram~182_combout\);

-- Location: LABCELL_X80_Y31_N27
\G17|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~166_combout\ = ( \G7|Mux25~0_combout\ & ( (\G17|ram~166_combout\) # (\rtl~16_combout\) ) ) # ( !\G7|Mux25~0_combout\ & ( (!\rtl~16_combout\ & \G17|ram~166_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~166_combout\,
	dataf => \G7|ALT_INV_Mux25~0_combout\,
	combout => \G17|ram~166_combout\);

-- Location: LABCELL_X80_Y31_N30
\G17|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~150_combout\ = ( \G17|ram~150_combout\ & ( (!\rtl~13_combout\) # (\G7|Mux25~0_combout\) ) ) # ( !\G17|ram~150_combout\ & ( (\G7|Mux25~0_combout\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G17|ALT_INV_ram~150_combout\,
	combout => \G17|ram~150_combout\);

-- Location: LABCELL_X80_Y31_N24
\G17|ram~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~134_combout\ = ( \G17|ram~134_combout\ & ( (!\rtl~15_combout\) # (\G7|Mux25~0_combout\) ) ) # ( !\G17|ram~134_combout\ & ( (\G7|Mux25~0_combout\ & \rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux25~0_combout\,
	datac => \ALT_INV_rtl~15_combout\,
	dataf => \G17|ALT_INV_ram~134_combout\,
	combout => \G17|ram~134_combout\);

-- Location: LABCELL_X80_Y31_N36
\G17|ram~453\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~453_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~134_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~150_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~166_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~182_combout\)))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~182_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~166_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~150_combout\,
	datag => \G17|ALT_INV_ram~134_combout\,
	combout => \G17|ram~453_combout\);

-- Location: MLABCELL_X82_Y31_N54
\G17|ram~230\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~230_combout\ = ( \rtl~8_combout\ & ( \G7|Mux25~0_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~230_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datad => \G17|ALT_INV_ram~230_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~230_combout\);

-- Location: LABCELL_X79_Y31_N33
\G17|ram~246\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~246_combout\ = ( \G7|Mux25~0_combout\ & ( \G17|ram~246_combout\ ) ) # ( !\G7|Mux25~0_combout\ & ( \G17|ram~246_combout\ & ( !\rtl~6_combout\ ) ) ) # ( \G7|Mux25~0_combout\ & ( !\G17|ram~246_combout\ & ( \rtl~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rtl~6_combout\,
	datae => \G7|ALT_INV_Mux25~0_combout\,
	dataf => \G17|ALT_INV_ram~246_combout\,
	combout => \G17|ram~246_combout\);

-- Location: MLABCELL_X82_Y31_N9
\G17|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~198_combout\ = ( \G17|ram~198_combout\ & ( (!\rtl~7_combout\) # (\G7|Mux25~0_combout\) ) ) # ( !\G17|ram~198_combout\ & ( (\G7|Mux25~0_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~198_combout\,
	combout => \G17|ram~198_combout\);

-- Location: LABCELL_X80_Y31_N0
\G17|ram~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~325_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~453_combout\ & (((\G17|ram~198_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~453_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~214_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G17|ram~453_combout\ & (\G17|ram~230_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~453_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~246_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~214_combout\,
	datab => \G17|ALT_INV_ram~453_combout\,
	datac => \G17|ALT_INV_ram~230_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~246_combout\,
	datag => \G17|ALT_INV_ram~198_combout\,
	combout => \G17|ram~325_combout\);

-- Location: LABCELL_X80_Y31_N51
\G17|ram~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~86_combout\ = ( \G17|ram~86_combout\ & ( (!\rtl~1_combout\) # (\G7|Mux25~0_combout\) ) ) # ( !\G17|ram~86_combout\ & ( (\G7|Mux25~0_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~86_combout\,
	combout => \G17|ram~86_combout\);

-- Location: LABCELL_X80_Y31_N48
\G17|ram~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~54_combout\ = ( \G17|ram~54_combout\ & ( (!\rtl~10_combout\) # (\G7|Mux25~0_combout\) ) ) # ( !\G17|ram~54_combout\ & ( (\G7|Mux25~0_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~54_combout\,
	combout => \G17|ram~54_combout\);

-- Location: LABCELL_X80_Y31_N57
\G17|ram~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~38_combout\ = ( \G7|Mux25~0_combout\ & ( (\G17|ram~38_combout\) # (\rtl~12_combout\) ) ) # ( !\G7|Mux25~0_combout\ & ( (!\rtl~12_combout\ & \G17|ram~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~12_combout\,
	datad => \G17|ALT_INV_ram~38_combout\,
	dataf => \G7|ALT_INV_Mux25~0_combout\,
	combout => \G17|ram~38_combout\);

-- Location: LABCELL_X80_Y31_N6
\G17|ram~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~22_combout\ = ( \G17|ram~22_combout\ & ( (!\rtl~9_combout\) # (\G7|Mux25~0_combout\) ) ) # ( !\G17|ram~22_combout\ & ( (\G7|Mux25~0_combout\ & \rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G17|ALT_INV_ram~22_combout\,
	combout => \G17|ram~22_combout\);

-- Location: LABCELL_X80_Y31_N9
\G17|ram~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~6_combout\ = ( \rtl~11_combout\ & ( \G7|Mux25~0_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux25~0_combout\,
	datac => \G17|ALT_INV_ram~6_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~6_combout\);

-- Location: LABCELL_X80_Y31_N18
\G17|ram~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~449_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~6_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~22_combout\))))) # (\G16|Mux13~0_combout\ & (((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (((\G17|ram~38_combout\)))) # (\G16|Mux15~2_combout\ & (\G17|ram~54_combout\)))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~54_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~38_combout\,
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~22_combout\,
	datag => \G17|ALT_INV_ram~6_combout\,
	combout => \G17|ram~449_combout\);

-- Location: LABCELL_X80_Y31_N54
\G17|ram~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~102_combout\ = ( \rtl~4_combout\ & ( \G7|Mux25~0_combout\ ) ) # ( !\rtl~4_combout\ & ( \G17|ram~102_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datad => \G17|ALT_INV_ram~102_combout\,
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \G17|ram~102_combout\);

-- Location: LABCELL_X79_Y31_N27
\G17|ram~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~118_combout\ = ( \G17|ram~118_combout\ & ( \rtl~2_combout\ & ( \G7|Mux25~0_combout\ ) ) ) # ( !\G17|ram~118_combout\ & ( \rtl~2_combout\ & ( \G7|Mux25~0_combout\ ) ) ) # ( \G17|ram~118_combout\ & ( !\rtl~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux25~0_combout\,
	datae => \G17|ALT_INV_ram~118_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~118_combout\);

-- Location: LABCELL_X80_Y30_N48
\G17|ram~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~70_combout\ = ( \G17|ram~70_combout\ & ( \G7|Mux25~0_combout\ ) ) # ( !\G17|ram~70_combout\ & ( \G7|Mux25~0_combout\ & ( \rtl~3_combout\ ) ) ) # ( \G17|ram~70_combout\ & ( !\G7|Mux25~0_combout\ & ( !\rtl~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rtl~3_combout\,
	datae => \G17|ALT_INV_ram~70_combout\,
	dataf => \G7|ALT_INV_Mux25~0_combout\,
	combout => \G17|ram~70_combout\);

-- Location: LABCELL_X80_Y31_N42
\G17|ram~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~321_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~449_combout\ & (((\G17|ram~70_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~449_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~86_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G17|ram~449_combout\ & (\G17|ram~102_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~449_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~118_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~86_combout\,
	datab => \G17|ALT_INV_ram~449_combout\,
	datac => \G17|ALT_INV_ram~102_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~118_combout\,
	datag => \G17|ALT_INV_ram~70_combout\,
	combout => \G17|ram~321_combout\);

-- Location: LABCELL_X80_Y31_N12
\G18|SAIDA~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~22_combout\ = ( \G17|ram~321_combout\ & ( (!\G18|SAIDA~21_combout\) # (((\G18|SAIDA~2_combout\ & \G17|ram~325_combout\)) # (\G18|SAIDA~1_combout\)) ) ) # ( !\G17|ram~321_combout\ & ( (!\G18|SAIDA~21_combout\) # ((\G18|SAIDA~2_combout\ & 
-- \G17|ram~325_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011111111111010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~21_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~325_combout\,
	datad => \G18|ALT_INV_SAIDA~1_combout\,
	dataf => \G17|ALT_INV_ram~321_combout\,
	combout => \G18|SAIDA~22_combout\);

-- Location: LABCELL_X80_Y31_N15
\G18|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(6) = ( \G18|SAIDA\(6) & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA~22_combout\) ) ) # ( !\G18|SAIDA\(6) & ( (\G18|SAIDA~22_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA~22_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(6),
	combout => \G18|SAIDA\(6));

-- Location: LABCELL_X83_Y31_N21
\G7|Reg[1][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][6]~combout\ = ( \G7|Reg[1][6]~combout\ & ( (!\G7|Reg[1][0]~3_combout\) # (\G18|SAIDA\(6)) ) ) # ( !\G7|Reg[1][6]~combout\ & ( (\G18|SAIDA\(6) & \G7|Reg[1][0]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(6),
	datad => \G7|ALT_INV_Reg[1][0]~3_combout\,
	dataf => \G7|ALT_INV_Reg[1][6]~combout\,
	combout => \G7|Reg[1][6]~combout\);

-- Location: LABCELL_X85_Y31_N3
\G14|SAIDA~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~6_combout\ = (\G4|Mux0~2_combout\ & (\G7|Reg[1][6]~combout\ & !\G5|escrevereg~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G7|ALT_INV_Reg[1][6]~combout\,
	datad => \G5|ALT_INV_escrevereg~combout\,
	combout => \G14|SAIDA~6_combout\);

-- Location: MLABCELL_X87_Y35_N48
\G14|SAIDA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(6) = ( \G14|SAIDA\(6) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~6_combout\) ) ) # ( !\G14|SAIDA\(6) & ( (\Clock_Sistema~input_o\ & \G14|SAIDA~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G14|ALT_INV_SAIDA~6_combout\,
	dataf => \G14|ALT_INV_SAIDA\(6),
	combout => \G14|SAIDA\(6));

-- Location: MLABCELL_X87_Y31_N24
\G16|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~29_sumout\ = SUM(( !\G14|SAIDA\(7) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add1~26\ ))
-- \G16|Add1~30\ = CARRY(( !\G14|SAIDA\(7) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(7)))) ) + ( \G16|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G14|ALT_INV_SAIDA\(7),
	dataf => \G18|ALT_INV_SAIDA\(7),
	cin => \G16|Add1~26\,
	sumout => \G16|Add1~29_sumout\,
	cout => \G16|Add1~30\);

-- Location: LABCELL_X85_Y34_N9
\G18|SAIDA~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~23_combout\ = ( \G18|SAIDA\(7) & ( (!\G14|SAIDA\(7) & !\G7|Mux15~2_combout\) ) ) # ( !\G18|SAIDA\(7) & ( !\G14|SAIDA\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(7),
	datac => \G7|ALT_INV_Mux15~2_combout\,
	dataf => \G18|ALT_INV_SAIDA\(7),
	combout => \G18|SAIDA~23_combout\);

-- Location: MLABCELL_X84_Y31_N21
\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(7)))) ) + ( \G14|SAIDA\(7) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(7)))) ) + ( \G14|SAIDA\(7) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_escrevereg~combout\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(7),
	dataf => \G14|ALT_INV_SAIDA\(7),
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

-- Location: LABCELL_X83_Y34_N24
\G18|SAIDA~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~24_combout\ = ( \G16|Mux15~0_combout\ & ( \G16|Add0~29_sumout\ & ( (\G5|memparareg~combout\ & ((!\G16|Mux15~1_combout\) # (\G16|Add1~29_sumout\))) ) ) ) # ( !\G16|Mux15~0_combout\ & ( \G16|Add0~29_sumout\ & ( (\G5|memparareg~combout\ & 
-- (\G16|Mux15~1_combout\ & !\G18|SAIDA~23_combout\)) ) ) ) # ( \G16|Mux15~0_combout\ & ( !\G16|Add0~29_sumout\ & ( (\G5|memparareg~combout\ & (\G16|Add1~29_sumout\ & \G16|Mux15~1_combout\)) ) ) ) # ( !\G16|Mux15~0_combout\ & ( !\G16|Add0~29_sumout\ & ( 
-- (\G5|memparareg~combout\ & (\G16|Mux15~1_combout\ & !\G18|SAIDA~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000010000000100000101000000000101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G16|ALT_INV_Add1~29_sumout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA~23_combout\,
	datae => \G16|ALT_INV_Mux15~0_combout\,
	dataf => \G16|ALT_INV_Add0~29_sumout\,
	combout => \G18|SAIDA~24_combout\);

-- Location: LABCELL_X85_Y34_N57
\G7|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux24~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G7|Reg[1][7]~combout\ & \G4|Mux0~2_combout\)) # (\G18|SAIDA\(7)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\G7|Reg[1][7]~combout\ & (\G4|Mux0~2_combout\ & 
-- \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000001101110000000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Reg[1][7]~combout\,
	datab => \G18|ALT_INV_SAIDA\(7),
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux24~0_combout\);

-- Location: LABCELL_X81_Y34_N51
\G17|ram~263\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~263_combout\ = ( \G7|Mux24~0_combout\ & ( (\rtl~0_combout\) # (\G17|ram~263_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (\G17|ram~263_combout\ & !\rtl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~263_combout\,
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~263_combout\);

-- Location: LABCELL_X83_Y34_N6
\G18|SAIDA~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~25_combout\ = ( \G17|ram~280_combout\ & ( \G16|Mux11~2_combout\ & ( (!\G18|SAIDA~24_combout\ & ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~263_combout\) # (\G16|Mux14~2_combout\)))) ) ) ) # ( !\G17|ram~280_combout\ & ( \G16|Mux11~2_combout\ & ( 
-- !\G18|SAIDA~24_combout\ ) ) ) # ( \G17|ram~280_combout\ & ( !\G16|Mux11~2_combout\ & ( !\G18|SAIDA~24_combout\ ) ) ) # ( !\G17|ram~280_combout\ & ( !\G16|Mux11~2_combout\ & ( !\G18|SAIDA~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~24_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G17|ALT_INV_ram~263_combout\,
	datad => \G16|ALT_INV_Mux14~2_combout\,
	datae => \G17|ALT_INV_ram~280_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G18|SAIDA~25_combout\);

-- Location: LABCELL_X85_Y34_N48
\G17|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~167_combout\ = ( \G7|Mux24~0_combout\ & ( (\rtl~16_combout\) # (\G17|ram~167_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (\G17|ram~167_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~167_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~167_combout\);

-- Location: LABCELL_X85_Y34_N15
\G17|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~183_combout\ = ( \G7|Mux24~0_combout\ & ( (\rtl~14_combout\) # (\G17|ram~183_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (\G17|ram~183_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~183_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~183_combout\);

-- Location: LABCELL_X85_Y34_N27
\G17|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~151_combout\ = ( \G7|Mux24~0_combout\ & ( (\G17|ram~151_combout\) # (\rtl~13_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (!\rtl~13_combout\ & \G17|ram~151_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~13_combout\,
	datad => \G17|ALT_INV_ram~151_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~151_combout\);

-- Location: LABCELL_X85_Y34_N0
\G17|ram~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~135_combout\ = ( \G7|Mux24~0_combout\ & ( (\G17|ram~135_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (!\rtl~15_combout\ & \G17|ram~135_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~135_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~135_combout\);

-- Location: LABCELL_X85_Y34_N18
\G17|ram~461\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~461_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~135_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~151_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~167_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~183_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~167_combout\,
	datad => \G17|ALT_INV_ram~183_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~151_combout\,
	datag => \G17|ALT_INV_ram~135_combout\,
	combout => \G17|ram~461_combout\);

-- Location: MLABCELL_X84_Y34_N42
\G17|ram~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~215_combout\ = ( \G7|Mux24~0_combout\ & ( (\rtl~5_combout\) # (\G17|ram~215_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (\G17|ram~215_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~215_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~215_combout\);

-- Location: MLABCELL_X84_Y34_N45
\G17|ram~231\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~231_combout\ = ( \G7|Mux24~0_combout\ & ( (\rtl~8_combout\) # (\G17|ram~231_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (\G17|ram~231_combout\ & !\rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~231_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~231_combout\);

-- Location: LABCELL_X85_Y34_N36
\G17|ram~247\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~247_combout\ = ( \G17|ram~247_combout\ & ( \G7|Mux24~0_combout\ ) ) # ( !\G17|ram~247_combout\ & ( \G7|Mux24~0_combout\ & ( \rtl~6_combout\ ) ) ) # ( \G17|ram~247_combout\ & ( !\G7|Mux24~0_combout\ & ( !\rtl~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~6_combout\,
	datae => \G17|ALT_INV_ram~247_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~247_combout\);

-- Location: LABCELL_X85_Y34_N6
\G17|ram~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~199_combout\ = ( \G7|Mux24~0_combout\ & ( (\G17|ram~199_combout\) # (\rtl~7_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (!\rtl~7_combout\ & \G17|ram~199_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~7_combout\,
	datad => \G17|ALT_INV_ram~199_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~199_combout\);

-- Location: MLABCELL_X84_Y34_N18
\G17|ram~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~333_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~461_combout\ & (((\G17|ram~199_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~461_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~215_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~461_combout\ & (((\G17|ram~231_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~461_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~247_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~461_combout\,
	datab => \G17|ALT_INV_ram~215_combout\,
	datac => \G17|ALT_INV_ram~231_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~247_combout\,
	datag => \G17|ALT_INV_ram~199_combout\,
	combout => \G17|ram~333_combout\);

-- Location: MLABCELL_X84_Y34_N24
\G17|ram~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~87_combout\ = ( \G7|Mux24~0_combout\ & ( (\G17|ram~87_combout\) # (\rtl~1_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (!\rtl~1_combout\ & \G17|ram~87_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~1_combout\,
	datac => \G17|ALT_INV_ram~87_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~87_combout\);

-- Location: MLABCELL_X84_Y34_N3
\G17|ram~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~23_combout\ = ( \rtl~9_combout\ & ( \G7|Mux24~0_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~23_combout\,
	datad => \G7|ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~23_combout\);

-- Location: MLABCELL_X84_Y34_N0
\G17|ram~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~39_combout\ = ( \G7|Mux24~0_combout\ & ( (\G17|ram~39_combout\) # (\rtl~12_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (!\rtl~12_combout\ & \G17|ram~39_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~12_combout\,
	datad => \G17|ALT_INV_ram~39_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~39_combout\);

-- Location: MLABCELL_X84_Y34_N27
\G17|ram~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~55_combout\ = ( \G7|Mux24~0_combout\ & ( (\G17|ram~55_combout\) # (\rtl~10_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (!\rtl~10_combout\ & \G17|ram~55_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~10_combout\,
	datad => \G17|ALT_INV_ram~55_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~55_combout\);

-- Location: MLABCELL_X84_Y34_N36
\G17|ram~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~7_combout\ = ( \G7|Mux24~0_combout\ & ( (\G17|ram~7_combout\) # (\rtl~11_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (!\rtl~11_combout\ & \G17|ram~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~11_combout\,
	datad => \G17|ALT_INV_ram~7_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~7_combout\);

-- Location: MLABCELL_X84_Y34_N6
\G17|ram~457\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~457_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~7_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~23_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (\G17|ram~39_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~2_combout\ & (((\G17|ram~55_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~23_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~39_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~55_combout\,
	datag => \G17|ALT_INV_ram~7_combout\,
	combout => \G17|ram~457_combout\);

-- Location: MLABCELL_X84_Y34_N12
\G17|ram~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~103_combout\ = ( \G17|ram~103_combout\ & ( (!\rtl~4_combout\) # (\G7|Mux24~0_combout\) ) ) # ( !\G17|ram~103_combout\ & ( (\rtl~4_combout\ & \G7|Mux24~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~4_combout\,
	datad => \G7|ALT_INV_Mux24~0_combout\,
	dataf => \G17|ALT_INV_ram~103_combout\,
	combout => \G17|ram~103_combout\);

-- Location: MLABCELL_X84_Y34_N15
\G17|ram~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~119_combout\ = ( \rtl~2_combout\ & ( \G7|Mux24~0_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~119_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~119_combout\,
	datad => \G7|ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~119_combout\);

-- Location: MLABCELL_X84_Y34_N51
\G17|ram~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~71_combout\ = ( \G7|Mux24~0_combout\ & ( (\rtl~3_combout\) # (\G17|ram~71_combout\) ) ) # ( !\G7|Mux24~0_combout\ & ( (\G17|ram~71_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~71_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Mux24~0_combout\,
	combout => \G17|ram~71_combout\);

-- Location: MLABCELL_X84_Y34_N54
\G17|ram~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~329_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~457_combout\ & (((\G17|ram~71_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~457_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~87_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G17|ram~457_combout\ & (\G17|ram~103_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~457_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~119_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~87_combout\,
	datab => \G17|ALT_INV_ram~457_combout\,
	datac => \G17|ALT_INV_ram~103_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~119_combout\,
	datag => \G17|ALT_INV_ram~71_combout\,
	combout => \G17|ram~329_combout\);

-- Location: MLABCELL_X84_Y34_N30
\G18|SAIDA~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~26_combout\ = ( \G17|ram~329_combout\ & ( (!\G18|SAIDA~25_combout\) # (((\G17|ram~333_combout\ & \G18|SAIDA~2_combout\)) # (\G18|SAIDA~1_combout\)) ) ) # ( !\G17|ram~329_combout\ & ( (!\G18|SAIDA~25_combout\) # ((\G17|ram~333_combout\ & 
-- \G18|SAIDA~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011111111111010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~25_combout\,
	datab => \G17|ALT_INV_ram~333_combout\,
	datac => \G18|ALT_INV_SAIDA~2_combout\,
	datad => \G18|ALT_INV_SAIDA~1_combout\,
	dataf => \G17|ALT_INV_ram~329_combout\,
	combout => \G18|SAIDA~26_combout\);

-- Location: MLABCELL_X84_Y34_N33
\G18|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(7) = ( \G18|SAIDA~26_combout\ & ( (\G18|SAIDA\(7)) # (\Clock_Sistema~input_o\) ) ) # ( !\G18|SAIDA~26_combout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(7),
	dataf => \G18|ALT_INV_SAIDA~26_combout\,
	combout => \G18|SAIDA\(7));

-- Location: MLABCELL_X84_Y32_N9
\G7|Reg[1][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][7]~combout\ = ( \G7|Reg[1][0]~3_combout\ & ( \G18|SAIDA\(7) ) ) # ( !\G7|Reg[1][0]~3_combout\ & ( \G7|Reg[1][7]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Reg[1][7]~combout\,
	datad => \G18|ALT_INV_SAIDA\(7),
	dataf => \G7|ALT_INV_Reg[1][0]~3_combout\,
	combout => \G7|Reg[1][7]~combout\);

-- Location: LABCELL_X88_Y33_N36
\G14|SAIDA~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~7_combout\ = ( !\G5|escrevereg~combout\ & ( (\G7|Reg[1][7]~combout\ & \G4|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Reg[1][7]~combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G5|ALT_INV_escrevereg~combout\,
	combout => \G14|SAIDA~7_combout\);

-- Location: LABCELL_X88_Y33_N15
\G14|SAIDA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(7) = ( \G14|SAIDA\(7) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~7_combout\) ) ) # ( !\G14|SAIDA\(7) & ( (\G14|SAIDA~7_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA~7_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(7),
	combout => \G14|SAIDA\(7));

-- Location: MLABCELL_X87_Y31_N27
\G16|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~33_sumout\ = SUM(( !\G14|SAIDA\(8) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(8)))) ) + ( \G16|Add1~30\ ))
-- \G16|Add1~34\ = CARRY(( !\G14|SAIDA\(8) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(8)))) ) + ( \G16|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G14|ALT_INV_SAIDA\(8),
	dataf => \G18|ALT_INV_SAIDA\(8),
	cin => \G16|Add1~30\,
	sumout => \G16|Add1~33_sumout\,
	cout => \G16|Add1~34\);

-- Location: MLABCELL_X84_Y30_N27
\G18|SAIDA~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~27_combout\ = ( !\G14|SAIDA\(8) & ( \G7|Mux15~2_combout\ & ( !\G18|SAIDA\(8) ) ) ) # ( !\G14|SAIDA\(8) & ( !\G7|Mux15~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(8),
	datae => \G14|ALT_INV_SAIDA\(8),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G18|SAIDA~27_combout\);

-- Location: MLABCELL_X84_Y31_N24
\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(8)))) ) + ( \G14|SAIDA\(8) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(8)))) ) + ( \G14|SAIDA\(8) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(8),
	dataf => \G14|ALT_INV_SAIDA\(8),
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

-- Location: LABCELL_X83_Y31_N12
\G18|SAIDA~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~28_combout\ = ( \G5|memparareg~combout\ & ( \G16|Add0~33_sumout\ & ( (!\G16|Mux15~0_combout\ & (((!\G18|SAIDA~27_combout\ & \G16|Mux15~1_combout\)))) # (\G16|Mux15~0_combout\ & (((!\G16|Mux15~1_combout\)) # (\G16|Add1~33_sumout\))) ) ) ) # ( 
-- \G5|memparareg~combout\ & ( !\G16|Add0~33_sumout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G18|SAIDA~27_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001011000100000000000000000101010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Add1~33_sumout\,
	datac => \G18|ALT_INV_SAIDA~27_combout\,
	datad => \G16|ALT_INV_Mux15~1_combout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Add0~33_sumout\,
	combout => \G18|SAIDA~28_combout\);

-- Location: LABCELL_X81_Y31_N15
\G17|ram~264\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~264_combout\ = ( \rtl~0_combout\ & ( \G7|Mux23~0_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~264_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux23~0_combout\,
	datac => \G17|ALT_INV_ram~264_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~264_combout\);

-- Location: LABCELL_X81_Y31_N6
\G18|SAIDA~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~29_combout\ = ( \G16|Mux11~2_combout\ & ( \G17|ram~264_combout\ & ( (!\G18|SAIDA~28_combout\ & ((!\G18|SAIDA~0_combout\) # ((!\G17|ram~280_combout\) # (\G16|Mux14~2_combout\)))) ) ) ) # ( !\G16|Mux11~2_combout\ & ( \G17|ram~264_combout\ & ( 
-- !\G18|SAIDA~28_combout\ ) ) ) # ( \G16|Mux11~2_combout\ & ( !\G17|ram~264_combout\ & ( !\G18|SAIDA~28_combout\ ) ) ) # ( !\G16|Mux11~2_combout\ & ( !\G17|ram~264_combout\ & ( !\G18|SAIDA~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~28_combout\,
	datab => \G18|ALT_INV_SAIDA~0_combout\,
	datac => \G17|ALT_INV_ram~280_combout\,
	datad => \G16|ALT_INV_Mux14~2_combout\,
	datae => \G16|ALT_INV_Mux11~2_combout\,
	dataf => \G17|ALT_INV_ram~264_combout\,
	combout => \G18|SAIDA~29_combout\);

-- Location: LABCELL_X81_Y32_N21
\G17|ram~248\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~248_combout\ = ( \rtl~6_combout\ & ( \G7|Mux23~0_combout\ ) ) # ( !\rtl~6_combout\ & ( \G7|Mux23~0_combout\ & ( \G17|ram~248_combout\ ) ) ) # ( !\rtl~6_combout\ & ( !\G7|Mux23~0_combout\ & ( \G17|ram~248_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~248_combout\,
	datae => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G17|ram~248_combout\);

-- Location: MLABCELL_X82_Y31_N6
\G17|ram~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~216_combout\ = ( \G7|Mux23~0_combout\ & ( (\rtl~5_combout\) # (\G17|ram~216_combout\) ) ) # ( !\G7|Mux23~0_combout\ & ( (\G17|ram~216_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~216_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G17|ram~216_combout\);

-- Location: MLABCELL_X82_Y30_N3
\G17|ram~232\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~232_combout\ = (!\rtl~8_combout\ & ((\G17|ram~232_combout\))) # (\rtl~8_combout\ & (\G7|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~8_combout\,
	datac => \G7|ALT_INV_Mux23~0_combout\,
	datad => \G17|ALT_INV_ram~232_combout\,
	combout => \G17|ram~232_combout\);

-- Location: LABCELL_X81_Y31_N36
\G17|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~152_combout\ = ( \G17|ram~152_combout\ & ( (!\rtl~13_combout\) # (\G7|Mux23~0_combout\) ) ) # ( !\G17|ram~152_combout\ & ( (\G7|Mux23~0_combout\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G17|ALT_INV_ram~152_combout\,
	combout => \G17|ram~152_combout\);

-- Location: LABCELL_X81_Y31_N57
\G17|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~184_combout\ = ( \rtl~14_combout\ & ( \G7|Mux23~0_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~184_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux23~0_combout\,
	datad => \G17|ALT_INV_ram~184_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~184_combout\);

-- Location: LABCELL_X80_Y30_N54
\G17|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~168_combout\ = ( \rtl~16_combout\ & ( \G7|Mux23~0_combout\ ) ) # ( !\rtl~16_combout\ & ( \G7|Mux23~0_combout\ & ( \G17|ram~168_combout\ ) ) ) # ( !\rtl~16_combout\ & ( !\G7|Mux23~0_combout\ & ( \G17|ram~168_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~168_combout\,
	datae => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G17|ram~168_combout\);

-- Location: MLABCELL_X82_Y31_N12
\G17|ram~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~136_combout\ = ( \G7|Mux23~0_combout\ & ( (\rtl~15_combout\) # (\G17|ram~136_combout\) ) ) # ( !\G7|Mux23~0_combout\ & ( (\G17|ram~136_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~136_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Mux23~0_combout\,
	combout => \G17|ram~136_combout\);

-- Location: LABCELL_X81_Y31_N24
\G17|ram~469\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~469_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux15~2_combout\ & (((\G17|ram~136_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~152_combout\)))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (((\G17|ram~168_combout\ & !\G16|Mux13~0_combout\)))) # (\G16|Mux15~2_combout\ & (((\G16|Mux13~0_combout\)) # (\G17|ram~184_combout\)))) ) )

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
	datad => \G16|ALT_INV_Mux15~2_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~136_combout\,
	combout => \G17|ram~469_combout\);

-- Location: MLABCELL_X82_Y30_N51
\G17|ram~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~200_combout\ = ( \rtl~7_combout\ & ( \G7|Mux23~0_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~200_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~200_combout\,
	datac => \G7|ALT_INV_Mux23~0_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~200_combout\);

-- Location: LABCELL_X81_Y31_N30
\G17|ram~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~341_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~469_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~469_combout\ & ((\G17|ram~200_combout\))) # (\G17|ram~469_combout\ & (\G17|ram~216_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( ((!\G16|Mux13~0_combout\ & (((\G17|ram~469_combout\)))) # (\G16|Mux13~0_combout\ & ((!\G17|ram~469_combout\ & ((\G17|ram~232_combout\))) # (\G17|ram~469_combout\ & (\G17|ram~248_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~248_combout\,
	datab => \G17|ALT_INV_ram~216_combout\,
	datac => \G17|ALT_INV_ram~232_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~469_combout\,
	datag => \G17|ALT_INV_ram~200_combout\,
	combout => \G17|ram~341_combout\);

-- Location: LABCELL_X81_Y31_N0
\G18|SAIDA~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~30_combout\ = ( \G17|ram~341_combout\ & ( (!\G18|SAIDA~29_combout\) # (((\G18|SAIDA~1_combout\ & \G17|ram~337_combout\)) # (\G18|SAIDA~2_combout\)) ) ) # ( !\G17|ram~341_combout\ & ( (!\G18|SAIDA~29_combout\) # ((\G18|SAIDA~1_combout\ & 
-- \G17|ram~337_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100011111000111110001111111111111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G17|ALT_INV_ram~337_combout\,
	datac => \G18|ALT_INV_SAIDA~29_combout\,
	datad => \G18|ALT_INV_SAIDA~2_combout\,
	dataf => \G17|ALT_INV_ram~341_combout\,
	combout => \G18|SAIDA~30_combout\);

-- Location: LABCELL_X81_Y31_N3
\G18|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(8) = ( \G18|SAIDA~30_combout\ & ( (\G18|SAIDA\(8)) # (\Clock_Sistema~input_o\) ) ) # ( !\G18|SAIDA~30_combout\ & ( (!\Clock_Sistema~input_o\ & \G18|SAIDA\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(8),
	dataf => \G18|ALT_INV_SAIDA~30_combout\,
	combout => \G18|SAIDA\(8));

-- Location: MLABCELL_X84_Y30_N21
\G7|Reg[1][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[1][8]~combout\ = ( \G7|Reg[1][0]~3_combout\ & ( \G18|SAIDA\(8) ) ) # ( !\G7|Reg[1][0]~3_combout\ & ( \G7|Reg[1][8]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(8),
	datad => \G7|ALT_INV_Reg[1][8]~combout\,
	dataf => \G7|ALT_INV_Reg[1][0]~3_combout\,
	combout => \G7|Reg[1][8]~combout\);

-- Location: MLABCELL_X84_Y30_N51
\G14|SAIDA~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA~8_combout\ = ( \G7|Reg[1][8]~combout\ & ( (!\G5|escrevereg~combout\ & \G4|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \G7|ALT_INV_Reg[1][8]~combout\,
	combout => \G14|SAIDA~8_combout\);

-- Location: LABCELL_X88_Y34_N12
\G14|SAIDA[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|SAIDA\(8) = ( \G14|SAIDA\(8) & ( (!\Clock_Sistema~input_o\) # (\G14|SAIDA~8_combout\) ) ) # ( !\G14|SAIDA\(8) & ( (\G14|SAIDA~8_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G14|ALT_INV_SAIDA~8_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G14|ALT_INV_SAIDA\(8),
	combout => \G14|SAIDA\(8));

-- Location: MLABCELL_X87_Y31_N30
\G16|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~37_sumout\ = SUM(( !\G14|SAIDA\(9) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(9)))) ) + ( \G16|Add1~34\ ))
-- \G16|Add1~38\ = CARRY(( !\G14|SAIDA\(9) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(9)))) ) + ( \G16|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G14|ALT_INV_SAIDA\(9),
	dataf => \G18|ALT_INV_SAIDA\(9),
	cin => \G16|Add1~34\,
	sumout => \G16|Add1~37_sumout\,
	cout => \G16|Add1~38\);

-- Location: LABCELL_X85_Y34_N51
\G18|SAIDA~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~31_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G18|SAIDA\(9) & !\G14|SAIDA\(9)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(9),
	datac => \G14|ALT_INV_SAIDA\(9),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G18|SAIDA~31_combout\);

-- Location: MLABCELL_X84_Y31_N27
\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(9)))) ) + ( \G14|SAIDA\(9) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & (\Clock_Sistema~input_o\ & \G18|SAIDA\(9)))) ) + ( \G14|SAIDA\(9) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(9),
	dataf => \G14|ALT_INV_SAIDA\(9),
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

-- Location: LABCELL_X83_Y35_N24
\G18|SAIDA~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~32_combout\ = ( \G18|SAIDA~31_combout\ & ( \G16|Add0~37_sumout\ & ( (\G5|memparareg~combout\ & (\G16|Mux15~0_combout\ & ((!\G16|Mux15~1_combout\) # (\G16|Add1~37_sumout\)))) ) ) ) # ( !\G18|SAIDA~31_combout\ & ( \G16|Add0~37_sumout\ & ( 
-- (\G5|memparareg~combout\ & ((!\G16|Mux15~0_combout\ & ((\G16|Mux15~1_combout\))) # (\G16|Mux15~0_combout\ & ((!\G16|Mux15~1_combout\) # (\G16|Add1~37_sumout\))))) ) ) ) # ( \G18|SAIDA~31_combout\ & ( !\G16|Add0~37_sumout\ & ( (\G5|memparareg~combout\ & 
-- (\G16|Add1~37_sumout\ & (\G16|Mux15~0_combout\ & \G16|Mux15~1_combout\))) ) ) ) # ( !\G18|SAIDA~31_combout\ & ( !\G16|Add0~37_sumout\ & ( (\G5|memparareg~combout\ & (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\) # (\G16|Add1~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010001000000000000000100000101010100010000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G16|ALT_INV_Add1~37_sumout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Mux15~1_combout\,
	datae => \G18|ALT_INV_SAIDA~31_combout\,
	dataf => \G16|ALT_INV_Add0~37_sumout\,
	combout => \G18|SAIDA~32_combout\);

-- Location: LABCELL_X83_Y35_N36
\G17|ram~265\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~265_combout\ = ( \G7|Mux22~0_combout\ & ( (\G17|ram~265_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Mux22~0_combout\ & ( (!\rtl~0_combout\ & \G17|ram~265_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~265_combout\,
	dataf => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G17|ram~265_combout\);

-- Location: LABCELL_X83_Y35_N6
\G18|SAIDA~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~33_combout\ = ( \G16|Mux14~2_combout\ & ( \G17|ram~265_combout\ & ( !\G18|SAIDA~32_combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( \G17|ram~265_combout\ & ( (!\G18|SAIDA~32_combout\ & ((!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # 
-- (!\G17|ram~280_combout\)))) ) ) ) # ( \G16|Mux14~2_combout\ & ( !\G17|ram~265_combout\ & ( !\G18|SAIDA~32_combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( !\G17|ram~265_combout\ & ( !\G18|SAIDA~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G18|ALT_INV_SAIDA~32_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~265_combout\,
	combout => \G18|SAIDA~33_combout\);

-- Location: LABCELL_X81_Y35_N33
\G17|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~121_combout\ = ( \rtl~2_combout\ & ( \G7|Mux22~0_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~121_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~121_combout\,
	datac => \G7|ALT_INV_Mux22~0_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~121_combout\);

-- Location: LABCELL_X83_Y35_N48
\G17|ram~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~41_combout\ = ( \G7|Mux22~0_combout\ & ( (\rtl~12_combout\) # (\G17|ram~41_combout\) ) ) # ( !\G7|Mux22~0_combout\ & ( (\G17|ram~41_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~41_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G17|ram~41_combout\);

-- Location: LABCELL_X83_Y35_N0
\G17|ram~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~57_combout\ = ( \G7|Mux22~0_combout\ & ( (\G17|ram~57_combout\) # (\rtl~10_combout\) ) ) # ( !\G7|Mux22~0_combout\ & ( (!\rtl~10_combout\ & \G17|ram~57_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~10_combout\,
	datad => \G17|ALT_INV_ram~57_combout\,
	dataf => \G7|ALT_INV_Mux22~0_combout\,
	combout => \G17|ram~57_combout\);

-- Location: MLABCELL_X82_Y31_N3
\G17|ram~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~25_combout\ = ( \rtl~9_combout\ & ( \G7|Mux22~0_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux22~0_combout\,
	datad => \G17|ALT_INV_ram~25_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~25_combout\);

-- Location: MLABCELL_X82_Y35_N48
\G17|ram~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~9_combout\ = ( \G17|ram~9_combout\ & ( (!\rtl~11_combout\) # (\G7|Mux22~0_combout\) ) ) # ( !\G17|ram~9_combout\ & ( (\rtl~11_combout\ & \G7|Mux22~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~11_combout\,
	datad => \G7|ALT_INV_Mux22~0_combout\,
	dataf => \G17|ALT_INV_ram~9_combout\,
	combout => \G17|ram~9_combout\);

-- Location: LABCELL_X83_Y35_N30
\G17|ram~473\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~473_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~9_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~25_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~41_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~57_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~41_combout\,
	datad => \G17|ALT_INV_ram~57_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~25_combout\,
	datag => \G17|ALT_INV_ram~9_combout\,
	combout => \G17|ram~473_combout\);

-- Location: MLABCELL_X84_Y34_N48
\G17|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~105_combout\ = ( \G17|ram~105_combout\ & ( (!\rtl~4_combout\) # (\G7|Mux22~0_combout\) ) ) # ( !\G17|ram~105_combout\ & ( (\G7|Mux22~0_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~105_combout\,
	combout => \G17|ram~105_combout\);

-- Location: MLABCELL_X82_Y35_N24
\G17|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~89_combout\ = ( \G17|ram~89_combout\ & ( (!\rtl~1_combout\) # (\G7|Mux22~0_combout\) ) ) # ( !\G17|ram~89_combout\ & ( (\rtl~1_combout\ & \G7|Mux22~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~1_combout\,
	datac => \G7|ALT_INV_Mux22~0_combout\,
	dataf => \G17|ALT_INV_ram~89_combout\,
	combout => \G17|ram~89_combout\);

-- Location: LABCELL_X81_Y35_N45
\G17|ram~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~73_combout\ = ( \G17|ram~73_combout\ & ( \rtl~3_combout\ & ( \G7|Mux22~0_combout\ ) ) ) # ( !\G17|ram~73_combout\ & ( \rtl~3_combout\ & ( \G7|Mux22~0_combout\ ) ) ) # ( \G17|ram~73_combout\ & ( !\rtl~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux22~0_combout\,
	datae => \G17|ALT_INV_ram~73_combout\,
	dataf => \ALT_INV_rtl~3_combout\,
	combout => \G17|ram~73_combout\);

-- Location: LABCELL_X83_Y35_N54
\G17|ram~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~345_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~473_combout\ & (\G17|ram~73_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~473_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~89_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~473_combout\ & (((\G17|ram~105_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~473_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~121_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~121_combout\,
	datab => \G17|ALT_INV_ram~473_combout\,
	datac => \G17|ALT_INV_ram~105_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~89_combout\,
	datag => \G17|ALT_INV_ram~73_combout\,
	combout => \G17|ram~345_combout\);

-- Location: LABCELL_X83_Y35_N39
\G18|SAIDA~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~34_combout\ = ( \G17|ram~345_combout\ & ( ((!\G18|SAIDA~33_combout\) # ((\G17|ram~349_combout\ & \G18|SAIDA~2_combout\))) # (\G18|SAIDA~1_combout\) ) ) # ( !\G17|ram~345_combout\ & ( (!\G18|SAIDA~33_combout\) # ((\G17|ram~349_combout\ & 
-- \G18|SAIDA~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110101111100001111010111110011111101111111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~349_combout\,
	datab => \G18|ALT_INV_SAIDA~1_combout\,
	datac => \G18|ALT_INV_SAIDA~33_combout\,
	datad => \G18|ALT_INV_SAIDA~2_combout\,
	dataf => \G17|ALT_INV_ram~345_combout\,
	combout => \G18|SAIDA~34_combout\);

-- Location: LABCELL_X83_Y35_N12
\G18|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(9) = ( \G18|SAIDA\(9) & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA~34_combout\) ) ) # ( !\G18|SAIDA\(9) & ( (\Clock_Sistema~input_o\ & \G18|SAIDA~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA~34_combout\,
	dataf => \G18|ALT_INV_SAIDA\(9),
	combout => \G18|SAIDA\(9));

-- Location: MLABCELL_X84_Y31_N30
\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(10)))) ) + ( \G14|SAIDA\(10) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(10)))) ) + ( \G14|SAIDA\(10) ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(10),
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

-- Location: LABCELL_X85_Y33_N18
\G18|SAIDA~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~35_combout\ = ( \G18|SAIDA\(10) & ( (!\G7|Mux15~2_combout\ & !\G14|SAIDA\(10)) ) ) # ( !\G18|SAIDA\(10) & ( !\G14|SAIDA\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux15~2_combout\,
	datad => \G14|ALT_INV_SAIDA\(10),
	dataf => \G18|ALT_INV_SAIDA\(10),
	combout => \G18|SAIDA~35_combout\);

-- Location: MLABCELL_X87_Y31_N33
\G16|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~41_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(10)))) ) + ( !\G14|SAIDA\(10) ) + ( \G16|Add1~38\ ))
-- \G16|Add1~42\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(10)))) ) + ( !\G14|SAIDA\(10) ) + ( \G16|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(10),
	dataf => \G14|ALT_INV_SAIDA\(10),
	cin => \G16|Add1~38\,
	sumout => \G16|Add1~41_sumout\,
	cout => \G16|Add1~42\);

-- Location: LABCELL_X83_Y34_N12
\G18|SAIDA~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~36_combout\ = ( \G16|Mux15~0_combout\ & ( \G16|Add1~41_sumout\ & ( (\G5|memparareg~combout\ & ((\G16|Mux15~1_combout\) # (\G16|Add0~41_sumout\))) ) ) ) # ( !\G16|Mux15~0_combout\ & ( \G16|Add1~41_sumout\ & ( (\G5|memparareg~combout\ & 
-- (\G16|Mux15~1_combout\ & !\G18|SAIDA~35_combout\)) ) ) ) # ( \G16|Mux15~0_combout\ & ( !\G16|Add1~41_sumout\ & ( (\G5|memparareg~combout\ & (\G16|Add0~41_sumout\ & !\G16|Mux15~1_combout\)) ) ) ) # ( !\G16|Mux15~0_combout\ & ( !\G16|Add1~41_sumout\ & ( 
-- (\G5|memparareg~combout\ & (\G16|Mux15~1_combout\ & !\G18|SAIDA~35_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000100000001000000000101000000000001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G16|ALT_INV_Add0~41_sumout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA~35_combout\,
	datae => \G16|ALT_INV_Mux15~0_combout\,
	dataf => \G16|ALT_INV_Add1~41_sumout\,
	combout => \G18|SAIDA~36_combout\);

-- Location: LABCELL_X88_Y31_N54
\G7|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux21~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][10]~combout\)) # (\G18|SAIDA\(10)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux0~2_combout\ & 
-- \G7|Reg[1][10]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G7|ALT_INV_Reg[1][10]~combout\,
	datad => \G18|ALT_INV_SAIDA\(10),
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux21~0_combout\);

-- Location: MLABCELL_X84_Y34_N39
\G17|ram~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~266_combout\ = ( \rtl~0_combout\ & ( \G7|Mux21~0_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~266_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux21~0_combout\,
	datac => \G17|ALT_INV_ram~266_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~266_combout\);

-- Location: LABCELL_X83_Y34_N3
\G18|SAIDA~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~37_combout\ = ( \G16|Mux14~2_combout\ & ( \G16|Mux11~2_combout\ & ( !\G18|SAIDA~36_combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( \G16|Mux11~2_combout\ & ( (!\G18|SAIDA~36_combout\ & ((!\G17|ram~280_combout\) # ((!\G18|SAIDA~0_combout\) # 
-- (!\G17|ram~266_combout\)))) ) ) ) # ( \G16|Mux14~2_combout\ & ( !\G16|Mux11~2_combout\ & ( !\G18|SAIDA~36_combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( !\G16|Mux11~2_combout\ & ( !\G18|SAIDA~36_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~280_combout\,
	datab => \G18|ALT_INV_SAIDA~36_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G17|ALT_INV_ram~266_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G16|ALT_INV_Mux11~2_combout\,
	combout => \G18|SAIDA~37_combout\);

-- Location: MLABCELL_X82_Y34_N18
\G17|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~170_combout\ = ( \G17|ram~170_combout\ & ( (!\rtl~16_combout\) # (\G7|Mux21~0_combout\) ) ) # ( !\G17|ram~170_combout\ & ( (\G7|Mux21~0_combout\ & \rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux21~0_combout\,
	datac => \ALT_INV_rtl~16_combout\,
	dataf => \G17|ALT_INV_ram~170_combout\,
	combout => \G17|ram~170_combout\);

-- Location: LABCELL_X81_Y34_N57
\G17|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~186_combout\ = ( \G7|Mux21~0_combout\ & ( (\rtl~14_combout\) # (\G17|ram~186_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (\G17|ram~186_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~186_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~186_combout\);

-- Location: LABCELL_X81_Y34_N9
\G17|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~154_combout\ = ( \rtl~13_combout\ & ( \G7|Mux21~0_combout\ ) ) # ( !\rtl~13_combout\ & ( \G7|Mux21~0_combout\ & ( \G17|ram~154_combout\ ) ) ) # ( !\rtl~13_combout\ & ( !\G7|Mux21~0_combout\ & ( \G17|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~154_combout\,
	datae => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~154_combout\);

-- Location: LABCELL_X83_Y32_N0
\G17|ram~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~138_combout\ = (!\rtl~15_combout\ & ((\G17|ram~138_combout\))) # (\rtl~15_combout\ & (\G7|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux21~0_combout\,
	datac => \ALT_INV_rtl~15_combout\,
	datad => \G17|ALT_INV_ram~138_combout\,
	combout => \G17|ram~138_combout\);

-- Location: MLABCELL_X82_Y34_N42
\G17|ram~485\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~485_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~138_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~154_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~170_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~186_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~170_combout\,
	datad => \G17|ALT_INV_ram~186_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~154_combout\,
	datag => \G17|ALT_INV_ram~138_combout\,
	combout => \G17|ram~485_combout\);

-- Location: MLABCELL_X82_Y32_N3
\G17|ram~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~234_combout\ = ( \G7|Mux21~0_combout\ & ( (\G17|ram~234_combout\) # (\rtl~8_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (!\rtl~8_combout\ & \G17|ram~234_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~8_combout\,
	datad => \G17|ALT_INV_ram~234_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~234_combout\);

-- Location: LABCELL_X83_Y33_N51
\G17|ram~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~250_combout\ = ( \G7|Mux21~0_combout\ & ( (\rtl~6_combout\) # (\G17|ram~250_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (\G17|ram~250_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~250_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~250_combout\);

-- Location: MLABCELL_X82_Y34_N33
\G17|ram~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~218_combout\ = ( \G7|Mux21~0_combout\ & ( (\rtl~5_combout\) # (\G17|ram~218_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (\G17|ram~218_combout\ & !\rtl~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~218_combout\,
	datad => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~218_combout\);

-- Location: MLABCELL_X82_Y31_N48
\G17|ram~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~202_combout\ = ( \G17|ram~202_combout\ & ( (!\rtl~7_combout\) # (\G7|Mux21~0_combout\) ) ) # ( !\G17|ram~202_combout\ & ( (\G7|Mux21~0_combout\ & \rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G17|ALT_INV_ram~202_combout\,
	combout => \G17|ram~202_combout\);

-- Location: MLABCELL_X82_Y34_N48
\G17|ram~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~357_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~485_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~485_combout\ & (\G17|ram~202_combout\)) # (\G17|ram~485_combout\ & (((\G17|ram~218_combout\)))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~485_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~485_combout\ & (\G17|ram~234_combout\)) # (\G17|ram~485_combout\ & (((\G17|ram~250_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000100110001001100011011100110111001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~485_combout\,
	datac => \G17|ALT_INV_ram~234_combout\,
	datad => \G17|ALT_INV_ram~250_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~218_combout\,
	datag => \G17|ALT_INV_ram~202_combout\,
	combout => \G17|ram~357_combout\);

-- Location: LABCELL_X81_Y34_N33
\G17|ram~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~42_combout\ = ( \G7|Mux21~0_combout\ & ( (\rtl~12_combout\) # (\G17|ram~42_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (\G17|ram~42_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~42_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~42_combout\);

-- Location: MLABCELL_X82_Y34_N30
\G17|ram~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~26_combout\ = ( \G7|Mux21~0_combout\ & ( (\rtl~9_combout\) # (\G17|ram~26_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (\G17|ram~26_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~26_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~26_combout\);

-- Location: MLABCELL_X82_Y34_N15
\G17|ram~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~58_combout\ = ( \G7|Mux21~0_combout\ & ( (\G17|ram~58_combout\) # (\rtl~10_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (!\rtl~10_combout\ & \G17|ram~58_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~10_combout\,
	datac => \G17|ALT_INV_ram~58_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~58_combout\);

-- Location: MLABCELL_X82_Y30_N0
\G17|ram~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~10_combout\ = ( \G7|Mux21~0_combout\ & ( (\G17|ram~10_combout\) # (\rtl~11_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (!\rtl~11_combout\ & \G17|ram~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~11_combout\,
	datad => \G17|ALT_INV_ram~10_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~10_combout\);

-- Location: MLABCELL_X82_Y34_N24
\G17|ram~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~481_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~10_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~26_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~42_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~58_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~42_combout\,
	datad => \G17|ALT_INV_ram~26_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~58_combout\,
	datag => \G17|ALT_INV_ram~10_combout\,
	combout => \G17|ram~481_combout\);

-- Location: MLABCELL_X82_Y30_N21
\G17|ram~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~106_combout\ = ( \G7|Mux21~0_combout\ & ( (\G17|ram~106_combout\) # (\rtl~4_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (!\rtl~4_combout\ & \G17|ram~106_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~4_combout\,
	datad => \G17|ALT_INV_ram~106_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~106_combout\);

-- Location: MLABCELL_X82_Y30_N9
\G17|ram~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~90_combout\ = ( \G7|Mux21~0_combout\ & ( (\rtl~1_combout\) # (\G17|ram~90_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (\G17|ram~90_combout\ & !\rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~90_combout\,
	datad => \ALT_INV_rtl~1_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~90_combout\);

-- Location: LABCELL_X81_Y34_N15
\G17|ram~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~122_combout\ = ( \G7|Mux21~0_combout\ & ( (\rtl~2_combout\) # (\G17|ram~122_combout\) ) ) # ( !\G7|Mux21~0_combout\ & ( (\G17|ram~122_combout\ & !\rtl~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~122_combout\,
	datad => \ALT_INV_rtl~2_combout\,
	dataf => \G7|ALT_INV_Mux21~0_combout\,
	combout => \G17|ram~122_combout\);

-- Location: MLABCELL_X82_Y31_N51
\G17|ram~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~74_combout\ = ( \G17|ram~74_combout\ & ( (!\rtl~3_combout\) # (\G7|Mux21~0_combout\) ) ) # ( !\G17|ram~74_combout\ & ( (\rtl~3_combout\ & \G7|Mux21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~3_combout\,
	datad => \G7|ALT_INV_Mux21~0_combout\,
	dataf => \G17|ALT_INV_ram~74_combout\,
	combout => \G17|ram~74_combout\);

-- Location: MLABCELL_X82_Y34_N54
\G17|ram~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~353_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~481_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~481_combout\ & (\G17|ram~74_combout\)) # (\G17|ram~481_combout\ & (((\G17|ram~90_combout\)))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (\G17|ram~481_combout\)) # (\G16|Mux13~0_combout\ & ((!\G17|ram~481_combout\ & (\G17|ram~106_combout\)) # (\G17|ram~481_combout\ & (((\G17|ram~122_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~481_combout\,
	datac => \G17|ALT_INV_ram~106_combout\,
	datad => \G17|ALT_INV_ram~90_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~122_combout\,
	datag => \G17|ALT_INV_ram~74_combout\,
	combout => \G17|ram~353_combout\);

-- Location: MLABCELL_X82_Y34_N6
\G18|SAIDA~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~38_combout\ = ( \G17|ram~353_combout\ & ( (!\G18|SAIDA~37_combout\) # (((\G18|SAIDA~2_combout\ & \G17|ram~357_combout\)) # (\G18|SAIDA~1_combout\)) ) ) # ( !\G17|ram~353_combout\ & ( (!\G18|SAIDA~37_combout\) # ((\G18|SAIDA~2_combout\ & 
-- \G17|ram~357_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111001101111111111100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~2_combout\,
	datab => \G18|ALT_INV_SAIDA~37_combout\,
	datac => \G17|ALT_INV_ram~357_combout\,
	datad => \G18|ALT_INV_SAIDA~1_combout\,
	dataf => \G17|ALT_INV_ram~353_combout\,
	combout => \G18|SAIDA~38_combout\);

-- Location: MLABCELL_X82_Y34_N9
\G18|SAIDA[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(10) = ( \G18|SAIDA\(10) & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA~38_combout\) ) ) # ( !\G18|SAIDA\(10) & ( (\G18|SAIDA~38_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA~38_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(10),
	combout => \G18|SAIDA\(10));

-- Location: MLABCELL_X87_Y31_N36
\G16|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~45_sumout\ = SUM(( !\G14|SAIDA\(11) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(11)))) ) + ( \G16|Add1~42\ ))
-- \G16|Add1~46\ = CARRY(( !\G14|SAIDA\(11) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(11)))) ) + ( \G16|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G14|ALT_INV_SAIDA\(11),
	dataf => \G18|ALT_INV_SAIDA\(11),
	cin => \G16|Add1~42\,
	sumout => \G16|Add1~45_sumout\,
	cout => \G16|Add1~46\);

-- Location: MLABCELL_X84_Y31_N33
\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(11)))) ) + ( \G14|SAIDA\(11) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(11)))) ) + ( \G14|SAIDA\(11) ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(11),
	dataf => \G14|ALT_INV_SAIDA\(11),
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

-- Location: MLABCELL_X84_Y32_N45
\G18|SAIDA~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~40_combout\ = ( \G16|Add1~45_sumout\ & ( \G16|Add0~45_sumout\ & ( (\G5|memparareg~combout\ & (((\G16|Mux15~1_combout\ & !\G18|SAIDA~39_combout\)) # (\G16|Mux15~0_combout\))) ) ) ) # ( !\G16|Add1~45_sumout\ & ( \G16|Add0~45_sumout\ & ( 
-- (\G5|memparareg~combout\ & ((!\G16|Mux15~0_combout\ & (\G16|Mux15~1_combout\ & !\G18|SAIDA~39_combout\)) # (\G16|Mux15~0_combout\ & (!\G16|Mux15~1_combout\)))) ) ) ) # ( \G16|Add1~45_sumout\ & ( !\G16|Add0~45_sumout\ & ( (\G5|memparareg~combout\ & 
-- (\G16|Mux15~1_combout\ & ((!\G18|SAIDA~39_combout\) # (\G16|Mux15~0_combout\)))) ) ) ) # ( !\G16|Add1~45_sumout\ & ( !\G16|Add0~45_sumout\ & ( (\G5|memparareg~combout\ & (!\G16|Mux15~0_combout\ & (\G16|Mux15~1_combout\ & !\G18|SAIDA~39_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001010000000100010100000100000001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_memparareg~combout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA~39_combout\,
	datae => \G16|ALT_INV_Add1~45_sumout\,
	dataf => \G16|ALT_INV_Add0~45_sumout\,
	combout => \G18|SAIDA~40_combout\);

-- Location: LABCELL_X88_Y31_N15
\G7|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux20~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G7|Reg[1][11]~combout\ & \G4|Mux0~2_combout\)) # (\G18|SAIDA\(11)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (\G7|Reg[1][11]~combout\ & 
-- \G4|Mux0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Reg[1][11]~combout\,
	datac => \G4|ALT_INV_Mux0~2_combout\,
	datad => \G18|ALT_INV_SAIDA\(11),
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux20~0_combout\);

-- Location: MLABCELL_X84_Y32_N36
\G17|ram~267\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~267_combout\ = ( \rtl~0_combout\ & ( \G7|Mux20~0_combout\ ) ) # ( !\rtl~0_combout\ & ( \G17|ram~267_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux20~0_combout\,
	datad => \G17|ALT_INV_ram~267_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \G17|ram~267_combout\);

-- Location: MLABCELL_X84_Y32_N0
\G18|SAIDA~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~41_combout\ = ( \G16|Mux14~2_combout\ & ( \G17|ram~267_combout\ & ( !\G18|SAIDA~40_combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( \G17|ram~267_combout\ & ( (!\G18|SAIDA~40_combout\ & ((!\G18|SAIDA~0_combout\) # ((!\G16|Mux11~2_combout\) # 
-- (!\G17|ram~280_combout\)))) ) ) ) # ( \G16|Mux14~2_combout\ & ( !\G17|ram~267_combout\ & ( !\G18|SAIDA~40_combout\ ) ) ) # ( !\G16|Mux14~2_combout\ & ( !\G17|ram~267_combout\ & ( !\G18|SAIDA~40_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~0_combout\,
	datab => \G18|ALT_INV_SAIDA~40_combout\,
	datac => \G16|ALT_INV_Mux11~2_combout\,
	datad => \G17|ALT_INV_ram~280_combout\,
	datae => \G16|ALT_INV_Mux14~2_combout\,
	dataf => \G17|ALT_INV_ram~267_combout\,
	combout => \G18|SAIDA~41_combout\);

-- Location: LABCELL_X81_Y34_N12
\G17|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~171_combout\ = ( \G7|Mux20~0_combout\ & ( (\rtl~16_combout\) # (\G17|ram~171_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (\G17|ram~171_combout\ & !\rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~171_combout\,
	datad => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~171_combout\);

-- Location: MLABCELL_X82_Y33_N45
\G17|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~155_combout\ = ( \G7|Mux20~0_combout\ & ( (\G17|ram~155_combout\) # (\rtl~13_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (!\rtl~13_combout\ & \G17|ram~155_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~13_combout\,
	datad => \G17|ALT_INV_ram~155_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~155_combout\);

-- Location: LABCELL_X81_Y34_N45
\G17|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~187_combout\ = ( \G7|Mux20~0_combout\ & ( (\rtl~14_combout\) # (\G17|ram~187_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (\G17|ram~187_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~187_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~187_combout\);

-- Location: LABCELL_X83_Y31_N9
\G17|ram~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~139_combout\ = ( \G7|Mux20~0_combout\ & ( (\rtl~15_combout\) # (\G17|ram~139_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (\G17|ram~139_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~139_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~139_combout\);

-- Location: MLABCELL_X82_Y34_N36
\G17|ram~493\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~493_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~139_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~155_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~171_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~187_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~171_combout\,
	datad => \G17|ALT_INV_ram~155_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~187_combout\,
	datag => \G17|ALT_INV_ram~139_combout\,
	combout => \G17|ram~493_combout\);

-- Location: MLABCELL_X82_Y31_N0
\G17|ram~235\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~235_combout\ = ( \rtl~8_combout\ & ( \G7|Mux20~0_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~235_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux20~0_combout\,
	datad => \G17|ALT_INV_ram~235_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~235_combout\);

-- Location: MLABCELL_X84_Y32_N12
\G17|ram~219\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~219_combout\ = ( \G17|ram~219_combout\ & ( (!\rtl~5_combout\) # (\G7|Mux20~0_combout\) ) ) # ( !\G17|ram~219_combout\ & ( (\rtl~5_combout\ & \G7|Mux20~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~5_combout\,
	datac => \G7|ALT_INV_Mux20~0_combout\,
	dataf => \G17|ALT_INV_ram~219_combout\,
	combout => \G17|ram~219_combout\);

-- Location: MLABCELL_X82_Y33_N42
\G17|ram~251\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~251_combout\ = ( \G17|ram~251_combout\ & ( (!\rtl~6_combout\) # (\G7|Mux20~0_combout\) ) ) # ( !\G17|ram~251_combout\ & ( (\G7|Mux20~0_combout\ & \rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G17|ALT_INV_ram~251_combout\,
	combout => \G17|ram~251_combout\);

-- Location: MLABCELL_X82_Y34_N21
\G17|ram~203\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~203_combout\ = ( \G7|Mux20~0_combout\ & ( (\G17|ram~203_combout\) # (\rtl~7_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (!\rtl~7_combout\ & \G17|ram~203_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~7_combout\,
	datad => \G17|ALT_INV_ram~203_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~203_combout\);

-- Location: LABCELL_X83_Y34_N18
\G17|ram~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~365_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~493_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~203_combout\))) # (\G17|ram~493_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~219_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~493_combout\ & (\G16|Mux13~0_combout\ & (\G17|ram~235_combout\))) # (\G17|ram~493_combout\ & ((!\G16|Mux13~0_combout\) # (((\G17|ram~251_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001010111010001100100011001000110010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~493_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~235_combout\,
	datad => \G17|ALT_INV_ram~219_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~251_combout\,
	datag => \G17|ALT_INV_ram~203_combout\,
	combout => \G17|ram~365_combout\);

-- Location: MLABCELL_X82_Y33_N57
\G17|ram~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~123_combout\ = ( \G7|Mux20~0_combout\ & ( (\G17|ram~123_combout\) # (\rtl~2_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (!\rtl~2_combout\ & \G17|ram~123_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~2_combout\,
	datad => \G17|ALT_INV_ram~123_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~123_combout\);

-- Location: LABCELL_X83_Y34_N33
\G17|ram~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~43_combout\ = ( \rtl~12_combout\ & ( \G7|Mux20~0_combout\ ) ) # ( !\rtl~12_combout\ & ( \G7|Mux20~0_combout\ & ( \G17|ram~43_combout\ ) ) ) # ( !\rtl~12_combout\ & ( !\G7|Mux20~0_combout\ & ( \G17|ram~43_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~43_combout\,
	datae => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~43_combout\);

-- Location: MLABCELL_X82_Y34_N12
\G17|ram~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~59_combout\ = ( \G7|Mux20~0_combout\ & ( (\G17|ram~59_combout\) # (\rtl~10_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (!\rtl~10_combout\ & \G17|ram~59_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~10_combout\,
	datab => \G17|ALT_INV_ram~59_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~59_combout\);

-- Location: MLABCELL_X82_Y34_N0
\G17|ram~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~27_combout\ = ( \G7|Mux20~0_combout\ & ( (\G17|ram~27_combout\) # (\rtl~9_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (!\rtl~9_combout\ & \G17|ram~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~9_combout\,
	datad => \G17|ALT_INV_ram~27_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~27_combout\);

-- Location: MLABCELL_X82_Y34_N3
\G17|ram~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~11_combout\ = ( \rtl~11_combout\ & ( \G7|Mux20~0_combout\ ) ) # ( !\rtl~11_combout\ & ( \G17|ram~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux20~0_combout\,
	datad => \G17|ALT_INV_ram~11_combout\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \G17|ram~11_combout\);

-- Location: LABCELL_X83_Y34_N48
\G17|ram~489\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~489_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~11_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~27_combout\))) # (\G16|Mux13~0_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (!\G16|Mux13~0_combout\ & (\G17|ram~43_combout\))) # (\G16|Mux15~2_combout\ & ((((\G17|ram~59_combout\))) # (\G16|Mux13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~2_combout\,
	datab => \G16|ALT_INV_Mux13~0_combout\,
	datac => \G17|ALT_INV_ram~43_combout\,
	datad => \G17|ALT_INV_ram~59_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~27_combout\,
	datag => \G17|ALT_INV_ram~11_combout\,
	combout => \G17|ram~489_combout\);

-- Location: MLABCELL_X82_Y33_N36
\G17|ram~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~107_combout\ = ( \G7|Mux20~0_combout\ & ( (\G17|ram~107_combout\) # (\rtl~4_combout\) ) ) # ( !\G7|Mux20~0_combout\ & ( (!\rtl~4_combout\ & \G17|ram~107_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~4_combout\,
	datad => \G17|ALT_INV_ram~107_combout\,
	dataf => \G7|ALT_INV_Mux20~0_combout\,
	combout => \G17|ram~107_combout\);

-- Location: MLABCELL_X82_Y33_N39
\G17|ram~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~91_combout\ = ( \G17|ram~91_combout\ & ( (!\rtl~1_combout\) # (\G7|Mux20~0_combout\) ) ) # ( !\G17|ram~91_combout\ & ( (\G7|Mux20~0_combout\ & \rtl~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux20~0_combout\,
	datac => \ALT_INV_rtl~1_combout\,
	dataf => \G17|ALT_INV_ram~91_combout\,
	combout => \G17|ram~91_combout\);

-- Location: MLABCELL_X82_Y33_N6
\G17|ram~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~75_combout\ = ( \G17|ram~75_combout\ & ( (!\rtl~3_combout\) # (\G7|Mux20~0_combout\) ) ) # ( !\G17|ram~75_combout\ & ( (\G7|Mux20~0_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~75_combout\,
	combout => \G17|ram~75_combout\);

-- Location: LABCELL_X83_Y34_N54
\G17|ram~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~361_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~489_combout\ & (\G17|ram~75_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~489_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~91_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~489_combout\ & (((\G17|ram~107_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~489_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~123_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~123_combout\,
	datab => \G17|ALT_INV_ram~489_combout\,
	datac => \G17|ALT_INV_ram~107_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~91_combout\,
	datag => \G17|ALT_INV_ram~75_combout\,
	combout => \G17|ram~361_combout\);

-- Location: LABCELL_X83_Y34_N36
\G18|SAIDA~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~42_combout\ = ( \G17|ram~361_combout\ & ( (!\G18|SAIDA~41_combout\) # (((\G18|SAIDA~2_combout\ & \G17|ram~365_combout\)) # (\G18|SAIDA~1_combout\)) ) ) # ( !\G17|ram~361_combout\ & ( (!\G18|SAIDA~41_combout\) # ((\G18|SAIDA~2_combout\ & 
-- \G17|ram~365_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011111111111010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~41_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~365_combout\,
	datad => \G18|ALT_INV_SAIDA~1_combout\,
	dataf => \G17|ALT_INV_ram~361_combout\,
	combout => \G18|SAIDA~42_combout\);

-- Location: LABCELL_X83_Y34_N39
\G18|SAIDA[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(11) = ( \G18|SAIDA\(11) & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA~42_combout\) ) ) # ( !\G18|SAIDA\(11) & ( (\G18|SAIDA~42_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA~42_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(11),
	combout => \G18|SAIDA\(11));

-- Location: MLABCELL_X84_Y31_N36
\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(12)))) ) + ( \G14|SAIDA\(12) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(12)))) ) + ( \G14|SAIDA\(12) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(12),
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

-- Location: MLABCELL_X84_Y30_N42
\G18|SAIDA~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~43_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G18|SAIDA\(12) & !\G14|SAIDA\(12)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(12),
	datac => \G14|ALT_INV_SAIDA\(12),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G18|SAIDA~43_combout\);

-- Location: MLABCELL_X87_Y31_N39
\G16|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~49_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(12)))) ) + ( !\G14|SAIDA\(12) ) + ( \G16|Add1~46\ ))
-- \G16|Add1~50\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(12)))) ) + ( !\G14|SAIDA\(12) ) + ( \G16|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(12),
	dataf => \G14|ALT_INV_SAIDA\(12),
	cin => \G16|Add1~46\,
	sumout => \G16|Add1~49_sumout\,
	cout => \G16|Add1~50\);

-- Location: MLABCELL_X84_Y32_N33
\G18|SAIDA~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~44_combout\ = ( \G16|Add1~49_sumout\ & ( \G16|Mux15~1_combout\ & ( (\G5|memparareg~combout\ & ((!\G18|SAIDA~43_combout\) # (\G16|Mux15~0_combout\))) ) ) ) # ( !\G16|Add1~49_sumout\ & ( \G16|Mux15~1_combout\ & ( (!\G16|Mux15~0_combout\ & 
-- (!\G18|SAIDA~43_combout\ & \G5|memparareg~combout\)) ) ) ) # ( \G16|Add1~49_sumout\ & ( !\G16|Mux15~1_combout\ & ( (\G16|Add0~49_sumout\ & (\G16|Mux15~0_combout\ & \G5|memparareg~combout\)) ) ) ) # ( !\G16|Add1~49_sumout\ & ( !\G16|Mux15~1_combout\ & ( 
-- (\G16|Add0~49_sumout\ & (\G16|Mux15~0_combout\ & \G5|memparareg~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000110000000000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add0~49_sumout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA~43_combout\,
	datad => \G5|ALT_INV_memparareg~combout\,
	datae => \G16|ALT_INV_Add1~49_sumout\,
	dataf => \G16|ALT_INV_Mux15~1_combout\,
	combout => \G18|SAIDA~44_combout\);

-- Location: MLABCELL_X82_Y31_N39
\G7|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux19~0_combout\ = ( \G7|Mux28~0_combout\ & ( (\Clock_Sistema~input_o\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][12]~combout\)) # (\G18|SAIDA\(12)))) ) ) # ( !\G7|Mux28~0_combout\ & ( (\G4|Mux0~2_combout\ & (\G7|Reg[1][12]~combout\ & 
-- \Clock_Sistema~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000011110000000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~2_combout\,
	datab => \G7|ALT_INV_Reg[1][12]~combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G18|ALT_INV_SAIDA\(12),
	dataf => \G7|ALT_INV_Mux28~0_combout\,
	combout => \G7|Mux19~0_combout\);

-- Location: MLABCELL_X84_Y32_N48
\G17|ram~268\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~268_combout\ = ( \G17|ram~268_combout\ & ( (!\rtl~0_combout\) # (\G7|Mux19~0_combout\) ) ) # ( !\G17|ram~268_combout\ & ( (\rtl~0_combout\ & \G7|Mux19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~0_combout\,
	datad => \G7|ALT_INV_Mux19~0_combout\,
	dataf => \G17|ALT_INV_ram~268_combout\,
	combout => \G17|ram~268_combout\);

-- Location: LABCELL_X83_Y32_N9
\G18|SAIDA~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~45_combout\ = ( !\G18|SAIDA~44_combout\ & ( \G17|ram~268_combout\ & ( (!\G17|ram~280_combout\) # ((!\G16|Mux11~2_combout\) # ((!\G18|SAIDA~0_combout\) # (\G16|Mux14~2_combout\))) ) ) ) # ( !\G18|SAIDA~44_combout\ & ( !\G17|ram~268_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111110111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~280_combout\,
	datab => \G16|ALT_INV_Mux11~2_combout\,
	datac => \G18|ALT_INV_SAIDA~0_combout\,
	datad => \G16|ALT_INV_Mux14~2_combout\,
	datae => \G18|ALT_INV_SAIDA~44_combout\,
	dataf => \G17|ALT_INV_ram~268_combout\,
	combout => \G18|SAIDA~45_combout\);

-- Location: MLABCELL_X82_Y31_N21
\G17|ram~220\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~220_combout\ = ( \G7|Mux19~0_combout\ & ( (\G17|ram~220_combout\) # (\rtl~5_combout\) ) ) # ( !\G7|Mux19~0_combout\ & ( (!\rtl~5_combout\ & \G17|ram~220_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~5_combout\,
	datad => \G17|ALT_INV_ram~220_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G17|ram~220_combout\);

-- Location: MLABCELL_X82_Y32_N57
\G17|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~156_combout\ = ( \rtl~13_combout\ & ( \G7|Mux19~0_combout\ ) ) # ( !\rtl~13_combout\ & ( \G17|ram~156_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux19~0_combout\,
	datad => \G17|ALT_INV_ram~156_combout\,
	dataf => \ALT_INV_rtl~13_combout\,
	combout => \G17|ram~156_combout\);

-- Location: MLABCELL_X82_Y32_N51
\G17|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~172_combout\ = ( \G17|ram~172_combout\ & ( (!\rtl~16_combout\) # (\G7|Mux19~0_combout\) ) ) # ( !\G17|ram~172_combout\ & ( (\G7|Mux19~0_combout\ & \rtl~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux19~0_combout\,
	datac => \ALT_INV_rtl~16_combout\,
	dataf => \G17|ALT_INV_ram~172_combout\,
	combout => \G17|ram~172_combout\);

-- Location: MLABCELL_X82_Y31_N30
\G17|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~188_combout\ = ( \G7|Mux19~0_combout\ & ( (\rtl~14_combout\) # (\G17|ram~188_combout\) ) ) # ( !\G7|Mux19~0_combout\ & ( (\G17|ram~188_combout\ & !\rtl~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~188_combout\,
	datad => \ALT_INV_rtl~14_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G17|ram~188_combout\);

-- Location: LABCELL_X83_Y31_N18
\G17|ram~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~140_combout\ = ( \G7|Mux19~0_combout\ & ( (\rtl~15_combout\) # (\G17|ram~140_combout\) ) ) # ( !\G7|Mux19~0_combout\ & ( (\G17|ram~140_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~140_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G17|ram~140_combout\);

-- Location: MLABCELL_X82_Y32_N36
\G17|ram~501\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~501_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~2_combout\ & ((\G17|ram~140_combout\))) # (\G16|Mux15~2_combout\ & (\G17|ram~156_combout\))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & (((!\G16|Mux15~2_combout\ & (\G17|ram~172_combout\)) # (\G16|Mux15~2_combout\ & ((\G17|ram~188_combout\)))))) # (\G16|Mux13~0_combout\ & ((((\G16|Mux15~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001110111011101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G17|ALT_INV_ram~156_combout\,
	datac => \G17|ALT_INV_ram~172_combout\,
	datad => \G17|ALT_INV_ram~188_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux15~2_combout\,
	datag => \G17|ALT_INV_ram~140_combout\,
	combout => \G17|ram~501_combout\);

-- Location: MLABCELL_X82_Y33_N33
\G17|ram~236\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~236_combout\ = ( \G17|ram~236_combout\ & ( (!\rtl~8_combout\) # (\G7|Mux19~0_combout\) ) ) # ( !\G17|ram~236_combout\ & ( (\G7|Mux19~0_combout\ & \rtl~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux19~0_combout\,
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \G17|ALT_INV_ram~236_combout\,
	combout => \G17|ram~236_combout\);

-- Location: LABCELL_X81_Y32_N24
\G17|ram~252\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~252_combout\ = ( \G7|Mux19~0_combout\ & ( (\rtl~6_combout\) # (\G17|ram~252_combout\) ) ) # ( !\G7|Mux19~0_combout\ & ( (\G17|ram~252_combout\ & !\rtl~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~252_combout\,
	datad => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G17|ram~252_combout\);

-- Location: MLABCELL_X82_Y31_N18
\G17|ram~204\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~204_combout\ = ( \G7|Mux19~0_combout\ & ( (\rtl~7_combout\) # (\G17|ram~204_combout\) ) ) # ( !\G7|Mux19~0_combout\ & ( (\G17|ram~204_combout\ & !\rtl~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~204_combout\,
	datad => \ALT_INV_rtl~7_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G17|ram~204_combout\);

-- Location: MLABCELL_X82_Y32_N12
\G17|ram~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~373_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~501_combout\ & (((\G17|ram~204_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~501_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~220_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G17|ram~501_combout\ & (\G17|ram~236_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~501_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~252_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~220_combout\,
	datab => \G17|ALT_INV_ram~501_combout\,
	datac => \G17|ALT_INV_ram~236_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~252_combout\,
	datag => \G17|ALT_INV_ram~204_combout\,
	combout => \G17|ram~373_combout\);

-- Location: MLABCELL_X82_Y32_N0
\G17|ram~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~44_combout\ = ( \rtl~12_combout\ & ( \G7|Mux19~0_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux19~0_combout\,
	datad => \G17|ALT_INV_ram~44_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~44_combout\);

-- Location: LABCELL_X81_Y33_N21
\G17|ram~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~28_combout\ = ( \G7|Mux19~0_combout\ & ( (\G17|ram~28_combout\) # (\rtl~9_combout\) ) ) # ( !\G7|Mux19~0_combout\ & ( (!\rtl~9_combout\ & \G17|ram~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~9_combout\,
	datad => \G17|ALT_INV_ram~28_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G17|ram~28_combout\);

-- Location: MLABCELL_X82_Y32_N21
\G17|ram~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~60_combout\ = ( \G17|ram~60_combout\ & ( (!\rtl~10_combout\) # (\G7|Mux19~0_combout\) ) ) # ( !\G17|ram~60_combout\ & ( (\G7|Mux19~0_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux19~0_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~60_combout\,
	combout => \G17|ram~60_combout\);

-- Location: MLABCELL_X82_Y32_N48
\G17|ram~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~12_combout\ = ( \G7|Mux19~0_combout\ & ( (\rtl~11_combout\) # (\G17|ram~12_combout\) ) ) # ( !\G7|Mux19~0_combout\ & ( (\G17|ram~12_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~12_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G17|ram~12_combout\);

-- Location: MLABCELL_X82_Y32_N24
\G17|ram~497\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~497_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~12_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~28_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~44_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~60_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~44_combout\,
	datad => \G17|ALT_INV_ram~28_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~60_combout\,
	datag => \G17|ALT_INV_ram~12_combout\,
	combout => \G17|ram~497_combout\);

-- Location: LABCELL_X81_Y32_N48
\G17|ram~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~92_combout\ = ( \rtl~1_combout\ & ( \G7|Mux19~0_combout\ ) ) # ( !\rtl~1_combout\ & ( \G17|ram~92_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux19~0_combout\,
	datac => \G17|ALT_INV_ram~92_combout\,
	dataf => \ALT_INV_rtl~1_combout\,
	combout => \G17|ram~92_combout\);

-- Location: MLABCELL_X82_Y32_N18
\G17|ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~108_combout\ = ( \G17|ram~108_combout\ & ( (!\rtl~4_combout\) # (\G7|Mux19~0_combout\) ) ) # ( !\G17|ram~108_combout\ & ( (\G7|Mux19~0_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux19~0_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~108_combout\,
	combout => \G17|ram~108_combout\);

-- Location: MLABCELL_X82_Y32_N54
\G17|ram~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~124_combout\ = ( \rtl~2_combout\ & ( \G7|Mux19~0_combout\ ) ) # ( !\rtl~2_combout\ & ( \G17|ram~124_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux19~0_combout\,
	datad => \G17|ALT_INV_ram~124_combout\,
	dataf => \ALT_INV_rtl~2_combout\,
	combout => \G17|ram~124_combout\);

-- Location: LABCELL_X81_Y33_N42
\G17|ram~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~76_combout\ = ( \G7|Mux19~0_combout\ & ( (\rtl~3_combout\) # (\G17|ram~76_combout\) ) ) # ( !\G7|Mux19~0_combout\ & ( (\G17|ram~76_combout\ & !\rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~76_combout\,
	datac => \ALT_INV_rtl~3_combout\,
	dataf => \G7|ALT_INV_Mux19~0_combout\,
	combout => \G17|ram~76_combout\);

-- Location: MLABCELL_X82_Y32_N30
\G17|ram~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~369_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~497_combout\ & (((\G17|ram~76_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~497_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~92_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~497_combout\ & (((\G17|ram~108_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~497_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~124_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~497_combout\,
	datab => \G17|ALT_INV_ram~92_combout\,
	datac => \G17|ALT_INV_ram~108_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~124_combout\,
	datag => \G17|ALT_INV_ram~76_combout\,
	combout => \G17|ram~369_combout\);

-- Location: MLABCELL_X82_Y32_N6
\G18|SAIDA~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~46_combout\ = ( \G17|ram~369_combout\ & ( (!\G18|SAIDA~45_combout\) # (((\G18|SAIDA~2_combout\ & \G17|ram~373_combout\)) # (\G18|SAIDA~1_combout\)) ) ) # ( !\G17|ram~369_combout\ & ( (!\G18|SAIDA~45_combout\) # ((\G18|SAIDA~2_combout\ & 
-- \G17|ram~373_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011111111111010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~45_combout\,
	datab => \G18|ALT_INV_SAIDA~2_combout\,
	datac => \G17|ALT_INV_ram~373_combout\,
	datad => \G18|ALT_INV_SAIDA~1_combout\,
	dataf => \G17|ALT_INV_ram~369_combout\,
	combout => \G18|SAIDA~46_combout\);

-- Location: MLABCELL_X82_Y32_N9
\G18|SAIDA[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(12) = ( \G18|SAIDA\(12) & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA~46_combout\) ) ) # ( !\G18|SAIDA\(12) & ( (\G18|SAIDA~46_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA~46_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(12),
	combout => \G18|SAIDA\(12));

-- Location: MLABCELL_X87_Y31_N42
\G16|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~53_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(13)))) ) + ( !\G14|SAIDA\(13) ) + ( \G16|Add1~50\ ))
-- \G16|Add1~54\ = CARRY(( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(13)))) ) + ( !\G14|SAIDA\(13) ) + ( \G16|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(13),
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add1~50\,
	sumout => \G16|Add1~53_sumout\,
	cout => \G16|Add1~54\);

-- Location: LABCELL_X85_Y31_N24
\G18|SAIDA~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~48_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G14|SAIDA\(13) & !\G18|SAIDA\(13)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(13),
	datac => \G18|ALT_INV_SAIDA\(13),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G18|SAIDA~48_combout\);

-- Location: MLABCELL_X84_Y31_N39
\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(13)))) ) + ( \G14|SAIDA\(13) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(13)))) ) + ( \G14|SAIDA\(13) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(13),
	dataf => \G14|ALT_INV_SAIDA\(13),
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

-- Location: LABCELL_X83_Y31_N0
\G18|SAIDA~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~49_combout\ = ( \G5|memparareg~combout\ & ( \G16|Add0~53_sumout\ & ( (!\G16|Mux15~0_combout\ & (((!\G18|SAIDA~48_combout\ & \G16|Mux15~1_combout\)))) # (\G16|Mux15~0_combout\ & (((!\G16|Mux15~1_combout\)) # (\G16|Add1~53_sumout\))) ) ) ) # ( 
-- \G5|memparareg~combout\ & ( !\G16|Add0~53_sumout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G18|SAIDA~48_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~53_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101000100000000000000000011001111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~53_sumout\,
	datab => \G16|ALT_INV_Mux15~0_combout\,
	datac => \G18|ALT_INV_SAIDA~48_combout\,
	datad => \G16|ALT_INV_Mux15~1_combout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Add0~53_sumout\,
	combout => \G18|SAIDA~49_combout\);

-- Location: LABCELL_X80_Y32_N48
\G17|ram~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~61_combout\ = ( \G17|ram~61_combout\ & ( (!\rtl~10_combout\) # (\G7|Mux18~0_combout\) ) ) # ( !\G17|ram~61_combout\ & ( (\G7|Mux18~0_combout\ & \rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G17|ALT_INV_ram~61_combout\,
	combout => \G17|ram~61_combout\);

-- Location: LABCELL_X81_Y32_N27
\G17|ram~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~45_combout\ = ( \rtl~12_combout\ & ( \G7|Mux18~0_combout\ ) ) # ( !\rtl~12_combout\ & ( \G17|ram~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux18~0_combout\,
	datad => \G17|ALT_INV_ram~45_combout\,
	dataf => \ALT_INV_rtl~12_combout\,
	combout => \G17|ram~45_combout\);

-- Location: LABCELL_X80_Y32_N51
\G17|ram~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~29_combout\ = ( \rtl~9_combout\ & ( \G7|Mux18~0_combout\ ) ) # ( !\rtl~9_combout\ & ( \G17|ram~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux18~0_combout\,
	datad => \G17|ALT_INV_ram~29_combout\,
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \G17|ram~29_combout\);

-- Location: LABCELL_X81_Y32_N30
\G17|ram~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~13_combout\ = ( \G7|Mux18~0_combout\ & ( (\G17|ram~13_combout\) # (\rtl~11_combout\) ) ) # ( !\G7|Mux18~0_combout\ & ( (!\rtl~11_combout\ & \G17|ram~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~11_combout\,
	datad => \G17|ALT_INV_ram~13_combout\,
	dataf => \G7|ALT_INV_Mux18~0_combout\,
	combout => \G17|ram~13_combout\);

-- Location: LABCELL_X80_Y32_N36
\G17|ram~505\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~505_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G16|Mux15~2_combout\ & (\G17|ram~13_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~2_combout\ & (((\G17|ram~29_combout\) # (\G16|Mux13~0_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G16|Mux15~2_combout\ & (((\G17|ram~45_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~61_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000111010011001100111111001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~61_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~45_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~29_combout\,
	datag => \G17|ALT_INV_ram~13_combout\,
	combout => \G17|ram~505_combout\);

-- Location: LABCELL_X80_Y33_N0
\G17|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~125_combout\ = ( \G7|Mux18~0_combout\ & ( (\G17|ram~125_combout\) # (\rtl~2_combout\) ) ) # ( !\G7|Mux18~0_combout\ & ( (!\rtl~2_combout\ & \G17|ram~125_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~2_combout\,
	datad => \G17|ALT_INV_ram~125_combout\,
	dataf => \G7|ALT_INV_Mux18~0_combout\,
	combout => \G17|ram~125_combout\);

-- Location: LABCELL_X79_Y33_N42
\G17|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~109_combout\ = ( \G17|ram~109_combout\ & ( (!\rtl~4_combout\) # (\G7|Mux18~0_combout\) ) ) # ( !\G17|ram~109_combout\ & ( (\G7|Mux18~0_combout\ & \rtl~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_rtl~4_combout\,
	dataf => \G17|ALT_INV_ram~109_combout\,
	combout => \G17|ram~109_combout\);

-- Location: MLABCELL_X82_Y33_N9
\G17|ram~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~93_combout\ = ( \G17|ram~93_combout\ & ( (!\rtl~1_combout\) # (\G7|Mux18~0_combout\) ) ) # ( !\G17|ram~93_combout\ & ( (\rtl~1_combout\ & \G7|Mux18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~1_combout\,
	datad => \G7|ALT_INV_Mux18~0_combout\,
	dataf => \G17|ALT_INV_ram~93_combout\,
	combout => \G17|ram~93_combout\);

-- Location: LABCELL_X81_Y32_N9
\G17|ram~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~77_combout\ = ( \G17|ram~77_combout\ & ( (!\rtl~3_combout\) # (\G7|Mux18~0_combout\) ) ) # ( !\G17|ram~77_combout\ & ( (\G7|Mux18~0_combout\ & \rtl~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_rtl~3_combout\,
	dataf => \G17|ALT_INV_ram~77_combout\,
	combout => \G17|ram~77_combout\);

-- Location: LABCELL_X80_Y32_N18
\G17|ram~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~377_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~505_combout\ & (((\G17|ram~77_combout\ & ((\G16|Mux13~0_combout\)))))) # (\G17|ram~505_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~93_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~505_combout\ & (((\G17|ram~109_combout\ & ((\G16|Mux13~0_combout\)))))) # (\G17|ram~505_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~125_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~505_combout\,
	datab => \G17|ALT_INV_ram~125_combout\,
	datac => \G17|ALT_INV_ram~109_combout\,
	datad => \G17|ALT_INV_ram~93_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	datag => \G17|ALT_INV_ram~77_combout\,
	combout => \G17|ram~377_combout\);

-- Location: LABCELL_X81_Y32_N54
\G17|ram~253\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~253_combout\ = ( \rtl~6_combout\ & ( \G7|Mux18~0_combout\ ) ) # ( !\rtl~6_combout\ & ( \G7|Mux18~0_combout\ & ( \G17|ram~253_combout\ ) ) ) # ( !\rtl~6_combout\ & ( !\G7|Mux18~0_combout\ & ( \G17|ram~253_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~253_combout\,
	datae => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Mux18~0_combout\,
	combout => \G17|ram~253_combout\);

-- Location: LABCELL_X80_Y32_N24
\G17|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~157_combout\ = ( \G17|ram~157_combout\ & ( (!\rtl~13_combout\) # (\G7|Mux18~0_combout\) ) ) # ( !\G17|ram~157_combout\ & ( (\G7|Mux18~0_combout\ & \rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_rtl~13_combout\,
	dataf => \G17|ALT_INV_ram~157_combout\,
	combout => \G17|ram~157_combout\);

-- Location: LABCELL_X80_Y32_N0
\G17|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~173_combout\ = (!\rtl~16_combout\ & ((\G17|ram~173_combout\))) # (\rtl~16_combout\ & (\G7|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_rtl~16_combout\,
	datad => \G17|ALT_INV_ram~173_combout\,
	combout => \G17|ram~173_combout\);

-- Location: LABCELL_X80_Y32_N27
\G17|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~189_combout\ = ( \rtl~14_combout\ & ( \G7|Mux18~0_combout\ ) ) # ( !\rtl~14_combout\ & ( \G17|ram~189_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux18~0_combout\,
	datad => \G17|ALT_INV_ram~189_combout\,
	dataf => \ALT_INV_rtl~14_combout\,
	combout => \G17|ram~189_combout\);

-- Location: LABCELL_X81_Y32_N42
\G17|ram~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~141_combout\ = ( \G7|Mux18~0_combout\ & ( (\rtl~15_combout\) # (\G17|ram~141_combout\) ) ) # ( !\G7|Mux18~0_combout\ & ( (\G17|ram~141_combout\ & !\rtl~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~141_combout\,
	datad => \ALT_INV_rtl~15_combout\,
	dataf => \G7|ALT_INV_Mux18~0_combout\,
	combout => \G17|ram~141_combout\);

-- Location: LABCELL_X80_Y32_N42
\G17|ram~509\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~509_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~141_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~157_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (\G17|ram~173_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~2_combout\ & (((\G17|ram~189_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~157_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~173_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~189_combout\,
	datag => \G17|ALT_INV_ram~141_combout\,
	combout => \G17|ram~509_combout\);

-- Location: LABCELL_X80_Y32_N3
\G17|ram~237\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~237_combout\ = ( \rtl~8_combout\ & ( \G7|Mux18~0_combout\ ) ) # ( !\rtl~8_combout\ & ( \G17|ram~237_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux18~0_combout\,
	datad => \G17|ALT_INV_ram~237_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \G17|ram~237_combout\);

-- Location: LABCELL_X81_Y32_N6
\G17|ram~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~221_combout\ = ( \rtl~5_combout\ & ( \G7|Mux18~0_combout\ ) ) # ( !\rtl~5_combout\ & ( \G17|ram~221_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~221_combout\,
	datac => \G7|ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	combout => \G17|ram~221_combout\);

-- Location: LABCELL_X81_Y34_N48
\G17|ram~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~205_combout\ = ( \rtl~7_combout\ & ( \G7|Mux18~0_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~205_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux18~0_combout\,
	datac => \G17|ALT_INV_ram~205_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~205_combout\);

-- Location: LABCELL_X80_Y32_N30
\G17|ram~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~381_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~509_combout\ & (\G17|ram~205_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~509_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~221_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~509_combout\ & (((\G17|ram~237_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~509_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~253_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~253_combout\,
	datab => \G17|ALT_INV_ram~509_combout\,
	datac => \G17|ALT_INV_ram~237_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~221_combout\,
	datag => \G17|ALT_INV_ram~205_combout\,
	combout => \G17|ram~381_combout\);

-- Location: LABCELL_X80_Y32_N12
\G18|SAIDA~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~50_combout\ = ( \G17|ram~377_combout\ & ( \G17|ram~381_combout\ & ( (((\G18|SAIDA~2_combout\) # (\G18|SAIDA~49_combout\)) # (\G18|SAIDA~47_combout\)) # (\G18|SAIDA~1_combout\) ) ) ) # ( !\G17|ram~377_combout\ & ( \G17|ram~381_combout\ & ( 
-- ((\G18|SAIDA~2_combout\) # (\G18|SAIDA~49_combout\)) # (\G18|SAIDA~47_combout\) ) ) ) # ( \G17|ram~377_combout\ & ( !\G17|ram~381_combout\ & ( ((\G18|SAIDA~49_combout\) # (\G18|SAIDA~47_combout\)) # (\G18|SAIDA~1_combout\) ) ) ) # ( !\G17|ram~377_combout\ 
-- & ( !\G17|ram~381_combout\ & ( (\G18|SAIDA~49_combout\) # (\G18|SAIDA~47_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111011111110111111100111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~1_combout\,
	datab => \G18|ALT_INV_SAIDA~47_combout\,
	datac => \G18|ALT_INV_SAIDA~49_combout\,
	datad => \G18|ALT_INV_SAIDA~2_combout\,
	datae => \G17|ALT_INV_ram~377_combout\,
	dataf => \G17|ALT_INV_ram~381_combout\,
	combout => \G18|SAIDA~50_combout\);

-- Location: LABCELL_X80_Y32_N57
\G18|SAIDA[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(13) = (!\Clock_Sistema~input_o\ & ((\G18|SAIDA\(13)))) # (\Clock_Sistema~input_o\ & (\G18|SAIDA~50_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA~50_combout\,
	datad => \G18|ALT_INV_SAIDA\(13),
	combout => \G18|SAIDA\(13));

-- Location: MLABCELL_X87_Y31_N45
\G16|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~57_sumout\ = SUM(( !\G14|SAIDA\(14) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(14)))) ) + ( \G16|Add1~54\ ))
-- \G16|Add1~58\ = CARRY(( !\G14|SAIDA\(14) ) + ( (\Clock_Sistema~input_o\ & (\G7|Mux15~1_combout\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(14)))) ) + ( \G16|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G7|ALT_INV_Mux15~1_combout\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G14|ALT_INV_SAIDA\(14),
	dataf => \G18|ALT_INV_SAIDA\(14),
	cin => \G16|Add1~54\,
	sumout => \G16|Add1~57_sumout\,
	cout => \G16|Add1~58\);

-- Location: LABCELL_X85_Y34_N54
\G18|SAIDA~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~52_combout\ = ( \G7|Mux15~2_combout\ & ( (!\G18|SAIDA\(14) & !\G14|SAIDA\(14)) ) ) # ( !\G7|Mux15~2_combout\ & ( !\G14|SAIDA\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G18|ALT_INV_SAIDA\(14),
	datad => \G14|ALT_INV_SAIDA\(14),
	dataf => \G7|ALT_INV_Mux15~2_combout\,
	combout => \G18|SAIDA~52_combout\);

-- Location: MLABCELL_X84_Y31_N42
\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(14)))) ) + ( \G14|SAIDA\(14) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(14)))) ) + ( \G14|SAIDA\(14) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(14),
	dataf => \G14|ALT_INV_SAIDA\(14),
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

-- Location: LABCELL_X83_Y31_N27
\G18|SAIDA~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~53_combout\ = ( \G5|memparareg~combout\ & ( \G16|Add0~57_sumout\ & ( (!\G16|Mux15~1_combout\ & (((\G16|Mux15~0_combout\)))) # (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G18|SAIDA~52_combout\))) # (\G16|Mux15~0_combout\ & 
-- (\G16|Add1~57_sumout\)))) ) ) ) # ( \G5|memparareg~combout\ & ( !\G16|Add0~57_sumout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G18|SAIDA~52_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000001000100000000000000000101000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~1_combout\,
	datab => \G16|ALT_INV_Add1~57_sumout\,
	datac => \G18|ALT_INV_SAIDA~52_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Add0~57_sumout\,
	combout => \G18|SAIDA~53_combout\);

-- Location: MLABCELL_X82_Y35_N0
\G18|SAIDA~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~54_combout\ = ( \G18|SAIDA~2_combout\ & ( \G18|SAIDA~53_combout\ ) ) # ( !\G18|SAIDA~2_combout\ & ( \G18|SAIDA~53_combout\ ) ) # ( \G18|SAIDA~2_combout\ & ( !\G18|SAIDA~53_combout\ & ( (((\G17|ram~385_combout\ & \G18|SAIDA~1_combout\)) # 
-- (\G17|ram~389_combout\)) # (\G18|SAIDA~51_combout\) ) ) ) # ( !\G18|SAIDA~2_combout\ & ( !\G18|SAIDA~53_combout\ & ( ((\G17|ram~385_combout\ & \G18|SAIDA~1_combout\)) # (\G18|SAIDA~51_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~51_combout\,
	datab => \G17|ALT_INV_ram~385_combout\,
	datac => \G18|ALT_INV_SAIDA~1_combout\,
	datad => \G17|ALT_INV_ram~389_combout\,
	datae => \G18|ALT_INV_SAIDA~2_combout\,
	dataf => \G18|ALT_INV_SAIDA~53_combout\,
	combout => \G18|SAIDA~54_combout\);

-- Location: MLABCELL_X82_Y35_N51
\G18|SAIDA[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(14) = ( \G18|SAIDA\(14) & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA~54_combout\) ) ) # ( !\G18|SAIDA\(14) & ( (\G18|SAIDA~54_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA~54_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(14),
	combout => \G18|SAIDA\(14));

-- Location: MLABCELL_X84_Y31_N45
\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( (\G7|Mux15~1_combout\ & (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & \G18|SAIDA\(15)))) ) + ( \G14|SAIDA\(15) ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G5|ALT_INV_escrevereg~combout\,
	datad => \G18|ALT_INV_SAIDA\(15),
	dataf => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

-- Location: LABCELL_X85_Y31_N54
\G18|SAIDA~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~57_combout\ = ( \G5|memparareg~combout\ & ( \G16|Add0~61_sumout\ & ( (!\G16|Mux15~0_combout\ & (((\G16|Mux15~1_combout\ & !\G18|SAIDA~56_combout\)))) # (\G16|Mux15~0_combout\ & (((!\G16|Mux15~1_combout\)) # (\G16|Add1~61_sumout\))) ) ) ) # ( 
-- \G5|memparareg~combout\ & ( !\G16|Add0~61_sumout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((!\G18|SAIDA~56_combout\))) # (\G16|Mux15~0_combout\ & (\G16|Add1~61_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010110000000100000000000000000101101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Add1~61_sumout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA~56_combout\,
	datae => \G5|ALT_INV_memparareg~combout\,
	dataf => \G16|ALT_INV_Add0~61_sumout\,
	combout => \G18|SAIDA~57_combout\);

-- Location: LABCELL_X88_Y33_N3
\G7|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux16~0_combout\ = ( \Clock_Sistema~input_o\ & ( (!\G7|Mux28~0_combout\ & (\G4|Mux0~2_combout\ & ((\G7|Reg[1][15]~combout\)))) # (\G7|Mux28~0_combout\ & (((\G4|Mux0~2_combout\ & \G7|Reg[1][15]~combout\)) # (\G18|SAIDA\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux28~0_combout\,
	datab => \G4|ALT_INV_Mux0~2_combout\,
	datac => \G18|ALT_INV_SAIDA\(15),
	datad => \G7|ALT_INV_Reg[1][15]~combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Mux16~0_combout\);

-- Location: LABCELL_X83_Y32_N3
\G17|ram~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~271_combout\ = ( \G7|Mux16~0_combout\ & ( (\G17|ram~271_combout\) # (\rtl~0_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (!\rtl~0_combout\ & \G17|ram~271_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~0_combout\,
	datad => \G17|ALT_INV_ram~271_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~271_combout\);

-- Location: LABCELL_X83_Y32_N39
\G18|SAIDA~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~55_combout\ = ( \G17|ram~271_combout\ & ( \G18|SAIDA~0_combout\ & ( (\G16|Mux11~2_combout\ & (!\G16|Mux13~4_combout\ & (!\G16|Mux14~2_combout\ & !\G16|Mux15~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux11~2_combout\,
	datab => \G16|ALT_INV_Mux13~4_combout\,
	datac => \G16|ALT_INV_Mux14~2_combout\,
	datad => \G16|ALT_INV_Mux15~4_combout\,
	datae => \G17|ALT_INV_ram~271_combout\,
	dataf => \G18|ALT_INV_SAIDA~0_combout\,
	combout => \G18|SAIDA~55_combout\);

-- Location: MLABCELL_X78_Y33_N39
\G17|ram~255\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~255_combout\ = ( \rtl~6_combout\ & ( \G7|Mux16~0_combout\ ) ) # ( !\rtl~6_combout\ & ( \G7|Mux16~0_combout\ & ( \G17|ram~255_combout\ ) ) ) # ( !\rtl~6_combout\ & ( !\G7|Mux16~0_combout\ & ( \G17|ram~255_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~255_combout\,
	datae => \ALT_INV_rtl~6_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~255_combout\);

-- Location: LABCELL_X79_Y33_N18
\G17|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~159_combout\ = ( \G7|Mux16~0_combout\ & ( (\rtl~13_combout\) # (\G17|ram~159_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (\G17|ram~159_combout\ & !\rtl~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~159_combout\,
	datad => \ALT_INV_rtl~13_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~159_combout\);

-- Location: MLABCELL_X78_Y33_N30
\G17|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~175_combout\ = ( \rtl~16_combout\ & ( \G7|Mux16~0_combout\ ) ) # ( !\rtl~16_combout\ & ( \G7|Mux16~0_combout\ & ( \G17|ram~175_combout\ ) ) ) # ( !\rtl~16_combout\ & ( !\G7|Mux16~0_combout\ & ( \G17|ram~175_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~175_combout\,
	datae => \ALT_INV_rtl~16_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~175_combout\);

-- Location: MLABCELL_X78_Y33_N3
\G17|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~191_combout\ = ( \G17|ram~191_combout\ & ( \G7|Mux16~0_combout\ ) ) # ( !\G17|ram~191_combout\ & ( \G7|Mux16~0_combout\ & ( \rtl~14_combout\ ) ) ) # ( \G17|ram~191_combout\ & ( !\G7|Mux16~0_combout\ & ( !\rtl~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~14_combout\,
	datae => \G17|ALT_INV_ram~191_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~191_combout\);

-- Location: LABCELL_X79_Y33_N15
\G17|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~143_combout\ = ( \G7|Mux16~0_combout\ & ( (\G17|ram~143_combout\) # (\rtl~15_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (!\rtl~15_combout\ & \G17|ram~143_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~15_combout\,
	datac => \G17|ALT_INV_ram~143_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~143_combout\);

-- Location: LABCELL_X79_Y33_N54
\G17|ram~525\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~525_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux15~2_combout\ & (((\G17|ram~143_combout\ & (!\G16|Mux13~0_combout\))))) # (\G16|Mux15~2_combout\ & ((((\G16|Mux13~0_combout\))) # (\G17|ram~159_combout\))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- ((!\G16|Mux15~2_combout\ & (\G17|ram~175_combout\ & (!\G16|Mux13~0_combout\))) # (\G16|Mux15~2_combout\ & (((\G17|ram~191_combout\) # (\G16|Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~159_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~175_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~191_combout\,
	datag => \G17|ALT_INV_ram~143_combout\,
	combout => \G17|ram~525_combout\);

-- Location: MLABCELL_X78_Y33_N57
\G17|ram~239\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~239_combout\ = ( \G17|ram~239_combout\ & ( \G7|Mux16~0_combout\ ) ) # ( !\G17|ram~239_combout\ & ( \G7|Mux16~0_combout\ & ( \rtl~8_combout\ ) ) ) # ( \G17|ram~239_combout\ & ( !\G7|Mux16~0_combout\ & ( !\rtl~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~8_combout\,
	datae => \G17|ALT_INV_ram~239_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~239_combout\);

-- Location: MLABCELL_X78_Y33_N42
\G17|ram~223\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~223_combout\ = ( \rtl~5_combout\ & ( \G7|Mux16~0_combout\ ) ) # ( !\rtl~5_combout\ & ( \G7|Mux16~0_combout\ & ( \G17|ram~223_combout\ ) ) ) # ( !\rtl~5_combout\ & ( !\G7|Mux16~0_combout\ & ( \G17|ram~223_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G17|ALT_INV_ram~223_combout\,
	datae => \ALT_INV_rtl~5_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~223_combout\);

-- Location: MLABCELL_X82_Y30_N18
\G17|ram~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~207_combout\ = ( \rtl~7_combout\ & ( \G7|Mux16~0_combout\ ) ) # ( !\rtl~7_combout\ & ( \G17|ram~207_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~207_combout\,
	datad => \G7|ALT_INV_Mux16~0_combout\,
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \G17|ram~207_combout\);

-- Location: LABCELL_X79_Y33_N30
\G17|ram~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~397_combout\ = ( !\G16|Mux14~0_combout\ & ( ((!\G17|ram~525_combout\ & (\G17|ram~207_combout\ & (\G16|Mux13~0_combout\))) # (\G17|ram~525_combout\ & (((!\G16|Mux13~0_combout\) # (\G17|ram~223_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~525_combout\ & (((\G17|ram~239_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~525_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~255_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~255_combout\,
	datab => \G17|ALT_INV_ram~525_combout\,
	datac => \G17|ALT_INV_ram~239_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~223_combout\,
	datag => \G17|ALT_INV_ram~207_combout\,
	combout => \G17|ram~397_combout\);

-- Location: LABCELL_X79_Y33_N21
\G17|ram~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~47_combout\ = ( \G7|Mux16~0_combout\ & ( (\rtl~12_combout\) # (\G17|ram~47_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (\G17|ram~47_combout\ & !\rtl~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~47_combout\,
	datad => \ALT_INV_rtl~12_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~47_combout\);

-- Location: LABCELL_X79_Y33_N9
\G17|ram~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~63_combout\ = ( \G7|Mux16~0_combout\ & ( (\rtl~10_combout\) # (\G17|ram~63_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (\G17|ram~63_combout\ & !\rtl~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~63_combout\,
	datad => \ALT_INV_rtl~10_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~63_combout\);

-- Location: LABCELL_X79_Y33_N12
\G17|ram~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~31_combout\ = ( \G7|Mux16~0_combout\ & ( (\rtl~9_combout\) # (\G17|ram~31_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (\G17|ram~31_combout\ & !\rtl~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G17|ALT_INV_ram~31_combout\,
	datad => \ALT_INV_rtl~9_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~31_combout\);

-- Location: LABCELL_X79_Y33_N45
\G17|ram~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~15_combout\ = ( \G7|Mux16~0_combout\ & ( (\rtl~11_combout\) # (\G17|ram~15_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (\G17|ram~15_combout\ & !\rtl~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~15_combout\,
	datad => \ALT_INV_rtl~11_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~15_combout\);

-- Location: LABCELL_X79_Y33_N48
\G17|ram~521\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~521_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~15_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~31_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) ) # ( 
-- \G16|Mux14~0_combout\ & ( (!\G16|Mux13~0_combout\ & ((!\G16|Mux15~2_combout\ & (\G17|ram~47_combout\)) # (\G16|Mux15~2_combout\ & (((\G17|ram~63_combout\)))))) # (\G16|Mux13~0_combout\ & (\G16|Mux15~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux13~0_combout\,
	datab => \G16|ALT_INV_Mux15~2_combout\,
	datac => \G17|ALT_INV_ram~47_combout\,
	datad => \G17|ALT_INV_ram~63_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~31_combout\,
	datag => \G17|ALT_INV_ram~15_combout\,
	combout => \G17|ram~521_combout\);

-- Location: MLABCELL_X78_Y33_N48
\G17|ram~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~127_combout\ = ( \G7|Mux16~0_combout\ & ( (\G17|ram~127_combout\) # (\rtl~2_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (!\rtl~2_combout\ & \G17|ram~127_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~2_combout\,
	datac => \G17|ALT_INV_ram~127_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~127_combout\);

-- Location: MLABCELL_X78_Y33_N24
\G17|ram~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~111_combout\ = ( \rtl~4_combout\ & ( \G7|Mux16~0_combout\ ) ) # ( !\rtl~4_combout\ & ( \G7|Mux16~0_combout\ & ( \G17|ram~111_combout\ ) ) ) # ( !\rtl~4_combout\ & ( !\G7|Mux16~0_combout\ & ( \G17|ram~111_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G17|ALT_INV_ram~111_combout\,
	datae => \ALT_INV_rtl~4_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~111_combout\);

-- Location: LABCELL_X79_Y33_N0
\G17|ram~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~95_combout\ = ( \G7|Mux16~0_combout\ & ( (\G17|ram~95_combout\) # (\rtl~1_combout\) ) ) # ( !\G7|Mux16~0_combout\ & ( (!\rtl~1_combout\ & \G17|ram~95_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~1_combout\,
	datad => \G17|ALT_INV_ram~95_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~95_combout\);

-- Location: MLABCELL_X78_Y33_N21
\G17|ram~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~79_combout\ = ( \G17|ram~79_combout\ & ( \G7|Mux16~0_combout\ ) ) # ( !\G17|ram~79_combout\ & ( \G7|Mux16~0_combout\ & ( \rtl~3_combout\ ) ) ) # ( \G17|ram~79_combout\ & ( !\G7|Mux16~0_combout\ & ( !\rtl~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~3_combout\,
	datae => \G17|ALT_INV_ram~79_combout\,
	dataf => \G7|ALT_INV_Mux16~0_combout\,
	combout => \G17|ram~79_combout\);

-- Location: LABCELL_X79_Y33_N36
\G17|ram~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \G17|ram~393_combout\ = ( !\G16|Mux14~0_combout\ & ( (!\G17|ram~521_combout\ & (((\G17|ram~79_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~521_combout\ & ((((!\G16|Mux13~0_combout\) # (\G17|ram~95_combout\))))) ) ) # ( \G16|Mux14~0_combout\ & ( 
-- (!\G17|ram~521_combout\ & (((\G17|ram~111_combout\ & (\G16|Mux13~0_combout\))))) # (\G17|ram~521_combout\ & ((((!\G16|Mux13~0_combout\))) # (\G17|ram~127_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001010010101010001101101010101010111110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G17|ALT_INV_ram~521_combout\,
	datab => \G17|ALT_INV_ram~127_combout\,
	datac => \G17|ALT_INV_ram~111_combout\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	datae => \G16|ALT_INV_Mux14~0_combout\,
	dataf => \G17|ALT_INV_ram~95_combout\,
	datag => \G17|ALT_INV_ram~79_combout\,
	combout => \G17|ram~393_combout\);

-- Location: LABCELL_X79_Y33_N24
\G18|SAIDA~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA~58_combout\ = ( \G17|ram~397_combout\ & ( \G17|ram~393_combout\ & ( (((\G18|SAIDA~1_combout\) # (\G18|SAIDA~2_combout\)) # (\G18|SAIDA~55_combout\)) # (\G18|SAIDA~57_combout\) ) ) ) # ( !\G17|ram~397_combout\ & ( \G17|ram~393_combout\ & ( 
-- ((\G18|SAIDA~1_combout\) # (\G18|SAIDA~55_combout\)) # (\G18|SAIDA~57_combout\) ) ) ) # ( \G17|ram~397_combout\ & ( !\G17|ram~393_combout\ & ( ((\G18|SAIDA~2_combout\) # (\G18|SAIDA~55_combout\)) # (\G18|SAIDA~57_combout\) ) ) ) # ( !\G17|ram~397_combout\ 
-- & ( !\G17|ram~393_combout\ & ( (\G18|SAIDA~55_combout\) # (\G18|SAIDA~57_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011111110111111101110111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA~57_combout\,
	datab => \G18|ALT_INV_SAIDA~55_combout\,
	datac => \G18|ALT_INV_SAIDA~2_combout\,
	datad => \G18|ALT_INV_SAIDA~1_combout\,
	datae => \G17|ALT_INV_ram~397_combout\,
	dataf => \G17|ALT_INV_ram~393_combout\,
	combout => \G18|SAIDA~58_combout\);

-- Location: LABCELL_X79_Y33_N6
\G18|SAIDA[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA\(15) = ( \G18|SAIDA\(15) & ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA~58_combout\) ) ) # ( !\G18|SAIDA\(15) & ( (\G18|SAIDA~58_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA~58_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G18|ALT_INV_SAIDA\(15),
	combout => \G18|SAIDA\(15));

-- Location: MLABCELL_X87_Y31_N48
\G16|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add1~61_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G5|escrevereg~combout\ & (\G7|Mux15~1_combout\ & \G18|SAIDA\(15)))) ) + ( !\G14|SAIDA\(15) ) + ( \G16|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G5|ALT_INV_escrevereg~combout\,
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G18|ALT_INV_SAIDA\(15),
	dataf => \G14|ALT_INV_SAIDA\(15),
	cin => \G16|Add1~58\,
	sumout => \G16|Add1~61_sumout\);

-- Location: MLABCELL_X87_Y32_N54
\G16|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~2_combout\ = ( !\G16|Add1~37_sumout\ & ( (!\G16|Add1~25_sumout\ & (!\G16|Add1~29_sumout\ & (!\G16|Add1~33_sumout\ & !\G16|Add1~41_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~25_sumout\,
	datab => \G16|ALT_INV_Add1~29_sumout\,
	datac => \G16|ALT_INV_Add1~33_sumout\,
	datad => \G16|ALT_INV_Add1~41_sumout\,
	dataf => \G16|ALT_INV_Add1~37_sumout\,
	combout => \G16|Equal1~2_combout\);

-- Location: MLABCELL_X87_Y32_N27
\G16|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~0_combout\ = ( !\G16|Add1~1_sumout\ & ( !\G16|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G16|ALT_INV_Add1~1_sumout\,
	dataf => \G16|ALT_INV_Add1~5_sumout\,
	combout => \G16|Equal1~0_combout\);

-- Location: MLABCELL_X87_Y32_N12
\G16|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~1_combout\ = ( \G16|Equal1~0_combout\ & ( !\G16|Add1~45_sumout\ & ( (!\G16|Add1~13_sumout\ & (!\G16|Add1~9_sumout\ & (!\G16|Add1~17_sumout\ & !\G16|Add1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~13_sumout\,
	datab => \G16|ALT_INV_Add1~9_sumout\,
	datac => \G16|ALT_INV_Add1~17_sumout\,
	datad => \G16|ALT_INV_Add1~21_sumout\,
	datae => \G16|ALT_INV_Equal1~0_combout\,
	dataf => \G16|ALT_INV_Add1~45_sumout\,
	combout => \G16|Equal1~1_combout\);

-- Location: MLABCELL_X87_Y32_N42
\G16|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Equal1~3_combout\ = ( !\G16|Add1~57_sumout\ & ( \G16|Equal1~1_combout\ & ( (!\G16|Add1~61_sumout\ & (!\G16|Add1~53_sumout\ & (\G16|Equal1~2_combout\ & !\G16|Add1~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~61_sumout\,
	datab => \G16|ALT_INV_Add1~53_sumout\,
	datac => \G16|ALT_INV_Equal1~2_combout\,
	datad => \G16|ALT_INV_Add1~49_sumout\,
	datae => \G16|ALT_INV_Add1~57_sumout\,
	dataf => \G16|ALT_INV_Equal1~1_combout\,
	combout => \G16|Equal1~3_combout\);

-- Location: FF_X88_Y32_N50
\G10|SAIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G10|Add0~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(9));

-- Location: LABCELL_X88_Y32_N24
\G12|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~9_combout\ = ( \G2|saida\(9) & ( \G10|SAIDA\(9) ) ) # ( !\G2|saida\(9) & ( \G10|SAIDA\(9) & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & ((\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (\G16|ZeroULA~1_combout\)))) ) ) ) # ( 
-- \G2|saida\(9) & ( !\G10|SAIDA\(9) & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (!\G16|ZeroULA~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000001010001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~0_combout\,
	datae => \G2|ALT_INV_saida\(9),
	dataf => \G10|ALT_INV_SAIDA\(9),
	combout => \G12|SAIDA~9_combout\);

-- Location: LABCELL_X88_Y32_N18
\G12|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(9) = ( \G12|SAIDA~9_combout\ & ( (\G12|SAIDA\(9)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~9_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(9),
	dataf => \G12|ALT_INV_SAIDA~9_combout\,
	combout => \G12|SAIDA\(9));

-- Location: LABCELL_X85_Y35_N42
\G13|SAIDA~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~9_combout\ = (\G12|SAIDA\(9) & !\G5|origalu\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_SAIDA\(9),
	datad => \G5|ALT_INV_origalu\(2),
	combout => \G13|SAIDA~9_combout\);

-- Location: LABCELL_X85_Y35_N54
\G13|SAIDA[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(9) = ( \G13|SAIDA\(9) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~9_combout\) ) ) # ( !\G13|SAIDA\(9) & ( (\G13|SAIDA~9_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA~9_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G13|ALT_INV_SAIDA\(9),
	combout => \G13|SAIDA\(9));

-- Location: LABCELL_X88_Y35_N54
\G1|pout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(9) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(9) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(9),
	datad => \G1|ALT_INV_pout\(9),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(9));

-- Location: LABCELL_X88_Y35_N0
\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = ( !\G1|pout\(4) & ( !\G1|pout\(6) & ( (!\G1|pout\(9) & (!\G1|pout\(7) & (!\G1|pout\(8) & !\G1|pout\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(9),
	datab => \G1|ALT_INV_pout\(7),
	datac => \G1|ALT_INV_pout\(8),
	datad => \G1|ALT_INV_pout\(5),
	datae => \G1|ALT_INV_pout\(4),
	dataf => \G1|ALT_INV_pout\(6),
	combout => \G4|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y35_N54
\G4|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux5~1_combout\ = ( \G4|Mux0~1_combout\ & ( \G1|pout\(1) & ( (\G4|Mux0~0_combout\ & (\G1|pout\(0) & (!\G1|pout\(3) & !\G1|pout\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~0_combout\,
	datab => \G1|ALT_INV_pout\(0),
	datac => \G1|ALT_INV_pout\(3),
	datad => \G1|ALT_INV_pout\(2),
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G1|ALT_INV_pout\(1),
	combout => \G4|Mux5~1_combout\);

-- Location: LABCELL_X85_Y32_N39
\G4|rs[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[1]~1_combout\ = ( \Clock_Sistema~input_o\ & ( \G4|Mux5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|rs[1]~1_combout\);

-- Location: MLABCELL_X87_Y33_N45
\G5|origalu[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu[2]~1_combout\ = ( \G4|Mux6~1_combout\ & ( !\G4|rs[1]~1_combout\ ) ) # ( !\G4|Mux6~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_rs[1]~1_combout\,
	dataf => \G4|ALT_INV_Mux6~1_combout\,
	combout => \G5|origalu[2]~1_combout\);

-- Location: MLABCELL_X87_Y33_N33
\G5|origalu[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|origalu\(2) = ( \G5|origalu\(2) & ( (!\G5|origalu[2]~1_combout\) # (!\G5|regdest~0_combout\) ) ) # ( !\G5|origalu\(2) & ( (!\G5|origalu[2]~1_combout\ & \G5|regdest~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_origalu[2]~1_combout\,
	datad => \G5|ALT_INV_regdest~0_combout\,
	dataf => \G5|ALT_INV_origalu\(2),
	combout => \G5|origalu\(2));

-- Location: FF_X87_Y35_N17
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

-- Location: FF_X88_Y32_N2
\G10|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	asdata => \G2|saida\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|SAIDA\(0));

-- Location: LABCELL_X88_Y32_N0
\G12|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA~0_combout\ = ( \G10|SAIDA\(0) & ( \G2|saida[0]~DUPLICATE_q\ ) ) # ( !\G10|SAIDA\(0) & ( \G2|saida[0]~DUPLICATE_q\ & ( (!\G5|origalu\(2)) # ((!\G16|Equal1~3_combout\ & ((!\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & 
-- (!\G16|ZeroULA~1_combout\))) ) ) ) # ( \G10|SAIDA\(0) & ( !\G2|saida[0]~DUPLICATE_q\ & ( (\G5|origalu\(2) & ((!\G16|Equal1~3_combout\ & ((\G16|ZeroULA~0_combout\))) # (\G16|Equal1~3_combout\ & (\G16|ZeroULA~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100010111111110101110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G5|ALT_INV_origalu\(2),
	datab => \G16|ALT_INV_Equal1~3_combout\,
	datac => \G16|ALT_INV_ZeroULA~1_combout\,
	datad => \G16|ALT_INV_ZeroULA~0_combout\,
	datae => \G10|ALT_INV_SAIDA\(0),
	dataf => \G2|ALT_INV_saida[0]~DUPLICATE_q\,
	combout => \G12|SAIDA~0_combout\);

-- Location: LABCELL_X88_Y32_N48
\G12|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|SAIDA\(0) = ( \G12|SAIDA~0_combout\ & ( (\G12|SAIDA\(0)) # (\Clock_Sistema~input_o\) ) ) # ( !\G12|SAIDA~0_combout\ & ( (!\Clock_Sistema~input_o\ & \G12|SAIDA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G12|ALT_INV_SAIDA\(0),
	dataf => \G12|ALT_INV_SAIDA~0_combout\,
	combout => \G12|SAIDA\(0));

-- Location: LABCELL_X85_Y35_N27
\G13|SAIDA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA~0_combout\ = (!\G5|origalu\(2) & \G12|SAIDA\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G5|ALT_INV_origalu\(2),
	datac => \G12|ALT_INV_SAIDA\(0),
	combout => \G13|SAIDA~0_combout\);

-- Location: LABCELL_X85_Y35_N36
\G13|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|SAIDA\(0) = ( \G13|SAIDA\(0) & ( (!\Clock_Sistema~input_o\) # (\G13|SAIDA~0_combout\) ) ) # ( !\G13|SAIDA\(0) & ( (\G13|SAIDA~0_combout\ & \Clock_Sistema~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_SAIDA~0_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G13|ALT_INV_SAIDA\(0),
	combout => \G13|SAIDA\(0));

-- Location: MLABCELL_X87_Y35_N12
\G1|pout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|pout\(0) = ( \Clock_Sistema~input_o\ & ( \G13|SAIDA\(0) ) ) # ( !\Clock_Sistema~input_o\ & ( \G1|pout\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G13|ALT_INV_SAIDA\(0),
	datad => \G1|ALT_INV_pout\(0),
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G1|pout\(0));

-- Location: MLABCELL_X87_Y35_N15
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

-- Location: FF_X87_Y35_N16
\G2|saida[0]~DUPLICATE\ : dffeas
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
	q => \G2|saida[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y30_N36
\G7|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux10~0_combout\ = ( \G18|SAIDA\(5) & ( (\G7|Mux15~1_combout\ & \G7|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datab => \G7|ALT_INV_Mux12~0_combout\,
	dataf => \G18|ALT_INV_SAIDA\(5),
	combout => \G7|Mux10~0_combout\);

-- Location: LABCELL_X85_Y32_N42
\G7|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux9~0_combout\ = (\G18|SAIDA\(6) & (\G7|Mux12~0_combout\ & \G7|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G18|ALT_INV_SAIDA\(6),
	datac => \G7|ALT_INV_Mux12~0_combout\,
	datad => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux9~0_combout\);

-- Location: LABCELL_X85_Y34_N3
\G7|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux8~0_combout\ = ( \G7|Mux15~1_combout\ & ( (\G18|SAIDA\(7) & \G7|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(7),
	datac => \G7|ALT_INV_Mux12~0_combout\,
	dataf => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux8~0_combout\);

-- Location: MLABCELL_X84_Y30_N18
\G7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux7~0_combout\ = ( \G7|Mux15~1_combout\ & ( (\G18|SAIDA\(8) & \G7|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(8),
	datab => \G7|ALT_INV_Mux12~0_combout\,
	dataf => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux7~0_combout\);

-- Location: LABCELL_X85_Y34_N24
\G7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux6~0_combout\ = ( \G7|Mux15~1_combout\ & ( (\G7|Mux12~0_combout\ & \G18|SAIDA\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux12~0_combout\,
	datac => \G18|ALT_INV_SAIDA\(9),
	dataf => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux6~0_combout\);

-- Location: LABCELL_X85_Y32_N24
\G7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux5~0_combout\ = (\G18|SAIDA\(10) & (\G7|Mux15~1_combout\ & \G7|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(10),
	datac => \G7|ALT_INV_Mux15~1_combout\,
	datad => \G7|ALT_INV_Mux12~0_combout\,
	combout => \G7|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y32_N9
\G7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux4~0_combout\ = ( \G7|Mux15~1_combout\ & ( (\G18|SAIDA\(11) & \G7|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G18|ALT_INV_SAIDA\(11),
	datac => \G7|ALT_INV_Mux12~0_combout\,
	dataf => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y30_N39
\G7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux3~0_combout\ = ( \G7|Mux15~1_combout\ & ( (\G7|Mux12~0_combout\ & \G18|SAIDA\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G7|ALT_INV_Mux12~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(12),
	dataf => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux3~0_combout\);

-- Location: LABCELL_X85_Y32_N36
\G7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux2~0_combout\ = (\G7|Mux12~0_combout\ & (\G18|SAIDA\(13) & \G7|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux12~0_combout\,
	datab => \G18|ALT_INV_SAIDA\(13),
	datac => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y32_N57
\G7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux1~0_combout\ = ( \G7|Mux15~1_combout\ & ( (\G7|Mux12~0_combout\ & \G18|SAIDA\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G7|ALT_INV_Mux12~0_combout\,
	datad => \G18|ALT_INV_SAIDA\(14),
	dataf => \G7|ALT_INV_Mux15~1_combout\,
	combout => \G7|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y32_N39
\G7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux0~0_combout\ = ( \G18|SAIDA\(15) & ( \G7|Mux12~0_combout\ & ( \G7|Mux15~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux15~1_combout\,
	datae => \G18|ALT_INV_SAIDA\(15),
	dataf => \G7|ALT_INV_Mux12~0_combout\,
	combout => \G7|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y30_N15
\G4|rs[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[0]~0_combout\ = ( \G4|Mux5~0_combout\ & ( \Clock_Sistema~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datae => \G4|ALT_INV_Mux5~0_combout\,
	combout => \G4|rs[0]~0_combout\);

-- Location: LABCELL_X88_Y33_N42
\G4|rs[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[2]~2_combout\ = ( \G4|Mux0~0_combout\ & ( (\Clock_Sistema~input_o\ & (\G4|Mux3~0_combout\ & (!\G1|pout\(3) & \G4|Mux0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux3~0_combout\,
	datac => \G1|ALT_INV_pout\(3),
	datad => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux0~0_combout\,
	combout => \G4|rs[2]~2_combout\);

-- Location: MLABCELL_X87_Y30_N57
\G4|rt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rt[0]~0_combout\ = ( \Clock_Sistema~input_o\ & ( \G4|Mux0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Mux0~2_combout\,
	dataf => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G4|rt[0]~0_combout\);

-- Location: MLABCELL_X84_Y30_N0
\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = ( \G14|SAIDA\(5) & ( \G16|Add1~21_sumout\ & ( ((\G16|Mux15~0_combout\ & \G16|Add0~21_sumout\)) # (\G16|Mux15~1_combout\) ) ) ) # ( !\G14|SAIDA\(5) & ( \G16|Add1~21_sumout\ & ( (!\G16|Mux15~1_combout\ & (((\G16|Mux15~0_combout\ & 
-- \G16|Add0~21_sumout\)))) # (\G16|Mux15~1_combout\ & (((\G16|Mux15~0_combout\)) # (\G7|Mux10~0_combout\))) ) ) ) # ( \G14|SAIDA\(5) & ( !\G16|Add1~21_sumout\ & ( (!\G16|Mux15~1_combout\ & (\G16|Mux15~0_combout\ & \G16|Add0~21_sumout\)) # 
-- (\G16|Mux15~1_combout\ & (!\G16|Mux15~0_combout\)) ) ) ) # ( !\G14|SAIDA\(5) & ( !\G16|Add1~21_sumout\ & ( (!\G16|Mux15~1_combout\ & (((\G16|Mux15~0_combout\ & \G16|Add0~21_sumout\)))) # (\G16|Mux15~1_combout\ & (\G7|Mux10~0_combout\ & 
-- (!\G16|Mux15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100001100000011110000010011000111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux10~0_combout\,
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Add0~21_sumout\,
	datae => \G14|ALT_INV_SAIDA\(5),
	dataf => \G16|ALT_INV_Add1~21_sumout\,
	combout => \G16|Mux10~0_combout\);

-- Location: LABCELL_X85_Y32_N54
\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = ( \G7|Mux9~0_combout\ & ( \G16|Mux15~0_combout\ & ( (!\G16|Mux15~1_combout\ & ((\G16|Add0~25_sumout\))) # (\G16|Mux15~1_combout\ & (\G16|Add1~25_sumout\)) ) ) ) # ( !\G7|Mux9~0_combout\ & ( \G16|Mux15~0_combout\ & ( 
-- (!\G16|Mux15~1_combout\ & ((\G16|Add0~25_sumout\))) # (\G16|Mux15~1_combout\ & (\G16|Add1~25_sumout\)) ) ) ) # ( \G7|Mux9~0_combout\ & ( !\G16|Mux15~0_combout\ & ( \G16|Mux15~1_combout\ ) ) ) # ( !\G7|Mux9~0_combout\ & ( !\G16|Mux15~0_combout\ & ( 
-- (\G14|SAIDA\(6) & \G16|Mux15~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~25_sumout\,
	datab => \G14|ALT_INV_SAIDA\(6),
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G16|ALT_INV_Add0~25_sumout\,
	datae => \G7|ALT_INV_Mux9~0_combout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G16|Mux9~0_combout\);

-- Location: LABCELL_X85_Y34_N45
\G16|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~0_combout\ = ( \G7|Mux8~0_combout\ & ( \G16|Add0~29_sumout\ & ( (!\G16|Mux15~0_combout\ & ((\G16|Mux15~1_combout\))) # (\G16|Mux15~0_combout\ & ((!\G16|Mux15~1_combout\) # (\G16|Add1~29_sumout\))) ) ) ) # ( !\G7|Mux8~0_combout\ & ( 
-- \G16|Add0~29_sumout\ & ( (!\G16|Mux15~0_combout\ & (((\G16|Mux15~1_combout\ & \G14|SAIDA\(7))))) # (\G16|Mux15~0_combout\ & (((!\G16|Mux15~1_combout\)) # (\G16|Add1~29_sumout\))) ) ) ) # ( \G7|Mux8~0_combout\ & ( !\G16|Add0~29_sumout\ & ( 
-- (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\) # (\G16|Add1~29_sumout\))) ) ) ) # ( !\G7|Mux8~0_combout\ & ( !\G16|Add0~29_sumout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((\G14|SAIDA\(7)))) # (\G16|Mux15~0_combout\ & 
-- (\G16|Add1~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000010110000101101010001010110110101101101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Add1~29_sumout\,
	datac => \G16|ALT_INV_Mux15~1_combout\,
	datad => \G14|ALT_INV_SAIDA\(7),
	datae => \G7|ALT_INV_Mux8~0_combout\,
	dataf => \G16|ALT_INV_Add0~29_sumout\,
	combout => \G16|Mux8~0_combout\);

-- Location: MLABCELL_X84_Y30_N30
\G16|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~0_combout\ = ( \G16|Add0~33_sumout\ & ( \G16|Add1~33_sumout\ & ( ((\G16|Mux15~1_combout\ & ((\G7|Mux7~0_combout\) # (\G14|SAIDA\(8))))) # (\G16|Mux15~0_combout\) ) ) ) # ( !\G16|Add0~33_sumout\ & ( \G16|Add1~33_sumout\ & ( (\G16|Mux15~1_combout\ 
-- & (((\G7|Mux7~0_combout\) # (\G16|Mux15~0_combout\)) # (\G14|SAIDA\(8)))) ) ) ) # ( \G16|Add0~33_sumout\ & ( !\G16|Add1~33_sumout\ & ( (!\G16|Mux15~1_combout\ & (((\G16|Mux15~0_combout\)))) # (\G16|Mux15~1_combout\ & (!\G16|Mux15~0_combout\ & 
-- ((\G7|Mux7~0_combout\) # (\G14|SAIDA\(8))))) ) ) ) # ( !\G16|Add0~33_sumout\ & ( !\G16|Add1~33_sumout\ & ( (\G16|Mux15~1_combout\ & (!\G16|Mux15~0_combout\ & ((\G7|Mux7~0_combout\) # (\G14|SAIDA\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000111000011110000010011001100110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G14|ALT_INV_SAIDA\(8),
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G7|ALT_INV_Mux7~0_combout\,
	datae => \G16|ALT_INV_Add0~33_sumout\,
	dataf => \G16|ALT_INV_Add1~33_sumout\,
	combout => \G16|Mux7~0_combout\);

-- Location: LABCELL_X85_Y34_N30
\G16|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~0_combout\ = ( \G16|Add1~37_sumout\ & ( \G16|Add0~37_sumout\ & ( ((\G16|Mux15~1_combout\ & ((\G14|SAIDA\(9)) # (\G7|Mux6~0_combout\)))) # (\G16|Mux15~0_combout\) ) ) ) # ( !\G16|Add1~37_sumout\ & ( \G16|Add0~37_sumout\ & ( 
-- (!\G16|Mux15~0_combout\ & (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(9)) # (\G7|Mux6~0_combout\)))) # (\G16|Mux15~0_combout\ & (((!\G16|Mux15~1_combout\)))) ) ) ) # ( \G16|Add1~37_sumout\ & ( !\G16|Add0~37_sumout\ & ( (\G16|Mux15~1_combout\ & 
-- (((\G16|Mux15~0_combout\) # (\G14|SAIDA\(9))) # (\G7|Mux6~0_combout\))) ) ) ) # ( !\G16|Add1~37_sumout\ & ( !\G16|Add0~37_sumout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(9)) # (\G7|Mux6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111111100001111011100000000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux6~0_combout\,
	datab => \G14|ALT_INV_SAIDA\(9),
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Mux15~1_combout\,
	datae => \G16|ALT_INV_Add1~37_sumout\,
	dataf => \G16|ALT_INV_Add0~37_sumout\,
	combout => \G16|Mux6~0_combout\);

-- Location: LABCELL_X79_Y32_N24
\G16|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~0_combout\ = ( \G16|Add0~41_sumout\ & ( \G16|Mux15~0_combout\ & ( (!\G16|Mux15~1_combout\) # (\G16|Add1~41_sumout\) ) ) ) # ( !\G16|Add0~41_sumout\ & ( \G16|Mux15~0_combout\ & ( (\G16|Mux15~1_combout\ & \G16|Add1~41_sumout\) ) ) ) # ( 
-- \G16|Add0~41_sumout\ & ( !\G16|Mux15~0_combout\ & ( (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(10)) # (\G7|Mux5~0_combout\))) ) ) ) # ( !\G16|Add0~41_sumout\ & ( !\G16|Mux15~0_combout\ & ( (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(10)) # (\G7|Mux5~0_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux5~0_combout\,
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G16|ALT_INV_Add1~41_sumout\,
	datad => \G14|ALT_INV_SAIDA\(10),
	datae => \G16|ALT_INV_Add0~41_sumout\,
	dataf => \G16|ALT_INV_Mux15~0_combout\,
	combout => \G16|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y32_N48
\G16|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~0_combout\ = ( \G16|Mux15~1_combout\ & ( \G7|Mux4~0_combout\ & ( (!\G16|Mux15~0_combout\) # (\G16|Add1~45_sumout\) ) ) ) # ( !\G16|Mux15~1_combout\ & ( \G7|Mux4~0_combout\ & ( (\G16|Mux15~0_combout\ & \G16|Add0~45_sumout\) ) ) ) # ( 
-- \G16|Mux15~1_combout\ & ( !\G7|Mux4~0_combout\ & ( (!\G16|Mux15~0_combout\ & ((\G14|SAIDA\(11)))) # (\G16|Mux15~0_combout\ & (\G16|Add1~45_sumout\)) ) ) ) # ( !\G16|Mux15~1_combout\ & ( !\G7|Mux4~0_combout\ & ( (\G16|Mux15~0_combout\ & 
-- \G16|Add0~45_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010100000000000011111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add1~45_sumout\,
	datab => \G14|ALT_INV_SAIDA\(11),
	datac => \G16|ALT_INV_Mux15~0_combout\,
	datad => \G16|ALT_INV_Add0~45_sumout\,
	datae => \G16|ALT_INV_Mux15~1_combout\,
	dataf => \G7|ALT_INV_Mux4~0_combout\,
	combout => \G16|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y30_N15
\G16|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~0_combout\ = ( \G16|Add0~49_sumout\ & ( \G7|Mux3~0_combout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux15~1_combout\)) # (\G16|Mux15~0_combout\ & ((!\G16|Mux15~1_combout\) # (\G16|Add1~49_sumout\))) ) ) ) # ( !\G16|Add0~49_sumout\ & ( 
-- \G7|Mux3~0_combout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\) # (\G16|Add1~49_sumout\))) ) ) ) # ( \G16|Add0~49_sumout\ & ( !\G7|Mux3~0_combout\ & ( (!\G16|Mux15~0_combout\ & (\G16|Mux15~1_combout\ & ((\G14|SAIDA\(12))))) # 
-- (\G16|Mux15~0_combout\ & ((!\G16|Mux15~1_combout\) # ((\G16|Add1~49_sumout\)))) ) ) ) # ( !\G16|Add0~49_sumout\ & ( !\G7|Mux3~0_combout\ & ( (\G16|Mux15~1_combout\ & ((!\G16|Mux15~0_combout\ & ((\G14|SAIDA\(12)))) # (\G16|Mux15~0_combout\ & 
-- (\G16|Add1~49_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011100100011001000110110011101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G16|ALT_INV_Mux15~1_combout\,
	datac => \G16|ALT_INV_Add1~49_sumout\,
	datad => \G14|ALT_INV_SAIDA\(12),
	datae => \G16|ALT_INV_Add0~49_sumout\,
	dataf => \G7|ALT_INV_Mux3~0_combout\,
	combout => \G16|Mux3~0_combout\);

-- Location: LABCELL_X85_Y32_N30
\G16|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~0_combout\ = ( \G16|Add1~53_sumout\ & ( \G16|Add0~53_sumout\ & ( ((\G16|Mux15~1_combout\ & ((\G7|Mux2~0_combout\) # (\G14|SAIDA\(13))))) # (\G16|Mux15~0_combout\) ) ) ) # ( !\G16|Add1~53_sumout\ & ( \G16|Add0~53_sumout\ & ( 
-- (!\G16|Mux15~1_combout\ & (((\G16|Mux15~0_combout\)))) # (\G16|Mux15~1_combout\ & (!\G16|Mux15~0_combout\ & ((\G7|Mux2~0_combout\) # (\G14|SAIDA\(13))))) ) ) ) # ( \G16|Add1~53_sumout\ & ( !\G16|Add0~53_sumout\ & ( (\G16|Mux15~1_combout\ & 
-- (((\G16|Mux15~0_combout\) # (\G7|Mux2~0_combout\)) # (\G14|SAIDA\(13)))) ) ) ) # ( !\G16|Add1~53_sumout\ & ( !\G16|Add0~53_sumout\ & ( (\G16|Mux15~1_combout\ & (!\G16|Mux15~0_combout\ & ((\G7|Mux2~0_combout\) # (\G14|SAIDA\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000000101010101010100010101101010100001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~1_combout\,
	datab => \G14|ALT_INV_SAIDA\(13),
	datac => \G7|ALT_INV_Mux2~0_combout\,
	datad => \G16|ALT_INV_Mux15~0_combout\,
	datae => \G16|ALT_INV_Add1~53_sumout\,
	dataf => \G16|ALT_INV_Add0~53_sumout\,
	combout => \G16|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y32_N30
\G16|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux1~0_combout\ = ( \G16|Mux15~1_combout\ & ( \G16|Add0~57_sumout\ & ( (!\G16|Mux15~0_combout\ & (((\G14|SAIDA\(14))) # (\G7|Mux1~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G16|Add1~57_sumout\)))) ) ) ) # ( !\G16|Mux15~1_combout\ & ( 
-- \G16|Add0~57_sumout\ & ( \G16|Mux15~0_combout\ ) ) ) # ( \G16|Mux15~1_combout\ & ( !\G16|Add0~57_sumout\ & ( (!\G16|Mux15~0_combout\ & (((\G14|SAIDA\(14))) # (\G7|Mux1~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G16|Add1~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010100111111101010101010101010010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G7|ALT_INV_Mux1~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(14),
	datad => \G16|ALT_INV_Add1~57_sumout\,
	datae => \G16|ALT_INV_Mux15~1_combout\,
	dataf => \G16|ALT_INV_Add0~57_sumout\,
	combout => \G16|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y32_N18
\G16|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux0~0_combout\ = ( \G16|Mux15~1_combout\ & ( \G16|Add0~61_sumout\ & ( (!\G16|Mux15~0_combout\ & (((\G14|SAIDA\(15))) # (\G7|Mux0~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G16|Add1~61_sumout\)))) ) ) ) # ( !\G16|Mux15~1_combout\ & ( 
-- \G16|Add0~61_sumout\ & ( \G16|Mux15~0_combout\ ) ) ) # ( \G16|Mux15~1_combout\ & ( !\G16|Add0~61_sumout\ & ( (!\G16|Mux15~0_combout\ & (((\G14|SAIDA\(15))) # (\G7|Mux0~0_combout\))) # (\G16|Mux15~0_combout\ & (((\G16|Add1~61_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010100111111101010101010101010010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux15~0_combout\,
	datab => \G7|ALT_INV_Mux0~0_combout\,
	datac => \G14|ALT_INV_SAIDA\(15),
	datad => \G16|ALT_INV_Add1~61_sumout\,
	datae => \G16|ALT_INV_Mux15~1_combout\,
	dataf => \G16|ALT_INV_Add0~61_sumout\,
	combout => \G16|Mux0~0_combout\);

-- Location: LABCELL_X45_Y80_N15
\G1|G0|G0|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G0|state~0_combout\ = ( !\G1|G0|G0|state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G0|G0|ALT_INV_state~q\,
	combout => \G1|G0|G0|state~0_combout\);

-- Location: FF_X45_Y80_N17
\G1|G0|G0|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G0|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G0|state~q\);

-- Location: FF_X45_Y80_N16
\G1|G0|G0|state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G0|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G0|state~DUPLICATE_q\);

-- Location: LABCELL_X45_Y80_N18
\G1|G0|G1|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G1|state~0_combout\ = ( !\G1|G0|G1|state~q\ & ( \G1|G0|G0|state~DUPLICATE_q\ ) ) # ( \G1|G0|G1|state~q\ & ( !\G1|G0|G0|state~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G0|G1|ALT_INV_state~q\,
	dataf => \G1|G0|G0|ALT_INV_state~DUPLICATE_q\,
	combout => \G1|G0|G1|state~0_combout\);

-- Location: FF_X45_Y80_N20
\G1|G0|G1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G1|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G1|state~q\);

-- Location: FF_X45_Y80_N19
\G1|G0|G1|state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G1|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G1|state~DUPLICATE_q\);

-- Location: LABCELL_X45_Y80_N24
\G1|G0|G3|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G0|G3|state~0_combout\ = ( \G1|G0|G3|state~q\ & ( \G1|G0|G0|state~DUPLICATE_q\ & ( !\G1|G0|G1|state~DUPLICATE_q\ ) ) ) # ( !\G1|G0|G3|state~q\ & ( \G1|G0|G0|state~DUPLICATE_q\ & ( \G1|G0|G1|state~DUPLICATE_q\ ) ) ) # ( \G1|G0|G3|state~q\ & ( 
-- !\G1|G0|G0|state~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G0|G1|ALT_INV_state~DUPLICATE_q\,
	datae => \G1|G0|G3|ALT_INV_state~q\,
	dataf => \G1|G0|G0|ALT_INV_state~DUPLICATE_q\,
	combout => \G1|G0|G3|state~0_combout\);

-- Location: FF_X45_Y80_N25
\G1|G0|G3|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~inputCLKENA0_outclk\,
	d => \G1|G0|G3|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G0|G3|state~q\);

-- Location: LABCELL_X37_Y8_N0
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


