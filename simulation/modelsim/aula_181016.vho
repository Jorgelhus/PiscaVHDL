-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/16/2018 17:40:31"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	entrada IS
    PORT (
	sw : IN STD.STANDARD.bit_vector(17 DOWNTO 0);
	estado : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	key3 : IN std_logic;
	pwm1 : IN std_logic;
	ledg : OUT STD.STANDARD.bit_vector(17 DOWNTO 0);
	bit_in : OUT STD.STANDARD.bit
	);
END entrada;

-- Design Ports Information
-- ledg[0]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[8]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[9]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[10]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[11]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[12]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[13]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[14]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[15]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[16]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[17]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_in	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sw[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- estado[2]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- estado[3]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pwm1	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key3	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[11]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[12]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[13]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[14]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[15]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[16]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[17]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF entrada IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_estado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key3 : std_logic;
SIGNAL ww_pwm1 : std_logic;
SIGNAL ww_ledg : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_bit_in : std_logic;
SIGNAL \pwm1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm1~combout\ : std_logic;
SIGNAL \pwm1~clkctrl_outclk\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ent:registro[5]~feeder_combout\ : std_logic;
SIGNAL \key3~combout\ : std_logic;
SIGNAL \ent:registro[5]~0_combout\ : std_logic;
SIGNAL \ent:registro[5]~regout\ : std_logic;
SIGNAL \registro~4_combout\ : std_logic;
SIGNAL \ent:registro[0]~0_combout\ : std_logic;
SIGNAL \ent:registro[4]~regout\ : std_logic;
SIGNAL \registro~3_combout\ : std_logic;
SIGNAL \ent:registro[3]~regout\ : std_logic;
SIGNAL \registro~2_combout\ : std_logic;
SIGNAL \ent:registro[2]~regout\ : std_logic;
SIGNAL \registro~1_combout\ : std_logic;
SIGNAL \ent:registro[1]~regout\ : std_logic;
SIGNAL \registro~0_combout\ : std_logic;
SIGNAL \ent:registro[0]~regout\ : std_logic;
SIGNAL \ent:registro[6]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[6]~regout\ : std_logic;
SIGNAL \ent:registro[7]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[7]~regout\ : std_logic;
SIGNAL \ent:registro[8]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[8]~regout\ : std_logic;
SIGNAL \ent:registro[9]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[9]~regout\ : std_logic;
SIGNAL \ent:registro[10]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[10]~regout\ : std_logic;
SIGNAL \ent:registro[11]~regout\ : std_logic;
SIGNAL \ent:registro[12]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[12]~regout\ : std_logic;
SIGNAL \ent:registro[13]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[13]~regout\ : std_logic;
SIGNAL \ent:registro[14]~regout\ : std_logic;
SIGNAL \ent:registro[15]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[15]~regout\ : std_logic;
SIGNAL \ent:registro[16]~feeder_combout\ : std_logic;
SIGNAL \ent:registro[16]~regout\ : std_logic;
SIGNAL \registro~5_combout\ : std_logic;
SIGNAL \ent:registro[17]~regout\ : std_logic;
SIGNAL \sw~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \estado~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_pwm1~clkctrl_outclk\ : std_logic;

BEGIN

ww_sw <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(sw);
ww_estado <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(estado);
ww_key3 <= key3;
ww_pwm1 <= pwm1;
ledg <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_ledg);
bit_in <= IEEE.STD_LOGIC_1164.TO_BIT(ww_bit_in);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pwm1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pwm1~combout\);
\ALT_INV_pwm1~clkctrl_outclk\ <= NOT \pwm1~clkctrl_outclk\;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\estado[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_estado(0),
	combout => \estado~combout\(0));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(2),
	combout => \sw~combout\(2));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(17),
	combout => \sw~combout\(17));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pwm1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pwm1,
	combout => \pwm1~combout\);

-- Location: CLKCTRL_G3
\pwm1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pwm1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pwm1~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(0),
	combout => \sw~combout\(0));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\estado[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_estado(1),
	combout => \estado~combout\(1));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\estado[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_estado(3),
	combout => \estado~combout\(3));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\estado[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_estado(2),
	combout => \estado~combout\(2));

-- Location: LCCOMB_X64_Y16_N16
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\estado~combout\(0) & (!\estado~combout\(1) & (!\estado~combout\(3) & !\estado~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado~combout\(0),
	datab => \estado~combout\(1),
	datac => \estado~combout\(3),
	datad => \estado~combout\(2),
	combout => \Equal0~0_combout\);

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(1),
	combout => \sw~combout\(1));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(3),
	combout => \sw~combout\(3));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(4),
	combout => \sw~combout\(4));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(5),
	combout => \sw~combout\(5));

-- Location: LCCOMB_X64_Y15_N6
\ent:registro[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[5]~feeder_combout\ = \sw~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(5),
	combout => \ent:registro[5]~feeder_combout\);

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key3,
	combout => \key3~combout\);

-- Location: LCCOMB_X64_Y15_N2
\ent:registro[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[5]~0_combout\ = (!\key3~combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key3~combout\,
	datac => \Equal0~0_combout\,
	combout => \ent:registro[5]~0_combout\);

-- Location: LCFF_X64_Y15_N7
\ent:registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[5]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[5]~regout\);

-- Location: LCCOMB_X64_Y15_N28
\registro~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registro~4_combout\ = (\Equal0~0_combout\ & (\sw~combout\(4))) # (!\Equal0~0_combout\ & ((\ent:registro[5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(4),
	datac => \Equal0~0_combout\,
	datad => \ent:registro[5]~regout\,
	combout => \registro~4_combout\);

-- Location: LCCOMB_X64_Y15_N16
\ent:registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[0]~0_combout\ = (!\Equal0~0_combout\) # (!\key3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key3~combout\,
	datac => \Equal0~0_combout\,
	combout => \ent:registro[0]~0_combout\);

-- Location: LCFF_X64_Y15_N29
\ent:registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \registro~4_combout\,
	ena => \ent:registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[4]~regout\);

-- Location: LCCOMB_X64_Y15_N18
\registro~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registro~3_combout\ = (\Equal0~0_combout\ & (\sw~combout\(3))) # (!\Equal0~0_combout\ & ((\ent:registro[4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(3),
	datac => \Equal0~0_combout\,
	datad => \ent:registro[4]~regout\,
	combout => \registro~3_combout\);

-- Location: LCFF_X64_Y15_N19
\ent:registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \registro~3_combout\,
	ena => \ent:registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[3]~regout\);

-- Location: LCCOMB_X64_Y15_N12
\registro~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registro~2_combout\ = (\Equal0~0_combout\ & (\sw~combout\(2))) # (!\Equal0~0_combout\ & ((\ent:registro[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datac => \Equal0~0_combout\,
	datad => \ent:registro[3]~regout\,
	combout => \registro~2_combout\);

-- Location: LCFF_X64_Y15_N13
\ent:registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \registro~2_combout\,
	ena => \ent:registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[2]~regout\);

-- Location: LCCOMB_X64_Y15_N26
\registro~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registro~1_combout\ = (\Equal0~0_combout\ & (\sw~combout\(1))) # (!\Equal0~0_combout\ & ((\ent:registro[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(1),
	datac => \Equal0~0_combout\,
	datad => \ent:registro[2]~regout\,
	combout => \registro~1_combout\);

-- Location: LCFF_X64_Y15_N27
\ent:registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \registro~1_combout\,
	ena => \ent:registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[1]~regout\);

-- Location: LCCOMB_X64_Y15_N0
\registro~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registro~0_combout\ = (\Equal0~0_combout\ & (\sw~combout\(0))) # (!\Equal0~0_combout\ & ((\ent:registro[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(0),
	datac => \Equal0~0_combout\,
	datad => \ent:registro[1]~regout\,
	combout => \registro~0_combout\);

-- Location: LCFF_X64_Y15_N1
\ent:registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \registro~0_combout\,
	ena => \ent:registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[0]~regout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(6),
	combout => \sw~combout\(6));

-- Location: LCCOMB_X60_Y35_N24
\ent:registro[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[6]~feeder_combout\ = \sw~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(6),
	combout => \ent:registro[6]~feeder_combout\);

-- Location: LCFF_X60_Y35_N25
\ent:registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[6]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[6]~regout\);

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(7),
	combout => \sw~combout\(7));

-- Location: LCCOMB_X60_Y35_N2
\ent:registro[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[7]~feeder_combout\ = \sw~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(7),
	combout => \ent:registro[7]~feeder_combout\);

-- Location: LCFF_X60_Y35_N3
\ent:registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[7]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[7]~regout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(8),
	combout => \sw~combout\(8));

-- Location: LCCOMB_X60_Y35_N12
\ent:registro[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[8]~feeder_combout\ = \sw~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(8),
	combout => \ent:registro[8]~feeder_combout\);

-- Location: LCFF_X60_Y35_N13
\ent:registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[8]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[8]~regout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(9),
	combout => \sw~combout\(9));

-- Location: LCCOMB_X60_Y35_N18
\ent:registro[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[9]~feeder_combout\ = \sw~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(9),
	combout => \ent:registro[9]~feeder_combout\);

-- Location: LCFF_X60_Y35_N19
\ent:registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[9]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[9]~regout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(10),
	combout => \sw~combout\(10));

-- Location: LCCOMB_X60_Y35_N20
\ent:registro[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[10]~feeder_combout\ = \sw~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(10),
	combout => \ent:registro[10]~feeder_combout\);

-- Location: LCFF_X60_Y35_N21
\ent:registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[10]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[10]~regout\);

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(11),
	combout => \sw~combout\(11));

-- Location: LCFF_X60_Y35_N23
\ent:registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	sdata => \sw~combout\(11),
	sload => VCC,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[11]~regout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(12),
	combout => \sw~combout\(12));

-- Location: LCCOMB_X60_Y35_N28
\ent:registro[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[12]~feeder_combout\ = \sw~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(12),
	combout => \ent:registro[12]~feeder_combout\);

-- Location: LCFF_X60_Y35_N29
\ent:registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[12]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[12]~regout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(13),
	combout => \sw~combout\(13));

-- Location: LCCOMB_X60_Y35_N26
\ent:registro[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[13]~feeder_combout\ = \sw~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(13),
	combout => \ent:registro[13]~feeder_combout\);

-- Location: LCFF_X60_Y35_N27
\ent:registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[13]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[13]~regout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(14),
	combout => \sw~combout\(14));

-- Location: LCFF_X60_Y35_N5
\ent:registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	sdata => \sw~combout\(14),
	sload => VCC,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[14]~regout\);

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(15),
	combout => \sw~combout\(15));

-- Location: LCCOMB_X60_Y35_N10
\ent:registro[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[15]~feeder_combout\ = \sw~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(15),
	combout => \ent:registro[15]~feeder_combout\);

-- Location: LCFF_X60_Y35_N11
\ent:registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[15]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[15]~regout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw(16),
	combout => \sw~combout\(16));

-- Location: LCCOMB_X60_Y35_N16
\ent:registro[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ent:registro[16]~feeder_combout\ = \sw~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(16),
	combout => \ent:registro[16]~feeder_combout\);

-- Location: LCFF_X60_Y35_N17
\ent:registro[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \ent:registro[16]~feeder_combout\,
	ena => \ent:registro[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[16]~regout\);

-- Location: LCCOMB_X63_Y15_N24
\registro~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registro~5_combout\ = (\Equal0~0_combout\ & ((\key3~combout\ & ((\ent:registro[17]~regout\))) # (!\key3~combout\ & (\sw~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \Equal0~0_combout\,
	datac => \ent:registro[17]~regout\,
	datad => \key3~combout\,
	combout => \registro~5_combout\);

-- Location: LCFF_X63_Y15_N25
\ent:registro[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_pwm1~clkctrl_outclk\,
	datain => \registro~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ent:registro[17]~regout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(1));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(2));

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(3));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[4]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(4));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(5));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(6));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[8]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(8));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[9]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(9));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[10]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(10));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[11]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(11));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[12]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(12));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[13]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(13));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[14]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(14));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[15]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(15));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[16]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(16));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ent:registro[17]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(17));

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bit_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bit_in);
END structure;


