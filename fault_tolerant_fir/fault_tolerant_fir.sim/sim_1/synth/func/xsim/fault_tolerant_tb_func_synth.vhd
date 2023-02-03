-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Feb  2 16:50:16 2023
-- Host        : DESKTOP-POC374B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Andrej/Desktop/git/otporni/fault_tolerant_fir/fault_tolerant_fir.sim/sim_1/synth/func/xsim/fault_tolerant_tb_func_synth.vhd
-- Design      : fault_tolerant
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mac is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[19]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
end mac;

architecture STRUCTURE of mac is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[19]\(16),
      B(16 downto 0) => \b_s_reg[19]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mac_18 is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mac_18 : entity is "mac";
end mac_18;

architecture STRUCTURE of mac_18 is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mac_38 is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mac_38 : entity is "mac";
end mac_38;

architecture STRUCTURE of mac_38 is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mac_58 is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mac_58 : entity is "mac";
end mac_58;

architecture STRUCTURE of mac_58 is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0\ : entity is "mac";
end \mac__parameterized0\;

architecture STRUCTURE of \mac__parameterized0\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[9]\(16),
      B(16 downto 0) => \b_s_reg[9]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_0\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[8]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_0\ : entity is "mac";
end \mac__parameterized0_0\;

architecture STRUCTURE of \mac__parameterized0_0\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[8]\(16),
      B(16 downto 0) => \b_s_reg[8]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_1\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[7]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_1\ : entity is "mac";
end \mac__parameterized0_1\;

architecture STRUCTURE of \mac__parameterized0_1\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[7]\(16),
      B(16 downto 0) => \b_s_reg[7]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_10\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[17]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_10\ : entity is "mac";
end \mac__parameterized0_10\;

architecture STRUCTURE of \mac__parameterized0_10\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[17]\(16),
      B(16 downto 0) => \b_s_reg[17]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_11\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[16]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_11\ : entity is "mac";
end \mac__parameterized0_11\;

architecture STRUCTURE of \mac__parameterized0_11\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[16]\(16),
      B(16 downto 0) => \b_s_reg[16]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_12\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[15]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_12\ : entity is "mac";
end \mac__parameterized0_12\;

architecture STRUCTURE of \mac__parameterized0_12\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[15]\(16),
      B(16 downto 0) => \b_s_reg[15]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_13\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[14]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_13\ : entity is "mac";
end \mac__parameterized0_13\;

architecture STRUCTURE of \mac__parameterized0_13\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[14]\(16),
      B(16 downto 0) => \b_s_reg[14]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_14\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[13]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_14\ : entity is "mac";
end \mac__parameterized0_14\;

architecture STRUCTURE of \mac__parameterized0_14\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[13]\(16),
      B(16 downto 0) => \b_s_reg[13]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_15\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[12]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_15\ : entity is "mac";
end \mac__parameterized0_15\;

architecture STRUCTURE of \mac__parameterized0_15\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[12]\(16),
      B(16 downto 0) => \b_s_reg[12]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_16\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[11]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_16\ : entity is "mac";
end \mac__parameterized0_16\;

architecture STRUCTURE of \mac__parameterized0_16\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[11]\(16),
      B(16 downto 0) => \b_s_reg[11]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_17\ is
  port (
    sum_reg_reg_0 : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[10]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_17\ : entity is "mac";
end \mac__parameterized0_17\;

architecture STRUCTURE of \mac__parameterized0_17\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[10]\(16),
      B(16 downto 0) => \b_s_reg[10]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(33),
      C(46) => P(33),
      C(45) => P(33),
      C(44) => P(33),
      C(43) => P(33),
      C(42) => P(33),
      C(41) => P(33),
      C(40) => P(33),
      C(39) => P(33),
      C(38) => P(33),
      C(37) => P(33),
      C(36) => P(33),
      C(35) => P(33),
      C(34) => P(33),
      C(33 downto 0) => P(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => sum_reg_reg_0(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_19\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_19\ : entity is "mac";
end \mac__parameterized0_19\;

architecture STRUCTURE of \mac__parameterized0_19\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_2\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[6]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_2\ : entity is "mac";
end \mac__parameterized0_2\;

architecture STRUCTURE of \mac__parameterized0_2\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[6]\(16),
      B(16 downto 0) => \b_s_reg[6]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_20\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_20\ : entity is "mac";
end \mac__parameterized0_20\;

architecture STRUCTURE of \mac__parameterized0_20\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_21\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_21\ : entity is "mac";
end \mac__parameterized0_21\;

architecture STRUCTURE of \mac__parameterized0_21\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_22\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_22\ : entity is "mac";
end \mac__parameterized0_22\;

architecture STRUCTURE of \mac__parameterized0_22\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_23\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_23\ : entity is "mac";
end \mac__parameterized0_23\;

architecture STRUCTURE of \mac__parameterized0_23\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_24\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_24\ : entity is "mac";
end \mac__parameterized0_24\;

architecture STRUCTURE of \mac__parameterized0_24\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_25\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_25\ : entity is "mac";
end \mac__parameterized0_25\;

architecture STRUCTURE of \mac__parameterized0_25\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_26\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_26\ : entity is "mac";
end \mac__parameterized0_26\;

architecture STRUCTURE of \mac__parameterized0_26\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_27\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_27\ : entity is "mac";
end \mac__parameterized0_27\;

architecture STRUCTURE of \mac__parameterized0_27\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_28\ is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_28\ : entity is "mac";
end \mac__parameterized0_28\;

architecture STRUCTURE of \mac__parameterized0_28\ is
  signal sum_reg_reg_n_100 : STD_LOGIC;
  signal sum_reg_reg_n_101 : STD_LOGIC;
  signal sum_reg_reg_n_102 : STD_LOGIC;
  signal sum_reg_reg_n_103 : STD_LOGIC;
  signal sum_reg_reg_n_104 : STD_LOGIC;
  signal sum_reg_reg_n_105 : STD_LOGIC;
  signal sum_reg_reg_n_72 : STD_LOGIC;
  signal sum_reg_reg_n_90 : STD_LOGIC;
  signal sum_reg_reg_n_91 : STD_LOGIC;
  signal sum_reg_reg_n_92 : STD_LOGIC;
  signal sum_reg_reg_n_93 : STD_LOGIC;
  signal sum_reg_reg_n_94 : STD_LOGIC;
  signal sum_reg_reg_n_95 : STD_LOGIC;
  signal sum_reg_reg_n_96 : STD_LOGIC;
  signal sum_reg_reg_n_97 : STD_LOGIC;
  signal sum_reg_reg_n_98 : STD_LOGIC;
  signal sum_reg_reg_n_99 : STD_LOGIC;
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(33),
      C(46) => P(33),
      C(45) => P(33),
      C(44) => P(33),
      C(43) => P(33),
      C(42) => P(33),
      C(41) => P(33),
      C(40) => P(33),
      C(39) => P(33),
      C(38) => P(33),
      C(37) => P(33),
      C(36) => P(33),
      C(35) => P(33),
      C(34) => P(33),
      C(33 downto 0) => P(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33) => sum_reg_reg_n_72,
      P(32 downto 16) => D(16 downto 0),
      P(15) => sum_reg_reg_n_90,
      P(14) => sum_reg_reg_n_91,
      P(13) => sum_reg_reg_n_92,
      P(12) => sum_reg_reg_n_93,
      P(11) => sum_reg_reg_n_94,
      P(10) => sum_reg_reg_n_95,
      P(9) => sum_reg_reg_n_96,
      P(8) => sum_reg_reg_n_97,
      P(7) => sum_reg_reg_n_98,
      P(6) => sum_reg_reg_n_99,
      P(5) => sum_reg_reg_n_100,
      P(4) => sum_reg_reg_n_101,
      P(3) => sum_reg_reg_n_102,
      P(2) => sum_reg_reg_n_103,
      P(1) => sum_reg_reg_n_104,
      P(0) => sum_reg_reg_n_105,
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_29\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_29\ : entity is "mac";
end \mac__parameterized0_29\;

architecture STRUCTURE of \mac__parameterized0_29\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_3\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[5]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_3\ : entity is "mac";
end \mac__parameterized0_3\;

architecture STRUCTURE of \mac__parameterized0_3\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[5]\(16),
      B(16 downto 0) => \b_s_reg[5]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_30\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_30\ : entity is "mac";
end \mac__parameterized0_30\;

architecture STRUCTURE of \mac__parameterized0_30\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_31\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_31\ : entity is "mac";
end \mac__parameterized0_31\;

architecture STRUCTURE of \mac__parameterized0_31\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_32\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_32\ : entity is "mac";
end \mac__parameterized0_32\;

architecture STRUCTURE of \mac__parameterized0_32\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_33\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_33\ : entity is "mac";
end \mac__parameterized0_33\;

architecture STRUCTURE of \mac__parameterized0_33\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_34\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_34\ : entity is "mac";
end \mac__parameterized0_34\;

architecture STRUCTURE of \mac__parameterized0_34\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_35\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_35\ : entity is "mac";
end \mac__parameterized0_35\;

architecture STRUCTURE of \mac__parameterized0_35\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_36\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_36\ : entity is "mac";
end \mac__parameterized0_36\;

architecture STRUCTURE of \mac__parameterized0_36\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_37\ is
  port (
    sum_reg_reg_0 : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_37\ : entity is "mac";
end \mac__parameterized0_37\;

architecture STRUCTURE of \mac__parameterized0_37\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(33),
      C(46) => P(33),
      C(45) => P(33),
      C(44) => P(33),
      C(43) => P(33),
      C(42) => P(33),
      C(41) => P(33),
      C(40) => P(33),
      C(39) => P(33),
      C(38) => P(33),
      C(37) => P(33),
      C(36) => P(33),
      C(35) => P(33),
      C(34) => P(33),
      C(33 downto 0) => P(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => sum_reg_reg_0(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_39\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_39\ : entity is "mac";
end \mac__parameterized0_39\;

architecture STRUCTURE of \mac__parameterized0_39\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_4\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[4]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_4\ : entity is "mac";
end \mac__parameterized0_4\;

architecture STRUCTURE of \mac__parameterized0_4\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[4]\(16),
      B(16 downto 0) => \b_s_reg[4]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_40\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_40\ : entity is "mac";
end \mac__parameterized0_40\;

architecture STRUCTURE of \mac__parameterized0_40\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_41\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_41\ : entity is "mac";
end \mac__parameterized0_41\;

architecture STRUCTURE of \mac__parameterized0_41\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_42\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_42\ : entity is "mac";
end \mac__parameterized0_42\;

architecture STRUCTURE of \mac__parameterized0_42\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_43\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_43\ : entity is "mac";
end \mac__parameterized0_43\;

architecture STRUCTURE of \mac__parameterized0_43\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_44\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_44\ : entity is "mac";
end \mac__parameterized0_44\;

architecture STRUCTURE of \mac__parameterized0_44\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_45\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_45\ : entity is "mac";
end \mac__parameterized0_45\;

architecture STRUCTURE of \mac__parameterized0_45\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_46\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_46\ : entity is "mac";
end \mac__parameterized0_46\;

architecture STRUCTURE of \mac__parameterized0_46\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_47\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_47\ : entity is "mac";
end \mac__parameterized0_47\;

architecture STRUCTURE of \mac__parameterized0_47\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_48\ is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_48\ : entity is "mac";
end \mac__parameterized0_48\;

architecture STRUCTURE of \mac__parameterized0_48\ is
  signal sum_reg_reg_n_100 : STD_LOGIC;
  signal sum_reg_reg_n_101 : STD_LOGIC;
  signal sum_reg_reg_n_102 : STD_LOGIC;
  signal sum_reg_reg_n_103 : STD_LOGIC;
  signal sum_reg_reg_n_104 : STD_LOGIC;
  signal sum_reg_reg_n_105 : STD_LOGIC;
  signal sum_reg_reg_n_72 : STD_LOGIC;
  signal sum_reg_reg_n_90 : STD_LOGIC;
  signal sum_reg_reg_n_91 : STD_LOGIC;
  signal sum_reg_reg_n_92 : STD_LOGIC;
  signal sum_reg_reg_n_93 : STD_LOGIC;
  signal sum_reg_reg_n_94 : STD_LOGIC;
  signal sum_reg_reg_n_95 : STD_LOGIC;
  signal sum_reg_reg_n_96 : STD_LOGIC;
  signal sum_reg_reg_n_97 : STD_LOGIC;
  signal sum_reg_reg_n_98 : STD_LOGIC;
  signal sum_reg_reg_n_99 : STD_LOGIC;
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(33),
      C(46) => P(33),
      C(45) => P(33),
      C(44) => P(33),
      C(43) => P(33),
      C(42) => P(33),
      C(41) => P(33),
      C(40) => P(33),
      C(39) => P(33),
      C(38) => P(33),
      C(37) => P(33),
      C(36) => P(33),
      C(35) => P(33),
      C(34) => P(33),
      C(33 downto 0) => P(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33) => sum_reg_reg_n_72,
      P(32 downto 16) => D(16 downto 0),
      P(15) => sum_reg_reg_n_90,
      P(14) => sum_reg_reg_n_91,
      P(13) => sum_reg_reg_n_92,
      P(12) => sum_reg_reg_n_93,
      P(11) => sum_reg_reg_n_94,
      P(10) => sum_reg_reg_n_95,
      P(9) => sum_reg_reg_n_96,
      P(8) => sum_reg_reg_n_97,
      P(7) => sum_reg_reg_n_98,
      P(6) => sum_reg_reg_n_99,
      P(5) => sum_reg_reg_n_100,
      P(4) => sum_reg_reg_n_101,
      P(3) => sum_reg_reg_n_102,
      P(2) => sum_reg_reg_n_103,
      P(1) => sum_reg_reg_n_104,
      P(0) => sum_reg_reg_n_105,
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_49\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_49\ : entity is "mac";
end \mac__parameterized0_49\;

architecture STRUCTURE of \mac__parameterized0_49\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_5\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[3]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_5\ : entity is "mac";
end \mac__parameterized0_5\;

architecture STRUCTURE of \mac__parameterized0_5\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[3]\(16),
      B(16 downto 0) => \b_s_reg[3]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_50\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_50\ : entity is "mac";
end \mac__parameterized0_50\;

architecture STRUCTURE of \mac__parameterized0_50\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_51\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_51\ : entity is "mac";
end \mac__parameterized0_51\;

architecture STRUCTURE of \mac__parameterized0_51\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_52\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_52\ : entity is "mac";
end \mac__parameterized0_52\;

architecture STRUCTURE of \mac__parameterized0_52\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_53\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_53\ : entity is "mac";
end \mac__parameterized0_53\;

architecture STRUCTURE of \mac__parameterized0_53\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_54\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_54\ : entity is "mac";
end \mac__parameterized0_54\;

architecture STRUCTURE of \mac__parameterized0_54\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_55\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_55\ : entity is "mac";
end \mac__parameterized0_55\;

architecture STRUCTURE of \mac__parameterized0_55\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_56\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_56\ : entity is "mac";
end \mac__parameterized0_56\;

architecture STRUCTURE of \mac__parameterized0_56\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_57\ is
  port (
    sum_reg_reg_0 : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_57\ : entity is "mac";
end \mac__parameterized0_57\;

architecture STRUCTURE of \mac__parameterized0_57\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(33),
      C(46) => P(33),
      C(45) => P(33),
      C(44) => P(33),
      C(43) => P(33),
      C(42) => P(33),
      C(41) => P(33),
      C(40) => P(33),
      C(39) => P(33),
      C(38) => P(33),
      C(37) => P(33),
      C(36) => P(33),
      C(35) => P(33),
      C(34) => P(33),
      C(33 downto 0) => P(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => sum_reg_reg_0(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_59\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_59\ : entity is "mac";
end \mac__parameterized0_59\;

architecture STRUCTURE of \mac__parameterized0_59\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_6\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[2]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_6\ : entity is "mac";
end \mac__parameterized0_6\;

architecture STRUCTURE of \mac__parameterized0_6\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[2]\(16),
      B(16 downto 0) => \b_s_reg[2]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_60\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_60\ : entity is "mac";
end \mac__parameterized0_60\;

architecture STRUCTURE of \mac__parameterized0_60\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_61\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_61\ : entity is "mac";
end \mac__parameterized0_61\;

architecture STRUCTURE of \mac__parameterized0_61\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_62\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_62\ : entity is "mac";
end \mac__parameterized0_62\;

architecture STRUCTURE of \mac__parameterized0_62\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_63\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_63\ : entity is "mac";
end \mac__parameterized0_63\;

architecture STRUCTURE of \mac__parameterized0_63\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_64\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_64\ : entity is "mac";
end \mac__parameterized0_64\;

architecture STRUCTURE of \mac__parameterized0_64\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_65\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_65\ : entity is "mac";
end \mac__parameterized0_65\;

architecture STRUCTURE of \mac__parameterized0_65\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_66\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_66\ : entity is "mac";
end \mac__parameterized0_66\;

architecture STRUCTURE of \mac__parameterized0_66\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_67\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_67\ : entity is "mac";
end \mac__parameterized0_67\;

architecture STRUCTURE of \mac__parameterized0_67\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_68\ is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_68\ : entity is "mac";
end \mac__parameterized0_68\;

architecture STRUCTURE of \mac__parameterized0_68\ is
  signal sum_reg_reg_n_100 : STD_LOGIC;
  signal sum_reg_reg_n_101 : STD_LOGIC;
  signal sum_reg_reg_n_102 : STD_LOGIC;
  signal sum_reg_reg_n_103 : STD_LOGIC;
  signal sum_reg_reg_n_104 : STD_LOGIC;
  signal sum_reg_reg_n_105 : STD_LOGIC;
  signal sum_reg_reg_n_72 : STD_LOGIC;
  signal sum_reg_reg_n_90 : STD_LOGIC;
  signal sum_reg_reg_n_91 : STD_LOGIC;
  signal sum_reg_reg_n_92 : STD_LOGIC;
  signal sum_reg_reg_n_93 : STD_LOGIC;
  signal sum_reg_reg_n_94 : STD_LOGIC;
  signal sum_reg_reg_n_95 : STD_LOGIC;
  signal sum_reg_reg_n_96 : STD_LOGIC;
  signal sum_reg_reg_n_97 : STD_LOGIC;
  signal sum_reg_reg_n_98 : STD_LOGIC;
  signal sum_reg_reg_n_99 : STD_LOGIC;
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(33),
      C(46) => P(33),
      C(45) => P(33),
      C(44) => P(33),
      C(43) => P(33),
      C(42) => P(33),
      C(41) => P(33),
      C(40) => P(33),
      C(39) => P(33),
      C(38) => P(33),
      C(37) => P(33),
      C(36) => P(33),
      C(35) => P(33),
      C(34) => P(33),
      C(33 downto 0) => P(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33) => sum_reg_reg_n_72,
      P(32 downto 16) => D(16 downto 0),
      P(15) => sum_reg_reg_n_90,
      P(14) => sum_reg_reg_n_91,
      P(13) => sum_reg_reg_n_92,
      P(12) => sum_reg_reg_n_93,
      P(11) => sum_reg_reg_n_94,
      P(10) => sum_reg_reg_n_95,
      P(9) => sum_reg_reg_n_96,
      P(8) => sum_reg_reg_n_97,
      P(7) => sum_reg_reg_n_98,
      P(6) => sum_reg_reg_n_99,
      P(5) => sum_reg_reg_n_100,
      P(4) => sum_reg_reg_n_101,
      P(3) => sum_reg_reg_n_102,
      P(2) => sum_reg_reg_n_103,
      P(1) => sum_reg_reg_n_104,
      P(0) => sum_reg_reg_n_105,
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_69\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_69\ : entity is "mac";
end \mac__parameterized0_69\;

architecture STRUCTURE of \mac__parameterized0_69\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_7\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[1]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_7\ : entity is "mac";
end \mac__parameterized0_7\;

architecture STRUCTURE of \mac__parameterized0_7\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[1]\(16),
      B(16 downto 0) => \b_s_reg[1]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_70\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_70\ : entity is "mac";
end \mac__parameterized0_70\;

architecture STRUCTURE of \mac__parameterized0_70\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_71\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_71\ : entity is "mac";
end \mac__parameterized0_71\;

architecture STRUCTURE of \mac__parameterized0_71\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_72\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_72\ : entity is "mac";
end \mac__parameterized0_72\;

architecture STRUCTURE of \mac__parameterized0_72\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_73\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_73\ : entity is "mac";
end \mac__parameterized0_73\;

architecture STRUCTURE of \mac__parameterized0_73\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_74\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_74\ : entity is "mac";
end \mac__parameterized0_74\;

architecture STRUCTURE of \mac__parameterized0_74\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_75\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_75\ : entity is "mac";
end \mac__parameterized0_75\;

architecture STRUCTURE of \mac__parameterized0_75\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_76\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_76\ : entity is "mac";
end \mac__parameterized0_76\;

architecture STRUCTURE of \mac__parameterized0_76\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_77\ is
  port (
    sum_reg_reg_0 : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_77\ : entity is "mac";
end \mac__parameterized0_77\;

architecture STRUCTURE of \mac__parameterized0_77\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(16),
      B(16 downto 0) => Q(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(33),
      C(46) => P(33),
      C(45) => P(33),
      C(44) => P(33),
      C(43) => P(33),
      C(42) => P(33),
      C(41) => P(33),
      C(40) => P(33),
      C(39) => P(33),
      C(38) => P(33),
      C(37) => P(33),
      C(36) => P(33),
      C(35) => P(33),
      C(34) => P(33),
      C(33 downto 0) => P(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => sum_reg_reg_0(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_8\ is
  port (
    sec_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[0]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_8\ : entity is "mac";
end \mac__parameterized0_8\;

architecture STRUCTURE of \mac__parameterized0_8\ is
  signal sum_reg_reg_n_100 : STD_LOGIC;
  signal sum_reg_reg_n_101 : STD_LOGIC;
  signal sum_reg_reg_n_102 : STD_LOGIC;
  signal sum_reg_reg_n_103 : STD_LOGIC;
  signal sum_reg_reg_n_104 : STD_LOGIC;
  signal sum_reg_reg_n_105 : STD_LOGIC;
  signal sum_reg_reg_n_72 : STD_LOGIC;
  signal sum_reg_reg_n_90 : STD_LOGIC;
  signal sum_reg_reg_n_91 : STD_LOGIC;
  signal sum_reg_reg_n_92 : STD_LOGIC;
  signal sum_reg_reg_n_93 : STD_LOGIC;
  signal sum_reg_reg_n_94 : STD_LOGIC;
  signal sum_reg_reg_n_95 : STD_LOGIC;
  signal sum_reg_reg_n_96 : STD_LOGIC;
  signal sum_reg_reg_n_97 : STD_LOGIC;
  signal sum_reg_reg_n_98 : STD_LOGIC;
  signal sum_reg_reg_n_99 : STD_LOGIC;
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[0]\(16),
      B(16 downto 0) => \b_s_reg[0]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(33),
      C(46) => P(33),
      C(45) => P(33),
      C(44) => P(33),
      C(43) => P(33),
      C(42) => P(33),
      C(41) => P(33),
      C(40) => P(33),
      C(39) => P(33),
      C(38) => P(33),
      C(37) => P(33),
      C(36) => P(33),
      C(35) => P(33),
      C(34) => P(33),
      C(33 downto 0) => P(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33) => sum_reg_reg_n_72,
      P(32 downto 16) => sec_o(16 downto 0),
      P(15) => sum_reg_reg_n_90,
      P(14) => sum_reg_reg_n_91,
      P(13) => sum_reg_reg_n_92,
      P(12) => sum_reg_reg_n_93,
      P(11) => sum_reg_reg_n_94,
      P(10) => sum_reg_reg_n_95,
      P(9) => sum_reg_reg_n_96,
      P(8) => sum_reg_reg_n_97,
      P(7) => sum_reg_reg_n_98,
      P(6) => sum_reg_reg_n_99,
      P(5) => sum_reg_reg_n_100,
      P(4) => sum_reg_reg_n_101,
      P(3) => sum_reg_reg_n_102,
      P(2) => sum_reg_reg_n_103,
      P(1) => sum_reg_reg_n_104,
      P(0) => sum_reg_reg_n_105,
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mac__parameterized0_9\ is
  port (
    P : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    \b_s_reg[18]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    sum_reg_reg_0 : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mac__parameterized0_9\ : entity is "mac";
end \mac__parameterized0_9\;

architecture STRUCTURE of \mac__parameterized0_9\ is
  signal NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_sum_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
sum_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => data_i(16),
      A(28) => data_i(16),
      A(27) => data_i(16),
      A(26) => data_i(16),
      A(25) => data_i(16),
      A(24) => data_i(16),
      A(23) => data_i(16),
      A(22) => data_i(16),
      A(21) => data_i(16),
      A(20) => data_i(16),
      A(19) => data_i(16),
      A(18) => data_i(16),
      A(17) => data_i(16),
      A(16 downto 0) => data_i(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \b_s_reg[18]\(16),
      B(16 downto 0) => \b_s_reg[18]\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum_reg_reg_0(33),
      C(46) => sum_reg_reg_0(33),
      C(45) => sum_reg_reg_0(33),
      C(44) => sum_reg_reg_0(33),
      C(43) => sum_reg_reg_0(33),
      C(42) => sum_reg_reg_0(33),
      C(41) => sum_reg_reg_0(33),
      C(40) => sum_reg_reg_0(33),
      C(39) => sum_reg_reg_0(33),
      C(38) => sum_reg_reg_0(33),
      C(37) => sum_reg_reg_0(33),
      C(36) => sum_reg_reg_0(33),
      C(35) => sum_reg_reg_0(33),
      C(34) => sum_reg_reg_0(33),
      C(33 downto 0) => sum_reg_reg_0(33 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_sum_reg_reg_P_UNCONNECTED(47 downto 34),
      P(33 downto 0) => P(33 downto 0),
      PATTERNBDETECT => NLW_sum_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => rst_i,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => rst_i,
      RSTP => rst_i,
      UNDERFLOW => NLW_sum_reg_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fir_filtar is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    we_i : in STD_LOGIC;
    coef_addr_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute dont_touch : string;
  attribute dont_touch of fir_filtar : entity is "true";
  attribute fir_ord : integer;
  attribute fir_ord of fir_filtar : entity is 20;
  attribute fixed_width : integer;
  attribute fixed_width of fir_filtar : entity is 1;
  attribute input_data_width : integer;
  attribute input_data_width of fir_filtar : entity is 17;
  attribute output_data_width : integer;
  attribute output_data_width of fir_filtar : entity is 17;
end fir_filtar;

architecture STRUCTURE of fir_filtar is
  signal \b_s[0]\ : STD_LOGIC;
  signal \b_s[10]\ : STD_LOGIC;
  signal \b_s[11]\ : STD_LOGIC;
  signal \b_s[12]\ : STD_LOGIC;
  signal \b_s[13]\ : STD_LOGIC;
  signal \b_s[14]\ : STD_LOGIC;
  signal \b_s[15]\ : STD_LOGIC;
  signal \b_s[16]\ : STD_LOGIC;
  signal \b_s[17]\ : STD_LOGIC;
  signal \b_s[18]\ : STD_LOGIC;
  signal \b_s[19]\ : STD_LOGIC;
  signal \b_s[1]\ : STD_LOGIC;
  signal \b_s[2]\ : STD_LOGIC;
  signal \b_s[3]\ : STD_LOGIC;
  signal \b_s[4]\ : STD_LOGIC;
  signal \b_s[5]\ : STD_LOGIC;
  signal \b_s[6]\ : STD_LOGIC;
  signal \b_s[7]\ : STD_LOGIC;
  signal \b_s[8]\ : STD_LOGIC;
  signal \b_s[9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][9]\ : STD_LOGIC;
  signal \mac_inter[0]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[10]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[11]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[12]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[13]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[14]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[15]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[16]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[17]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[18]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[19]\ : STD_LOGIC_VECTOR ( 32 downto 16 );
  signal \mac_inter[1]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[2]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[3]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[4]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[5]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[6]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[7]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[8]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[9]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
begin
\b_s[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[0]\
    );
\b_s[10][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(0),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[10]\
    );
\b_s[11][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(2),
      O => \b_s[11]\
    );
\b_s[12][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(1),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(2),
      O => \b_s[12]\
    );
\b_s[13][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[13]\
    );
\b_s[14][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(0),
      O => \b_s[14]\
    );
\b_s[15][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(4),
      O => \b_s[15]\
    );
\b_s[16][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(0),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(4),
      O => \b_s[16]\
    );
\b_s[17][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(1),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(4),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[17]\
    );
\b_s[18][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(0),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(4),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[18]\
    );
\b_s[19][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(2),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[19]\
    );
\b_s[1][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[1]\
    );
\b_s[2][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[2]\
    );
\b_s[3][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[3]\
    );
\b_s[4][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(2),
      O => \b_s[4]\
    );
\b_s[5][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(0),
      O => \b_s[5]\
    );
\b_s[6][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(1),
      O => \b_s[6]\
    );
\b_s[7][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[7]\
    );
\b_s[8][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(0),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(3),
      O => \b_s[8]\
    );
\b_s[9][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(1),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[9]\
    );
\b_s_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[0][0]\,
      R => '0'
    );
\b_s_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[0][10]\,
      R => '0'
    );
\b_s_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[0][11]\,
      R => '0'
    );
\b_s_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[0][12]\,
      R => '0'
    );
\b_s_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[0][13]\,
      R => '0'
    );
\b_s_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[0][14]\,
      R => '0'
    );
\b_s_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[0][15]\,
      R => '0'
    );
\b_s_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[0][16]\,
      R => '0'
    );
\b_s_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[0][1]\,
      R => '0'
    );
\b_s_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[0][2]\,
      R => '0'
    );
\b_s_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[0][3]\,
      R => '0'
    );
\b_s_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[0][4]\,
      R => '0'
    );
\b_s_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[0][5]\,
      R => '0'
    );
\b_s_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[0][6]\,
      R => '0'
    );
\b_s_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[0][7]\,
      R => '0'
    );
\b_s_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[0][8]\,
      R => '0'
    );
\b_s_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[0][9]\,
      R => '0'
    );
\b_s_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[10][0]\,
      R => '0'
    );
\b_s_reg[10][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[10][10]\,
      R => '0'
    );
\b_s_reg[10][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[10][11]\,
      R => '0'
    );
\b_s_reg[10][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[10][12]\,
      R => '0'
    );
\b_s_reg[10][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[10][13]\,
      R => '0'
    );
\b_s_reg[10][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[10][14]\,
      R => '0'
    );
\b_s_reg[10][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[10][15]\,
      R => '0'
    );
\b_s_reg[10][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[10][16]\,
      R => '0'
    );
\b_s_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[10][1]\,
      R => '0'
    );
\b_s_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[10][2]\,
      R => '0'
    );
\b_s_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[10][3]\,
      R => '0'
    );
\b_s_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[10][4]\,
      R => '0'
    );
\b_s_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[10][5]\,
      R => '0'
    );
\b_s_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[10][6]\,
      R => '0'
    );
\b_s_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[10][7]\,
      R => '0'
    );
\b_s_reg[10][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[10][8]\,
      R => '0'
    );
\b_s_reg[10][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[10][9]\,
      R => '0'
    );
\b_s_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[11][0]\,
      R => '0'
    );
\b_s_reg[11][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[11][10]\,
      R => '0'
    );
\b_s_reg[11][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[11][11]\,
      R => '0'
    );
\b_s_reg[11][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[11][12]\,
      R => '0'
    );
\b_s_reg[11][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[11][13]\,
      R => '0'
    );
\b_s_reg[11][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[11][14]\,
      R => '0'
    );
\b_s_reg[11][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[11][15]\,
      R => '0'
    );
\b_s_reg[11][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[11][16]\,
      R => '0'
    );
\b_s_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[11][1]\,
      R => '0'
    );
\b_s_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[11][2]\,
      R => '0'
    );
\b_s_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[11][3]\,
      R => '0'
    );
\b_s_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[11][4]\,
      R => '0'
    );
\b_s_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[11][5]\,
      R => '0'
    );
\b_s_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[11][6]\,
      R => '0'
    );
\b_s_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[11][7]\,
      R => '0'
    );
\b_s_reg[11][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[11][8]\,
      R => '0'
    );
\b_s_reg[11][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[11][9]\,
      R => '0'
    );
\b_s_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[12][0]\,
      R => '0'
    );
\b_s_reg[12][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[12][10]\,
      R => '0'
    );
\b_s_reg[12][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[12][11]\,
      R => '0'
    );
\b_s_reg[12][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[12][12]\,
      R => '0'
    );
\b_s_reg[12][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[12][13]\,
      R => '0'
    );
\b_s_reg[12][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[12][14]\,
      R => '0'
    );
\b_s_reg[12][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[12][15]\,
      R => '0'
    );
\b_s_reg[12][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[12][16]\,
      R => '0'
    );
\b_s_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[12][1]\,
      R => '0'
    );
\b_s_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[12][2]\,
      R => '0'
    );
\b_s_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[12][3]\,
      R => '0'
    );
\b_s_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[12][4]\,
      R => '0'
    );
\b_s_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[12][5]\,
      R => '0'
    );
\b_s_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[12][6]\,
      R => '0'
    );
\b_s_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[12][7]\,
      R => '0'
    );
\b_s_reg[12][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[12][8]\,
      R => '0'
    );
\b_s_reg[12][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[12][9]\,
      R => '0'
    );
\b_s_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[13][0]\,
      R => '0'
    );
\b_s_reg[13][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[13][10]\,
      R => '0'
    );
\b_s_reg[13][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[13][11]\,
      R => '0'
    );
\b_s_reg[13][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[13][12]\,
      R => '0'
    );
\b_s_reg[13][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[13][13]\,
      R => '0'
    );
\b_s_reg[13][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[13][14]\,
      R => '0'
    );
\b_s_reg[13][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[13][15]\,
      R => '0'
    );
\b_s_reg[13][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[13][16]\,
      R => '0'
    );
\b_s_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[13][1]\,
      R => '0'
    );
\b_s_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[13][2]\,
      R => '0'
    );
\b_s_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[13][3]\,
      R => '0'
    );
\b_s_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[13][4]\,
      R => '0'
    );
\b_s_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[13][5]\,
      R => '0'
    );
\b_s_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[13][6]\,
      R => '0'
    );
\b_s_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[13][7]\,
      R => '0'
    );
\b_s_reg[13][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[13][8]\,
      R => '0'
    );
\b_s_reg[13][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[13][9]\,
      R => '0'
    );
\b_s_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[14][0]\,
      R => '0'
    );
\b_s_reg[14][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[14][10]\,
      R => '0'
    );
\b_s_reg[14][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[14][11]\,
      R => '0'
    );
\b_s_reg[14][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[14][12]\,
      R => '0'
    );
\b_s_reg[14][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[14][13]\,
      R => '0'
    );
\b_s_reg[14][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[14][14]\,
      R => '0'
    );
\b_s_reg[14][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[14][15]\,
      R => '0'
    );
\b_s_reg[14][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[14][16]\,
      R => '0'
    );
\b_s_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[14][1]\,
      R => '0'
    );
\b_s_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[14][2]\,
      R => '0'
    );
\b_s_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[14][3]\,
      R => '0'
    );
\b_s_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[14][4]\,
      R => '0'
    );
\b_s_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[14][5]\,
      R => '0'
    );
\b_s_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[14][6]\,
      R => '0'
    );
\b_s_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[14][7]\,
      R => '0'
    );
\b_s_reg[14][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[14][8]\,
      R => '0'
    );
\b_s_reg[14][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[14][9]\,
      R => '0'
    );
\b_s_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[15][0]\,
      R => '0'
    );
\b_s_reg[15][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[15][10]\,
      R => '0'
    );
\b_s_reg[15][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[15][11]\,
      R => '0'
    );
\b_s_reg[15][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[15][12]\,
      R => '0'
    );
\b_s_reg[15][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[15][13]\,
      R => '0'
    );
\b_s_reg[15][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[15][14]\,
      R => '0'
    );
\b_s_reg[15][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[15][15]\,
      R => '0'
    );
\b_s_reg[15][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[15][16]\,
      R => '0'
    );
\b_s_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[15][1]\,
      R => '0'
    );
\b_s_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[15][2]\,
      R => '0'
    );
\b_s_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[15][3]\,
      R => '0'
    );
\b_s_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[15][4]\,
      R => '0'
    );
\b_s_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[15][5]\,
      R => '0'
    );
\b_s_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[15][6]\,
      R => '0'
    );
\b_s_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[15][7]\,
      R => '0'
    );
\b_s_reg[15][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[15][8]\,
      R => '0'
    );
\b_s_reg[15][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[15][9]\,
      R => '0'
    );
\b_s_reg[16][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[16][0]\,
      R => '0'
    );
\b_s_reg[16][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[16][10]\,
      R => '0'
    );
\b_s_reg[16][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[16][11]\,
      R => '0'
    );
\b_s_reg[16][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[16][12]\,
      R => '0'
    );
\b_s_reg[16][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[16][13]\,
      R => '0'
    );
\b_s_reg[16][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[16][14]\,
      R => '0'
    );
\b_s_reg[16][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[16][15]\,
      R => '0'
    );
\b_s_reg[16][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[16][16]\,
      R => '0'
    );
\b_s_reg[16][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[16][1]\,
      R => '0'
    );
\b_s_reg[16][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[16][2]\,
      R => '0'
    );
\b_s_reg[16][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[16][3]\,
      R => '0'
    );
\b_s_reg[16][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[16][4]\,
      R => '0'
    );
\b_s_reg[16][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[16][5]\,
      R => '0'
    );
\b_s_reg[16][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[16][6]\,
      R => '0'
    );
\b_s_reg[16][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[16][7]\,
      R => '0'
    );
\b_s_reg[16][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[16][8]\,
      R => '0'
    );
\b_s_reg[16][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[16][9]\,
      R => '0'
    );
\b_s_reg[17][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[17][0]\,
      R => '0'
    );
\b_s_reg[17][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[17][10]\,
      R => '0'
    );
\b_s_reg[17][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[17][11]\,
      R => '0'
    );
\b_s_reg[17][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[17][12]\,
      R => '0'
    );
\b_s_reg[17][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[17][13]\,
      R => '0'
    );
\b_s_reg[17][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[17][14]\,
      R => '0'
    );
\b_s_reg[17][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[17][15]\,
      R => '0'
    );
\b_s_reg[17][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[17][16]\,
      R => '0'
    );
\b_s_reg[17][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[17][1]\,
      R => '0'
    );
\b_s_reg[17][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[17][2]\,
      R => '0'
    );
\b_s_reg[17][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[17][3]\,
      R => '0'
    );
\b_s_reg[17][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[17][4]\,
      R => '0'
    );
\b_s_reg[17][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[17][5]\,
      R => '0'
    );
\b_s_reg[17][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[17][6]\,
      R => '0'
    );
\b_s_reg[17][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[17][7]\,
      R => '0'
    );
\b_s_reg[17][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[17][8]\,
      R => '0'
    );
\b_s_reg[17][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[17][9]\,
      R => '0'
    );
\b_s_reg[18][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[18][0]\,
      R => '0'
    );
\b_s_reg[18][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[18][10]\,
      R => '0'
    );
\b_s_reg[18][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[18][11]\,
      R => '0'
    );
\b_s_reg[18][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[18][12]\,
      R => '0'
    );
\b_s_reg[18][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[18][13]\,
      R => '0'
    );
\b_s_reg[18][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[18][14]\,
      R => '0'
    );
\b_s_reg[18][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[18][15]\,
      R => '0'
    );
\b_s_reg[18][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[18][16]\,
      R => '0'
    );
\b_s_reg[18][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[18][1]\,
      R => '0'
    );
\b_s_reg[18][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[18][2]\,
      R => '0'
    );
\b_s_reg[18][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[18][3]\,
      R => '0'
    );
\b_s_reg[18][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[18][4]\,
      R => '0'
    );
\b_s_reg[18][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[18][5]\,
      R => '0'
    );
\b_s_reg[18][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[18][6]\,
      R => '0'
    );
\b_s_reg[18][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[18][7]\,
      R => '0'
    );
\b_s_reg[18][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[18][8]\,
      R => '0'
    );
\b_s_reg[18][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[18][9]\,
      R => '0'
    );
\b_s_reg[19][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[19][0]\,
      R => '0'
    );
\b_s_reg[19][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[19][10]\,
      R => '0'
    );
\b_s_reg[19][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[19][11]\,
      R => '0'
    );
\b_s_reg[19][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[19][12]\,
      R => '0'
    );
\b_s_reg[19][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[19][13]\,
      R => '0'
    );
\b_s_reg[19][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[19][14]\,
      R => '0'
    );
\b_s_reg[19][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[19][15]\,
      R => '0'
    );
\b_s_reg[19][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[19][16]\,
      R => '0'
    );
\b_s_reg[19][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[19][1]\,
      R => '0'
    );
\b_s_reg[19][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[19][2]\,
      R => '0'
    );
\b_s_reg[19][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[19][3]\,
      R => '0'
    );
\b_s_reg[19][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[19][4]\,
      R => '0'
    );
\b_s_reg[19][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[19][5]\,
      R => '0'
    );
\b_s_reg[19][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[19][6]\,
      R => '0'
    );
\b_s_reg[19][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[19][7]\,
      R => '0'
    );
\b_s_reg[19][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[19][8]\,
      R => '0'
    );
\b_s_reg[19][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[19][9]\,
      R => '0'
    );
\b_s_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[1][0]\,
      R => '0'
    );
\b_s_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[1][10]\,
      R => '0'
    );
\b_s_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[1][11]\,
      R => '0'
    );
\b_s_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[1][12]\,
      R => '0'
    );
\b_s_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[1][13]\,
      R => '0'
    );
\b_s_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[1][14]\,
      R => '0'
    );
\b_s_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[1][15]\,
      R => '0'
    );
\b_s_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[1][16]\,
      R => '0'
    );
\b_s_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[1][1]\,
      R => '0'
    );
\b_s_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[1][2]\,
      R => '0'
    );
\b_s_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[1][3]\,
      R => '0'
    );
\b_s_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[1][4]\,
      R => '0'
    );
\b_s_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[1][5]\,
      R => '0'
    );
\b_s_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[1][6]\,
      R => '0'
    );
\b_s_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[1][7]\,
      R => '0'
    );
\b_s_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[1][8]\,
      R => '0'
    );
\b_s_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[1][9]\,
      R => '0'
    );
\b_s_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[2][0]\,
      R => '0'
    );
\b_s_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[2][10]\,
      R => '0'
    );
\b_s_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[2][11]\,
      R => '0'
    );
\b_s_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[2][12]\,
      R => '0'
    );
\b_s_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[2][13]\,
      R => '0'
    );
\b_s_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[2][14]\,
      R => '0'
    );
\b_s_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[2][15]\,
      R => '0'
    );
\b_s_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[2][16]\,
      R => '0'
    );
\b_s_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[2][1]\,
      R => '0'
    );
\b_s_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[2][2]\,
      R => '0'
    );
\b_s_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[2][3]\,
      R => '0'
    );
\b_s_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[2][4]\,
      R => '0'
    );
\b_s_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[2][5]\,
      R => '0'
    );
\b_s_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[2][6]\,
      R => '0'
    );
\b_s_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[2][7]\,
      R => '0'
    );
\b_s_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[2][8]\,
      R => '0'
    );
\b_s_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[2][9]\,
      R => '0'
    );
\b_s_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[3][0]\,
      R => '0'
    );
\b_s_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[3][10]\,
      R => '0'
    );
\b_s_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[3][11]\,
      R => '0'
    );
\b_s_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[3][12]\,
      R => '0'
    );
\b_s_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[3][13]\,
      R => '0'
    );
\b_s_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[3][14]\,
      R => '0'
    );
\b_s_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[3][15]\,
      R => '0'
    );
\b_s_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[3][16]\,
      R => '0'
    );
\b_s_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[3][1]\,
      R => '0'
    );
\b_s_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[3][2]\,
      R => '0'
    );
\b_s_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[3][3]\,
      R => '0'
    );
\b_s_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[3][4]\,
      R => '0'
    );
\b_s_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[3][5]\,
      R => '0'
    );
\b_s_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[3][6]\,
      R => '0'
    );
\b_s_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[3][7]\,
      R => '0'
    );
\b_s_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[3][8]\,
      R => '0'
    );
\b_s_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[3][9]\,
      R => '0'
    );
\b_s_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[4][0]\,
      R => '0'
    );
\b_s_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[4][10]\,
      R => '0'
    );
\b_s_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[4][11]\,
      R => '0'
    );
\b_s_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[4][12]\,
      R => '0'
    );
\b_s_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[4][13]\,
      R => '0'
    );
\b_s_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[4][14]\,
      R => '0'
    );
\b_s_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[4][15]\,
      R => '0'
    );
\b_s_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[4][16]\,
      R => '0'
    );
\b_s_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[4][1]\,
      R => '0'
    );
\b_s_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[4][2]\,
      R => '0'
    );
\b_s_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[4][3]\,
      R => '0'
    );
\b_s_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[4][4]\,
      R => '0'
    );
\b_s_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[4][5]\,
      R => '0'
    );
\b_s_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[4][6]\,
      R => '0'
    );
\b_s_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[4][7]\,
      R => '0'
    );
\b_s_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[4][8]\,
      R => '0'
    );
\b_s_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[4][9]\,
      R => '0'
    );
\b_s_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[5][0]\,
      R => '0'
    );
\b_s_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[5][10]\,
      R => '0'
    );
\b_s_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[5][11]\,
      R => '0'
    );
\b_s_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[5][12]\,
      R => '0'
    );
\b_s_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[5][13]\,
      R => '0'
    );
\b_s_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[5][14]\,
      R => '0'
    );
\b_s_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[5][15]\,
      R => '0'
    );
\b_s_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[5][16]\,
      R => '0'
    );
\b_s_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[5][1]\,
      R => '0'
    );
\b_s_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[5][2]\,
      R => '0'
    );
\b_s_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[5][3]\,
      R => '0'
    );
\b_s_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[5][4]\,
      R => '0'
    );
\b_s_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[5][5]\,
      R => '0'
    );
\b_s_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[5][6]\,
      R => '0'
    );
\b_s_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[5][7]\,
      R => '0'
    );
\b_s_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[5][8]\,
      R => '0'
    );
\b_s_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[5][9]\,
      R => '0'
    );
\b_s_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[6][0]\,
      R => '0'
    );
\b_s_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[6][10]\,
      R => '0'
    );
\b_s_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[6][11]\,
      R => '0'
    );
\b_s_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[6][12]\,
      R => '0'
    );
\b_s_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[6][13]\,
      R => '0'
    );
\b_s_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[6][14]\,
      R => '0'
    );
\b_s_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[6][15]\,
      R => '0'
    );
\b_s_reg[6][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[6][16]\,
      R => '0'
    );
\b_s_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[6][1]\,
      R => '0'
    );
\b_s_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[6][2]\,
      R => '0'
    );
\b_s_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[6][3]\,
      R => '0'
    );
\b_s_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[6][4]\,
      R => '0'
    );
\b_s_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[6][5]\,
      R => '0'
    );
\b_s_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[6][6]\,
      R => '0'
    );
\b_s_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[6][7]\,
      R => '0'
    );
\b_s_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[6][8]\,
      R => '0'
    );
\b_s_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[6][9]\,
      R => '0'
    );
\b_s_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[7][0]\,
      R => '0'
    );
\b_s_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[7][10]\,
      R => '0'
    );
\b_s_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[7][11]\,
      R => '0'
    );
\b_s_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[7][12]\,
      R => '0'
    );
\b_s_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[7][13]\,
      R => '0'
    );
\b_s_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[7][14]\,
      R => '0'
    );
\b_s_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[7][15]\,
      R => '0'
    );
\b_s_reg[7][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[7][16]\,
      R => '0'
    );
\b_s_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[7][1]\,
      R => '0'
    );
\b_s_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[7][2]\,
      R => '0'
    );
\b_s_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[7][3]\,
      R => '0'
    );
\b_s_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[7][4]\,
      R => '0'
    );
\b_s_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[7][5]\,
      R => '0'
    );
\b_s_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[7][6]\,
      R => '0'
    );
\b_s_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[7][7]\,
      R => '0'
    );
\b_s_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[7][8]\,
      R => '0'
    );
\b_s_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[7][9]\,
      R => '0'
    );
\b_s_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[8][0]\,
      R => '0'
    );
\b_s_reg[8][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[8][10]\,
      R => '0'
    );
\b_s_reg[8][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[8][11]\,
      R => '0'
    );
\b_s_reg[8][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[8][12]\,
      R => '0'
    );
\b_s_reg[8][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[8][13]\,
      R => '0'
    );
\b_s_reg[8][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[8][14]\,
      R => '0'
    );
\b_s_reg[8][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[8][15]\,
      R => '0'
    );
\b_s_reg[8][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[8][16]\,
      R => '0'
    );
\b_s_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[8][1]\,
      R => '0'
    );
\b_s_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[8][2]\,
      R => '0'
    );
\b_s_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[8][3]\,
      R => '0'
    );
\b_s_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[8][4]\,
      R => '0'
    );
\b_s_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[8][5]\,
      R => '0'
    );
\b_s_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[8][6]\,
      R => '0'
    );
\b_s_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[8][7]\,
      R => '0'
    );
\b_s_reg[8][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[8][8]\,
      R => '0'
    );
\b_s_reg[8][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[8][9]\,
      R => '0'
    );
\b_s_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[9][0]\,
      R => '0'
    );
\b_s_reg[9][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[9][10]\,
      R => '0'
    );
\b_s_reg[9][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[9][11]\,
      R => '0'
    );
\b_s_reg[9][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[9][12]\,
      R => '0'
    );
\b_s_reg[9][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[9][13]\,
      R => '0'
    );
\b_s_reg[9][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[9][14]\,
      R => '0'
    );
\b_s_reg[9][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[9][15]\,
      R => '0'
    );
\b_s_reg[9][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[9][16]\,
      R => '0'
    );
\b_s_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[9][1]\,
      R => '0'
    );
\b_s_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[9][2]\,
      R => '0'
    );
\b_s_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[9][3]\,
      R => '0'
    );
\b_s_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[9][4]\,
      R => '0'
    );
\b_s_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[9][5]\,
      R => '0'
    );
\b_s_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[9][6]\,
      R => '0'
    );
\b_s_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[9][7]\,
      R => '0'
    );
\b_s_reg[9][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[9][8]\,
      R => '0'
    );
\b_s_reg[9][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[9][9]\,
      R => '0'
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(16),
      Q => data_o(0),
      R => '0'
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(26),
      Q => data_o(10),
      R => '0'
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(27),
      Q => data_o(11),
      R => '0'
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(28),
      Q => data_o(12),
      R => '0'
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(29),
      Q => data_o(13),
      R => '0'
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(30),
      Q => data_o(14),
      R => '0'
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(31),
      Q => data_o(15),
      R => '0'
    );
\data_o_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(32),
      Q => data_o(16),
      R => '0'
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(17),
      Q => data_o(1),
      R => '0'
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(18),
      Q => data_o(2),
      R => '0'
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(19),
      Q => data_o(3),
      R => '0'
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(20),
      Q => data_o(4),
      R => '0'
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(21),
      Q => data_o(5),
      R => '0'
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(22),
      Q => data_o(6),
      R => '0'
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(23),
      Q => data_o(7),
      R => '0'
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(24),
      Q => data_o(8),
      R => '0'
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(25),
      Q => data_o(9),
      R => '0'
    );
first_section: entity work.mac
     port map (
      P(33 downto 0) => \mac_inter[0]\(33 downto 0),
      \b_s_reg[19]\(16) => \b_s_reg_n_0_[19][16]\,
      \b_s_reg[19]\(15) => \b_s_reg_n_0_[19][15]\,
      \b_s_reg[19]\(14) => \b_s_reg_n_0_[19][14]\,
      \b_s_reg[19]\(13) => \b_s_reg_n_0_[19][13]\,
      \b_s_reg[19]\(12) => \b_s_reg_n_0_[19][12]\,
      \b_s_reg[19]\(11) => \b_s_reg_n_0_[19][11]\,
      \b_s_reg[19]\(10) => \b_s_reg_n_0_[19][10]\,
      \b_s_reg[19]\(9) => \b_s_reg_n_0_[19][9]\,
      \b_s_reg[19]\(8) => \b_s_reg_n_0_[19][8]\,
      \b_s_reg[19]\(7) => \b_s_reg_n_0_[19][7]\,
      \b_s_reg[19]\(6) => \b_s_reg_n_0_[19][6]\,
      \b_s_reg[19]\(5) => \b_s_reg_n_0_[19][5]\,
      \b_s_reg[19]\(4) => \b_s_reg_n_0_[19][4]\,
      \b_s_reg[19]\(3) => \b_s_reg_n_0_[19][3]\,
      \b_s_reg[19]\(2) => \b_s_reg_n_0_[19][2]\,
      \b_s_reg[19]\(1) => \b_s_reg_n_0_[19][1]\,
      \b_s_reg[19]\(0) => \b_s_reg_n_0_[19][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i
    );
\other_sections[10].fir_section\: entity work.\mac__parameterized0\
     port map (
      P(33 downto 0) => \mac_inter[10]\(33 downto 0),
      \b_s_reg[9]\(16) => \b_s_reg_n_0_[9][16]\,
      \b_s_reg[9]\(15) => \b_s_reg_n_0_[9][15]\,
      \b_s_reg[9]\(14) => \b_s_reg_n_0_[9][14]\,
      \b_s_reg[9]\(13) => \b_s_reg_n_0_[9][13]\,
      \b_s_reg[9]\(12) => \b_s_reg_n_0_[9][12]\,
      \b_s_reg[9]\(11) => \b_s_reg_n_0_[9][11]\,
      \b_s_reg[9]\(10) => \b_s_reg_n_0_[9][10]\,
      \b_s_reg[9]\(9) => \b_s_reg_n_0_[9][9]\,
      \b_s_reg[9]\(8) => \b_s_reg_n_0_[9][8]\,
      \b_s_reg[9]\(7) => \b_s_reg_n_0_[9][7]\,
      \b_s_reg[9]\(6) => \b_s_reg_n_0_[9][6]\,
      \b_s_reg[9]\(5) => \b_s_reg_n_0_[9][5]\,
      \b_s_reg[9]\(4) => \b_s_reg_n_0_[9][4]\,
      \b_s_reg[9]\(3) => \b_s_reg_n_0_[9][3]\,
      \b_s_reg[9]\(2) => \b_s_reg_n_0_[9][2]\,
      \b_s_reg[9]\(1) => \b_s_reg_n_0_[9][1]\,
      \b_s_reg[9]\(0) => \b_s_reg_n_0_[9][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[9]\(33 downto 0)
    );
\other_sections[11].fir_section\: entity work.\mac__parameterized0_0\
     port map (
      P(33 downto 0) => \mac_inter[11]\(33 downto 0),
      \b_s_reg[8]\(16) => \b_s_reg_n_0_[8][16]\,
      \b_s_reg[8]\(15) => \b_s_reg_n_0_[8][15]\,
      \b_s_reg[8]\(14) => \b_s_reg_n_0_[8][14]\,
      \b_s_reg[8]\(13) => \b_s_reg_n_0_[8][13]\,
      \b_s_reg[8]\(12) => \b_s_reg_n_0_[8][12]\,
      \b_s_reg[8]\(11) => \b_s_reg_n_0_[8][11]\,
      \b_s_reg[8]\(10) => \b_s_reg_n_0_[8][10]\,
      \b_s_reg[8]\(9) => \b_s_reg_n_0_[8][9]\,
      \b_s_reg[8]\(8) => \b_s_reg_n_0_[8][8]\,
      \b_s_reg[8]\(7) => \b_s_reg_n_0_[8][7]\,
      \b_s_reg[8]\(6) => \b_s_reg_n_0_[8][6]\,
      \b_s_reg[8]\(5) => \b_s_reg_n_0_[8][5]\,
      \b_s_reg[8]\(4) => \b_s_reg_n_0_[8][4]\,
      \b_s_reg[8]\(3) => \b_s_reg_n_0_[8][3]\,
      \b_s_reg[8]\(2) => \b_s_reg_n_0_[8][2]\,
      \b_s_reg[8]\(1) => \b_s_reg_n_0_[8][1]\,
      \b_s_reg[8]\(0) => \b_s_reg_n_0_[8][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[10]\(33 downto 0)
    );
\other_sections[12].fir_section\: entity work.\mac__parameterized0_1\
     port map (
      P(33 downto 0) => \mac_inter[12]\(33 downto 0),
      \b_s_reg[7]\(16) => \b_s_reg_n_0_[7][16]\,
      \b_s_reg[7]\(15) => \b_s_reg_n_0_[7][15]\,
      \b_s_reg[7]\(14) => \b_s_reg_n_0_[7][14]\,
      \b_s_reg[7]\(13) => \b_s_reg_n_0_[7][13]\,
      \b_s_reg[7]\(12) => \b_s_reg_n_0_[7][12]\,
      \b_s_reg[7]\(11) => \b_s_reg_n_0_[7][11]\,
      \b_s_reg[7]\(10) => \b_s_reg_n_0_[7][10]\,
      \b_s_reg[7]\(9) => \b_s_reg_n_0_[7][9]\,
      \b_s_reg[7]\(8) => \b_s_reg_n_0_[7][8]\,
      \b_s_reg[7]\(7) => \b_s_reg_n_0_[7][7]\,
      \b_s_reg[7]\(6) => \b_s_reg_n_0_[7][6]\,
      \b_s_reg[7]\(5) => \b_s_reg_n_0_[7][5]\,
      \b_s_reg[7]\(4) => \b_s_reg_n_0_[7][4]\,
      \b_s_reg[7]\(3) => \b_s_reg_n_0_[7][3]\,
      \b_s_reg[7]\(2) => \b_s_reg_n_0_[7][2]\,
      \b_s_reg[7]\(1) => \b_s_reg_n_0_[7][1]\,
      \b_s_reg[7]\(0) => \b_s_reg_n_0_[7][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[11]\(33 downto 0)
    );
\other_sections[13].fir_section\: entity work.\mac__parameterized0_2\
     port map (
      P(33 downto 0) => \mac_inter[13]\(33 downto 0),
      \b_s_reg[6]\(16) => \b_s_reg_n_0_[6][16]\,
      \b_s_reg[6]\(15) => \b_s_reg_n_0_[6][15]\,
      \b_s_reg[6]\(14) => \b_s_reg_n_0_[6][14]\,
      \b_s_reg[6]\(13) => \b_s_reg_n_0_[6][13]\,
      \b_s_reg[6]\(12) => \b_s_reg_n_0_[6][12]\,
      \b_s_reg[6]\(11) => \b_s_reg_n_0_[6][11]\,
      \b_s_reg[6]\(10) => \b_s_reg_n_0_[6][10]\,
      \b_s_reg[6]\(9) => \b_s_reg_n_0_[6][9]\,
      \b_s_reg[6]\(8) => \b_s_reg_n_0_[6][8]\,
      \b_s_reg[6]\(7) => \b_s_reg_n_0_[6][7]\,
      \b_s_reg[6]\(6) => \b_s_reg_n_0_[6][6]\,
      \b_s_reg[6]\(5) => \b_s_reg_n_0_[6][5]\,
      \b_s_reg[6]\(4) => \b_s_reg_n_0_[6][4]\,
      \b_s_reg[6]\(3) => \b_s_reg_n_0_[6][3]\,
      \b_s_reg[6]\(2) => \b_s_reg_n_0_[6][2]\,
      \b_s_reg[6]\(1) => \b_s_reg_n_0_[6][1]\,
      \b_s_reg[6]\(0) => \b_s_reg_n_0_[6][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[12]\(33 downto 0)
    );
\other_sections[14].fir_section\: entity work.\mac__parameterized0_3\
     port map (
      P(33 downto 0) => \mac_inter[14]\(33 downto 0),
      \b_s_reg[5]\(16) => \b_s_reg_n_0_[5][16]\,
      \b_s_reg[5]\(15) => \b_s_reg_n_0_[5][15]\,
      \b_s_reg[5]\(14) => \b_s_reg_n_0_[5][14]\,
      \b_s_reg[5]\(13) => \b_s_reg_n_0_[5][13]\,
      \b_s_reg[5]\(12) => \b_s_reg_n_0_[5][12]\,
      \b_s_reg[5]\(11) => \b_s_reg_n_0_[5][11]\,
      \b_s_reg[5]\(10) => \b_s_reg_n_0_[5][10]\,
      \b_s_reg[5]\(9) => \b_s_reg_n_0_[5][9]\,
      \b_s_reg[5]\(8) => \b_s_reg_n_0_[5][8]\,
      \b_s_reg[5]\(7) => \b_s_reg_n_0_[5][7]\,
      \b_s_reg[5]\(6) => \b_s_reg_n_0_[5][6]\,
      \b_s_reg[5]\(5) => \b_s_reg_n_0_[5][5]\,
      \b_s_reg[5]\(4) => \b_s_reg_n_0_[5][4]\,
      \b_s_reg[5]\(3) => \b_s_reg_n_0_[5][3]\,
      \b_s_reg[5]\(2) => \b_s_reg_n_0_[5][2]\,
      \b_s_reg[5]\(1) => \b_s_reg_n_0_[5][1]\,
      \b_s_reg[5]\(0) => \b_s_reg_n_0_[5][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[13]\(33 downto 0)
    );
\other_sections[15].fir_section\: entity work.\mac__parameterized0_4\
     port map (
      P(33 downto 0) => \mac_inter[15]\(33 downto 0),
      \b_s_reg[4]\(16) => \b_s_reg_n_0_[4][16]\,
      \b_s_reg[4]\(15) => \b_s_reg_n_0_[4][15]\,
      \b_s_reg[4]\(14) => \b_s_reg_n_0_[4][14]\,
      \b_s_reg[4]\(13) => \b_s_reg_n_0_[4][13]\,
      \b_s_reg[4]\(12) => \b_s_reg_n_0_[4][12]\,
      \b_s_reg[4]\(11) => \b_s_reg_n_0_[4][11]\,
      \b_s_reg[4]\(10) => \b_s_reg_n_0_[4][10]\,
      \b_s_reg[4]\(9) => \b_s_reg_n_0_[4][9]\,
      \b_s_reg[4]\(8) => \b_s_reg_n_0_[4][8]\,
      \b_s_reg[4]\(7) => \b_s_reg_n_0_[4][7]\,
      \b_s_reg[4]\(6) => \b_s_reg_n_0_[4][6]\,
      \b_s_reg[4]\(5) => \b_s_reg_n_0_[4][5]\,
      \b_s_reg[4]\(4) => \b_s_reg_n_0_[4][4]\,
      \b_s_reg[4]\(3) => \b_s_reg_n_0_[4][3]\,
      \b_s_reg[4]\(2) => \b_s_reg_n_0_[4][2]\,
      \b_s_reg[4]\(1) => \b_s_reg_n_0_[4][1]\,
      \b_s_reg[4]\(0) => \b_s_reg_n_0_[4][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[14]\(33 downto 0)
    );
\other_sections[16].fir_section\: entity work.\mac__parameterized0_5\
     port map (
      P(33 downto 0) => \mac_inter[16]\(33 downto 0),
      \b_s_reg[3]\(16) => \b_s_reg_n_0_[3][16]\,
      \b_s_reg[3]\(15) => \b_s_reg_n_0_[3][15]\,
      \b_s_reg[3]\(14) => \b_s_reg_n_0_[3][14]\,
      \b_s_reg[3]\(13) => \b_s_reg_n_0_[3][13]\,
      \b_s_reg[3]\(12) => \b_s_reg_n_0_[3][12]\,
      \b_s_reg[3]\(11) => \b_s_reg_n_0_[3][11]\,
      \b_s_reg[3]\(10) => \b_s_reg_n_0_[3][10]\,
      \b_s_reg[3]\(9) => \b_s_reg_n_0_[3][9]\,
      \b_s_reg[3]\(8) => \b_s_reg_n_0_[3][8]\,
      \b_s_reg[3]\(7) => \b_s_reg_n_0_[3][7]\,
      \b_s_reg[3]\(6) => \b_s_reg_n_0_[3][6]\,
      \b_s_reg[3]\(5) => \b_s_reg_n_0_[3][5]\,
      \b_s_reg[3]\(4) => \b_s_reg_n_0_[3][4]\,
      \b_s_reg[3]\(3) => \b_s_reg_n_0_[3][3]\,
      \b_s_reg[3]\(2) => \b_s_reg_n_0_[3][2]\,
      \b_s_reg[3]\(1) => \b_s_reg_n_0_[3][1]\,
      \b_s_reg[3]\(0) => \b_s_reg_n_0_[3][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[15]\(33 downto 0)
    );
\other_sections[17].fir_section\: entity work.\mac__parameterized0_6\
     port map (
      P(33 downto 0) => \mac_inter[17]\(33 downto 0),
      \b_s_reg[2]\(16) => \b_s_reg_n_0_[2][16]\,
      \b_s_reg[2]\(15) => \b_s_reg_n_0_[2][15]\,
      \b_s_reg[2]\(14) => \b_s_reg_n_0_[2][14]\,
      \b_s_reg[2]\(13) => \b_s_reg_n_0_[2][13]\,
      \b_s_reg[2]\(12) => \b_s_reg_n_0_[2][12]\,
      \b_s_reg[2]\(11) => \b_s_reg_n_0_[2][11]\,
      \b_s_reg[2]\(10) => \b_s_reg_n_0_[2][10]\,
      \b_s_reg[2]\(9) => \b_s_reg_n_0_[2][9]\,
      \b_s_reg[2]\(8) => \b_s_reg_n_0_[2][8]\,
      \b_s_reg[2]\(7) => \b_s_reg_n_0_[2][7]\,
      \b_s_reg[2]\(6) => \b_s_reg_n_0_[2][6]\,
      \b_s_reg[2]\(5) => \b_s_reg_n_0_[2][5]\,
      \b_s_reg[2]\(4) => \b_s_reg_n_0_[2][4]\,
      \b_s_reg[2]\(3) => \b_s_reg_n_0_[2][3]\,
      \b_s_reg[2]\(2) => \b_s_reg_n_0_[2][2]\,
      \b_s_reg[2]\(1) => \b_s_reg_n_0_[2][1]\,
      \b_s_reg[2]\(0) => \b_s_reg_n_0_[2][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[16]\(33 downto 0)
    );
\other_sections[18].fir_section\: entity work.\mac__parameterized0_7\
     port map (
      P(33 downto 0) => \mac_inter[18]\(33 downto 0),
      \b_s_reg[1]\(16) => \b_s_reg_n_0_[1][16]\,
      \b_s_reg[1]\(15) => \b_s_reg_n_0_[1][15]\,
      \b_s_reg[1]\(14) => \b_s_reg_n_0_[1][14]\,
      \b_s_reg[1]\(13) => \b_s_reg_n_0_[1][13]\,
      \b_s_reg[1]\(12) => \b_s_reg_n_0_[1][12]\,
      \b_s_reg[1]\(11) => \b_s_reg_n_0_[1][11]\,
      \b_s_reg[1]\(10) => \b_s_reg_n_0_[1][10]\,
      \b_s_reg[1]\(9) => \b_s_reg_n_0_[1][9]\,
      \b_s_reg[1]\(8) => \b_s_reg_n_0_[1][8]\,
      \b_s_reg[1]\(7) => \b_s_reg_n_0_[1][7]\,
      \b_s_reg[1]\(6) => \b_s_reg_n_0_[1][6]\,
      \b_s_reg[1]\(5) => \b_s_reg_n_0_[1][5]\,
      \b_s_reg[1]\(4) => \b_s_reg_n_0_[1][4]\,
      \b_s_reg[1]\(3) => \b_s_reg_n_0_[1][3]\,
      \b_s_reg[1]\(2) => \b_s_reg_n_0_[1][2]\,
      \b_s_reg[1]\(1) => \b_s_reg_n_0_[1][1]\,
      \b_s_reg[1]\(0) => \b_s_reg_n_0_[1][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[17]\(33 downto 0)
    );
\other_sections[19].fir_section\: entity work.\mac__parameterized0_8\
     port map (
      P(33 downto 0) => \mac_inter[18]\(33 downto 0),
      \b_s_reg[0]\(16) => \b_s_reg_n_0_[0][16]\,
      \b_s_reg[0]\(15) => \b_s_reg_n_0_[0][15]\,
      \b_s_reg[0]\(14) => \b_s_reg_n_0_[0][14]\,
      \b_s_reg[0]\(13) => \b_s_reg_n_0_[0][13]\,
      \b_s_reg[0]\(12) => \b_s_reg_n_0_[0][12]\,
      \b_s_reg[0]\(11) => \b_s_reg_n_0_[0][11]\,
      \b_s_reg[0]\(10) => \b_s_reg_n_0_[0][10]\,
      \b_s_reg[0]\(9) => \b_s_reg_n_0_[0][9]\,
      \b_s_reg[0]\(8) => \b_s_reg_n_0_[0][8]\,
      \b_s_reg[0]\(7) => \b_s_reg_n_0_[0][7]\,
      \b_s_reg[0]\(6) => \b_s_reg_n_0_[0][6]\,
      \b_s_reg[0]\(5) => \b_s_reg_n_0_[0][5]\,
      \b_s_reg[0]\(4) => \b_s_reg_n_0_[0][4]\,
      \b_s_reg[0]\(3) => \b_s_reg_n_0_[0][3]\,
      \b_s_reg[0]\(2) => \b_s_reg_n_0_[0][2]\,
      \b_s_reg[0]\(1) => \b_s_reg_n_0_[0][1]\,
      \b_s_reg[0]\(0) => \b_s_reg_n_0_[0][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sec_o(16 downto 0) => \mac_inter[19]\(32 downto 16)
    );
\other_sections[1].fir_section\: entity work.\mac__parameterized0_9\
     port map (
      P(33 downto 0) => \mac_inter[1]\(33 downto 0),
      \b_s_reg[18]\(16) => \b_s_reg_n_0_[18][16]\,
      \b_s_reg[18]\(15) => \b_s_reg_n_0_[18][15]\,
      \b_s_reg[18]\(14) => \b_s_reg_n_0_[18][14]\,
      \b_s_reg[18]\(13) => \b_s_reg_n_0_[18][13]\,
      \b_s_reg[18]\(12) => \b_s_reg_n_0_[18][12]\,
      \b_s_reg[18]\(11) => \b_s_reg_n_0_[18][11]\,
      \b_s_reg[18]\(10) => \b_s_reg_n_0_[18][10]\,
      \b_s_reg[18]\(9) => \b_s_reg_n_0_[18][9]\,
      \b_s_reg[18]\(8) => \b_s_reg_n_0_[18][8]\,
      \b_s_reg[18]\(7) => \b_s_reg_n_0_[18][7]\,
      \b_s_reg[18]\(6) => \b_s_reg_n_0_[18][6]\,
      \b_s_reg[18]\(5) => \b_s_reg_n_0_[18][5]\,
      \b_s_reg[18]\(4) => \b_s_reg_n_0_[18][4]\,
      \b_s_reg[18]\(3) => \b_s_reg_n_0_[18][3]\,
      \b_s_reg[18]\(2) => \b_s_reg_n_0_[18][2]\,
      \b_s_reg[18]\(1) => \b_s_reg_n_0_[18][1]\,
      \b_s_reg[18]\(0) => \b_s_reg_n_0_[18][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[0]\(33 downto 0)
    );
\other_sections[2].fir_section\: entity work.\mac__parameterized0_10\
     port map (
      P(33 downto 0) => \mac_inter[2]\(33 downto 0),
      \b_s_reg[17]\(16) => \b_s_reg_n_0_[17][16]\,
      \b_s_reg[17]\(15) => \b_s_reg_n_0_[17][15]\,
      \b_s_reg[17]\(14) => \b_s_reg_n_0_[17][14]\,
      \b_s_reg[17]\(13) => \b_s_reg_n_0_[17][13]\,
      \b_s_reg[17]\(12) => \b_s_reg_n_0_[17][12]\,
      \b_s_reg[17]\(11) => \b_s_reg_n_0_[17][11]\,
      \b_s_reg[17]\(10) => \b_s_reg_n_0_[17][10]\,
      \b_s_reg[17]\(9) => \b_s_reg_n_0_[17][9]\,
      \b_s_reg[17]\(8) => \b_s_reg_n_0_[17][8]\,
      \b_s_reg[17]\(7) => \b_s_reg_n_0_[17][7]\,
      \b_s_reg[17]\(6) => \b_s_reg_n_0_[17][6]\,
      \b_s_reg[17]\(5) => \b_s_reg_n_0_[17][5]\,
      \b_s_reg[17]\(4) => \b_s_reg_n_0_[17][4]\,
      \b_s_reg[17]\(3) => \b_s_reg_n_0_[17][3]\,
      \b_s_reg[17]\(2) => \b_s_reg_n_0_[17][2]\,
      \b_s_reg[17]\(1) => \b_s_reg_n_0_[17][1]\,
      \b_s_reg[17]\(0) => \b_s_reg_n_0_[17][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[1]\(33 downto 0)
    );
\other_sections[3].fir_section\: entity work.\mac__parameterized0_11\
     port map (
      P(33 downto 0) => \mac_inter[3]\(33 downto 0),
      \b_s_reg[16]\(16) => \b_s_reg_n_0_[16][16]\,
      \b_s_reg[16]\(15) => \b_s_reg_n_0_[16][15]\,
      \b_s_reg[16]\(14) => \b_s_reg_n_0_[16][14]\,
      \b_s_reg[16]\(13) => \b_s_reg_n_0_[16][13]\,
      \b_s_reg[16]\(12) => \b_s_reg_n_0_[16][12]\,
      \b_s_reg[16]\(11) => \b_s_reg_n_0_[16][11]\,
      \b_s_reg[16]\(10) => \b_s_reg_n_0_[16][10]\,
      \b_s_reg[16]\(9) => \b_s_reg_n_0_[16][9]\,
      \b_s_reg[16]\(8) => \b_s_reg_n_0_[16][8]\,
      \b_s_reg[16]\(7) => \b_s_reg_n_0_[16][7]\,
      \b_s_reg[16]\(6) => \b_s_reg_n_0_[16][6]\,
      \b_s_reg[16]\(5) => \b_s_reg_n_0_[16][5]\,
      \b_s_reg[16]\(4) => \b_s_reg_n_0_[16][4]\,
      \b_s_reg[16]\(3) => \b_s_reg_n_0_[16][3]\,
      \b_s_reg[16]\(2) => \b_s_reg_n_0_[16][2]\,
      \b_s_reg[16]\(1) => \b_s_reg_n_0_[16][1]\,
      \b_s_reg[16]\(0) => \b_s_reg_n_0_[16][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[2]\(33 downto 0)
    );
\other_sections[4].fir_section\: entity work.\mac__parameterized0_12\
     port map (
      P(33 downto 0) => \mac_inter[4]\(33 downto 0),
      \b_s_reg[15]\(16) => \b_s_reg_n_0_[15][16]\,
      \b_s_reg[15]\(15) => \b_s_reg_n_0_[15][15]\,
      \b_s_reg[15]\(14) => \b_s_reg_n_0_[15][14]\,
      \b_s_reg[15]\(13) => \b_s_reg_n_0_[15][13]\,
      \b_s_reg[15]\(12) => \b_s_reg_n_0_[15][12]\,
      \b_s_reg[15]\(11) => \b_s_reg_n_0_[15][11]\,
      \b_s_reg[15]\(10) => \b_s_reg_n_0_[15][10]\,
      \b_s_reg[15]\(9) => \b_s_reg_n_0_[15][9]\,
      \b_s_reg[15]\(8) => \b_s_reg_n_0_[15][8]\,
      \b_s_reg[15]\(7) => \b_s_reg_n_0_[15][7]\,
      \b_s_reg[15]\(6) => \b_s_reg_n_0_[15][6]\,
      \b_s_reg[15]\(5) => \b_s_reg_n_0_[15][5]\,
      \b_s_reg[15]\(4) => \b_s_reg_n_0_[15][4]\,
      \b_s_reg[15]\(3) => \b_s_reg_n_0_[15][3]\,
      \b_s_reg[15]\(2) => \b_s_reg_n_0_[15][2]\,
      \b_s_reg[15]\(1) => \b_s_reg_n_0_[15][1]\,
      \b_s_reg[15]\(0) => \b_s_reg_n_0_[15][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[3]\(33 downto 0)
    );
\other_sections[5].fir_section\: entity work.\mac__parameterized0_13\
     port map (
      P(33 downto 0) => \mac_inter[5]\(33 downto 0),
      \b_s_reg[14]\(16) => \b_s_reg_n_0_[14][16]\,
      \b_s_reg[14]\(15) => \b_s_reg_n_0_[14][15]\,
      \b_s_reg[14]\(14) => \b_s_reg_n_0_[14][14]\,
      \b_s_reg[14]\(13) => \b_s_reg_n_0_[14][13]\,
      \b_s_reg[14]\(12) => \b_s_reg_n_0_[14][12]\,
      \b_s_reg[14]\(11) => \b_s_reg_n_0_[14][11]\,
      \b_s_reg[14]\(10) => \b_s_reg_n_0_[14][10]\,
      \b_s_reg[14]\(9) => \b_s_reg_n_0_[14][9]\,
      \b_s_reg[14]\(8) => \b_s_reg_n_0_[14][8]\,
      \b_s_reg[14]\(7) => \b_s_reg_n_0_[14][7]\,
      \b_s_reg[14]\(6) => \b_s_reg_n_0_[14][6]\,
      \b_s_reg[14]\(5) => \b_s_reg_n_0_[14][5]\,
      \b_s_reg[14]\(4) => \b_s_reg_n_0_[14][4]\,
      \b_s_reg[14]\(3) => \b_s_reg_n_0_[14][3]\,
      \b_s_reg[14]\(2) => \b_s_reg_n_0_[14][2]\,
      \b_s_reg[14]\(1) => \b_s_reg_n_0_[14][1]\,
      \b_s_reg[14]\(0) => \b_s_reg_n_0_[14][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[4]\(33 downto 0)
    );
\other_sections[6].fir_section\: entity work.\mac__parameterized0_14\
     port map (
      P(33 downto 0) => \mac_inter[6]\(33 downto 0),
      \b_s_reg[13]\(16) => \b_s_reg_n_0_[13][16]\,
      \b_s_reg[13]\(15) => \b_s_reg_n_0_[13][15]\,
      \b_s_reg[13]\(14) => \b_s_reg_n_0_[13][14]\,
      \b_s_reg[13]\(13) => \b_s_reg_n_0_[13][13]\,
      \b_s_reg[13]\(12) => \b_s_reg_n_0_[13][12]\,
      \b_s_reg[13]\(11) => \b_s_reg_n_0_[13][11]\,
      \b_s_reg[13]\(10) => \b_s_reg_n_0_[13][10]\,
      \b_s_reg[13]\(9) => \b_s_reg_n_0_[13][9]\,
      \b_s_reg[13]\(8) => \b_s_reg_n_0_[13][8]\,
      \b_s_reg[13]\(7) => \b_s_reg_n_0_[13][7]\,
      \b_s_reg[13]\(6) => \b_s_reg_n_0_[13][6]\,
      \b_s_reg[13]\(5) => \b_s_reg_n_0_[13][5]\,
      \b_s_reg[13]\(4) => \b_s_reg_n_0_[13][4]\,
      \b_s_reg[13]\(3) => \b_s_reg_n_0_[13][3]\,
      \b_s_reg[13]\(2) => \b_s_reg_n_0_[13][2]\,
      \b_s_reg[13]\(1) => \b_s_reg_n_0_[13][1]\,
      \b_s_reg[13]\(0) => \b_s_reg_n_0_[13][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[5]\(33 downto 0)
    );
\other_sections[7].fir_section\: entity work.\mac__parameterized0_15\
     port map (
      P(33 downto 0) => \mac_inter[7]\(33 downto 0),
      \b_s_reg[12]\(16) => \b_s_reg_n_0_[12][16]\,
      \b_s_reg[12]\(15) => \b_s_reg_n_0_[12][15]\,
      \b_s_reg[12]\(14) => \b_s_reg_n_0_[12][14]\,
      \b_s_reg[12]\(13) => \b_s_reg_n_0_[12][13]\,
      \b_s_reg[12]\(12) => \b_s_reg_n_0_[12][12]\,
      \b_s_reg[12]\(11) => \b_s_reg_n_0_[12][11]\,
      \b_s_reg[12]\(10) => \b_s_reg_n_0_[12][10]\,
      \b_s_reg[12]\(9) => \b_s_reg_n_0_[12][9]\,
      \b_s_reg[12]\(8) => \b_s_reg_n_0_[12][8]\,
      \b_s_reg[12]\(7) => \b_s_reg_n_0_[12][7]\,
      \b_s_reg[12]\(6) => \b_s_reg_n_0_[12][6]\,
      \b_s_reg[12]\(5) => \b_s_reg_n_0_[12][5]\,
      \b_s_reg[12]\(4) => \b_s_reg_n_0_[12][4]\,
      \b_s_reg[12]\(3) => \b_s_reg_n_0_[12][3]\,
      \b_s_reg[12]\(2) => \b_s_reg_n_0_[12][2]\,
      \b_s_reg[12]\(1) => \b_s_reg_n_0_[12][1]\,
      \b_s_reg[12]\(0) => \b_s_reg_n_0_[12][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[6]\(33 downto 0)
    );
\other_sections[8].fir_section\: entity work.\mac__parameterized0_16\
     port map (
      P(33 downto 0) => \mac_inter[8]\(33 downto 0),
      \b_s_reg[11]\(16) => \b_s_reg_n_0_[11][16]\,
      \b_s_reg[11]\(15) => \b_s_reg_n_0_[11][15]\,
      \b_s_reg[11]\(14) => \b_s_reg_n_0_[11][14]\,
      \b_s_reg[11]\(13) => \b_s_reg_n_0_[11][13]\,
      \b_s_reg[11]\(12) => \b_s_reg_n_0_[11][12]\,
      \b_s_reg[11]\(11) => \b_s_reg_n_0_[11][11]\,
      \b_s_reg[11]\(10) => \b_s_reg_n_0_[11][10]\,
      \b_s_reg[11]\(9) => \b_s_reg_n_0_[11][9]\,
      \b_s_reg[11]\(8) => \b_s_reg_n_0_[11][8]\,
      \b_s_reg[11]\(7) => \b_s_reg_n_0_[11][7]\,
      \b_s_reg[11]\(6) => \b_s_reg_n_0_[11][6]\,
      \b_s_reg[11]\(5) => \b_s_reg_n_0_[11][5]\,
      \b_s_reg[11]\(4) => \b_s_reg_n_0_[11][4]\,
      \b_s_reg[11]\(3) => \b_s_reg_n_0_[11][3]\,
      \b_s_reg[11]\(2) => \b_s_reg_n_0_[11][2]\,
      \b_s_reg[11]\(1) => \b_s_reg_n_0_[11][1]\,
      \b_s_reg[11]\(0) => \b_s_reg_n_0_[11][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[7]\(33 downto 0)
    );
\other_sections[9].fir_section\: entity work.\mac__parameterized0_17\
     port map (
      P(33 downto 0) => \mac_inter[8]\(33 downto 0),
      \b_s_reg[10]\(16) => \b_s_reg_n_0_[10][16]\,
      \b_s_reg[10]\(15) => \b_s_reg_n_0_[10][15]\,
      \b_s_reg[10]\(14) => \b_s_reg_n_0_[10][14]\,
      \b_s_reg[10]\(13) => \b_s_reg_n_0_[10][13]\,
      \b_s_reg[10]\(12) => \b_s_reg_n_0_[10][12]\,
      \b_s_reg[10]\(11) => \b_s_reg_n_0_[10][11]\,
      \b_s_reg[10]\(10) => \b_s_reg_n_0_[10][10]\,
      \b_s_reg[10]\(9) => \b_s_reg_n_0_[10][9]\,
      \b_s_reg[10]\(8) => \b_s_reg_n_0_[10][8]\,
      \b_s_reg[10]\(7) => \b_s_reg_n_0_[10][7]\,
      \b_s_reg[10]\(6) => \b_s_reg_n_0_[10][6]\,
      \b_s_reg[10]\(5) => \b_s_reg_n_0_[10][5]\,
      \b_s_reg[10]\(4) => \b_s_reg_n_0_[10][4]\,
      \b_s_reg[10]\(3) => \b_s_reg_n_0_[10][3]\,
      \b_s_reg[10]\(2) => \b_s_reg_n_0_[10][2]\,
      \b_s_reg[10]\(1) => \b_s_reg_n_0_[10][1]\,
      \b_s_reg[10]\(0) => \b_s_reg_n_0_[10][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[9]\(33 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fir_filtar__1\ is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    we_i : in STD_LOGIC;
    coef_addr_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fir_filtar__1\ : entity is "fir_filtar";
  attribute dont_touch : string;
  attribute dont_touch of \fir_filtar__1\ : entity is "true";
  attribute fir_ord : integer;
  attribute fir_ord of \fir_filtar__1\ : entity is 20;
  attribute fixed_width : integer;
  attribute fixed_width of \fir_filtar__1\ : entity is 1;
  attribute input_data_width : integer;
  attribute input_data_width of \fir_filtar__1\ : entity is 17;
  attribute output_data_width : integer;
  attribute output_data_width of \fir_filtar__1\ : entity is 17;
end \fir_filtar__1\;

architecture STRUCTURE of \fir_filtar__1\ is
  signal \b_s[0]\ : STD_LOGIC;
  signal \b_s[10]\ : STD_LOGIC;
  signal \b_s[11]\ : STD_LOGIC;
  signal \b_s[12]\ : STD_LOGIC;
  signal \b_s[13]\ : STD_LOGIC;
  signal \b_s[14]\ : STD_LOGIC;
  signal \b_s[15]\ : STD_LOGIC;
  signal \b_s[16]\ : STD_LOGIC;
  signal \b_s[17]\ : STD_LOGIC;
  signal \b_s[18]\ : STD_LOGIC;
  signal \b_s[19]\ : STD_LOGIC;
  signal \b_s[1]\ : STD_LOGIC;
  signal \b_s[2]\ : STD_LOGIC;
  signal \b_s[3]\ : STD_LOGIC;
  signal \b_s[4]\ : STD_LOGIC;
  signal \b_s[5]\ : STD_LOGIC;
  signal \b_s[6]\ : STD_LOGIC;
  signal \b_s[7]\ : STD_LOGIC;
  signal \b_s[8]\ : STD_LOGIC;
  signal \b_s[9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][9]\ : STD_LOGIC;
  signal \mac_inter[0]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[10]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[11]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[12]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[13]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[14]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[15]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[16]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[17]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[18]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[19]\ : STD_LOGIC_VECTOR ( 32 downto 16 );
  signal \mac_inter[1]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[2]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[3]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[4]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[5]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[6]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[7]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[8]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[9]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
begin
\b_s[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[0]\
    );
\b_s[10][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(0),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[10]\
    );
\b_s[11][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(2),
      O => \b_s[11]\
    );
\b_s[12][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(1),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(2),
      O => \b_s[12]\
    );
\b_s[13][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[13]\
    );
\b_s[14][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(0),
      O => \b_s[14]\
    );
\b_s[15][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(4),
      O => \b_s[15]\
    );
\b_s[16][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(0),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(4),
      O => \b_s[16]\
    );
\b_s[17][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(1),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(4),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[17]\
    );
\b_s[18][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(0),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(4),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[18]\
    );
\b_s[19][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(2),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[19]\
    );
\b_s[1][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[1]\
    );
\b_s[2][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[2]\
    );
\b_s[3][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[3]\
    );
\b_s[4][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(2),
      O => \b_s[4]\
    );
\b_s[5][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(0),
      O => \b_s[5]\
    );
\b_s[6][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(1),
      O => \b_s[6]\
    );
\b_s[7][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[7]\
    );
\b_s[8][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(0),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(3),
      O => \b_s[8]\
    );
\b_s[9][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(1),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[9]\
    );
\b_s_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[0][0]\,
      R => '0'
    );
\b_s_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[0][10]\,
      R => '0'
    );
\b_s_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[0][11]\,
      R => '0'
    );
\b_s_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[0][12]\,
      R => '0'
    );
\b_s_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[0][13]\,
      R => '0'
    );
\b_s_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[0][14]\,
      R => '0'
    );
\b_s_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[0][15]\,
      R => '0'
    );
\b_s_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[0][16]\,
      R => '0'
    );
\b_s_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[0][1]\,
      R => '0'
    );
\b_s_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[0][2]\,
      R => '0'
    );
\b_s_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[0][3]\,
      R => '0'
    );
\b_s_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[0][4]\,
      R => '0'
    );
\b_s_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[0][5]\,
      R => '0'
    );
\b_s_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[0][6]\,
      R => '0'
    );
\b_s_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[0][7]\,
      R => '0'
    );
\b_s_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[0][8]\,
      R => '0'
    );
\b_s_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[0][9]\,
      R => '0'
    );
\b_s_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[10][0]\,
      R => '0'
    );
\b_s_reg[10][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[10][10]\,
      R => '0'
    );
\b_s_reg[10][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[10][11]\,
      R => '0'
    );
\b_s_reg[10][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[10][12]\,
      R => '0'
    );
\b_s_reg[10][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[10][13]\,
      R => '0'
    );
\b_s_reg[10][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[10][14]\,
      R => '0'
    );
\b_s_reg[10][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[10][15]\,
      R => '0'
    );
\b_s_reg[10][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[10][16]\,
      R => '0'
    );
\b_s_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[10][1]\,
      R => '0'
    );
\b_s_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[10][2]\,
      R => '0'
    );
\b_s_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[10][3]\,
      R => '0'
    );
\b_s_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[10][4]\,
      R => '0'
    );
\b_s_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[10][5]\,
      R => '0'
    );
\b_s_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[10][6]\,
      R => '0'
    );
\b_s_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[10][7]\,
      R => '0'
    );
\b_s_reg[10][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[10][8]\,
      R => '0'
    );
\b_s_reg[10][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[10][9]\,
      R => '0'
    );
\b_s_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[11][0]\,
      R => '0'
    );
\b_s_reg[11][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[11][10]\,
      R => '0'
    );
\b_s_reg[11][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[11][11]\,
      R => '0'
    );
\b_s_reg[11][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[11][12]\,
      R => '0'
    );
\b_s_reg[11][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[11][13]\,
      R => '0'
    );
\b_s_reg[11][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[11][14]\,
      R => '0'
    );
\b_s_reg[11][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[11][15]\,
      R => '0'
    );
\b_s_reg[11][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[11][16]\,
      R => '0'
    );
\b_s_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[11][1]\,
      R => '0'
    );
\b_s_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[11][2]\,
      R => '0'
    );
\b_s_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[11][3]\,
      R => '0'
    );
\b_s_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[11][4]\,
      R => '0'
    );
\b_s_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[11][5]\,
      R => '0'
    );
\b_s_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[11][6]\,
      R => '0'
    );
\b_s_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[11][7]\,
      R => '0'
    );
\b_s_reg[11][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[11][8]\,
      R => '0'
    );
\b_s_reg[11][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[11][9]\,
      R => '0'
    );
\b_s_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[12][0]\,
      R => '0'
    );
\b_s_reg[12][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[12][10]\,
      R => '0'
    );
\b_s_reg[12][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[12][11]\,
      R => '0'
    );
\b_s_reg[12][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[12][12]\,
      R => '0'
    );
\b_s_reg[12][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[12][13]\,
      R => '0'
    );
\b_s_reg[12][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[12][14]\,
      R => '0'
    );
\b_s_reg[12][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[12][15]\,
      R => '0'
    );
\b_s_reg[12][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[12][16]\,
      R => '0'
    );
\b_s_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[12][1]\,
      R => '0'
    );
\b_s_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[12][2]\,
      R => '0'
    );
\b_s_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[12][3]\,
      R => '0'
    );
\b_s_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[12][4]\,
      R => '0'
    );
\b_s_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[12][5]\,
      R => '0'
    );
\b_s_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[12][6]\,
      R => '0'
    );
\b_s_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[12][7]\,
      R => '0'
    );
\b_s_reg[12][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[12][8]\,
      R => '0'
    );
\b_s_reg[12][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[12][9]\,
      R => '0'
    );
\b_s_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[13][0]\,
      R => '0'
    );
\b_s_reg[13][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[13][10]\,
      R => '0'
    );
\b_s_reg[13][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[13][11]\,
      R => '0'
    );
\b_s_reg[13][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[13][12]\,
      R => '0'
    );
\b_s_reg[13][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[13][13]\,
      R => '0'
    );
\b_s_reg[13][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[13][14]\,
      R => '0'
    );
\b_s_reg[13][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[13][15]\,
      R => '0'
    );
\b_s_reg[13][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[13][16]\,
      R => '0'
    );
\b_s_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[13][1]\,
      R => '0'
    );
\b_s_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[13][2]\,
      R => '0'
    );
\b_s_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[13][3]\,
      R => '0'
    );
\b_s_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[13][4]\,
      R => '0'
    );
\b_s_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[13][5]\,
      R => '0'
    );
\b_s_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[13][6]\,
      R => '0'
    );
\b_s_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[13][7]\,
      R => '0'
    );
\b_s_reg[13][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[13][8]\,
      R => '0'
    );
\b_s_reg[13][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[13][9]\,
      R => '0'
    );
\b_s_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[14][0]\,
      R => '0'
    );
\b_s_reg[14][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[14][10]\,
      R => '0'
    );
\b_s_reg[14][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[14][11]\,
      R => '0'
    );
\b_s_reg[14][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[14][12]\,
      R => '0'
    );
\b_s_reg[14][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[14][13]\,
      R => '0'
    );
\b_s_reg[14][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[14][14]\,
      R => '0'
    );
\b_s_reg[14][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[14][15]\,
      R => '0'
    );
\b_s_reg[14][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[14][16]\,
      R => '0'
    );
\b_s_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[14][1]\,
      R => '0'
    );
\b_s_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[14][2]\,
      R => '0'
    );
\b_s_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[14][3]\,
      R => '0'
    );
\b_s_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[14][4]\,
      R => '0'
    );
\b_s_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[14][5]\,
      R => '0'
    );
\b_s_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[14][6]\,
      R => '0'
    );
\b_s_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[14][7]\,
      R => '0'
    );
\b_s_reg[14][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[14][8]\,
      R => '0'
    );
\b_s_reg[14][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[14][9]\,
      R => '0'
    );
\b_s_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[15][0]\,
      R => '0'
    );
\b_s_reg[15][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[15][10]\,
      R => '0'
    );
\b_s_reg[15][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[15][11]\,
      R => '0'
    );
\b_s_reg[15][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[15][12]\,
      R => '0'
    );
\b_s_reg[15][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[15][13]\,
      R => '0'
    );
\b_s_reg[15][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[15][14]\,
      R => '0'
    );
\b_s_reg[15][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[15][15]\,
      R => '0'
    );
\b_s_reg[15][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[15][16]\,
      R => '0'
    );
\b_s_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[15][1]\,
      R => '0'
    );
\b_s_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[15][2]\,
      R => '0'
    );
\b_s_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[15][3]\,
      R => '0'
    );
\b_s_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[15][4]\,
      R => '0'
    );
\b_s_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[15][5]\,
      R => '0'
    );
\b_s_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[15][6]\,
      R => '0'
    );
\b_s_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[15][7]\,
      R => '0'
    );
\b_s_reg[15][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[15][8]\,
      R => '0'
    );
\b_s_reg[15][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[15][9]\,
      R => '0'
    );
\b_s_reg[16][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[16][0]\,
      R => '0'
    );
\b_s_reg[16][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[16][10]\,
      R => '0'
    );
\b_s_reg[16][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[16][11]\,
      R => '0'
    );
\b_s_reg[16][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[16][12]\,
      R => '0'
    );
\b_s_reg[16][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[16][13]\,
      R => '0'
    );
\b_s_reg[16][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[16][14]\,
      R => '0'
    );
\b_s_reg[16][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[16][15]\,
      R => '0'
    );
\b_s_reg[16][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[16][16]\,
      R => '0'
    );
\b_s_reg[16][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[16][1]\,
      R => '0'
    );
\b_s_reg[16][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[16][2]\,
      R => '0'
    );
\b_s_reg[16][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[16][3]\,
      R => '0'
    );
\b_s_reg[16][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[16][4]\,
      R => '0'
    );
\b_s_reg[16][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[16][5]\,
      R => '0'
    );
\b_s_reg[16][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[16][6]\,
      R => '0'
    );
\b_s_reg[16][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[16][7]\,
      R => '0'
    );
\b_s_reg[16][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[16][8]\,
      R => '0'
    );
\b_s_reg[16][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[16][9]\,
      R => '0'
    );
\b_s_reg[17][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[17][0]\,
      R => '0'
    );
\b_s_reg[17][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[17][10]\,
      R => '0'
    );
\b_s_reg[17][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[17][11]\,
      R => '0'
    );
\b_s_reg[17][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[17][12]\,
      R => '0'
    );
\b_s_reg[17][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[17][13]\,
      R => '0'
    );
\b_s_reg[17][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[17][14]\,
      R => '0'
    );
\b_s_reg[17][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[17][15]\,
      R => '0'
    );
\b_s_reg[17][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[17][16]\,
      R => '0'
    );
\b_s_reg[17][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[17][1]\,
      R => '0'
    );
\b_s_reg[17][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[17][2]\,
      R => '0'
    );
\b_s_reg[17][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[17][3]\,
      R => '0'
    );
\b_s_reg[17][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[17][4]\,
      R => '0'
    );
\b_s_reg[17][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[17][5]\,
      R => '0'
    );
\b_s_reg[17][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[17][6]\,
      R => '0'
    );
\b_s_reg[17][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[17][7]\,
      R => '0'
    );
\b_s_reg[17][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[17][8]\,
      R => '0'
    );
\b_s_reg[17][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[17][9]\,
      R => '0'
    );
\b_s_reg[18][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[18][0]\,
      R => '0'
    );
\b_s_reg[18][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[18][10]\,
      R => '0'
    );
\b_s_reg[18][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[18][11]\,
      R => '0'
    );
\b_s_reg[18][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[18][12]\,
      R => '0'
    );
\b_s_reg[18][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[18][13]\,
      R => '0'
    );
\b_s_reg[18][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[18][14]\,
      R => '0'
    );
\b_s_reg[18][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[18][15]\,
      R => '0'
    );
\b_s_reg[18][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[18][16]\,
      R => '0'
    );
\b_s_reg[18][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[18][1]\,
      R => '0'
    );
\b_s_reg[18][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[18][2]\,
      R => '0'
    );
\b_s_reg[18][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[18][3]\,
      R => '0'
    );
\b_s_reg[18][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[18][4]\,
      R => '0'
    );
\b_s_reg[18][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[18][5]\,
      R => '0'
    );
\b_s_reg[18][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[18][6]\,
      R => '0'
    );
\b_s_reg[18][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[18][7]\,
      R => '0'
    );
\b_s_reg[18][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[18][8]\,
      R => '0'
    );
\b_s_reg[18][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[18][9]\,
      R => '0'
    );
\b_s_reg[19][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[19][0]\,
      R => '0'
    );
\b_s_reg[19][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[19][10]\,
      R => '0'
    );
\b_s_reg[19][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[19][11]\,
      R => '0'
    );
\b_s_reg[19][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[19][12]\,
      R => '0'
    );
\b_s_reg[19][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[19][13]\,
      R => '0'
    );
\b_s_reg[19][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[19][14]\,
      R => '0'
    );
\b_s_reg[19][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[19][15]\,
      R => '0'
    );
\b_s_reg[19][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[19][16]\,
      R => '0'
    );
\b_s_reg[19][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[19][1]\,
      R => '0'
    );
\b_s_reg[19][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[19][2]\,
      R => '0'
    );
\b_s_reg[19][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[19][3]\,
      R => '0'
    );
\b_s_reg[19][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[19][4]\,
      R => '0'
    );
\b_s_reg[19][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[19][5]\,
      R => '0'
    );
\b_s_reg[19][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[19][6]\,
      R => '0'
    );
\b_s_reg[19][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[19][7]\,
      R => '0'
    );
\b_s_reg[19][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[19][8]\,
      R => '0'
    );
\b_s_reg[19][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[19][9]\,
      R => '0'
    );
\b_s_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[1][0]\,
      R => '0'
    );
\b_s_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[1][10]\,
      R => '0'
    );
\b_s_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[1][11]\,
      R => '0'
    );
\b_s_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[1][12]\,
      R => '0'
    );
\b_s_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[1][13]\,
      R => '0'
    );
\b_s_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[1][14]\,
      R => '0'
    );
\b_s_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[1][15]\,
      R => '0'
    );
\b_s_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[1][16]\,
      R => '0'
    );
\b_s_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[1][1]\,
      R => '0'
    );
\b_s_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[1][2]\,
      R => '0'
    );
\b_s_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[1][3]\,
      R => '0'
    );
\b_s_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[1][4]\,
      R => '0'
    );
\b_s_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[1][5]\,
      R => '0'
    );
\b_s_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[1][6]\,
      R => '0'
    );
\b_s_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[1][7]\,
      R => '0'
    );
\b_s_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[1][8]\,
      R => '0'
    );
\b_s_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[1][9]\,
      R => '0'
    );
\b_s_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[2][0]\,
      R => '0'
    );
\b_s_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[2][10]\,
      R => '0'
    );
\b_s_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[2][11]\,
      R => '0'
    );
\b_s_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[2][12]\,
      R => '0'
    );
\b_s_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[2][13]\,
      R => '0'
    );
\b_s_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[2][14]\,
      R => '0'
    );
\b_s_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[2][15]\,
      R => '0'
    );
\b_s_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[2][16]\,
      R => '0'
    );
\b_s_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[2][1]\,
      R => '0'
    );
\b_s_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[2][2]\,
      R => '0'
    );
\b_s_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[2][3]\,
      R => '0'
    );
\b_s_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[2][4]\,
      R => '0'
    );
\b_s_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[2][5]\,
      R => '0'
    );
\b_s_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[2][6]\,
      R => '0'
    );
\b_s_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[2][7]\,
      R => '0'
    );
\b_s_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[2][8]\,
      R => '0'
    );
\b_s_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[2][9]\,
      R => '0'
    );
\b_s_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[3][0]\,
      R => '0'
    );
\b_s_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[3][10]\,
      R => '0'
    );
\b_s_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[3][11]\,
      R => '0'
    );
\b_s_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[3][12]\,
      R => '0'
    );
\b_s_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[3][13]\,
      R => '0'
    );
\b_s_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[3][14]\,
      R => '0'
    );
\b_s_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[3][15]\,
      R => '0'
    );
\b_s_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[3][16]\,
      R => '0'
    );
\b_s_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[3][1]\,
      R => '0'
    );
\b_s_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[3][2]\,
      R => '0'
    );
\b_s_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[3][3]\,
      R => '0'
    );
\b_s_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[3][4]\,
      R => '0'
    );
\b_s_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[3][5]\,
      R => '0'
    );
\b_s_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[3][6]\,
      R => '0'
    );
\b_s_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[3][7]\,
      R => '0'
    );
\b_s_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[3][8]\,
      R => '0'
    );
\b_s_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[3][9]\,
      R => '0'
    );
\b_s_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[4][0]\,
      R => '0'
    );
\b_s_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[4][10]\,
      R => '0'
    );
\b_s_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[4][11]\,
      R => '0'
    );
\b_s_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[4][12]\,
      R => '0'
    );
\b_s_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[4][13]\,
      R => '0'
    );
\b_s_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[4][14]\,
      R => '0'
    );
\b_s_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[4][15]\,
      R => '0'
    );
\b_s_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[4][16]\,
      R => '0'
    );
\b_s_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[4][1]\,
      R => '0'
    );
\b_s_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[4][2]\,
      R => '0'
    );
\b_s_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[4][3]\,
      R => '0'
    );
\b_s_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[4][4]\,
      R => '0'
    );
\b_s_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[4][5]\,
      R => '0'
    );
\b_s_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[4][6]\,
      R => '0'
    );
\b_s_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[4][7]\,
      R => '0'
    );
\b_s_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[4][8]\,
      R => '0'
    );
\b_s_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[4][9]\,
      R => '0'
    );
\b_s_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[5][0]\,
      R => '0'
    );
\b_s_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[5][10]\,
      R => '0'
    );
\b_s_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[5][11]\,
      R => '0'
    );
\b_s_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[5][12]\,
      R => '0'
    );
\b_s_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[5][13]\,
      R => '0'
    );
\b_s_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[5][14]\,
      R => '0'
    );
\b_s_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[5][15]\,
      R => '0'
    );
\b_s_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[5][16]\,
      R => '0'
    );
\b_s_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[5][1]\,
      R => '0'
    );
\b_s_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[5][2]\,
      R => '0'
    );
\b_s_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[5][3]\,
      R => '0'
    );
\b_s_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[5][4]\,
      R => '0'
    );
\b_s_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[5][5]\,
      R => '0'
    );
\b_s_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[5][6]\,
      R => '0'
    );
\b_s_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[5][7]\,
      R => '0'
    );
\b_s_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[5][8]\,
      R => '0'
    );
\b_s_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[5][9]\,
      R => '0'
    );
\b_s_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[6][0]\,
      R => '0'
    );
\b_s_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[6][10]\,
      R => '0'
    );
\b_s_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[6][11]\,
      R => '0'
    );
\b_s_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[6][12]\,
      R => '0'
    );
\b_s_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[6][13]\,
      R => '0'
    );
\b_s_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[6][14]\,
      R => '0'
    );
\b_s_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[6][15]\,
      R => '0'
    );
\b_s_reg[6][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[6][16]\,
      R => '0'
    );
\b_s_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[6][1]\,
      R => '0'
    );
\b_s_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[6][2]\,
      R => '0'
    );
\b_s_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[6][3]\,
      R => '0'
    );
\b_s_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[6][4]\,
      R => '0'
    );
\b_s_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[6][5]\,
      R => '0'
    );
\b_s_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[6][6]\,
      R => '0'
    );
\b_s_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[6][7]\,
      R => '0'
    );
\b_s_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[6][8]\,
      R => '0'
    );
\b_s_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[6][9]\,
      R => '0'
    );
\b_s_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[7][0]\,
      R => '0'
    );
\b_s_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[7][10]\,
      R => '0'
    );
\b_s_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[7][11]\,
      R => '0'
    );
\b_s_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[7][12]\,
      R => '0'
    );
\b_s_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[7][13]\,
      R => '0'
    );
\b_s_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[7][14]\,
      R => '0'
    );
\b_s_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[7][15]\,
      R => '0'
    );
\b_s_reg[7][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[7][16]\,
      R => '0'
    );
\b_s_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[7][1]\,
      R => '0'
    );
\b_s_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[7][2]\,
      R => '0'
    );
\b_s_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[7][3]\,
      R => '0'
    );
\b_s_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[7][4]\,
      R => '0'
    );
\b_s_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[7][5]\,
      R => '0'
    );
\b_s_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[7][6]\,
      R => '0'
    );
\b_s_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[7][7]\,
      R => '0'
    );
\b_s_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[7][8]\,
      R => '0'
    );
\b_s_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[7][9]\,
      R => '0'
    );
\b_s_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[8][0]\,
      R => '0'
    );
\b_s_reg[8][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[8][10]\,
      R => '0'
    );
\b_s_reg[8][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[8][11]\,
      R => '0'
    );
\b_s_reg[8][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[8][12]\,
      R => '0'
    );
\b_s_reg[8][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[8][13]\,
      R => '0'
    );
\b_s_reg[8][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[8][14]\,
      R => '0'
    );
\b_s_reg[8][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[8][15]\,
      R => '0'
    );
\b_s_reg[8][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[8][16]\,
      R => '0'
    );
\b_s_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[8][1]\,
      R => '0'
    );
\b_s_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[8][2]\,
      R => '0'
    );
\b_s_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[8][3]\,
      R => '0'
    );
\b_s_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[8][4]\,
      R => '0'
    );
\b_s_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[8][5]\,
      R => '0'
    );
\b_s_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[8][6]\,
      R => '0'
    );
\b_s_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[8][7]\,
      R => '0'
    );
\b_s_reg[8][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[8][8]\,
      R => '0'
    );
\b_s_reg[8][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[8][9]\,
      R => '0'
    );
\b_s_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[9][0]\,
      R => '0'
    );
\b_s_reg[9][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[9][10]\,
      R => '0'
    );
\b_s_reg[9][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[9][11]\,
      R => '0'
    );
\b_s_reg[9][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[9][12]\,
      R => '0'
    );
\b_s_reg[9][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[9][13]\,
      R => '0'
    );
\b_s_reg[9][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[9][14]\,
      R => '0'
    );
\b_s_reg[9][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[9][15]\,
      R => '0'
    );
\b_s_reg[9][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[9][16]\,
      R => '0'
    );
\b_s_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[9][1]\,
      R => '0'
    );
\b_s_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[9][2]\,
      R => '0'
    );
\b_s_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[9][3]\,
      R => '0'
    );
\b_s_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[9][4]\,
      R => '0'
    );
\b_s_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[9][5]\,
      R => '0'
    );
\b_s_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[9][6]\,
      R => '0'
    );
\b_s_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[9][7]\,
      R => '0'
    );
\b_s_reg[9][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[9][8]\,
      R => '0'
    );
\b_s_reg[9][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[9][9]\,
      R => '0'
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(16),
      Q => data_o(0),
      R => '0'
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(26),
      Q => data_o(10),
      R => '0'
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(27),
      Q => data_o(11),
      R => '0'
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(28),
      Q => data_o(12),
      R => '0'
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(29),
      Q => data_o(13),
      R => '0'
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(30),
      Q => data_o(14),
      R => '0'
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(31),
      Q => data_o(15),
      R => '0'
    );
\data_o_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(32),
      Q => data_o(16),
      R => '0'
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(17),
      Q => data_o(1),
      R => '0'
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(18),
      Q => data_o(2),
      R => '0'
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(19),
      Q => data_o(3),
      R => '0'
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(20),
      Q => data_o(4),
      R => '0'
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(21),
      Q => data_o(5),
      R => '0'
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(22),
      Q => data_o(6),
      R => '0'
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(23),
      Q => data_o(7),
      R => '0'
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(24),
      Q => data_o(8),
      R => '0'
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(25),
      Q => data_o(9),
      R => '0'
    );
first_section: entity work.mac_18
     port map (
      P(33 downto 0) => \mac_inter[0]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[19][16]\,
      Q(15) => \b_s_reg_n_0_[19][15]\,
      Q(14) => \b_s_reg_n_0_[19][14]\,
      Q(13) => \b_s_reg_n_0_[19][13]\,
      Q(12) => \b_s_reg_n_0_[19][12]\,
      Q(11) => \b_s_reg_n_0_[19][11]\,
      Q(10) => \b_s_reg_n_0_[19][10]\,
      Q(9) => \b_s_reg_n_0_[19][9]\,
      Q(8) => \b_s_reg_n_0_[19][8]\,
      Q(7) => \b_s_reg_n_0_[19][7]\,
      Q(6) => \b_s_reg_n_0_[19][6]\,
      Q(5) => \b_s_reg_n_0_[19][5]\,
      Q(4) => \b_s_reg_n_0_[19][4]\,
      Q(3) => \b_s_reg_n_0_[19][3]\,
      Q(2) => \b_s_reg_n_0_[19][2]\,
      Q(1) => \b_s_reg_n_0_[19][1]\,
      Q(0) => \b_s_reg_n_0_[19][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i
    );
\other_sections[10].fir_section\: entity work.\mac__parameterized0_19\
     port map (
      P(33 downto 0) => \mac_inter[10]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[9][16]\,
      Q(15) => \b_s_reg_n_0_[9][15]\,
      Q(14) => \b_s_reg_n_0_[9][14]\,
      Q(13) => \b_s_reg_n_0_[9][13]\,
      Q(12) => \b_s_reg_n_0_[9][12]\,
      Q(11) => \b_s_reg_n_0_[9][11]\,
      Q(10) => \b_s_reg_n_0_[9][10]\,
      Q(9) => \b_s_reg_n_0_[9][9]\,
      Q(8) => \b_s_reg_n_0_[9][8]\,
      Q(7) => \b_s_reg_n_0_[9][7]\,
      Q(6) => \b_s_reg_n_0_[9][6]\,
      Q(5) => \b_s_reg_n_0_[9][5]\,
      Q(4) => \b_s_reg_n_0_[9][4]\,
      Q(3) => \b_s_reg_n_0_[9][3]\,
      Q(2) => \b_s_reg_n_0_[9][2]\,
      Q(1) => \b_s_reg_n_0_[9][1]\,
      Q(0) => \b_s_reg_n_0_[9][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[9]\(33 downto 0)
    );
\other_sections[11].fir_section\: entity work.\mac__parameterized0_20\
     port map (
      P(33 downto 0) => \mac_inter[11]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[8][16]\,
      Q(15) => \b_s_reg_n_0_[8][15]\,
      Q(14) => \b_s_reg_n_0_[8][14]\,
      Q(13) => \b_s_reg_n_0_[8][13]\,
      Q(12) => \b_s_reg_n_0_[8][12]\,
      Q(11) => \b_s_reg_n_0_[8][11]\,
      Q(10) => \b_s_reg_n_0_[8][10]\,
      Q(9) => \b_s_reg_n_0_[8][9]\,
      Q(8) => \b_s_reg_n_0_[8][8]\,
      Q(7) => \b_s_reg_n_0_[8][7]\,
      Q(6) => \b_s_reg_n_0_[8][6]\,
      Q(5) => \b_s_reg_n_0_[8][5]\,
      Q(4) => \b_s_reg_n_0_[8][4]\,
      Q(3) => \b_s_reg_n_0_[8][3]\,
      Q(2) => \b_s_reg_n_0_[8][2]\,
      Q(1) => \b_s_reg_n_0_[8][1]\,
      Q(0) => \b_s_reg_n_0_[8][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[10]\(33 downto 0)
    );
\other_sections[12].fir_section\: entity work.\mac__parameterized0_21\
     port map (
      P(33 downto 0) => \mac_inter[12]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[7][16]\,
      Q(15) => \b_s_reg_n_0_[7][15]\,
      Q(14) => \b_s_reg_n_0_[7][14]\,
      Q(13) => \b_s_reg_n_0_[7][13]\,
      Q(12) => \b_s_reg_n_0_[7][12]\,
      Q(11) => \b_s_reg_n_0_[7][11]\,
      Q(10) => \b_s_reg_n_0_[7][10]\,
      Q(9) => \b_s_reg_n_0_[7][9]\,
      Q(8) => \b_s_reg_n_0_[7][8]\,
      Q(7) => \b_s_reg_n_0_[7][7]\,
      Q(6) => \b_s_reg_n_0_[7][6]\,
      Q(5) => \b_s_reg_n_0_[7][5]\,
      Q(4) => \b_s_reg_n_0_[7][4]\,
      Q(3) => \b_s_reg_n_0_[7][3]\,
      Q(2) => \b_s_reg_n_0_[7][2]\,
      Q(1) => \b_s_reg_n_0_[7][1]\,
      Q(0) => \b_s_reg_n_0_[7][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[11]\(33 downto 0)
    );
\other_sections[13].fir_section\: entity work.\mac__parameterized0_22\
     port map (
      P(33 downto 0) => \mac_inter[13]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[6][16]\,
      Q(15) => \b_s_reg_n_0_[6][15]\,
      Q(14) => \b_s_reg_n_0_[6][14]\,
      Q(13) => \b_s_reg_n_0_[6][13]\,
      Q(12) => \b_s_reg_n_0_[6][12]\,
      Q(11) => \b_s_reg_n_0_[6][11]\,
      Q(10) => \b_s_reg_n_0_[6][10]\,
      Q(9) => \b_s_reg_n_0_[6][9]\,
      Q(8) => \b_s_reg_n_0_[6][8]\,
      Q(7) => \b_s_reg_n_0_[6][7]\,
      Q(6) => \b_s_reg_n_0_[6][6]\,
      Q(5) => \b_s_reg_n_0_[6][5]\,
      Q(4) => \b_s_reg_n_0_[6][4]\,
      Q(3) => \b_s_reg_n_0_[6][3]\,
      Q(2) => \b_s_reg_n_0_[6][2]\,
      Q(1) => \b_s_reg_n_0_[6][1]\,
      Q(0) => \b_s_reg_n_0_[6][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[12]\(33 downto 0)
    );
\other_sections[14].fir_section\: entity work.\mac__parameterized0_23\
     port map (
      P(33 downto 0) => \mac_inter[14]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[5][16]\,
      Q(15) => \b_s_reg_n_0_[5][15]\,
      Q(14) => \b_s_reg_n_0_[5][14]\,
      Q(13) => \b_s_reg_n_0_[5][13]\,
      Q(12) => \b_s_reg_n_0_[5][12]\,
      Q(11) => \b_s_reg_n_0_[5][11]\,
      Q(10) => \b_s_reg_n_0_[5][10]\,
      Q(9) => \b_s_reg_n_0_[5][9]\,
      Q(8) => \b_s_reg_n_0_[5][8]\,
      Q(7) => \b_s_reg_n_0_[5][7]\,
      Q(6) => \b_s_reg_n_0_[5][6]\,
      Q(5) => \b_s_reg_n_0_[5][5]\,
      Q(4) => \b_s_reg_n_0_[5][4]\,
      Q(3) => \b_s_reg_n_0_[5][3]\,
      Q(2) => \b_s_reg_n_0_[5][2]\,
      Q(1) => \b_s_reg_n_0_[5][1]\,
      Q(0) => \b_s_reg_n_0_[5][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[13]\(33 downto 0)
    );
\other_sections[15].fir_section\: entity work.\mac__parameterized0_24\
     port map (
      P(33 downto 0) => \mac_inter[15]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[4][16]\,
      Q(15) => \b_s_reg_n_0_[4][15]\,
      Q(14) => \b_s_reg_n_0_[4][14]\,
      Q(13) => \b_s_reg_n_0_[4][13]\,
      Q(12) => \b_s_reg_n_0_[4][12]\,
      Q(11) => \b_s_reg_n_0_[4][11]\,
      Q(10) => \b_s_reg_n_0_[4][10]\,
      Q(9) => \b_s_reg_n_0_[4][9]\,
      Q(8) => \b_s_reg_n_0_[4][8]\,
      Q(7) => \b_s_reg_n_0_[4][7]\,
      Q(6) => \b_s_reg_n_0_[4][6]\,
      Q(5) => \b_s_reg_n_0_[4][5]\,
      Q(4) => \b_s_reg_n_0_[4][4]\,
      Q(3) => \b_s_reg_n_0_[4][3]\,
      Q(2) => \b_s_reg_n_0_[4][2]\,
      Q(1) => \b_s_reg_n_0_[4][1]\,
      Q(0) => \b_s_reg_n_0_[4][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[14]\(33 downto 0)
    );
\other_sections[16].fir_section\: entity work.\mac__parameterized0_25\
     port map (
      P(33 downto 0) => \mac_inter[16]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[3][16]\,
      Q(15) => \b_s_reg_n_0_[3][15]\,
      Q(14) => \b_s_reg_n_0_[3][14]\,
      Q(13) => \b_s_reg_n_0_[3][13]\,
      Q(12) => \b_s_reg_n_0_[3][12]\,
      Q(11) => \b_s_reg_n_0_[3][11]\,
      Q(10) => \b_s_reg_n_0_[3][10]\,
      Q(9) => \b_s_reg_n_0_[3][9]\,
      Q(8) => \b_s_reg_n_0_[3][8]\,
      Q(7) => \b_s_reg_n_0_[3][7]\,
      Q(6) => \b_s_reg_n_0_[3][6]\,
      Q(5) => \b_s_reg_n_0_[3][5]\,
      Q(4) => \b_s_reg_n_0_[3][4]\,
      Q(3) => \b_s_reg_n_0_[3][3]\,
      Q(2) => \b_s_reg_n_0_[3][2]\,
      Q(1) => \b_s_reg_n_0_[3][1]\,
      Q(0) => \b_s_reg_n_0_[3][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[15]\(33 downto 0)
    );
\other_sections[17].fir_section\: entity work.\mac__parameterized0_26\
     port map (
      P(33 downto 0) => \mac_inter[17]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[2][16]\,
      Q(15) => \b_s_reg_n_0_[2][15]\,
      Q(14) => \b_s_reg_n_0_[2][14]\,
      Q(13) => \b_s_reg_n_0_[2][13]\,
      Q(12) => \b_s_reg_n_0_[2][12]\,
      Q(11) => \b_s_reg_n_0_[2][11]\,
      Q(10) => \b_s_reg_n_0_[2][10]\,
      Q(9) => \b_s_reg_n_0_[2][9]\,
      Q(8) => \b_s_reg_n_0_[2][8]\,
      Q(7) => \b_s_reg_n_0_[2][7]\,
      Q(6) => \b_s_reg_n_0_[2][6]\,
      Q(5) => \b_s_reg_n_0_[2][5]\,
      Q(4) => \b_s_reg_n_0_[2][4]\,
      Q(3) => \b_s_reg_n_0_[2][3]\,
      Q(2) => \b_s_reg_n_0_[2][2]\,
      Q(1) => \b_s_reg_n_0_[2][1]\,
      Q(0) => \b_s_reg_n_0_[2][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[16]\(33 downto 0)
    );
\other_sections[18].fir_section\: entity work.\mac__parameterized0_27\
     port map (
      P(33 downto 0) => \mac_inter[18]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[1][16]\,
      Q(15) => \b_s_reg_n_0_[1][15]\,
      Q(14) => \b_s_reg_n_0_[1][14]\,
      Q(13) => \b_s_reg_n_0_[1][13]\,
      Q(12) => \b_s_reg_n_0_[1][12]\,
      Q(11) => \b_s_reg_n_0_[1][11]\,
      Q(10) => \b_s_reg_n_0_[1][10]\,
      Q(9) => \b_s_reg_n_0_[1][9]\,
      Q(8) => \b_s_reg_n_0_[1][8]\,
      Q(7) => \b_s_reg_n_0_[1][7]\,
      Q(6) => \b_s_reg_n_0_[1][6]\,
      Q(5) => \b_s_reg_n_0_[1][5]\,
      Q(4) => \b_s_reg_n_0_[1][4]\,
      Q(3) => \b_s_reg_n_0_[1][3]\,
      Q(2) => \b_s_reg_n_0_[1][2]\,
      Q(1) => \b_s_reg_n_0_[1][1]\,
      Q(0) => \b_s_reg_n_0_[1][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[17]\(33 downto 0)
    );
\other_sections[19].fir_section\: entity work.\mac__parameterized0_28\
     port map (
      D(16 downto 0) => \mac_inter[19]\(32 downto 16),
      P(33 downto 0) => \mac_inter[18]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[0][16]\,
      Q(15) => \b_s_reg_n_0_[0][15]\,
      Q(14) => \b_s_reg_n_0_[0][14]\,
      Q(13) => \b_s_reg_n_0_[0][13]\,
      Q(12) => \b_s_reg_n_0_[0][12]\,
      Q(11) => \b_s_reg_n_0_[0][11]\,
      Q(10) => \b_s_reg_n_0_[0][10]\,
      Q(9) => \b_s_reg_n_0_[0][9]\,
      Q(8) => \b_s_reg_n_0_[0][8]\,
      Q(7) => \b_s_reg_n_0_[0][7]\,
      Q(6) => \b_s_reg_n_0_[0][6]\,
      Q(5) => \b_s_reg_n_0_[0][5]\,
      Q(4) => \b_s_reg_n_0_[0][4]\,
      Q(3) => \b_s_reg_n_0_[0][3]\,
      Q(2) => \b_s_reg_n_0_[0][2]\,
      Q(1) => \b_s_reg_n_0_[0][1]\,
      Q(0) => \b_s_reg_n_0_[0][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i
    );
\other_sections[1].fir_section\: entity work.\mac__parameterized0_29\
     port map (
      P(33 downto 0) => \mac_inter[1]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[18][16]\,
      Q(15) => \b_s_reg_n_0_[18][15]\,
      Q(14) => \b_s_reg_n_0_[18][14]\,
      Q(13) => \b_s_reg_n_0_[18][13]\,
      Q(12) => \b_s_reg_n_0_[18][12]\,
      Q(11) => \b_s_reg_n_0_[18][11]\,
      Q(10) => \b_s_reg_n_0_[18][10]\,
      Q(9) => \b_s_reg_n_0_[18][9]\,
      Q(8) => \b_s_reg_n_0_[18][8]\,
      Q(7) => \b_s_reg_n_0_[18][7]\,
      Q(6) => \b_s_reg_n_0_[18][6]\,
      Q(5) => \b_s_reg_n_0_[18][5]\,
      Q(4) => \b_s_reg_n_0_[18][4]\,
      Q(3) => \b_s_reg_n_0_[18][3]\,
      Q(2) => \b_s_reg_n_0_[18][2]\,
      Q(1) => \b_s_reg_n_0_[18][1]\,
      Q(0) => \b_s_reg_n_0_[18][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[0]\(33 downto 0)
    );
\other_sections[2].fir_section\: entity work.\mac__parameterized0_30\
     port map (
      P(33 downto 0) => \mac_inter[2]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[17][16]\,
      Q(15) => \b_s_reg_n_0_[17][15]\,
      Q(14) => \b_s_reg_n_0_[17][14]\,
      Q(13) => \b_s_reg_n_0_[17][13]\,
      Q(12) => \b_s_reg_n_0_[17][12]\,
      Q(11) => \b_s_reg_n_0_[17][11]\,
      Q(10) => \b_s_reg_n_0_[17][10]\,
      Q(9) => \b_s_reg_n_0_[17][9]\,
      Q(8) => \b_s_reg_n_0_[17][8]\,
      Q(7) => \b_s_reg_n_0_[17][7]\,
      Q(6) => \b_s_reg_n_0_[17][6]\,
      Q(5) => \b_s_reg_n_0_[17][5]\,
      Q(4) => \b_s_reg_n_0_[17][4]\,
      Q(3) => \b_s_reg_n_0_[17][3]\,
      Q(2) => \b_s_reg_n_0_[17][2]\,
      Q(1) => \b_s_reg_n_0_[17][1]\,
      Q(0) => \b_s_reg_n_0_[17][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[1]\(33 downto 0)
    );
\other_sections[3].fir_section\: entity work.\mac__parameterized0_31\
     port map (
      P(33 downto 0) => \mac_inter[3]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[16][16]\,
      Q(15) => \b_s_reg_n_0_[16][15]\,
      Q(14) => \b_s_reg_n_0_[16][14]\,
      Q(13) => \b_s_reg_n_0_[16][13]\,
      Q(12) => \b_s_reg_n_0_[16][12]\,
      Q(11) => \b_s_reg_n_0_[16][11]\,
      Q(10) => \b_s_reg_n_0_[16][10]\,
      Q(9) => \b_s_reg_n_0_[16][9]\,
      Q(8) => \b_s_reg_n_0_[16][8]\,
      Q(7) => \b_s_reg_n_0_[16][7]\,
      Q(6) => \b_s_reg_n_0_[16][6]\,
      Q(5) => \b_s_reg_n_0_[16][5]\,
      Q(4) => \b_s_reg_n_0_[16][4]\,
      Q(3) => \b_s_reg_n_0_[16][3]\,
      Q(2) => \b_s_reg_n_0_[16][2]\,
      Q(1) => \b_s_reg_n_0_[16][1]\,
      Q(0) => \b_s_reg_n_0_[16][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[2]\(33 downto 0)
    );
\other_sections[4].fir_section\: entity work.\mac__parameterized0_32\
     port map (
      P(33 downto 0) => \mac_inter[4]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[15][16]\,
      Q(15) => \b_s_reg_n_0_[15][15]\,
      Q(14) => \b_s_reg_n_0_[15][14]\,
      Q(13) => \b_s_reg_n_0_[15][13]\,
      Q(12) => \b_s_reg_n_0_[15][12]\,
      Q(11) => \b_s_reg_n_0_[15][11]\,
      Q(10) => \b_s_reg_n_0_[15][10]\,
      Q(9) => \b_s_reg_n_0_[15][9]\,
      Q(8) => \b_s_reg_n_0_[15][8]\,
      Q(7) => \b_s_reg_n_0_[15][7]\,
      Q(6) => \b_s_reg_n_0_[15][6]\,
      Q(5) => \b_s_reg_n_0_[15][5]\,
      Q(4) => \b_s_reg_n_0_[15][4]\,
      Q(3) => \b_s_reg_n_0_[15][3]\,
      Q(2) => \b_s_reg_n_0_[15][2]\,
      Q(1) => \b_s_reg_n_0_[15][1]\,
      Q(0) => \b_s_reg_n_0_[15][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[3]\(33 downto 0)
    );
\other_sections[5].fir_section\: entity work.\mac__parameterized0_33\
     port map (
      P(33 downto 0) => \mac_inter[5]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[14][16]\,
      Q(15) => \b_s_reg_n_0_[14][15]\,
      Q(14) => \b_s_reg_n_0_[14][14]\,
      Q(13) => \b_s_reg_n_0_[14][13]\,
      Q(12) => \b_s_reg_n_0_[14][12]\,
      Q(11) => \b_s_reg_n_0_[14][11]\,
      Q(10) => \b_s_reg_n_0_[14][10]\,
      Q(9) => \b_s_reg_n_0_[14][9]\,
      Q(8) => \b_s_reg_n_0_[14][8]\,
      Q(7) => \b_s_reg_n_0_[14][7]\,
      Q(6) => \b_s_reg_n_0_[14][6]\,
      Q(5) => \b_s_reg_n_0_[14][5]\,
      Q(4) => \b_s_reg_n_0_[14][4]\,
      Q(3) => \b_s_reg_n_0_[14][3]\,
      Q(2) => \b_s_reg_n_0_[14][2]\,
      Q(1) => \b_s_reg_n_0_[14][1]\,
      Q(0) => \b_s_reg_n_0_[14][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[4]\(33 downto 0)
    );
\other_sections[6].fir_section\: entity work.\mac__parameterized0_34\
     port map (
      P(33 downto 0) => \mac_inter[6]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[13][16]\,
      Q(15) => \b_s_reg_n_0_[13][15]\,
      Q(14) => \b_s_reg_n_0_[13][14]\,
      Q(13) => \b_s_reg_n_0_[13][13]\,
      Q(12) => \b_s_reg_n_0_[13][12]\,
      Q(11) => \b_s_reg_n_0_[13][11]\,
      Q(10) => \b_s_reg_n_0_[13][10]\,
      Q(9) => \b_s_reg_n_0_[13][9]\,
      Q(8) => \b_s_reg_n_0_[13][8]\,
      Q(7) => \b_s_reg_n_0_[13][7]\,
      Q(6) => \b_s_reg_n_0_[13][6]\,
      Q(5) => \b_s_reg_n_0_[13][5]\,
      Q(4) => \b_s_reg_n_0_[13][4]\,
      Q(3) => \b_s_reg_n_0_[13][3]\,
      Q(2) => \b_s_reg_n_0_[13][2]\,
      Q(1) => \b_s_reg_n_0_[13][1]\,
      Q(0) => \b_s_reg_n_0_[13][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[5]\(33 downto 0)
    );
\other_sections[7].fir_section\: entity work.\mac__parameterized0_35\
     port map (
      P(33 downto 0) => \mac_inter[7]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[12][16]\,
      Q(15) => \b_s_reg_n_0_[12][15]\,
      Q(14) => \b_s_reg_n_0_[12][14]\,
      Q(13) => \b_s_reg_n_0_[12][13]\,
      Q(12) => \b_s_reg_n_0_[12][12]\,
      Q(11) => \b_s_reg_n_0_[12][11]\,
      Q(10) => \b_s_reg_n_0_[12][10]\,
      Q(9) => \b_s_reg_n_0_[12][9]\,
      Q(8) => \b_s_reg_n_0_[12][8]\,
      Q(7) => \b_s_reg_n_0_[12][7]\,
      Q(6) => \b_s_reg_n_0_[12][6]\,
      Q(5) => \b_s_reg_n_0_[12][5]\,
      Q(4) => \b_s_reg_n_0_[12][4]\,
      Q(3) => \b_s_reg_n_0_[12][3]\,
      Q(2) => \b_s_reg_n_0_[12][2]\,
      Q(1) => \b_s_reg_n_0_[12][1]\,
      Q(0) => \b_s_reg_n_0_[12][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[6]\(33 downto 0)
    );
\other_sections[8].fir_section\: entity work.\mac__parameterized0_36\
     port map (
      P(33 downto 0) => \mac_inter[8]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[11][16]\,
      Q(15) => \b_s_reg_n_0_[11][15]\,
      Q(14) => \b_s_reg_n_0_[11][14]\,
      Q(13) => \b_s_reg_n_0_[11][13]\,
      Q(12) => \b_s_reg_n_0_[11][12]\,
      Q(11) => \b_s_reg_n_0_[11][11]\,
      Q(10) => \b_s_reg_n_0_[11][10]\,
      Q(9) => \b_s_reg_n_0_[11][9]\,
      Q(8) => \b_s_reg_n_0_[11][8]\,
      Q(7) => \b_s_reg_n_0_[11][7]\,
      Q(6) => \b_s_reg_n_0_[11][6]\,
      Q(5) => \b_s_reg_n_0_[11][5]\,
      Q(4) => \b_s_reg_n_0_[11][4]\,
      Q(3) => \b_s_reg_n_0_[11][3]\,
      Q(2) => \b_s_reg_n_0_[11][2]\,
      Q(1) => \b_s_reg_n_0_[11][1]\,
      Q(0) => \b_s_reg_n_0_[11][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[7]\(33 downto 0)
    );
\other_sections[9].fir_section\: entity work.\mac__parameterized0_37\
     port map (
      P(33 downto 0) => \mac_inter[8]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[10][16]\,
      Q(15) => \b_s_reg_n_0_[10][15]\,
      Q(14) => \b_s_reg_n_0_[10][14]\,
      Q(13) => \b_s_reg_n_0_[10][13]\,
      Q(12) => \b_s_reg_n_0_[10][12]\,
      Q(11) => \b_s_reg_n_0_[10][11]\,
      Q(10) => \b_s_reg_n_0_[10][10]\,
      Q(9) => \b_s_reg_n_0_[10][9]\,
      Q(8) => \b_s_reg_n_0_[10][8]\,
      Q(7) => \b_s_reg_n_0_[10][7]\,
      Q(6) => \b_s_reg_n_0_[10][6]\,
      Q(5) => \b_s_reg_n_0_[10][5]\,
      Q(4) => \b_s_reg_n_0_[10][4]\,
      Q(3) => \b_s_reg_n_0_[10][3]\,
      Q(2) => \b_s_reg_n_0_[10][2]\,
      Q(1) => \b_s_reg_n_0_[10][1]\,
      Q(0) => \b_s_reg_n_0_[10][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[9]\(33 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fir_filtar__2\ is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    we_i : in STD_LOGIC;
    coef_addr_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fir_filtar__2\ : entity is "fir_filtar";
  attribute dont_touch : string;
  attribute dont_touch of \fir_filtar__2\ : entity is "true";
  attribute fir_ord : integer;
  attribute fir_ord of \fir_filtar__2\ : entity is 20;
  attribute fixed_width : integer;
  attribute fixed_width of \fir_filtar__2\ : entity is 1;
  attribute input_data_width : integer;
  attribute input_data_width of \fir_filtar__2\ : entity is 17;
  attribute output_data_width : integer;
  attribute output_data_width of \fir_filtar__2\ : entity is 17;
end \fir_filtar__2\;

architecture STRUCTURE of \fir_filtar__2\ is
  signal \b_s[0]\ : STD_LOGIC;
  signal \b_s[10]\ : STD_LOGIC;
  signal \b_s[11]\ : STD_LOGIC;
  signal \b_s[12]\ : STD_LOGIC;
  signal \b_s[13]\ : STD_LOGIC;
  signal \b_s[14]\ : STD_LOGIC;
  signal \b_s[15]\ : STD_LOGIC;
  signal \b_s[16]\ : STD_LOGIC;
  signal \b_s[17]\ : STD_LOGIC;
  signal \b_s[18]\ : STD_LOGIC;
  signal \b_s[19]\ : STD_LOGIC;
  signal \b_s[1]\ : STD_LOGIC;
  signal \b_s[2]\ : STD_LOGIC;
  signal \b_s[3]\ : STD_LOGIC;
  signal \b_s[4]\ : STD_LOGIC;
  signal \b_s[5]\ : STD_LOGIC;
  signal \b_s[6]\ : STD_LOGIC;
  signal \b_s[7]\ : STD_LOGIC;
  signal \b_s[8]\ : STD_LOGIC;
  signal \b_s[9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][9]\ : STD_LOGIC;
  signal \mac_inter[0]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[10]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[11]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[12]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[13]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[14]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[15]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[16]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[17]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[18]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[19]\ : STD_LOGIC_VECTOR ( 32 downto 16 );
  signal \mac_inter[1]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[2]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[3]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[4]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[5]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[6]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[7]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[8]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[9]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
begin
\b_s[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[0]\
    );
\b_s[10][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(0),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[10]\
    );
\b_s[11][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(2),
      O => \b_s[11]\
    );
\b_s[12][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(1),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(2),
      O => \b_s[12]\
    );
\b_s[13][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[13]\
    );
\b_s[14][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(0),
      O => \b_s[14]\
    );
\b_s[15][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(4),
      O => \b_s[15]\
    );
\b_s[16][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(0),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(4),
      O => \b_s[16]\
    );
\b_s[17][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(1),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(4),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[17]\
    );
\b_s[18][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(0),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(4),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[18]\
    );
\b_s[19][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(2),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[19]\
    );
\b_s[1][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[1]\
    );
\b_s[2][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[2]\
    );
\b_s[3][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[3]\
    );
\b_s[4][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(2),
      O => \b_s[4]\
    );
\b_s[5][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(0),
      O => \b_s[5]\
    );
\b_s[6][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(1),
      O => \b_s[6]\
    );
\b_s[7][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[7]\
    );
\b_s[8][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(0),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(3),
      O => \b_s[8]\
    );
\b_s[9][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(1),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[9]\
    );
\b_s_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[0][0]\,
      R => '0'
    );
\b_s_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[0][10]\,
      R => '0'
    );
\b_s_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[0][11]\,
      R => '0'
    );
\b_s_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[0][12]\,
      R => '0'
    );
\b_s_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[0][13]\,
      R => '0'
    );
\b_s_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[0][14]\,
      R => '0'
    );
\b_s_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[0][15]\,
      R => '0'
    );
\b_s_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[0][16]\,
      R => '0'
    );
\b_s_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[0][1]\,
      R => '0'
    );
\b_s_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[0][2]\,
      R => '0'
    );
\b_s_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[0][3]\,
      R => '0'
    );
\b_s_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[0][4]\,
      R => '0'
    );
\b_s_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[0][5]\,
      R => '0'
    );
\b_s_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[0][6]\,
      R => '0'
    );
\b_s_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[0][7]\,
      R => '0'
    );
\b_s_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[0][8]\,
      R => '0'
    );
\b_s_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[0][9]\,
      R => '0'
    );
\b_s_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[10][0]\,
      R => '0'
    );
\b_s_reg[10][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[10][10]\,
      R => '0'
    );
\b_s_reg[10][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[10][11]\,
      R => '0'
    );
\b_s_reg[10][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[10][12]\,
      R => '0'
    );
\b_s_reg[10][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[10][13]\,
      R => '0'
    );
\b_s_reg[10][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[10][14]\,
      R => '0'
    );
\b_s_reg[10][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[10][15]\,
      R => '0'
    );
\b_s_reg[10][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[10][16]\,
      R => '0'
    );
\b_s_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[10][1]\,
      R => '0'
    );
\b_s_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[10][2]\,
      R => '0'
    );
\b_s_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[10][3]\,
      R => '0'
    );
\b_s_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[10][4]\,
      R => '0'
    );
\b_s_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[10][5]\,
      R => '0'
    );
\b_s_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[10][6]\,
      R => '0'
    );
\b_s_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[10][7]\,
      R => '0'
    );
\b_s_reg[10][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[10][8]\,
      R => '0'
    );
\b_s_reg[10][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[10][9]\,
      R => '0'
    );
\b_s_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[11][0]\,
      R => '0'
    );
\b_s_reg[11][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[11][10]\,
      R => '0'
    );
\b_s_reg[11][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[11][11]\,
      R => '0'
    );
\b_s_reg[11][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[11][12]\,
      R => '0'
    );
\b_s_reg[11][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[11][13]\,
      R => '0'
    );
\b_s_reg[11][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[11][14]\,
      R => '0'
    );
\b_s_reg[11][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[11][15]\,
      R => '0'
    );
\b_s_reg[11][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[11][16]\,
      R => '0'
    );
\b_s_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[11][1]\,
      R => '0'
    );
\b_s_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[11][2]\,
      R => '0'
    );
\b_s_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[11][3]\,
      R => '0'
    );
\b_s_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[11][4]\,
      R => '0'
    );
\b_s_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[11][5]\,
      R => '0'
    );
\b_s_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[11][6]\,
      R => '0'
    );
\b_s_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[11][7]\,
      R => '0'
    );
\b_s_reg[11][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[11][8]\,
      R => '0'
    );
\b_s_reg[11][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[11][9]\,
      R => '0'
    );
\b_s_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[12][0]\,
      R => '0'
    );
\b_s_reg[12][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[12][10]\,
      R => '0'
    );
\b_s_reg[12][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[12][11]\,
      R => '0'
    );
\b_s_reg[12][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[12][12]\,
      R => '0'
    );
\b_s_reg[12][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[12][13]\,
      R => '0'
    );
\b_s_reg[12][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[12][14]\,
      R => '0'
    );
\b_s_reg[12][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[12][15]\,
      R => '0'
    );
\b_s_reg[12][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[12][16]\,
      R => '0'
    );
\b_s_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[12][1]\,
      R => '0'
    );
\b_s_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[12][2]\,
      R => '0'
    );
\b_s_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[12][3]\,
      R => '0'
    );
\b_s_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[12][4]\,
      R => '0'
    );
\b_s_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[12][5]\,
      R => '0'
    );
\b_s_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[12][6]\,
      R => '0'
    );
\b_s_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[12][7]\,
      R => '0'
    );
\b_s_reg[12][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[12][8]\,
      R => '0'
    );
\b_s_reg[12][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[12][9]\,
      R => '0'
    );
\b_s_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[13][0]\,
      R => '0'
    );
\b_s_reg[13][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[13][10]\,
      R => '0'
    );
\b_s_reg[13][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[13][11]\,
      R => '0'
    );
\b_s_reg[13][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[13][12]\,
      R => '0'
    );
\b_s_reg[13][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[13][13]\,
      R => '0'
    );
\b_s_reg[13][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[13][14]\,
      R => '0'
    );
\b_s_reg[13][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[13][15]\,
      R => '0'
    );
\b_s_reg[13][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[13][16]\,
      R => '0'
    );
\b_s_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[13][1]\,
      R => '0'
    );
\b_s_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[13][2]\,
      R => '0'
    );
\b_s_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[13][3]\,
      R => '0'
    );
\b_s_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[13][4]\,
      R => '0'
    );
\b_s_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[13][5]\,
      R => '0'
    );
\b_s_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[13][6]\,
      R => '0'
    );
\b_s_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[13][7]\,
      R => '0'
    );
\b_s_reg[13][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[13][8]\,
      R => '0'
    );
\b_s_reg[13][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[13][9]\,
      R => '0'
    );
\b_s_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[14][0]\,
      R => '0'
    );
\b_s_reg[14][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[14][10]\,
      R => '0'
    );
\b_s_reg[14][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[14][11]\,
      R => '0'
    );
\b_s_reg[14][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[14][12]\,
      R => '0'
    );
\b_s_reg[14][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[14][13]\,
      R => '0'
    );
\b_s_reg[14][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[14][14]\,
      R => '0'
    );
\b_s_reg[14][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[14][15]\,
      R => '0'
    );
\b_s_reg[14][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[14][16]\,
      R => '0'
    );
\b_s_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[14][1]\,
      R => '0'
    );
\b_s_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[14][2]\,
      R => '0'
    );
\b_s_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[14][3]\,
      R => '0'
    );
\b_s_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[14][4]\,
      R => '0'
    );
\b_s_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[14][5]\,
      R => '0'
    );
\b_s_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[14][6]\,
      R => '0'
    );
\b_s_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[14][7]\,
      R => '0'
    );
\b_s_reg[14][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[14][8]\,
      R => '0'
    );
\b_s_reg[14][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[14][9]\,
      R => '0'
    );
\b_s_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[15][0]\,
      R => '0'
    );
\b_s_reg[15][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[15][10]\,
      R => '0'
    );
\b_s_reg[15][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[15][11]\,
      R => '0'
    );
\b_s_reg[15][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[15][12]\,
      R => '0'
    );
\b_s_reg[15][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[15][13]\,
      R => '0'
    );
\b_s_reg[15][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[15][14]\,
      R => '0'
    );
\b_s_reg[15][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[15][15]\,
      R => '0'
    );
\b_s_reg[15][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[15][16]\,
      R => '0'
    );
\b_s_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[15][1]\,
      R => '0'
    );
\b_s_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[15][2]\,
      R => '0'
    );
\b_s_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[15][3]\,
      R => '0'
    );
\b_s_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[15][4]\,
      R => '0'
    );
\b_s_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[15][5]\,
      R => '0'
    );
\b_s_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[15][6]\,
      R => '0'
    );
\b_s_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[15][7]\,
      R => '0'
    );
\b_s_reg[15][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[15][8]\,
      R => '0'
    );
\b_s_reg[15][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[15][9]\,
      R => '0'
    );
\b_s_reg[16][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[16][0]\,
      R => '0'
    );
\b_s_reg[16][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[16][10]\,
      R => '0'
    );
\b_s_reg[16][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[16][11]\,
      R => '0'
    );
\b_s_reg[16][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[16][12]\,
      R => '0'
    );
\b_s_reg[16][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[16][13]\,
      R => '0'
    );
\b_s_reg[16][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[16][14]\,
      R => '0'
    );
\b_s_reg[16][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[16][15]\,
      R => '0'
    );
\b_s_reg[16][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[16][16]\,
      R => '0'
    );
\b_s_reg[16][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[16][1]\,
      R => '0'
    );
\b_s_reg[16][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[16][2]\,
      R => '0'
    );
\b_s_reg[16][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[16][3]\,
      R => '0'
    );
\b_s_reg[16][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[16][4]\,
      R => '0'
    );
\b_s_reg[16][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[16][5]\,
      R => '0'
    );
\b_s_reg[16][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[16][6]\,
      R => '0'
    );
\b_s_reg[16][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[16][7]\,
      R => '0'
    );
\b_s_reg[16][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[16][8]\,
      R => '0'
    );
\b_s_reg[16][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[16][9]\,
      R => '0'
    );
\b_s_reg[17][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[17][0]\,
      R => '0'
    );
\b_s_reg[17][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[17][10]\,
      R => '0'
    );
\b_s_reg[17][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[17][11]\,
      R => '0'
    );
\b_s_reg[17][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[17][12]\,
      R => '0'
    );
\b_s_reg[17][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[17][13]\,
      R => '0'
    );
\b_s_reg[17][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[17][14]\,
      R => '0'
    );
\b_s_reg[17][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[17][15]\,
      R => '0'
    );
\b_s_reg[17][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[17][16]\,
      R => '0'
    );
\b_s_reg[17][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[17][1]\,
      R => '0'
    );
\b_s_reg[17][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[17][2]\,
      R => '0'
    );
\b_s_reg[17][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[17][3]\,
      R => '0'
    );
\b_s_reg[17][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[17][4]\,
      R => '0'
    );
\b_s_reg[17][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[17][5]\,
      R => '0'
    );
\b_s_reg[17][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[17][6]\,
      R => '0'
    );
\b_s_reg[17][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[17][7]\,
      R => '0'
    );
\b_s_reg[17][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[17][8]\,
      R => '0'
    );
\b_s_reg[17][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[17][9]\,
      R => '0'
    );
\b_s_reg[18][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[18][0]\,
      R => '0'
    );
\b_s_reg[18][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[18][10]\,
      R => '0'
    );
\b_s_reg[18][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[18][11]\,
      R => '0'
    );
\b_s_reg[18][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[18][12]\,
      R => '0'
    );
\b_s_reg[18][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[18][13]\,
      R => '0'
    );
\b_s_reg[18][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[18][14]\,
      R => '0'
    );
\b_s_reg[18][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[18][15]\,
      R => '0'
    );
\b_s_reg[18][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[18][16]\,
      R => '0'
    );
\b_s_reg[18][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[18][1]\,
      R => '0'
    );
\b_s_reg[18][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[18][2]\,
      R => '0'
    );
\b_s_reg[18][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[18][3]\,
      R => '0'
    );
\b_s_reg[18][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[18][4]\,
      R => '0'
    );
\b_s_reg[18][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[18][5]\,
      R => '0'
    );
\b_s_reg[18][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[18][6]\,
      R => '0'
    );
\b_s_reg[18][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[18][7]\,
      R => '0'
    );
\b_s_reg[18][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[18][8]\,
      R => '0'
    );
\b_s_reg[18][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[18][9]\,
      R => '0'
    );
\b_s_reg[19][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[19][0]\,
      R => '0'
    );
\b_s_reg[19][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[19][10]\,
      R => '0'
    );
\b_s_reg[19][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[19][11]\,
      R => '0'
    );
\b_s_reg[19][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[19][12]\,
      R => '0'
    );
\b_s_reg[19][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[19][13]\,
      R => '0'
    );
\b_s_reg[19][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[19][14]\,
      R => '0'
    );
\b_s_reg[19][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[19][15]\,
      R => '0'
    );
\b_s_reg[19][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[19][16]\,
      R => '0'
    );
\b_s_reg[19][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[19][1]\,
      R => '0'
    );
\b_s_reg[19][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[19][2]\,
      R => '0'
    );
\b_s_reg[19][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[19][3]\,
      R => '0'
    );
\b_s_reg[19][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[19][4]\,
      R => '0'
    );
\b_s_reg[19][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[19][5]\,
      R => '0'
    );
\b_s_reg[19][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[19][6]\,
      R => '0'
    );
\b_s_reg[19][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[19][7]\,
      R => '0'
    );
\b_s_reg[19][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[19][8]\,
      R => '0'
    );
\b_s_reg[19][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[19][9]\,
      R => '0'
    );
\b_s_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[1][0]\,
      R => '0'
    );
\b_s_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[1][10]\,
      R => '0'
    );
\b_s_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[1][11]\,
      R => '0'
    );
\b_s_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[1][12]\,
      R => '0'
    );
\b_s_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[1][13]\,
      R => '0'
    );
\b_s_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[1][14]\,
      R => '0'
    );
\b_s_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[1][15]\,
      R => '0'
    );
\b_s_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[1][16]\,
      R => '0'
    );
\b_s_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[1][1]\,
      R => '0'
    );
\b_s_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[1][2]\,
      R => '0'
    );
\b_s_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[1][3]\,
      R => '0'
    );
\b_s_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[1][4]\,
      R => '0'
    );
\b_s_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[1][5]\,
      R => '0'
    );
\b_s_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[1][6]\,
      R => '0'
    );
\b_s_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[1][7]\,
      R => '0'
    );
\b_s_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[1][8]\,
      R => '0'
    );
\b_s_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[1][9]\,
      R => '0'
    );
\b_s_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[2][0]\,
      R => '0'
    );
\b_s_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[2][10]\,
      R => '0'
    );
\b_s_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[2][11]\,
      R => '0'
    );
\b_s_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[2][12]\,
      R => '0'
    );
\b_s_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[2][13]\,
      R => '0'
    );
\b_s_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[2][14]\,
      R => '0'
    );
\b_s_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[2][15]\,
      R => '0'
    );
\b_s_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[2][16]\,
      R => '0'
    );
\b_s_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[2][1]\,
      R => '0'
    );
\b_s_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[2][2]\,
      R => '0'
    );
\b_s_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[2][3]\,
      R => '0'
    );
\b_s_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[2][4]\,
      R => '0'
    );
\b_s_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[2][5]\,
      R => '0'
    );
\b_s_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[2][6]\,
      R => '0'
    );
\b_s_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[2][7]\,
      R => '0'
    );
\b_s_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[2][8]\,
      R => '0'
    );
\b_s_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[2][9]\,
      R => '0'
    );
\b_s_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[3][0]\,
      R => '0'
    );
\b_s_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[3][10]\,
      R => '0'
    );
\b_s_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[3][11]\,
      R => '0'
    );
\b_s_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[3][12]\,
      R => '0'
    );
\b_s_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[3][13]\,
      R => '0'
    );
\b_s_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[3][14]\,
      R => '0'
    );
\b_s_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[3][15]\,
      R => '0'
    );
\b_s_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[3][16]\,
      R => '0'
    );
\b_s_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[3][1]\,
      R => '0'
    );
\b_s_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[3][2]\,
      R => '0'
    );
\b_s_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[3][3]\,
      R => '0'
    );
\b_s_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[3][4]\,
      R => '0'
    );
\b_s_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[3][5]\,
      R => '0'
    );
\b_s_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[3][6]\,
      R => '0'
    );
\b_s_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[3][7]\,
      R => '0'
    );
\b_s_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[3][8]\,
      R => '0'
    );
\b_s_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[3][9]\,
      R => '0'
    );
\b_s_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[4][0]\,
      R => '0'
    );
\b_s_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[4][10]\,
      R => '0'
    );
\b_s_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[4][11]\,
      R => '0'
    );
\b_s_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[4][12]\,
      R => '0'
    );
\b_s_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[4][13]\,
      R => '0'
    );
\b_s_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[4][14]\,
      R => '0'
    );
\b_s_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[4][15]\,
      R => '0'
    );
\b_s_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[4][16]\,
      R => '0'
    );
\b_s_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[4][1]\,
      R => '0'
    );
\b_s_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[4][2]\,
      R => '0'
    );
\b_s_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[4][3]\,
      R => '0'
    );
\b_s_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[4][4]\,
      R => '0'
    );
\b_s_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[4][5]\,
      R => '0'
    );
\b_s_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[4][6]\,
      R => '0'
    );
\b_s_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[4][7]\,
      R => '0'
    );
\b_s_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[4][8]\,
      R => '0'
    );
\b_s_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[4][9]\,
      R => '0'
    );
\b_s_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[5][0]\,
      R => '0'
    );
\b_s_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[5][10]\,
      R => '0'
    );
\b_s_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[5][11]\,
      R => '0'
    );
\b_s_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[5][12]\,
      R => '0'
    );
\b_s_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[5][13]\,
      R => '0'
    );
\b_s_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[5][14]\,
      R => '0'
    );
\b_s_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[5][15]\,
      R => '0'
    );
\b_s_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[5][16]\,
      R => '0'
    );
\b_s_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[5][1]\,
      R => '0'
    );
\b_s_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[5][2]\,
      R => '0'
    );
\b_s_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[5][3]\,
      R => '0'
    );
\b_s_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[5][4]\,
      R => '0'
    );
\b_s_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[5][5]\,
      R => '0'
    );
\b_s_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[5][6]\,
      R => '0'
    );
\b_s_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[5][7]\,
      R => '0'
    );
\b_s_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[5][8]\,
      R => '0'
    );
\b_s_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[5][9]\,
      R => '0'
    );
\b_s_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[6][0]\,
      R => '0'
    );
\b_s_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[6][10]\,
      R => '0'
    );
\b_s_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[6][11]\,
      R => '0'
    );
\b_s_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[6][12]\,
      R => '0'
    );
\b_s_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[6][13]\,
      R => '0'
    );
\b_s_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[6][14]\,
      R => '0'
    );
\b_s_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[6][15]\,
      R => '0'
    );
\b_s_reg[6][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[6][16]\,
      R => '0'
    );
\b_s_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[6][1]\,
      R => '0'
    );
\b_s_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[6][2]\,
      R => '0'
    );
\b_s_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[6][3]\,
      R => '0'
    );
\b_s_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[6][4]\,
      R => '0'
    );
\b_s_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[6][5]\,
      R => '0'
    );
\b_s_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[6][6]\,
      R => '0'
    );
\b_s_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[6][7]\,
      R => '0'
    );
\b_s_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[6][8]\,
      R => '0'
    );
\b_s_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[6][9]\,
      R => '0'
    );
\b_s_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[7][0]\,
      R => '0'
    );
\b_s_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[7][10]\,
      R => '0'
    );
\b_s_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[7][11]\,
      R => '0'
    );
\b_s_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[7][12]\,
      R => '0'
    );
\b_s_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[7][13]\,
      R => '0'
    );
\b_s_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[7][14]\,
      R => '0'
    );
\b_s_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[7][15]\,
      R => '0'
    );
\b_s_reg[7][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[7][16]\,
      R => '0'
    );
\b_s_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[7][1]\,
      R => '0'
    );
\b_s_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[7][2]\,
      R => '0'
    );
\b_s_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[7][3]\,
      R => '0'
    );
\b_s_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[7][4]\,
      R => '0'
    );
\b_s_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[7][5]\,
      R => '0'
    );
\b_s_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[7][6]\,
      R => '0'
    );
\b_s_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[7][7]\,
      R => '0'
    );
\b_s_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[7][8]\,
      R => '0'
    );
\b_s_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[7][9]\,
      R => '0'
    );
\b_s_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[8][0]\,
      R => '0'
    );
\b_s_reg[8][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[8][10]\,
      R => '0'
    );
\b_s_reg[8][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[8][11]\,
      R => '0'
    );
\b_s_reg[8][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[8][12]\,
      R => '0'
    );
\b_s_reg[8][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[8][13]\,
      R => '0'
    );
\b_s_reg[8][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[8][14]\,
      R => '0'
    );
\b_s_reg[8][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[8][15]\,
      R => '0'
    );
\b_s_reg[8][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[8][16]\,
      R => '0'
    );
\b_s_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[8][1]\,
      R => '0'
    );
\b_s_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[8][2]\,
      R => '0'
    );
\b_s_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[8][3]\,
      R => '0'
    );
\b_s_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[8][4]\,
      R => '0'
    );
\b_s_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[8][5]\,
      R => '0'
    );
\b_s_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[8][6]\,
      R => '0'
    );
\b_s_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[8][7]\,
      R => '0'
    );
\b_s_reg[8][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[8][8]\,
      R => '0'
    );
\b_s_reg[8][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[8][9]\,
      R => '0'
    );
\b_s_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[9][0]\,
      R => '0'
    );
\b_s_reg[9][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[9][10]\,
      R => '0'
    );
\b_s_reg[9][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[9][11]\,
      R => '0'
    );
\b_s_reg[9][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[9][12]\,
      R => '0'
    );
\b_s_reg[9][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[9][13]\,
      R => '0'
    );
\b_s_reg[9][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[9][14]\,
      R => '0'
    );
\b_s_reg[9][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[9][15]\,
      R => '0'
    );
\b_s_reg[9][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[9][16]\,
      R => '0'
    );
\b_s_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[9][1]\,
      R => '0'
    );
\b_s_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[9][2]\,
      R => '0'
    );
\b_s_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[9][3]\,
      R => '0'
    );
\b_s_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[9][4]\,
      R => '0'
    );
\b_s_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[9][5]\,
      R => '0'
    );
\b_s_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[9][6]\,
      R => '0'
    );
\b_s_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[9][7]\,
      R => '0'
    );
\b_s_reg[9][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[9][8]\,
      R => '0'
    );
\b_s_reg[9][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[9][9]\,
      R => '0'
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(16),
      Q => data_o(0),
      R => '0'
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(26),
      Q => data_o(10),
      R => '0'
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(27),
      Q => data_o(11),
      R => '0'
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(28),
      Q => data_o(12),
      R => '0'
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(29),
      Q => data_o(13),
      R => '0'
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(30),
      Q => data_o(14),
      R => '0'
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(31),
      Q => data_o(15),
      R => '0'
    );
\data_o_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(32),
      Q => data_o(16),
      R => '0'
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(17),
      Q => data_o(1),
      R => '0'
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(18),
      Q => data_o(2),
      R => '0'
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(19),
      Q => data_o(3),
      R => '0'
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(20),
      Q => data_o(4),
      R => '0'
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(21),
      Q => data_o(5),
      R => '0'
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(22),
      Q => data_o(6),
      R => '0'
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(23),
      Q => data_o(7),
      R => '0'
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(24),
      Q => data_o(8),
      R => '0'
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(25),
      Q => data_o(9),
      R => '0'
    );
first_section: entity work.mac_38
     port map (
      P(33 downto 0) => \mac_inter[0]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[19][16]\,
      Q(15) => \b_s_reg_n_0_[19][15]\,
      Q(14) => \b_s_reg_n_0_[19][14]\,
      Q(13) => \b_s_reg_n_0_[19][13]\,
      Q(12) => \b_s_reg_n_0_[19][12]\,
      Q(11) => \b_s_reg_n_0_[19][11]\,
      Q(10) => \b_s_reg_n_0_[19][10]\,
      Q(9) => \b_s_reg_n_0_[19][9]\,
      Q(8) => \b_s_reg_n_0_[19][8]\,
      Q(7) => \b_s_reg_n_0_[19][7]\,
      Q(6) => \b_s_reg_n_0_[19][6]\,
      Q(5) => \b_s_reg_n_0_[19][5]\,
      Q(4) => \b_s_reg_n_0_[19][4]\,
      Q(3) => \b_s_reg_n_0_[19][3]\,
      Q(2) => \b_s_reg_n_0_[19][2]\,
      Q(1) => \b_s_reg_n_0_[19][1]\,
      Q(0) => \b_s_reg_n_0_[19][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i
    );
\other_sections[10].fir_section\: entity work.\mac__parameterized0_39\
     port map (
      P(33 downto 0) => \mac_inter[10]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[9][16]\,
      Q(15) => \b_s_reg_n_0_[9][15]\,
      Q(14) => \b_s_reg_n_0_[9][14]\,
      Q(13) => \b_s_reg_n_0_[9][13]\,
      Q(12) => \b_s_reg_n_0_[9][12]\,
      Q(11) => \b_s_reg_n_0_[9][11]\,
      Q(10) => \b_s_reg_n_0_[9][10]\,
      Q(9) => \b_s_reg_n_0_[9][9]\,
      Q(8) => \b_s_reg_n_0_[9][8]\,
      Q(7) => \b_s_reg_n_0_[9][7]\,
      Q(6) => \b_s_reg_n_0_[9][6]\,
      Q(5) => \b_s_reg_n_0_[9][5]\,
      Q(4) => \b_s_reg_n_0_[9][4]\,
      Q(3) => \b_s_reg_n_0_[9][3]\,
      Q(2) => \b_s_reg_n_0_[9][2]\,
      Q(1) => \b_s_reg_n_0_[9][1]\,
      Q(0) => \b_s_reg_n_0_[9][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[9]\(33 downto 0)
    );
\other_sections[11].fir_section\: entity work.\mac__parameterized0_40\
     port map (
      P(33 downto 0) => \mac_inter[11]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[8][16]\,
      Q(15) => \b_s_reg_n_0_[8][15]\,
      Q(14) => \b_s_reg_n_0_[8][14]\,
      Q(13) => \b_s_reg_n_0_[8][13]\,
      Q(12) => \b_s_reg_n_0_[8][12]\,
      Q(11) => \b_s_reg_n_0_[8][11]\,
      Q(10) => \b_s_reg_n_0_[8][10]\,
      Q(9) => \b_s_reg_n_0_[8][9]\,
      Q(8) => \b_s_reg_n_0_[8][8]\,
      Q(7) => \b_s_reg_n_0_[8][7]\,
      Q(6) => \b_s_reg_n_0_[8][6]\,
      Q(5) => \b_s_reg_n_0_[8][5]\,
      Q(4) => \b_s_reg_n_0_[8][4]\,
      Q(3) => \b_s_reg_n_0_[8][3]\,
      Q(2) => \b_s_reg_n_0_[8][2]\,
      Q(1) => \b_s_reg_n_0_[8][1]\,
      Q(0) => \b_s_reg_n_0_[8][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[10]\(33 downto 0)
    );
\other_sections[12].fir_section\: entity work.\mac__parameterized0_41\
     port map (
      P(33 downto 0) => \mac_inter[12]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[7][16]\,
      Q(15) => \b_s_reg_n_0_[7][15]\,
      Q(14) => \b_s_reg_n_0_[7][14]\,
      Q(13) => \b_s_reg_n_0_[7][13]\,
      Q(12) => \b_s_reg_n_0_[7][12]\,
      Q(11) => \b_s_reg_n_0_[7][11]\,
      Q(10) => \b_s_reg_n_0_[7][10]\,
      Q(9) => \b_s_reg_n_0_[7][9]\,
      Q(8) => \b_s_reg_n_0_[7][8]\,
      Q(7) => \b_s_reg_n_0_[7][7]\,
      Q(6) => \b_s_reg_n_0_[7][6]\,
      Q(5) => \b_s_reg_n_0_[7][5]\,
      Q(4) => \b_s_reg_n_0_[7][4]\,
      Q(3) => \b_s_reg_n_0_[7][3]\,
      Q(2) => \b_s_reg_n_0_[7][2]\,
      Q(1) => \b_s_reg_n_0_[7][1]\,
      Q(0) => \b_s_reg_n_0_[7][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[11]\(33 downto 0)
    );
\other_sections[13].fir_section\: entity work.\mac__parameterized0_42\
     port map (
      P(33 downto 0) => \mac_inter[13]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[6][16]\,
      Q(15) => \b_s_reg_n_0_[6][15]\,
      Q(14) => \b_s_reg_n_0_[6][14]\,
      Q(13) => \b_s_reg_n_0_[6][13]\,
      Q(12) => \b_s_reg_n_0_[6][12]\,
      Q(11) => \b_s_reg_n_0_[6][11]\,
      Q(10) => \b_s_reg_n_0_[6][10]\,
      Q(9) => \b_s_reg_n_0_[6][9]\,
      Q(8) => \b_s_reg_n_0_[6][8]\,
      Q(7) => \b_s_reg_n_0_[6][7]\,
      Q(6) => \b_s_reg_n_0_[6][6]\,
      Q(5) => \b_s_reg_n_0_[6][5]\,
      Q(4) => \b_s_reg_n_0_[6][4]\,
      Q(3) => \b_s_reg_n_0_[6][3]\,
      Q(2) => \b_s_reg_n_0_[6][2]\,
      Q(1) => \b_s_reg_n_0_[6][1]\,
      Q(0) => \b_s_reg_n_0_[6][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[12]\(33 downto 0)
    );
\other_sections[14].fir_section\: entity work.\mac__parameterized0_43\
     port map (
      P(33 downto 0) => \mac_inter[14]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[5][16]\,
      Q(15) => \b_s_reg_n_0_[5][15]\,
      Q(14) => \b_s_reg_n_0_[5][14]\,
      Q(13) => \b_s_reg_n_0_[5][13]\,
      Q(12) => \b_s_reg_n_0_[5][12]\,
      Q(11) => \b_s_reg_n_0_[5][11]\,
      Q(10) => \b_s_reg_n_0_[5][10]\,
      Q(9) => \b_s_reg_n_0_[5][9]\,
      Q(8) => \b_s_reg_n_0_[5][8]\,
      Q(7) => \b_s_reg_n_0_[5][7]\,
      Q(6) => \b_s_reg_n_0_[5][6]\,
      Q(5) => \b_s_reg_n_0_[5][5]\,
      Q(4) => \b_s_reg_n_0_[5][4]\,
      Q(3) => \b_s_reg_n_0_[5][3]\,
      Q(2) => \b_s_reg_n_0_[5][2]\,
      Q(1) => \b_s_reg_n_0_[5][1]\,
      Q(0) => \b_s_reg_n_0_[5][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[13]\(33 downto 0)
    );
\other_sections[15].fir_section\: entity work.\mac__parameterized0_44\
     port map (
      P(33 downto 0) => \mac_inter[15]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[4][16]\,
      Q(15) => \b_s_reg_n_0_[4][15]\,
      Q(14) => \b_s_reg_n_0_[4][14]\,
      Q(13) => \b_s_reg_n_0_[4][13]\,
      Q(12) => \b_s_reg_n_0_[4][12]\,
      Q(11) => \b_s_reg_n_0_[4][11]\,
      Q(10) => \b_s_reg_n_0_[4][10]\,
      Q(9) => \b_s_reg_n_0_[4][9]\,
      Q(8) => \b_s_reg_n_0_[4][8]\,
      Q(7) => \b_s_reg_n_0_[4][7]\,
      Q(6) => \b_s_reg_n_0_[4][6]\,
      Q(5) => \b_s_reg_n_0_[4][5]\,
      Q(4) => \b_s_reg_n_0_[4][4]\,
      Q(3) => \b_s_reg_n_0_[4][3]\,
      Q(2) => \b_s_reg_n_0_[4][2]\,
      Q(1) => \b_s_reg_n_0_[4][1]\,
      Q(0) => \b_s_reg_n_0_[4][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[14]\(33 downto 0)
    );
\other_sections[16].fir_section\: entity work.\mac__parameterized0_45\
     port map (
      P(33 downto 0) => \mac_inter[16]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[3][16]\,
      Q(15) => \b_s_reg_n_0_[3][15]\,
      Q(14) => \b_s_reg_n_0_[3][14]\,
      Q(13) => \b_s_reg_n_0_[3][13]\,
      Q(12) => \b_s_reg_n_0_[3][12]\,
      Q(11) => \b_s_reg_n_0_[3][11]\,
      Q(10) => \b_s_reg_n_0_[3][10]\,
      Q(9) => \b_s_reg_n_0_[3][9]\,
      Q(8) => \b_s_reg_n_0_[3][8]\,
      Q(7) => \b_s_reg_n_0_[3][7]\,
      Q(6) => \b_s_reg_n_0_[3][6]\,
      Q(5) => \b_s_reg_n_0_[3][5]\,
      Q(4) => \b_s_reg_n_0_[3][4]\,
      Q(3) => \b_s_reg_n_0_[3][3]\,
      Q(2) => \b_s_reg_n_0_[3][2]\,
      Q(1) => \b_s_reg_n_0_[3][1]\,
      Q(0) => \b_s_reg_n_0_[3][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[15]\(33 downto 0)
    );
\other_sections[17].fir_section\: entity work.\mac__parameterized0_46\
     port map (
      P(33 downto 0) => \mac_inter[17]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[2][16]\,
      Q(15) => \b_s_reg_n_0_[2][15]\,
      Q(14) => \b_s_reg_n_0_[2][14]\,
      Q(13) => \b_s_reg_n_0_[2][13]\,
      Q(12) => \b_s_reg_n_0_[2][12]\,
      Q(11) => \b_s_reg_n_0_[2][11]\,
      Q(10) => \b_s_reg_n_0_[2][10]\,
      Q(9) => \b_s_reg_n_0_[2][9]\,
      Q(8) => \b_s_reg_n_0_[2][8]\,
      Q(7) => \b_s_reg_n_0_[2][7]\,
      Q(6) => \b_s_reg_n_0_[2][6]\,
      Q(5) => \b_s_reg_n_0_[2][5]\,
      Q(4) => \b_s_reg_n_0_[2][4]\,
      Q(3) => \b_s_reg_n_0_[2][3]\,
      Q(2) => \b_s_reg_n_0_[2][2]\,
      Q(1) => \b_s_reg_n_0_[2][1]\,
      Q(0) => \b_s_reg_n_0_[2][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[16]\(33 downto 0)
    );
\other_sections[18].fir_section\: entity work.\mac__parameterized0_47\
     port map (
      P(33 downto 0) => \mac_inter[18]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[1][16]\,
      Q(15) => \b_s_reg_n_0_[1][15]\,
      Q(14) => \b_s_reg_n_0_[1][14]\,
      Q(13) => \b_s_reg_n_0_[1][13]\,
      Q(12) => \b_s_reg_n_0_[1][12]\,
      Q(11) => \b_s_reg_n_0_[1][11]\,
      Q(10) => \b_s_reg_n_0_[1][10]\,
      Q(9) => \b_s_reg_n_0_[1][9]\,
      Q(8) => \b_s_reg_n_0_[1][8]\,
      Q(7) => \b_s_reg_n_0_[1][7]\,
      Q(6) => \b_s_reg_n_0_[1][6]\,
      Q(5) => \b_s_reg_n_0_[1][5]\,
      Q(4) => \b_s_reg_n_0_[1][4]\,
      Q(3) => \b_s_reg_n_0_[1][3]\,
      Q(2) => \b_s_reg_n_0_[1][2]\,
      Q(1) => \b_s_reg_n_0_[1][1]\,
      Q(0) => \b_s_reg_n_0_[1][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[17]\(33 downto 0)
    );
\other_sections[19].fir_section\: entity work.\mac__parameterized0_48\
     port map (
      D(16 downto 0) => \mac_inter[19]\(32 downto 16),
      P(33 downto 0) => \mac_inter[18]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[0][16]\,
      Q(15) => \b_s_reg_n_0_[0][15]\,
      Q(14) => \b_s_reg_n_0_[0][14]\,
      Q(13) => \b_s_reg_n_0_[0][13]\,
      Q(12) => \b_s_reg_n_0_[0][12]\,
      Q(11) => \b_s_reg_n_0_[0][11]\,
      Q(10) => \b_s_reg_n_0_[0][10]\,
      Q(9) => \b_s_reg_n_0_[0][9]\,
      Q(8) => \b_s_reg_n_0_[0][8]\,
      Q(7) => \b_s_reg_n_0_[0][7]\,
      Q(6) => \b_s_reg_n_0_[0][6]\,
      Q(5) => \b_s_reg_n_0_[0][5]\,
      Q(4) => \b_s_reg_n_0_[0][4]\,
      Q(3) => \b_s_reg_n_0_[0][3]\,
      Q(2) => \b_s_reg_n_0_[0][2]\,
      Q(1) => \b_s_reg_n_0_[0][1]\,
      Q(0) => \b_s_reg_n_0_[0][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i
    );
\other_sections[1].fir_section\: entity work.\mac__parameterized0_49\
     port map (
      P(33 downto 0) => \mac_inter[1]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[18][16]\,
      Q(15) => \b_s_reg_n_0_[18][15]\,
      Q(14) => \b_s_reg_n_0_[18][14]\,
      Q(13) => \b_s_reg_n_0_[18][13]\,
      Q(12) => \b_s_reg_n_0_[18][12]\,
      Q(11) => \b_s_reg_n_0_[18][11]\,
      Q(10) => \b_s_reg_n_0_[18][10]\,
      Q(9) => \b_s_reg_n_0_[18][9]\,
      Q(8) => \b_s_reg_n_0_[18][8]\,
      Q(7) => \b_s_reg_n_0_[18][7]\,
      Q(6) => \b_s_reg_n_0_[18][6]\,
      Q(5) => \b_s_reg_n_0_[18][5]\,
      Q(4) => \b_s_reg_n_0_[18][4]\,
      Q(3) => \b_s_reg_n_0_[18][3]\,
      Q(2) => \b_s_reg_n_0_[18][2]\,
      Q(1) => \b_s_reg_n_0_[18][1]\,
      Q(0) => \b_s_reg_n_0_[18][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[0]\(33 downto 0)
    );
\other_sections[2].fir_section\: entity work.\mac__parameterized0_50\
     port map (
      P(33 downto 0) => \mac_inter[2]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[17][16]\,
      Q(15) => \b_s_reg_n_0_[17][15]\,
      Q(14) => \b_s_reg_n_0_[17][14]\,
      Q(13) => \b_s_reg_n_0_[17][13]\,
      Q(12) => \b_s_reg_n_0_[17][12]\,
      Q(11) => \b_s_reg_n_0_[17][11]\,
      Q(10) => \b_s_reg_n_0_[17][10]\,
      Q(9) => \b_s_reg_n_0_[17][9]\,
      Q(8) => \b_s_reg_n_0_[17][8]\,
      Q(7) => \b_s_reg_n_0_[17][7]\,
      Q(6) => \b_s_reg_n_0_[17][6]\,
      Q(5) => \b_s_reg_n_0_[17][5]\,
      Q(4) => \b_s_reg_n_0_[17][4]\,
      Q(3) => \b_s_reg_n_0_[17][3]\,
      Q(2) => \b_s_reg_n_0_[17][2]\,
      Q(1) => \b_s_reg_n_0_[17][1]\,
      Q(0) => \b_s_reg_n_0_[17][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[1]\(33 downto 0)
    );
\other_sections[3].fir_section\: entity work.\mac__parameterized0_51\
     port map (
      P(33 downto 0) => \mac_inter[3]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[16][16]\,
      Q(15) => \b_s_reg_n_0_[16][15]\,
      Q(14) => \b_s_reg_n_0_[16][14]\,
      Q(13) => \b_s_reg_n_0_[16][13]\,
      Q(12) => \b_s_reg_n_0_[16][12]\,
      Q(11) => \b_s_reg_n_0_[16][11]\,
      Q(10) => \b_s_reg_n_0_[16][10]\,
      Q(9) => \b_s_reg_n_0_[16][9]\,
      Q(8) => \b_s_reg_n_0_[16][8]\,
      Q(7) => \b_s_reg_n_0_[16][7]\,
      Q(6) => \b_s_reg_n_0_[16][6]\,
      Q(5) => \b_s_reg_n_0_[16][5]\,
      Q(4) => \b_s_reg_n_0_[16][4]\,
      Q(3) => \b_s_reg_n_0_[16][3]\,
      Q(2) => \b_s_reg_n_0_[16][2]\,
      Q(1) => \b_s_reg_n_0_[16][1]\,
      Q(0) => \b_s_reg_n_0_[16][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[2]\(33 downto 0)
    );
\other_sections[4].fir_section\: entity work.\mac__parameterized0_52\
     port map (
      P(33 downto 0) => \mac_inter[4]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[15][16]\,
      Q(15) => \b_s_reg_n_0_[15][15]\,
      Q(14) => \b_s_reg_n_0_[15][14]\,
      Q(13) => \b_s_reg_n_0_[15][13]\,
      Q(12) => \b_s_reg_n_0_[15][12]\,
      Q(11) => \b_s_reg_n_0_[15][11]\,
      Q(10) => \b_s_reg_n_0_[15][10]\,
      Q(9) => \b_s_reg_n_0_[15][9]\,
      Q(8) => \b_s_reg_n_0_[15][8]\,
      Q(7) => \b_s_reg_n_0_[15][7]\,
      Q(6) => \b_s_reg_n_0_[15][6]\,
      Q(5) => \b_s_reg_n_0_[15][5]\,
      Q(4) => \b_s_reg_n_0_[15][4]\,
      Q(3) => \b_s_reg_n_0_[15][3]\,
      Q(2) => \b_s_reg_n_0_[15][2]\,
      Q(1) => \b_s_reg_n_0_[15][1]\,
      Q(0) => \b_s_reg_n_0_[15][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[3]\(33 downto 0)
    );
\other_sections[5].fir_section\: entity work.\mac__parameterized0_53\
     port map (
      P(33 downto 0) => \mac_inter[5]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[14][16]\,
      Q(15) => \b_s_reg_n_0_[14][15]\,
      Q(14) => \b_s_reg_n_0_[14][14]\,
      Q(13) => \b_s_reg_n_0_[14][13]\,
      Q(12) => \b_s_reg_n_0_[14][12]\,
      Q(11) => \b_s_reg_n_0_[14][11]\,
      Q(10) => \b_s_reg_n_0_[14][10]\,
      Q(9) => \b_s_reg_n_0_[14][9]\,
      Q(8) => \b_s_reg_n_0_[14][8]\,
      Q(7) => \b_s_reg_n_0_[14][7]\,
      Q(6) => \b_s_reg_n_0_[14][6]\,
      Q(5) => \b_s_reg_n_0_[14][5]\,
      Q(4) => \b_s_reg_n_0_[14][4]\,
      Q(3) => \b_s_reg_n_0_[14][3]\,
      Q(2) => \b_s_reg_n_0_[14][2]\,
      Q(1) => \b_s_reg_n_0_[14][1]\,
      Q(0) => \b_s_reg_n_0_[14][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[4]\(33 downto 0)
    );
\other_sections[6].fir_section\: entity work.\mac__parameterized0_54\
     port map (
      P(33 downto 0) => \mac_inter[6]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[13][16]\,
      Q(15) => \b_s_reg_n_0_[13][15]\,
      Q(14) => \b_s_reg_n_0_[13][14]\,
      Q(13) => \b_s_reg_n_0_[13][13]\,
      Q(12) => \b_s_reg_n_0_[13][12]\,
      Q(11) => \b_s_reg_n_0_[13][11]\,
      Q(10) => \b_s_reg_n_0_[13][10]\,
      Q(9) => \b_s_reg_n_0_[13][9]\,
      Q(8) => \b_s_reg_n_0_[13][8]\,
      Q(7) => \b_s_reg_n_0_[13][7]\,
      Q(6) => \b_s_reg_n_0_[13][6]\,
      Q(5) => \b_s_reg_n_0_[13][5]\,
      Q(4) => \b_s_reg_n_0_[13][4]\,
      Q(3) => \b_s_reg_n_0_[13][3]\,
      Q(2) => \b_s_reg_n_0_[13][2]\,
      Q(1) => \b_s_reg_n_0_[13][1]\,
      Q(0) => \b_s_reg_n_0_[13][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[5]\(33 downto 0)
    );
\other_sections[7].fir_section\: entity work.\mac__parameterized0_55\
     port map (
      P(33 downto 0) => \mac_inter[7]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[12][16]\,
      Q(15) => \b_s_reg_n_0_[12][15]\,
      Q(14) => \b_s_reg_n_0_[12][14]\,
      Q(13) => \b_s_reg_n_0_[12][13]\,
      Q(12) => \b_s_reg_n_0_[12][12]\,
      Q(11) => \b_s_reg_n_0_[12][11]\,
      Q(10) => \b_s_reg_n_0_[12][10]\,
      Q(9) => \b_s_reg_n_0_[12][9]\,
      Q(8) => \b_s_reg_n_0_[12][8]\,
      Q(7) => \b_s_reg_n_0_[12][7]\,
      Q(6) => \b_s_reg_n_0_[12][6]\,
      Q(5) => \b_s_reg_n_0_[12][5]\,
      Q(4) => \b_s_reg_n_0_[12][4]\,
      Q(3) => \b_s_reg_n_0_[12][3]\,
      Q(2) => \b_s_reg_n_0_[12][2]\,
      Q(1) => \b_s_reg_n_0_[12][1]\,
      Q(0) => \b_s_reg_n_0_[12][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[6]\(33 downto 0)
    );
\other_sections[8].fir_section\: entity work.\mac__parameterized0_56\
     port map (
      P(33 downto 0) => \mac_inter[8]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[11][16]\,
      Q(15) => \b_s_reg_n_0_[11][15]\,
      Q(14) => \b_s_reg_n_0_[11][14]\,
      Q(13) => \b_s_reg_n_0_[11][13]\,
      Q(12) => \b_s_reg_n_0_[11][12]\,
      Q(11) => \b_s_reg_n_0_[11][11]\,
      Q(10) => \b_s_reg_n_0_[11][10]\,
      Q(9) => \b_s_reg_n_0_[11][9]\,
      Q(8) => \b_s_reg_n_0_[11][8]\,
      Q(7) => \b_s_reg_n_0_[11][7]\,
      Q(6) => \b_s_reg_n_0_[11][6]\,
      Q(5) => \b_s_reg_n_0_[11][5]\,
      Q(4) => \b_s_reg_n_0_[11][4]\,
      Q(3) => \b_s_reg_n_0_[11][3]\,
      Q(2) => \b_s_reg_n_0_[11][2]\,
      Q(1) => \b_s_reg_n_0_[11][1]\,
      Q(0) => \b_s_reg_n_0_[11][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[7]\(33 downto 0)
    );
\other_sections[9].fir_section\: entity work.\mac__parameterized0_57\
     port map (
      P(33 downto 0) => \mac_inter[8]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[10][16]\,
      Q(15) => \b_s_reg_n_0_[10][15]\,
      Q(14) => \b_s_reg_n_0_[10][14]\,
      Q(13) => \b_s_reg_n_0_[10][13]\,
      Q(12) => \b_s_reg_n_0_[10][12]\,
      Q(11) => \b_s_reg_n_0_[10][11]\,
      Q(10) => \b_s_reg_n_0_[10][10]\,
      Q(9) => \b_s_reg_n_0_[10][9]\,
      Q(8) => \b_s_reg_n_0_[10][8]\,
      Q(7) => \b_s_reg_n_0_[10][7]\,
      Q(6) => \b_s_reg_n_0_[10][6]\,
      Q(5) => \b_s_reg_n_0_[10][5]\,
      Q(4) => \b_s_reg_n_0_[10][4]\,
      Q(3) => \b_s_reg_n_0_[10][3]\,
      Q(2) => \b_s_reg_n_0_[10][2]\,
      Q(1) => \b_s_reg_n_0_[10][1]\,
      Q(0) => \b_s_reg_n_0_[10][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[9]\(33 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fir_filtar__3\ is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    we_i : in STD_LOGIC;
    coef_addr_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fir_filtar__3\ : entity is "fir_filtar";
  attribute dont_touch : string;
  attribute dont_touch of \fir_filtar__3\ : entity is "true";
  attribute fir_ord : integer;
  attribute fir_ord of \fir_filtar__3\ : entity is 20;
  attribute fixed_width : integer;
  attribute fixed_width of \fir_filtar__3\ : entity is 1;
  attribute input_data_width : integer;
  attribute input_data_width of \fir_filtar__3\ : entity is 17;
  attribute output_data_width : integer;
  attribute output_data_width of \fir_filtar__3\ : entity is 17;
end \fir_filtar__3\;

architecture STRUCTURE of \fir_filtar__3\ is
  signal \b_s[0]\ : STD_LOGIC;
  signal \b_s[10]\ : STD_LOGIC;
  signal \b_s[11]\ : STD_LOGIC;
  signal \b_s[12]\ : STD_LOGIC;
  signal \b_s[13]\ : STD_LOGIC;
  signal \b_s[14]\ : STD_LOGIC;
  signal \b_s[15]\ : STD_LOGIC;
  signal \b_s[16]\ : STD_LOGIC;
  signal \b_s[17]\ : STD_LOGIC;
  signal \b_s[18]\ : STD_LOGIC;
  signal \b_s[19]\ : STD_LOGIC;
  signal \b_s[1]\ : STD_LOGIC;
  signal \b_s[2]\ : STD_LOGIC;
  signal \b_s[3]\ : STD_LOGIC;
  signal \b_s[4]\ : STD_LOGIC;
  signal \b_s[5]\ : STD_LOGIC;
  signal \b_s[6]\ : STD_LOGIC;
  signal \b_s[7]\ : STD_LOGIC;
  signal \b_s[8]\ : STD_LOGIC;
  signal \b_s[9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[10][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[11][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[12][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[13][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[14][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[15][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[16][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[17][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[18][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[19][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[3][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[4][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[5][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[6][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[7][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[8][9]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][10]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][11]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][12]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][13]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][14]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][15]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][16]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][7]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][8]\ : STD_LOGIC;
  signal \b_s_reg_n_0_[9][9]\ : STD_LOGIC;
  signal \mac_inter[0]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[10]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[11]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[12]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[13]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[14]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[15]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[16]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[17]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[18]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[19]\ : STD_LOGIC_VECTOR ( 32 downto 16 );
  signal \mac_inter[1]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[2]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[3]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[4]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[5]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[6]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[7]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[8]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \mac_inter[9]\ : STD_LOGIC_VECTOR ( 33 downto 0 );
begin
\b_s[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[0]\
    );
\b_s[10][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(0),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[10]\
    );
\b_s[11][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(2),
      O => \b_s[11]\
    );
\b_s[12][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(1),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(2),
      O => \b_s[12]\
    );
\b_s[13][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[13]\
    );
\b_s[14][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(3),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(0),
      O => \b_s[14]\
    );
\b_s[15][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(4),
      O => \b_s[15]\
    );
\b_s[16][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(0),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(4),
      O => \b_s[16]\
    );
\b_s[17][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(1),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(4),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[17]\
    );
\b_s[18][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(0),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(4),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[18]\
    );
\b_s[19][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(2),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[19]\
    );
\b_s[1][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[1]\
    );
\b_s[2][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(1),
      O => \b_s[2]\
    );
\b_s[3][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[3]\
    );
\b_s[4][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(2),
      O => \b_s[4]\
    );
\b_s[5][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(0),
      O => \b_s[5]\
    );
\b_s[6][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(3),
      I3 => coef_addr_i(2),
      I4 => coef_addr_i(0),
      I5 => coef_addr_i(1),
      O => \b_s[6]\
    );
\b_s[7][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(2),
      I2 => coef_addr_i(4),
      I3 => coef_addr_i(0),
      I4 => coef_addr_i(1),
      I5 => coef_addr_i(3),
      O => \b_s[7]\
    );
\b_s[8][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(0),
      I3 => coef_addr_i(1),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(3),
      O => \b_s[8]\
    );
\b_s[9][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => we_i,
      I1 => coef_addr_i(4),
      I2 => coef_addr_i(1),
      I3 => coef_addr_i(3),
      I4 => coef_addr_i(2),
      I5 => coef_addr_i(0),
      O => \b_s[9]\
    );
\b_s_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[0][0]\,
      R => '0'
    );
\b_s_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[0][10]\,
      R => '0'
    );
\b_s_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[0][11]\,
      R => '0'
    );
\b_s_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[0][12]\,
      R => '0'
    );
\b_s_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[0][13]\,
      R => '0'
    );
\b_s_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[0][14]\,
      R => '0'
    );
\b_s_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[0][15]\,
      R => '0'
    );
\b_s_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[0][16]\,
      R => '0'
    );
\b_s_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[0][1]\,
      R => '0'
    );
\b_s_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[0][2]\,
      R => '0'
    );
\b_s_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[0][3]\,
      R => '0'
    );
\b_s_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[0][4]\,
      R => '0'
    );
\b_s_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[0][5]\,
      R => '0'
    );
\b_s_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[0][6]\,
      R => '0'
    );
\b_s_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[0][7]\,
      R => '0'
    );
\b_s_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[0][8]\,
      R => '0'
    );
\b_s_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[0]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[0][9]\,
      R => '0'
    );
\b_s_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[10][0]\,
      R => '0'
    );
\b_s_reg[10][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[10][10]\,
      R => '0'
    );
\b_s_reg[10][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[10][11]\,
      R => '0'
    );
\b_s_reg[10][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[10][12]\,
      R => '0'
    );
\b_s_reg[10][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[10][13]\,
      R => '0'
    );
\b_s_reg[10][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[10][14]\,
      R => '0'
    );
\b_s_reg[10][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[10][15]\,
      R => '0'
    );
\b_s_reg[10][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[10][16]\,
      R => '0'
    );
\b_s_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[10][1]\,
      R => '0'
    );
\b_s_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[10][2]\,
      R => '0'
    );
\b_s_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[10][3]\,
      R => '0'
    );
\b_s_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[10][4]\,
      R => '0'
    );
\b_s_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[10][5]\,
      R => '0'
    );
\b_s_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[10][6]\,
      R => '0'
    );
\b_s_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[10][7]\,
      R => '0'
    );
\b_s_reg[10][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[10][8]\,
      R => '0'
    );
\b_s_reg[10][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[10]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[10][9]\,
      R => '0'
    );
\b_s_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[11][0]\,
      R => '0'
    );
\b_s_reg[11][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[11][10]\,
      R => '0'
    );
\b_s_reg[11][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[11][11]\,
      R => '0'
    );
\b_s_reg[11][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[11][12]\,
      R => '0'
    );
\b_s_reg[11][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[11][13]\,
      R => '0'
    );
\b_s_reg[11][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[11][14]\,
      R => '0'
    );
\b_s_reg[11][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[11][15]\,
      R => '0'
    );
\b_s_reg[11][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[11][16]\,
      R => '0'
    );
\b_s_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[11][1]\,
      R => '0'
    );
\b_s_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[11][2]\,
      R => '0'
    );
\b_s_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[11][3]\,
      R => '0'
    );
\b_s_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[11][4]\,
      R => '0'
    );
\b_s_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[11][5]\,
      R => '0'
    );
\b_s_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[11][6]\,
      R => '0'
    );
\b_s_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[11][7]\,
      R => '0'
    );
\b_s_reg[11][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[11][8]\,
      R => '0'
    );
\b_s_reg[11][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[11]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[11][9]\,
      R => '0'
    );
\b_s_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[12][0]\,
      R => '0'
    );
\b_s_reg[12][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[12][10]\,
      R => '0'
    );
\b_s_reg[12][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[12][11]\,
      R => '0'
    );
\b_s_reg[12][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[12][12]\,
      R => '0'
    );
\b_s_reg[12][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[12][13]\,
      R => '0'
    );
\b_s_reg[12][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[12][14]\,
      R => '0'
    );
\b_s_reg[12][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[12][15]\,
      R => '0'
    );
\b_s_reg[12][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[12][16]\,
      R => '0'
    );
\b_s_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[12][1]\,
      R => '0'
    );
\b_s_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[12][2]\,
      R => '0'
    );
\b_s_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[12][3]\,
      R => '0'
    );
\b_s_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[12][4]\,
      R => '0'
    );
\b_s_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[12][5]\,
      R => '0'
    );
\b_s_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[12][6]\,
      R => '0'
    );
\b_s_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[12][7]\,
      R => '0'
    );
\b_s_reg[12][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[12][8]\,
      R => '0'
    );
\b_s_reg[12][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[12]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[12][9]\,
      R => '0'
    );
\b_s_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[13][0]\,
      R => '0'
    );
\b_s_reg[13][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[13][10]\,
      R => '0'
    );
\b_s_reg[13][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[13][11]\,
      R => '0'
    );
\b_s_reg[13][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[13][12]\,
      R => '0'
    );
\b_s_reg[13][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[13][13]\,
      R => '0'
    );
\b_s_reg[13][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[13][14]\,
      R => '0'
    );
\b_s_reg[13][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[13][15]\,
      R => '0'
    );
\b_s_reg[13][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[13][16]\,
      R => '0'
    );
\b_s_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[13][1]\,
      R => '0'
    );
\b_s_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[13][2]\,
      R => '0'
    );
\b_s_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[13][3]\,
      R => '0'
    );
\b_s_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[13][4]\,
      R => '0'
    );
\b_s_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[13][5]\,
      R => '0'
    );
\b_s_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[13][6]\,
      R => '0'
    );
\b_s_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[13][7]\,
      R => '0'
    );
\b_s_reg[13][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[13][8]\,
      R => '0'
    );
\b_s_reg[13][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[13]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[13][9]\,
      R => '0'
    );
\b_s_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[14][0]\,
      R => '0'
    );
\b_s_reg[14][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[14][10]\,
      R => '0'
    );
\b_s_reg[14][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[14][11]\,
      R => '0'
    );
\b_s_reg[14][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[14][12]\,
      R => '0'
    );
\b_s_reg[14][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[14][13]\,
      R => '0'
    );
\b_s_reg[14][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[14][14]\,
      R => '0'
    );
\b_s_reg[14][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[14][15]\,
      R => '0'
    );
\b_s_reg[14][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[14][16]\,
      R => '0'
    );
\b_s_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[14][1]\,
      R => '0'
    );
\b_s_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[14][2]\,
      R => '0'
    );
\b_s_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[14][3]\,
      R => '0'
    );
\b_s_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[14][4]\,
      R => '0'
    );
\b_s_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[14][5]\,
      R => '0'
    );
\b_s_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[14][6]\,
      R => '0'
    );
\b_s_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[14][7]\,
      R => '0'
    );
\b_s_reg[14][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[14][8]\,
      R => '0'
    );
\b_s_reg[14][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[14]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[14][9]\,
      R => '0'
    );
\b_s_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[15][0]\,
      R => '0'
    );
\b_s_reg[15][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[15][10]\,
      R => '0'
    );
\b_s_reg[15][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[15][11]\,
      R => '0'
    );
\b_s_reg[15][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[15][12]\,
      R => '0'
    );
\b_s_reg[15][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[15][13]\,
      R => '0'
    );
\b_s_reg[15][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[15][14]\,
      R => '0'
    );
\b_s_reg[15][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[15][15]\,
      R => '0'
    );
\b_s_reg[15][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[15][16]\,
      R => '0'
    );
\b_s_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[15][1]\,
      R => '0'
    );
\b_s_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[15][2]\,
      R => '0'
    );
\b_s_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[15][3]\,
      R => '0'
    );
\b_s_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[15][4]\,
      R => '0'
    );
\b_s_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[15][5]\,
      R => '0'
    );
\b_s_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[15][6]\,
      R => '0'
    );
\b_s_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[15][7]\,
      R => '0'
    );
\b_s_reg[15][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[15][8]\,
      R => '0'
    );
\b_s_reg[15][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[15]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[15][9]\,
      R => '0'
    );
\b_s_reg[16][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[16][0]\,
      R => '0'
    );
\b_s_reg[16][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[16][10]\,
      R => '0'
    );
\b_s_reg[16][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[16][11]\,
      R => '0'
    );
\b_s_reg[16][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[16][12]\,
      R => '0'
    );
\b_s_reg[16][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[16][13]\,
      R => '0'
    );
\b_s_reg[16][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[16][14]\,
      R => '0'
    );
\b_s_reg[16][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[16][15]\,
      R => '0'
    );
\b_s_reg[16][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[16][16]\,
      R => '0'
    );
\b_s_reg[16][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[16][1]\,
      R => '0'
    );
\b_s_reg[16][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[16][2]\,
      R => '0'
    );
\b_s_reg[16][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[16][3]\,
      R => '0'
    );
\b_s_reg[16][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[16][4]\,
      R => '0'
    );
\b_s_reg[16][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[16][5]\,
      R => '0'
    );
\b_s_reg[16][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[16][6]\,
      R => '0'
    );
\b_s_reg[16][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[16][7]\,
      R => '0'
    );
\b_s_reg[16][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[16][8]\,
      R => '0'
    );
\b_s_reg[16][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[16]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[16][9]\,
      R => '0'
    );
\b_s_reg[17][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[17][0]\,
      R => '0'
    );
\b_s_reg[17][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[17][10]\,
      R => '0'
    );
\b_s_reg[17][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[17][11]\,
      R => '0'
    );
\b_s_reg[17][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[17][12]\,
      R => '0'
    );
\b_s_reg[17][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[17][13]\,
      R => '0'
    );
\b_s_reg[17][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[17][14]\,
      R => '0'
    );
\b_s_reg[17][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[17][15]\,
      R => '0'
    );
\b_s_reg[17][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[17][16]\,
      R => '0'
    );
\b_s_reg[17][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[17][1]\,
      R => '0'
    );
\b_s_reg[17][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[17][2]\,
      R => '0'
    );
\b_s_reg[17][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[17][3]\,
      R => '0'
    );
\b_s_reg[17][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[17][4]\,
      R => '0'
    );
\b_s_reg[17][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[17][5]\,
      R => '0'
    );
\b_s_reg[17][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[17][6]\,
      R => '0'
    );
\b_s_reg[17][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[17][7]\,
      R => '0'
    );
\b_s_reg[17][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[17][8]\,
      R => '0'
    );
\b_s_reg[17][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[17]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[17][9]\,
      R => '0'
    );
\b_s_reg[18][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[18][0]\,
      R => '0'
    );
\b_s_reg[18][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[18][10]\,
      R => '0'
    );
\b_s_reg[18][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[18][11]\,
      R => '0'
    );
\b_s_reg[18][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[18][12]\,
      R => '0'
    );
\b_s_reg[18][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[18][13]\,
      R => '0'
    );
\b_s_reg[18][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[18][14]\,
      R => '0'
    );
\b_s_reg[18][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[18][15]\,
      R => '0'
    );
\b_s_reg[18][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[18][16]\,
      R => '0'
    );
\b_s_reg[18][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[18][1]\,
      R => '0'
    );
\b_s_reg[18][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[18][2]\,
      R => '0'
    );
\b_s_reg[18][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[18][3]\,
      R => '0'
    );
\b_s_reg[18][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[18][4]\,
      R => '0'
    );
\b_s_reg[18][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[18][5]\,
      R => '0'
    );
\b_s_reg[18][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[18][6]\,
      R => '0'
    );
\b_s_reg[18][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[18][7]\,
      R => '0'
    );
\b_s_reg[18][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[18][8]\,
      R => '0'
    );
\b_s_reg[18][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[18]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[18][9]\,
      R => '0'
    );
\b_s_reg[19][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[19][0]\,
      R => '0'
    );
\b_s_reg[19][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[19][10]\,
      R => '0'
    );
\b_s_reg[19][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[19][11]\,
      R => '0'
    );
\b_s_reg[19][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[19][12]\,
      R => '0'
    );
\b_s_reg[19][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[19][13]\,
      R => '0'
    );
\b_s_reg[19][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[19][14]\,
      R => '0'
    );
\b_s_reg[19][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[19][15]\,
      R => '0'
    );
\b_s_reg[19][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[19][16]\,
      R => '0'
    );
\b_s_reg[19][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[19][1]\,
      R => '0'
    );
\b_s_reg[19][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[19][2]\,
      R => '0'
    );
\b_s_reg[19][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[19][3]\,
      R => '0'
    );
\b_s_reg[19][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[19][4]\,
      R => '0'
    );
\b_s_reg[19][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[19][5]\,
      R => '0'
    );
\b_s_reg[19][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[19][6]\,
      R => '0'
    );
\b_s_reg[19][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[19][7]\,
      R => '0'
    );
\b_s_reg[19][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[19][8]\,
      R => '0'
    );
\b_s_reg[19][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[19]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[19][9]\,
      R => '0'
    );
\b_s_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[1][0]\,
      R => '0'
    );
\b_s_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[1][10]\,
      R => '0'
    );
\b_s_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[1][11]\,
      R => '0'
    );
\b_s_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[1][12]\,
      R => '0'
    );
\b_s_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[1][13]\,
      R => '0'
    );
\b_s_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[1][14]\,
      R => '0'
    );
\b_s_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[1][15]\,
      R => '0'
    );
\b_s_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[1][16]\,
      R => '0'
    );
\b_s_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[1][1]\,
      R => '0'
    );
\b_s_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[1][2]\,
      R => '0'
    );
\b_s_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[1][3]\,
      R => '0'
    );
\b_s_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[1][4]\,
      R => '0'
    );
\b_s_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[1][5]\,
      R => '0'
    );
\b_s_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[1][6]\,
      R => '0'
    );
\b_s_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[1][7]\,
      R => '0'
    );
\b_s_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[1][8]\,
      R => '0'
    );
\b_s_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[1]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[1][9]\,
      R => '0'
    );
\b_s_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[2][0]\,
      R => '0'
    );
\b_s_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[2][10]\,
      R => '0'
    );
\b_s_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[2][11]\,
      R => '0'
    );
\b_s_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[2][12]\,
      R => '0'
    );
\b_s_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[2][13]\,
      R => '0'
    );
\b_s_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[2][14]\,
      R => '0'
    );
\b_s_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[2][15]\,
      R => '0'
    );
\b_s_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[2][16]\,
      R => '0'
    );
\b_s_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[2][1]\,
      R => '0'
    );
\b_s_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[2][2]\,
      R => '0'
    );
\b_s_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[2][3]\,
      R => '0'
    );
\b_s_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[2][4]\,
      R => '0'
    );
\b_s_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[2][5]\,
      R => '0'
    );
\b_s_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[2][6]\,
      R => '0'
    );
\b_s_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[2][7]\,
      R => '0'
    );
\b_s_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[2][8]\,
      R => '0'
    );
\b_s_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[2]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[2][9]\,
      R => '0'
    );
\b_s_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[3][0]\,
      R => '0'
    );
\b_s_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[3][10]\,
      R => '0'
    );
\b_s_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[3][11]\,
      R => '0'
    );
\b_s_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[3][12]\,
      R => '0'
    );
\b_s_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[3][13]\,
      R => '0'
    );
\b_s_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[3][14]\,
      R => '0'
    );
\b_s_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[3][15]\,
      R => '0'
    );
\b_s_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[3][16]\,
      R => '0'
    );
\b_s_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[3][1]\,
      R => '0'
    );
\b_s_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[3][2]\,
      R => '0'
    );
\b_s_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[3][3]\,
      R => '0'
    );
\b_s_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[3][4]\,
      R => '0'
    );
\b_s_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[3][5]\,
      R => '0'
    );
\b_s_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[3][6]\,
      R => '0'
    );
\b_s_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[3][7]\,
      R => '0'
    );
\b_s_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[3][8]\,
      R => '0'
    );
\b_s_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[3]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[3][9]\,
      R => '0'
    );
\b_s_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[4][0]\,
      R => '0'
    );
\b_s_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[4][10]\,
      R => '0'
    );
\b_s_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[4][11]\,
      R => '0'
    );
\b_s_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[4][12]\,
      R => '0'
    );
\b_s_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[4][13]\,
      R => '0'
    );
\b_s_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[4][14]\,
      R => '0'
    );
\b_s_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[4][15]\,
      R => '0'
    );
\b_s_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[4][16]\,
      R => '0'
    );
\b_s_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[4][1]\,
      R => '0'
    );
\b_s_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[4][2]\,
      R => '0'
    );
\b_s_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[4][3]\,
      R => '0'
    );
\b_s_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[4][4]\,
      R => '0'
    );
\b_s_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[4][5]\,
      R => '0'
    );
\b_s_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[4][6]\,
      R => '0'
    );
\b_s_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[4][7]\,
      R => '0'
    );
\b_s_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[4][8]\,
      R => '0'
    );
\b_s_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[4]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[4][9]\,
      R => '0'
    );
\b_s_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[5][0]\,
      R => '0'
    );
\b_s_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[5][10]\,
      R => '0'
    );
\b_s_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[5][11]\,
      R => '0'
    );
\b_s_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[5][12]\,
      R => '0'
    );
\b_s_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[5][13]\,
      R => '0'
    );
\b_s_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[5][14]\,
      R => '0'
    );
\b_s_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[5][15]\,
      R => '0'
    );
\b_s_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[5][16]\,
      R => '0'
    );
\b_s_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[5][1]\,
      R => '0'
    );
\b_s_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[5][2]\,
      R => '0'
    );
\b_s_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[5][3]\,
      R => '0'
    );
\b_s_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[5][4]\,
      R => '0'
    );
\b_s_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[5][5]\,
      R => '0'
    );
\b_s_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[5][6]\,
      R => '0'
    );
\b_s_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[5][7]\,
      R => '0'
    );
\b_s_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[5][8]\,
      R => '0'
    );
\b_s_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[5]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[5][9]\,
      R => '0'
    );
\b_s_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[6][0]\,
      R => '0'
    );
\b_s_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[6][10]\,
      R => '0'
    );
\b_s_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[6][11]\,
      R => '0'
    );
\b_s_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[6][12]\,
      R => '0'
    );
\b_s_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[6][13]\,
      R => '0'
    );
\b_s_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[6][14]\,
      R => '0'
    );
\b_s_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[6][15]\,
      R => '0'
    );
\b_s_reg[6][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[6][16]\,
      R => '0'
    );
\b_s_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[6][1]\,
      R => '0'
    );
\b_s_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[6][2]\,
      R => '0'
    );
\b_s_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[6][3]\,
      R => '0'
    );
\b_s_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[6][4]\,
      R => '0'
    );
\b_s_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[6][5]\,
      R => '0'
    );
\b_s_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[6][6]\,
      R => '0'
    );
\b_s_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[6][7]\,
      R => '0'
    );
\b_s_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[6][8]\,
      R => '0'
    );
\b_s_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[6]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[6][9]\,
      R => '0'
    );
\b_s_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[7][0]\,
      R => '0'
    );
\b_s_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[7][10]\,
      R => '0'
    );
\b_s_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[7][11]\,
      R => '0'
    );
\b_s_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[7][12]\,
      R => '0'
    );
\b_s_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[7][13]\,
      R => '0'
    );
\b_s_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[7][14]\,
      R => '0'
    );
\b_s_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[7][15]\,
      R => '0'
    );
\b_s_reg[7][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[7][16]\,
      R => '0'
    );
\b_s_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[7][1]\,
      R => '0'
    );
\b_s_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[7][2]\,
      R => '0'
    );
\b_s_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[7][3]\,
      R => '0'
    );
\b_s_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[7][4]\,
      R => '0'
    );
\b_s_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[7][5]\,
      R => '0'
    );
\b_s_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[7][6]\,
      R => '0'
    );
\b_s_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[7][7]\,
      R => '0'
    );
\b_s_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[7][8]\,
      R => '0'
    );
\b_s_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[7]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[7][9]\,
      R => '0'
    );
\b_s_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[8][0]\,
      R => '0'
    );
\b_s_reg[8][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[8][10]\,
      R => '0'
    );
\b_s_reg[8][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[8][11]\,
      R => '0'
    );
\b_s_reg[8][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[8][12]\,
      R => '0'
    );
\b_s_reg[8][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[8][13]\,
      R => '0'
    );
\b_s_reg[8][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[8][14]\,
      R => '0'
    );
\b_s_reg[8][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[8][15]\,
      R => '0'
    );
\b_s_reg[8][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[8][16]\,
      R => '0'
    );
\b_s_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[8][1]\,
      R => '0'
    );
\b_s_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[8][2]\,
      R => '0'
    );
\b_s_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[8][3]\,
      R => '0'
    );
\b_s_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[8][4]\,
      R => '0'
    );
\b_s_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[8][5]\,
      R => '0'
    );
\b_s_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[8][6]\,
      R => '0'
    );
\b_s_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[8][7]\,
      R => '0'
    );
\b_s_reg[8][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[8][8]\,
      R => '0'
    );
\b_s_reg[8][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[8]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[8][9]\,
      R => '0'
    );
\b_s_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(0),
      Q => \b_s_reg_n_0_[9][0]\,
      R => '0'
    );
\b_s_reg[9][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(10),
      Q => \b_s_reg_n_0_[9][10]\,
      R => '0'
    );
\b_s_reg[9][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(11),
      Q => \b_s_reg_n_0_[9][11]\,
      R => '0'
    );
\b_s_reg[9][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(12),
      Q => \b_s_reg_n_0_[9][12]\,
      R => '0'
    );
\b_s_reg[9][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(13),
      Q => \b_s_reg_n_0_[9][13]\,
      R => '0'
    );
\b_s_reg[9][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(14),
      Q => \b_s_reg_n_0_[9][14]\,
      R => '0'
    );
\b_s_reg[9][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(15),
      Q => \b_s_reg_n_0_[9][15]\,
      R => '0'
    );
\b_s_reg[9][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(16),
      Q => \b_s_reg_n_0_[9][16]\,
      R => '0'
    );
\b_s_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(1),
      Q => \b_s_reg_n_0_[9][1]\,
      R => '0'
    );
\b_s_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(2),
      Q => \b_s_reg_n_0_[9][2]\,
      R => '0'
    );
\b_s_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(3),
      Q => \b_s_reg_n_0_[9][3]\,
      R => '0'
    );
\b_s_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(4),
      Q => \b_s_reg_n_0_[9][4]\,
      R => '0'
    );
\b_s_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(5),
      Q => \b_s_reg_n_0_[9][5]\,
      R => '0'
    );
\b_s_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(6),
      Q => \b_s_reg_n_0_[9][6]\,
      R => '0'
    );
\b_s_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(7),
      Q => \b_s_reg_n_0_[9][7]\,
      R => '0'
    );
\b_s_reg[9][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(8),
      Q => \b_s_reg_n_0_[9][8]\,
      R => '0'
    );
\b_s_reg[9][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \b_s[9]\,
      D => coef_i(9),
      Q => \b_s_reg_n_0_[9][9]\,
      R => '0'
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(16),
      Q => data_o(0),
      R => '0'
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(26),
      Q => data_o(10),
      R => '0'
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(27),
      Q => data_o(11),
      R => '0'
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(28),
      Q => data_o(12),
      R => '0'
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(29),
      Q => data_o(13),
      R => '0'
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(30),
      Q => data_o(14),
      R => '0'
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(31),
      Q => data_o(15),
      R => '0'
    );
\data_o_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(32),
      Q => data_o(16),
      R => '0'
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(17),
      Q => data_o(1),
      R => '0'
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(18),
      Q => data_o(2),
      R => '0'
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(19),
      Q => data_o(3),
      R => '0'
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(20),
      Q => data_o(4),
      R => '0'
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(21),
      Q => data_o(5),
      R => '0'
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(22),
      Q => data_o(6),
      R => '0'
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(23),
      Q => data_o(7),
      R => '0'
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(24),
      Q => data_o(8),
      R => '0'
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mac_inter[19]\(25),
      Q => data_o(9),
      R => '0'
    );
first_section: entity work.mac_58
     port map (
      P(33 downto 0) => \mac_inter[0]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[19][16]\,
      Q(15) => \b_s_reg_n_0_[19][15]\,
      Q(14) => \b_s_reg_n_0_[19][14]\,
      Q(13) => \b_s_reg_n_0_[19][13]\,
      Q(12) => \b_s_reg_n_0_[19][12]\,
      Q(11) => \b_s_reg_n_0_[19][11]\,
      Q(10) => \b_s_reg_n_0_[19][10]\,
      Q(9) => \b_s_reg_n_0_[19][9]\,
      Q(8) => \b_s_reg_n_0_[19][8]\,
      Q(7) => \b_s_reg_n_0_[19][7]\,
      Q(6) => \b_s_reg_n_0_[19][6]\,
      Q(5) => \b_s_reg_n_0_[19][5]\,
      Q(4) => \b_s_reg_n_0_[19][4]\,
      Q(3) => \b_s_reg_n_0_[19][3]\,
      Q(2) => \b_s_reg_n_0_[19][2]\,
      Q(1) => \b_s_reg_n_0_[19][1]\,
      Q(0) => \b_s_reg_n_0_[19][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i
    );
\other_sections[10].fir_section\: entity work.\mac__parameterized0_59\
     port map (
      P(33 downto 0) => \mac_inter[10]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[9][16]\,
      Q(15) => \b_s_reg_n_0_[9][15]\,
      Q(14) => \b_s_reg_n_0_[9][14]\,
      Q(13) => \b_s_reg_n_0_[9][13]\,
      Q(12) => \b_s_reg_n_0_[9][12]\,
      Q(11) => \b_s_reg_n_0_[9][11]\,
      Q(10) => \b_s_reg_n_0_[9][10]\,
      Q(9) => \b_s_reg_n_0_[9][9]\,
      Q(8) => \b_s_reg_n_0_[9][8]\,
      Q(7) => \b_s_reg_n_0_[9][7]\,
      Q(6) => \b_s_reg_n_0_[9][6]\,
      Q(5) => \b_s_reg_n_0_[9][5]\,
      Q(4) => \b_s_reg_n_0_[9][4]\,
      Q(3) => \b_s_reg_n_0_[9][3]\,
      Q(2) => \b_s_reg_n_0_[9][2]\,
      Q(1) => \b_s_reg_n_0_[9][1]\,
      Q(0) => \b_s_reg_n_0_[9][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[9]\(33 downto 0)
    );
\other_sections[11].fir_section\: entity work.\mac__parameterized0_60\
     port map (
      P(33 downto 0) => \mac_inter[11]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[8][16]\,
      Q(15) => \b_s_reg_n_0_[8][15]\,
      Q(14) => \b_s_reg_n_0_[8][14]\,
      Q(13) => \b_s_reg_n_0_[8][13]\,
      Q(12) => \b_s_reg_n_0_[8][12]\,
      Q(11) => \b_s_reg_n_0_[8][11]\,
      Q(10) => \b_s_reg_n_0_[8][10]\,
      Q(9) => \b_s_reg_n_0_[8][9]\,
      Q(8) => \b_s_reg_n_0_[8][8]\,
      Q(7) => \b_s_reg_n_0_[8][7]\,
      Q(6) => \b_s_reg_n_0_[8][6]\,
      Q(5) => \b_s_reg_n_0_[8][5]\,
      Q(4) => \b_s_reg_n_0_[8][4]\,
      Q(3) => \b_s_reg_n_0_[8][3]\,
      Q(2) => \b_s_reg_n_0_[8][2]\,
      Q(1) => \b_s_reg_n_0_[8][1]\,
      Q(0) => \b_s_reg_n_0_[8][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[10]\(33 downto 0)
    );
\other_sections[12].fir_section\: entity work.\mac__parameterized0_61\
     port map (
      P(33 downto 0) => \mac_inter[12]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[7][16]\,
      Q(15) => \b_s_reg_n_0_[7][15]\,
      Q(14) => \b_s_reg_n_0_[7][14]\,
      Q(13) => \b_s_reg_n_0_[7][13]\,
      Q(12) => \b_s_reg_n_0_[7][12]\,
      Q(11) => \b_s_reg_n_0_[7][11]\,
      Q(10) => \b_s_reg_n_0_[7][10]\,
      Q(9) => \b_s_reg_n_0_[7][9]\,
      Q(8) => \b_s_reg_n_0_[7][8]\,
      Q(7) => \b_s_reg_n_0_[7][7]\,
      Q(6) => \b_s_reg_n_0_[7][6]\,
      Q(5) => \b_s_reg_n_0_[7][5]\,
      Q(4) => \b_s_reg_n_0_[7][4]\,
      Q(3) => \b_s_reg_n_0_[7][3]\,
      Q(2) => \b_s_reg_n_0_[7][2]\,
      Q(1) => \b_s_reg_n_0_[7][1]\,
      Q(0) => \b_s_reg_n_0_[7][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[11]\(33 downto 0)
    );
\other_sections[13].fir_section\: entity work.\mac__parameterized0_62\
     port map (
      P(33 downto 0) => \mac_inter[13]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[6][16]\,
      Q(15) => \b_s_reg_n_0_[6][15]\,
      Q(14) => \b_s_reg_n_0_[6][14]\,
      Q(13) => \b_s_reg_n_0_[6][13]\,
      Q(12) => \b_s_reg_n_0_[6][12]\,
      Q(11) => \b_s_reg_n_0_[6][11]\,
      Q(10) => \b_s_reg_n_0_[6][10]\,
      Q(9) => \b_s_reg_n_0_[6][9]\,
      Q(8) => \b_s_reg_n_0_[6][8]\,
      Q(7) => \b_s_reg_n_0_[6][7]\,
      Q(6) => \b_s_reg_n_0_[6][6]\,
      Q(5) => \b_s_reg_n_0_[6][5]\,
      Q(4) => \b_s_reg_n_0_[6][4]\,
      Q(3) => \b_s_reg_n_0_[6][3]\,
      Q(2) => \b_s_reg_n_0_[6][2]\,
      Q(1) => \b_s_reg_n_0_[6][1]\,
      Q(0) => \b_s_reg_n_0_[6][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[12]\(33 downto 0)
    );
\other_sections[14].fir_section\: entity work.\mac__parameterized0_63\
     port map (
      P(33 downto 0) => \mac_inter[14]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[5][16]\,
      Q(15) => \b_s_reg_n_0_[5][15]\,
      Q(14) => \b_s_reg_n_0_[5][14]\,
      Q(13) => \b_s_reg_n_0_[5][13]\,
      Q(12) => \b_s_reg_n_0_[5][12]\,
      Q(11) => \b_s_reg_n_0_[5][11]\,
      Q(10) => \b_s_reg_n_0_[5][10]\,
      Q(9) => \b_s_reg_n_0_[5][9]\,
      Q(8) => \b_s_reg_n_0_[5][8]\,
      Q(7) => \b_s_reg_n_0_[5][7]\,
      Q(6) => \b_s_reg_n_0_[5][6]\,
      Q(5) => \b_s_reg_n_0_[5][5]\,
      Q(4) => \b_s_reg_n_0_[5][4]\,
      Q(3) => \b_s_reg_n_0_[5][3]\,
      Q(2) => \b_s_reg_n_0_[5][2]\,
      Q(1) => \b_s_reg_n_0_[5][1]\,
      Q(0) => \b_s_reg_n_0_[5][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[13]\(33 downto 0)
    );
\other_sections[15].fir_section\: entity work.\mac__parameterized0_64\
     port map (
      P(33 downto 0) => \mac_inter[15]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[4][16]\,
      Q(15) => \b_s_reg_n_0_[4][15]\,
      Q(14) => \b_s_reg_n_0_[4][14]\,
      Q(13) => \b_s_reg_n_0_[4][13]\,
      Q(12) => \b_s_reg_n_0_[4][12]\,
      Q(11) => \b_s_reg_n_0_[4][11]\,
      Q(10) => \b_s_reg_n_0_[4][10]\,
      Q(9) => \b_s_reg_n_0_[4][9]\,
      Q(8) => \b_s_reg_n_0_[4][8]\,
      Q(7) => \b_s_reg_n_0_[4][7]\,
      Q(6) => \b_s_reg_n_0_[4][6]\,
      Q(5) => \b_s_reg_n_0_[4][5]\,
      Q(4) => \b_s_reg_n_0_[4][4]\,
      Q(3) => \b_s_reg_n_0_[4][3]\,
      Q(2) => \b_s_reg_n_0_[4][2]\,
      Q(1) => \b_s_reg_n_0_[4][1]\,
      Q(0) => \b_s_reg_n_0_[4][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[14]\(33 downto 0)
    );
\other_sections[16].fir_section\: entity work.\mac__parameterized0_65\
     port map (
      P(33 downto 0) => \mac_inter[16]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[3][16]\,
      Q(15) => \b_s_reg_n_0_[3][15]\,
      Q(14) => \b_s_reg_n_0_[3][14]\,
      Q(13) => \b_s_reg_n_0_[3][13]\,
      Q(12) => \b_s_reg_n_0_[3][12]\,
      Q(11) => \b_s_reg_n_0_[3][11]\,
      Q(10) => \b_s_reg_n_0_[3][10]\,
      Q(9) => \b_s_reg_n_0_[3][9]\,
      Q(8) => \b_s_reg_n_0_[3][8]\,
      Q(7) => \b_s_reg_n_0_[3][7]\,
      Q(6) => \b_s_reg_n_0_[3][6]\,
      Q(5) => \b_s_reg_n_0_[3][5]\,
      Q(4) => \b_s_reg_n_0_[3][4]\,
      Q(3) => \b_s_reg_n_0_[3][3]\,
      Q(2) => \b_s_reg_n_0_[3][2]\,
      Q(1) => \b_s_reg_n_0_[3][1]\,
      Q(0) => \b_s_reg_n_0_[3][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[15]\(33 downto 0)
    );
\other_sections[17].fir_section\: entity work.\mac__parameterized0_66\
     port map (
      P(33 downto 0) => \mac_inter[17]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[2][16]\,
      Q(15) => \b_s_reg_n_0_[2][15]\,
      Q(14) => \b_s_reg_n_0_[2][14]\,
      Q(13) => \b_s_reg_n_0_[2][13]\,
      Q(12) => \b_s_reg_n_0_[2][12]\,
      Q(11) => \b_s_reg_n_0_[2][11]\,
      Q(10) => \b_s_reg_n_0_[2][10]\,
      Q(9) => \b_s_reg_n_0_[2][9]\,
      Q(8) => \b_s_reg_n_0_[2][8]\,
      Q(7) => \b_s_reg_n_0_[2][7]\,
      Q(6) => \b_s_reg_n_0_[2][6]\,
      Q(5) => \b_s_reg_n_0_[2][5]\,
      Q(4) => \b_s_reg_n_0_[2][4]\,
      Q(3) => \b_s_reg_n_0_[2][3]\,
      Q(2) => \b_s_reg_n_0_[2][2]\,
      Q(1) => \b_s_reg_n_0_[2][1]\,
      Q(0) => \b_s_reg_n_0_[2][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[16]\(33 downto 0)
    );
\other_sections[18].fir_section\: entity work.\mac__parameterized0_67\
     port map (
      P(33 downto 0) => \mac_inter[18]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[1][16]\,
      Q(15) => \b_s_reg_n_0_[1][15]\,
      Q(14) => \b_s_reg_n_0_[1][14]\,
      Q(13) => \b_s_reg_n_0_[1][13]\,
      Q(12) => \b_s_reg_n_0_[1][12]\,
      Q(11) => \b_s_reg_n_0_[1][11]\,
      Q(10) => \b_s_reg_n_0_[1][10]\,
      Q(9) => \b_s_reg_n_0_[1][9]\,
      Q(8) => \b_s_reg_n_0_[1][8]\,
      Q(7) => \b_s_reg_n_0_[1][7]\,
      Q(6) => \b_s_reg_n_0_[1][6]\,
      Q(5) => \b_s_reg_n_0_[1][5]\,
      Q(4) => \b_s_reg_n_0_[1][4]\,
      Q(3) => \b_s_reg_n_0_[1][3]\,
      Q(2) => \b_s_reg_n_0_[1][2]\,
      Q(1) => \b_s_reg_n_0_[1][1]\,
      Q(0) => \b_s_reg_n_0_[1][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[17]\(33 downto 0)
    );
\other_sections[19].fir_section\: entity work.\mac__parameterized0_68\
     port map (
      D(16 downto 0) => \mac_inter[19]\(32 downto 16),
      P(33 downto 0) => \mac_inter[18]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[0][16]\,
      Q(15) => \b_s_reg_n_0_[0][15]\,
      Q(14) => \b_s_reg_n_0_[0][14]\,
      Q(13) => \b_s_reg_n_0_[0][13]\,
      Q(12) => \b_s_reg_n_0_[0][12]\,
      Q(11) => \b_s_reg_n_0_[0][11]\,
      Q(10) => \b_s_reg_n_0_[0][10]\,
      Q(9) => \b_s_reg_n_0_[0][9]\,
      Q(8) => \b_s_reg_n_0_[0][8]\,
      Q(7) => \b_s_reg_n_0_[0][7]\,
      Q(6) => \b_s_reg_n_0_[0][6]\,
      Q(5) => \b_s_reg_n_0_[0][5]\,
      Q(4) => \b_s_reg_n_0_[0][4]\,
      Q(3) => \b_s_reg_n_0_[0][3]\,
      Q(2) => \b_s_reg_n_0_[0][2]\,
      Q(1) => \b_s_reg_n_0_[0][1]\,
      Q(0) => \b_s_reg_n_0_[0][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i
    );
\other_sections[1].fir_section\: entity work.\mac__parameterized0_69\
     port map (
      P(33 downto 0) => \mac_inter[1]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[18][16]\,
      Q(15) => \b_s_reg_n_0_[18][15]\,
      Q(14) => \b_s_reg_n_0_[18][14]\,
      Q(13) => \b_s_reg_n_0_[18][13]\,
      Q(12) => \b_s_reg_n_0_[18][12]\,
      Q(11) => \b_s_reg_n_0_[18][11]\,
      Q(10) => \b_s_reg_n_0_[18][10]\,
      Q(9) => \b_s_reg_n_0_[18][9]\,
      Q(8) => \b_s_reg_n_0_[18][8]\,
      Q(7) => \b_s_reg_n_0_[18][7]\,
      Q(6) => \b_s_reg_n_0_[18][6]\,
      Q(5) => \b_s_reg_n_0_[18][5]\,
      Q(4) => \b_s_reg_n_0_[18][4]\,
      Q(3) => \b_s_reg_n_0_[18][3]\,
      Q(2) => \b_s_reg_n_0_[18][2]\,
      Q(1) => \b_s_reg_n_0_[18][1]\,
      Q(0) => \b_s_reg_n_0_[18][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[0]\(33 downto 0)
    );
\other_sections[2].fir_section\: entity work.\mac__parameterized0_70\
     port map (
      P(33 downto 0) => \mac_inter[2]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[17][16]\,
      Q(15) => \b_s_reg_n_0_[17][15]\,
      Q(14) => \b_s_reg_n_0_[17][14]\,
      Q(13) => \b_s_reg_n_0_[17][13]\,
      Q(12) => \b_s_reg_n_0_[17][12]\,
      Q(11) => \b_s_reg_n_0_[17][11]\,
      Q(10) => \b_s_reg_n_0_[17][10]\,
      Q(9) => \b_s_reg_n_0_[17][9]\,
      Q(8) => \b_s_reg_n_0_[17][8]\,
      Q(7) => \b_s_reg_n_0_[17][7]\,
      Q(6) => \b_s_reg_n_0_[17][6]\,
      Q(5) => \b_s_reg_n_0_[17][5]\,
      Q(4) => \b_s_reg_n_0_[17][4]\,
      Q(3) => \b_s_reg_n_0_[17][3]\,
      Q(2) => \b_s_reg_n_0_[17][2]\,
      Q(1) => \b_s_reg_n_0_[17][1]\,
      Q(0) => \b_s_reg_n_0_[17][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[1]\(33 downto 0)
    );
\other_sections[3].fir_section\: entity work.\mac__parameterized0_71\
     port map (
      P(33 downto 0) => \mac_inter[3]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[16][16]\,
      Q(15) => \b_s_reg_n_0_[16][15]\,
      Q(14) => \b_s_reg_n_0_[16][14]\,
      Q(13) => \b_s_reg_n_0_[16][13]\,
      Q(12) => \b_s_reg_n_0_[16][12]\,
      Q(11) => \b_s_reg_n_0_[16][11]\,
      Q(10) => \b_s_reg_n_0_[16][10]\,
      Q(9) => \b_s_reg_n_0_[16][9]\,
      Q(8) => \b_s_reg_n_0_[16][8]\,
      Q(7) => \b_s_reg_n_0_[16][7]\,
      Q(6) => \b_s_reg_n_0_[16][6]\,
      Q(5) => \b_s_reg_n_0_[16][5]\,
      Q(4) => \b_s_reg_n_0_[16][4]\,
      Q(3) => \b_s_reg_n_0_[16][3]\,
      Q(2) => \b_s_reg_n_0_[16][2]\,
      Q(1) => \b_s_reg_n_0_[16][1]\,
      Q(0) => \b_s_reg_n_0_[16][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[2]\(33 downto 0)
    );
\other_sections[4].fir_section\: entity work.\mac__parameterized0_72\
     port map (
      P(33 downto 0) => \mac_inter[4]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[15][16]\,
      Q(15) => \b_s_reg_n_0_[15][15]\,
      Q(14) => \b_s_reg_n_0_[15][14]\,
      Q(13) => \b_s_reg_n_0_[15][13]\,
      Q(12) => \b_s_reg_n_0_[15][12]\,
      Q(11) => \b_s_reg_n_0_[15][11]\,
      Q(10) => \b_s_reg_n_0_[15][10]\,
      Q(9) => \b_s_reg_n_0_[15][9]\,
      Q(8) => \b_s_reg_n_0_[15][8]\,
      Q(7) => \b_s_reg_n_0_[15][7]\,
      Q(6) => \b_s_reg_n_0_[15][6]\,
      Q(5) => \b_s_reg_n_0_[15][5]\,
      Q(4) => \b_s_reg_n_0_[15][4]\,
      Q(3) => \b_s_reg_n_0_[15][3]\,
      Q(2) => \b_s_reg_n_0_[15][2]\,
      Q(1) => \b_s_reg_n_0_[15][1]\,
      Q(0) => \b_s_reg_n_0_[15][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[3]\(33 downto 0)
    );
\other_sections[5].fir_section\: entity work.\mac__parameterized0_73\
     port map (
      P(33 downto 0) => \mac_inter[5]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[14][16]\,
      Q(15) => \b_s_reg_n_0_[14][15]\,
      Q(14) => \b_s_reg_n_0_[14][14]\,
      Q(13) => \b_s_reg_n_0_[14][13]\,
      Q(12) => \b_s_reg_n_0_[14][12]\,
      Q(11) => \b_s_reg_n_0_[14][11]\,
      Q(10) => \b_s_reg_n_0_[14][10]\,
      Q(9) => \b_s_reg_n_0_[14][9]\,
      Q(8) => \b_s_reg_n_0_[14][8]\,
      Q(7) => \b_s_reg_n_0_[14][7]\,
      Q(6) => \b_s_reg_n_0_[14][6]\,
      Q(5) => \b_s_reg_n_0_[14][5]\,
      Q(4) => \b_s_reg_n_0_[14][4]\,
      Q(3) => \b_s_reg_n_0_[14][3]\,
      Q(2) => \b_s_reg_n_0_[14][2]\,
      Q(1) => \b_s_reg_n_0_[14][1]\,
      Q(0) => \b_s_reg_n_0_[14][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[4]\(33 downto 0)
    );
\other_sections[6].fir_section\: entity work.\mac__parameterized0_74\
     port map (
      P(33 downto 0) => \mac_inter[6]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[13][16]\,
      Q(15) => \b_s_reg_n_0_[13][15]\,
      Q(14) => \b_s_reg_n_0_[13][14]\,
      Q(13) => \b_s_reg_n_0_[13][13]\,
      Q(12) => \b_s_reg_n_0_[13][12]\,
      Q(11) => \b_s_reg_n_0_[13][11]\,
      Q(10) => \b_s_reg_n_0_[13][10]\,
      Q(9) => \b_s_reg_n_0_[13][9]\,
      Q(8) => \b_s_reg_n_0_[13][8]\,
      Q(7) => \b_s_reg_n_0_[13][7]\,
      Q(6) => \b_s_reg_n_0_[13][6]\,
      Q(5) => \b_s_reg_n_0_[13][5]\,
      Q(4) => \b_s_reg_n_0_[13][4]\,
      Q(3) => \b_s_reg_n_0_[13][3]\,
      Q(2) => \b_s_reg_n_0_[13][2]\,
      Q(1) => \b_s_reg_n_0_[13][1]\,
      Q(0) => \b_s_reg_n_0_[13][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[5]\(33 downto 0)
    );
\other_sections[7].fir_section\: entity work.\mac__parameterized0_75\
     port map (
      P(33 downto 0) => \mac_inter[7]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[12][16]\,
      Q(15) => \b_s_reg_n_0_[12][15]\,
      Q(14) => \b_s_reg_n_0_[12][14]\,
      Q(13) => \b_s_reg_n_0_[12][13]\,
      Q(12) => \b_s_reg_n_0_[12][12]\,
      Q(11) => \b_s_reg_n_0_[12][11]\,
      Q(10) => \b_s_reg_n_0_[12][10]\,
      Q(9) => \b_s_reg_n_0_[12][9]\,
      Q(8) => \b_s_reg_n_0_[12][8]\,
      Q(7) => \b_s_reg_n_0_[12][7]\,
      Q(6) => \b_s_reg_n_0_[12][6]\,
      Q(5) => \b_s_reg_n_0_[12][5]\,
      Q(4) => \b_s_reg_n_0_[12][4]\,
      Q(3) => \b_s_reg_n_0_[12][3]\,
      Q(2) => \b_s_reg_n_0_[12][2]\,
      Q(1) => \b_s_reg_n_0_[12][1]\,
      Q(0) => \b_s_reg_n_0_[12][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[6]\(33 downto 0)
    );
\other_sections[8].fir_section\: entity work.\mac__parameterized0_76\
     port map (
      P(33 downto 0) => \mac_inter[8]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[11][16]\,
      Q(15) => \b_s_reg_n_0_[11][15]\,
      Q(14) => \b_s_reg_n_0_[11][14]\,
      Q(13) => \b_s_reg_n_0_[11][13]\,
      Q(12) => \b_s_reg_n_0_[11][12]\,
      Q(11) => \b_s_reg_n_0_[11][11]\,
      Q(10) => \b_s_reg_n_0_[11][10]\,
      Q(9) => \b_s_reg_n_0_[11][9]\,
      Q(8) => \b_s_reg_n_0_[11][8]\,
      Q(7) => \b_s_reg_n_0_[11][7]\,
      Q(6) => \b_s_reg_n_0_[11][6]\,
      Q(5) => \b_s_reg_n_0_[11][5]\,
      Q(4) => \b_s_reg_n_0_[11][4]\,
      Q(3) => \b_s_reg_n_0_[11][3]\,
      Q(2) => \b_s_reg_n_0_[11][2]\,
      Q(1) => \b_s_reg_n_0_[11][1]\,
      Q(0) => \b_s_reg_n_0_[11][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[7]\(33 downto 0)
    );
\other_sections[9].fir_section\: entity work.\mac__parameterized0_77\
     port map (
      P(33 downto 0) => \mac_inter[8]\(33 downto 0),
      Q(16) => \b_s_reg_n_0_[10][16]\,
      Q(15) => \b_s_reg_n_0_[10][15]\,
      Q(14) => \b_s_reg_n_0_[10][14]\,
      Q(13) => \b_s_reg_n_0_[10][13]\,
      Q(12) => \b_s_reg_n_0_[10][12]\,
      Q(11) => \b_s_reg_n_0_[10][11]\,
      Q(10) => \b_s_reg_n_0_[10][10]\,
      Q(9) => \b_s_reg_n_0_[10][9]\,
      Q(8) => \b_s_reg_n_0_[10][8]\,
      Q(7) => \b_s_reg_n_0_[10][7]\,
      Q(6) => \b_s_reg_n_0_[10][6]\,
      Q(5) => \b_s_reg_n_0_[10][5]\,
      Q(4) => \b_s_reg_n_0_[10][4]\,
      Q(3) => \b_s_reg_n_0_[10][3]\,
      Q(2) => \b_s_reg_n_0_[10][2]\,
      Q(1) => \b_s_reg_n_0_[10][1]\,
      Q(0) => \b_s_reg_n_0_[10][0]\,
      clk_i => clk_i,
      data_i(16 downto 0) => data_i(16 downto 0),
      rst_i => rst_i,
      sum_reg_reg_0(33 downto 0) => \mac_inter[9]\(33 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity module is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    we_i : in STD_LOGIC;
    coef_addr_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    error_o : out STD_LOGIC
  );
  attribute dont_touch : string;
  attribute dont_touch of module : entity is "true";
  attribute fir_ord : integer;
  attribute fir_ord of module : entity is 20;
  attribute fixed_width : integer;
  attribute fixed_width of module : entity is 1;
  attribute in_out_data_width : integer;
  attribute in_out_data_width of module : entity is 17;
end module;

architecture STRUCTURE of module is
  signal data_o_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute DONT_TOUCH_boolean : boolean;
  attribute DONT_TOUCH_boolean of data_o_0 : signal is std.standard.true;
  signal data_o_1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute DONT_TOUCH_boolean of data_o_1 : signal is std.standard.true;
  signal eqOp : STD_LOGIC;
  signal error_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_1_n_1 : STD_LOGIC;
  signal error_o_INST_0_i_1_n_2 : STD_LOGIC;
  signal error_o_INST_0_i_1_n_3 : STD_LOGIC;
  signal error_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_4_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_5_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_6_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_7_n_0 : STD_LOGIC;
  signal error_o_INST_0_n_3 : STD_LOGIC;
  signal NLW_error_o_INST_0_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_error_o_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_error_o_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH_boolean of fir_filter_0 : label is std.standard.true;
  attribute fir_ord of fir_filter_0 : label is 20;
  attribute fixed_width of fir_filter_0 : label is 1;
  attribute input_data_width : integer;
  attribute input_data_width of fir_filter_0 : label is 17;
  attribute output_data_width : integer;
  attribute output_data_width of fir_filter_0 : label is 17;
  attribute DONT_TOUCH_boolean of fir_filter_1 : label is std.standard.true;
  attribute fir_ord of fir_filter_1 : label is 20;
  attribute fixed_width of fir_filter_1 : label is 1;
  attribute input_data_width of fir_filter_1 : label is 17;
  attribute output_data_width of fir_filter_1 : label is 17;
begin
  data_o(16 downto 0) <= data_o_0(16 downto 0);
error_o_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => error_o_INST_0_i_1_n_0,
      CO(3 downto 2) => NLW_error_o_INST_0_CO_UNCONNECTED(3 downto 2),
      CO(1) => eqOp,
      CO(0) => error_o_INST_0_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_error_o_INST_0_O_UNCONNECTED(3),
      O(2) => error_o,
      O(1 downto 0) => NLW_error_o_INST_0_O_UNCONNECTED(1 downto 0),
      S(3 downto 2) => B"01",
      S(1) => error_o_INST_0_i_2_n_0,
      S(0) => error_o_INST_0_i_3_n_0
    );
error_o_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => error_o_INST_0_i_1_n_0,
      CO(2) => error_o_INST_0_i_1_n_1,
      CO(1) => error_o_INST_0_i_1_n_2,
      CO(0) => error_o_INST_0_i_1_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_error_o_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => error_o_INST_0_i_4_n_0,
      S(2) => error_o_INST_0_i_5_n_0,
      S(1) => error_o_INST_0_i_6_n_0,
      S(0) => error_o_INST_0_i_7_n_0
    );
error_o_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_o_0(15),
      I1 => data_o_1(15),
      I2 => data_o_0(16),
      I3 => data_o_1(16),
      O => error_o_INST_0_i_2_n_0
    );
error_o_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(12),
      I1 => data_o_1(12),
      I2 => data_o_1(14),
      I3 => data_o_0(14),
      I4 => data_o_1(13),
      I5 => data_o_0(13),
      O => error_o_INST_0_i_3_n_0
    );
error_o_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(9),
      I1 => data_o_1(9),
      I2 => data_o_1(11),
      I3 => data_o_0(11),
      I4 => data_o_1(10),
      I5 => data_o_0(10),
      O => error_o_INST_0_i_4_n_0
    );
error_o_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(6),
      I1 => data_o_1(6),
      I2 => data_o_1(8),
      I3 => data_o_0(8),
      I4 => data_o_1(7),
      I5 => data_o_0(7),
      O => error_o_INST_0_i_5_n_0
    );
error_o_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(3),
      I1 => data_o_1(3),
      I2 => data_o_1(5),
      I3 => data_o_0(5),
      I4 => data_o_1(4),
      I5 => data_o_0(4),
      O => error_o_INST_0_i_6_n_0
    );
error_o_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(0),
      I1 => data_o_1(0),
      I2 => data_o_1(2),
      I3 => data_o_0(2),
      I4 => data_o_1(1),
      I5 => data_o_0(1),
      O => error_o_INST_0_i_7_n_0
    );
fir_filter_0: entity work.\fir_filtar__1\
     port map (
      clk_i => clk_i,
      coef_addr_i(4 downto 0) => coef_addr_i(4 downto 0),
      coef_i(16 downto 0) => coef_i(16 downto 0),
      data_i(16 downto 0) => data_i(16 downto 0),
      data_o(16 downto 0) => data_o_0(16 downto 0),
      rst_i => rst_i,
      we_i => we_i
    );
fir_filter_1: entity work.fir_filtar
     port map (
      clk_i => clk_i,
      coef_addr_i(4 downto 0) => coef_addr_i(4 downto 0),
      coef_i(16 downto 0) => coef_i(16 downto 0),
      data_i(16 downto 0) => data_i(16 downto 0),
      data_o(16 downto 0) => data_o_1(16 downto 0),
      rst_i => rst_i,
      we_i => we_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \module__1\ is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    we_i : in STD_LOGIC;
    coef_addr_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    error_o : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \module__1\ : entity is "module";
  attribute dont_touch : string;
  attribute dont_touch of \module__1\ : entity is "true";
  attribute fir_ord : integer;
  attribute fir_ord of \module__1\ : entity is 20;
  attribute fixed_width : integer;
  attribute fixed_width of \module__1\ : entity is 1;
  attribute in_out_data_width : integer;
  attribute in_out_data_width of \module__1\ : entity is 17;
end \module__1\;

architecture STRUCTURE of \module__1\ is
  signal data_o_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute DONT_TOUCH_boolean : boolean;
  attribute DONT_TOUCH_boolean of data_o_0 : signal is std.standard.true;
  signal data_o_1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute DONT_TOUCH_boolean of data_o_1 : signal is std.standard.true;
  signal eqOp : STD_LOGIC;
  signal error_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_1_n_1 : STD_LOGIC;
  signal error_o_INST_0_i_1_n_2 : STD_LOGIC;
  signal error_o_INST_0_i_1_n_3 : STD_LOGIC;
  signal error_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_4_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_5_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_6_n_0 : STD_LOGIC;
  signal error_o_INST_0_i_7_n_0 : STD_LOGIC;
  signal error_o_INST_0_n_3 : STD_LOGIC;
  signal NLW_error_o_INST_0_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_error_o_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_error_o_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH_boolean of fir_filter_0 : label is std.standard.true;
  attribute fir_ord of fir_filter_0 : label is 20;
  attribute fixed_width of fir_filter_0 : label is 1;
  attribute input_data_width : integer;
  attribute input_data_width of fir_filter_0 : label is 17;
  attribute output_data_width : integer;
  attribute output_data_width of fir_filter_0 : label is 17;
  attribute DONT_TOUCH_boolean of fir_filter_1 : label is std.standard.true;
  attribute fir_ord of fir_filter_1 : label is 20;
  attribute fixed_width of fir_filter_1 : label is 1;
  attribute input_data_width of fir_filter_1 : label is 17;
  attribute output_data_width of fir_filter_1 : label is 17;
begin
  data_o(16 downto 0) <= data_o_0(16 downto 0);
error_o_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => error_o_INST_0_i_1_n_0,
      CO(3 downto 2) => NLW_error_o_INST_0_CO_UNCONNECTED(3 downto 2),
      CO(1) => eqOp,
      CO(0) => error_o_INST_0_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_error_o_INST_0_O_UNCONNECTED(3),
      O(2) => error_o,
      O(1 downto 0) => NLW_error_o_INST_0_O_UNCONNECTED(1 downto 0),
      S(3 downto 2) => B"01",
      S(1) => error_o_INST_0_i_2_n_0,
      S(0) => error_o_INST_0_i_3_n_0
    );
error_o_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => error_o_INST_0_i_1_n_0,
      CO(2) => error_o_INST_0_i_1_n_1,
      CO(1) => error_o_INST_0_i_1_n_2,
      CO(0) => error_o_INST_0_i_1_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_error_o_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => error_o_INST_0_i_4_n_0,
      S(2) => error_o_INST_0_i_5_n_0,
      S(1) => error_o_INST_0_i_6_n_0,
      S(0) => error_o_INST_0_i_7_n_0
    );
error_o_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_o_0(15),
      I1 => data_o_1(15),
      I2 => data_o_0(16),
      I3 => data_o_1(16),
      O => error_o_INST_0_i_2_n_0
    );
error_o_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(12),
      I1 => data_o_1(12),
      I2 => data_o_1(14),
      I3 => data_o_0(14),
      I4 => data_o_1(13),
      I5 => data_o_0(13),
      O => error_o_INST_0_i_3_n_0
    );
error_o_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(9),
      I1 => data_o_1(9),
      I2 => data_o_1(11),
      I3 => data_o_0(11),
      I4 => data_o_1(10),
      I5 => data_o_0(10),
      O => error_o_INST_0_i_4_n_0
    );
error_o_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(6),
      I1 => data_o_1(6),
      I2 => data_o_1(8),
      I3 => data_o_0(8),
      I4 => data_o_1(7),
      I5 => data_o_0(7),
      O => error_o_INST_0_i_5_n_0
    );
error_o_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(3),
      I1 => data_o_1(3),
      I2 => data_o_1(5),
      I3 => data_o_0(5),
      I4 => data_o_1(4),
      I5 => data_o_0(4),
      O => error_o_INST_0_i_6_n_0
    );
error_o_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_o_0(0),
      I1 => data_o_1(0),
      I2 => data_o_1(2),
      I3 => data_o_0(2),
      I4 => data_o_1(1),
      I5 => data_o_0(1),
      O => error_o_INST_0_i_7_n_0
    );
fir_filter_0: entity work.\fir_filtar__3\
     port map (
      clk_i => clk_i,
      coef_addr_i(4 downto 0) => coef_addr_i(4 downto 0),
      coef_i(16 downto 0) => coef_i(16 downto 0),
      data_i(16 downto 0) => data_i(16 downto 0),
      data_o(16 downto 0) => data_o_0(16 downto 0),
      rst_i => rst_i,
      we_i => we_i
    );
fir_filter_1: entity work.\fir_filtar__2\
     port map (
      clk_i => clk_i,
      coef_addr_i(4 downto 0) => coef_addr_i(4 downto 0),
      coef_i(16 downto 0) => coef_i(16 downto 0),
      data_i(16 downto 0) => data_i(16 downto 0),
      data_o(16 downto 0) => data_o_1(16 downto 0),
      rst_i => rst_i,
      we_i => we_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fault_tolerant is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    we_i : in STD_LOGIC;
    coef_addr_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    coef_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    axi_tdata_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    axi_tvalid_i : in STD_LOGIC;
    axi_tready_i : out STD_LOGIC;
    axi_tdata_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    axi_tvalid_o : out STD_LOGIC;
    axi_tready_o : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fault_tolerant : entity is true;
  attribute fir_ord : integer;
  attribute fir_ord of fault_tolerant : entity is 20;
  attribute fixed_width : integer;
  attribute fixed_width of fault_tolerant : entity is 1;
  attribute in_out_data_width : integer;
  attribute in_out_data_width of fault_tolerant : entity is 17;
  attribute module_ord : integer;
  attribute module_ord of fault_tolerant : entity is 2;
end fault_tolerant;

architecture STRUCTURE of fault_tolerant is
  signal axi_tdata_i_IBUF : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_tdata_o0 : STD_LOGIC;
  signal axi_tdata_o_OBUF : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_tready_o_IBUF : STD_LOGIC;
  signal axi_tvalid_i_IBUF : STD_LOGIC;
  signal axi_tvalid_o_OBUF : STD_LOGIC;
  signal axi_tvalid_output_i_1_n_0 : STD_LOGIC;
  signal clk_i_IBUF : STD_LOGIC;
  signal clk_i_IBUF_BUFG : STD_LOGIC;
  signal coef_addr_i_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal coef_i_IBUF : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal data_i : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal data_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal error_last : STD_LOGIC;
  signal \error_mux[0]\ : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \error_mux[0]\ : signal is std.standard.true;
  signal \error_mux[1]\ : STD_LOGIC;
  attribute DONT_TOUCH of \error_mux[1]\ : signal is std.standard.true;
  signal \error_mux[2]\ : STD_LOGIC;
  attribute DONT_TOUCH of \error_mux[2]\ : signal is std.standard.true;
  signal error_s_1 : STD_LOGIC;
  signal \module_o_reg[0]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute DONT_TOUCH of \module_o_reg[0]\ : signal is std.standard.true;
  signal \module_o_reg[1]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute DONT_TOUCH of \module_o_reg[1]\ : signal is std.standard.true;
  signal \module_o_s[0]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \module_o_s[1]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal rst_i_IBUF : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal we_i_IBUF : STD_LOGIC;
  attribute DONT_TOUCH of \module_gen[0].modules\ : label is std.standard.true;
  attribute fir_ord of \module_gen[0].modules\ : label is 20;
  attribute fixed_width of \module_gen[0].modules\ : label is 1;
  attribute in_out_data_width of \module_gen[0].modules\ : label is 17;
  attribute DONT_TOUCH of \module_gen[1].modules\ : label is std.standard.true;
  attribute fir_ord of \module_gen[1].modules\ : label is 20;
  attribute fixed_width of \module_gen[1].modules\ : label is 1;
  attribute in_out_data_width of \module_gen[1].modules\ : label is 17;
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][0]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][10]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][10]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][11]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][11]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][12]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][12]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][13]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][13]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][14]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][14]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][15]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][15]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][16]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][16]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][16]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][1]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][1]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][2]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][2]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][3]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][3]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][4]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][4]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][5]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][5]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][6]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][6]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][7]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][7]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][8]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][8]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[0].module_o_reg_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \module_reg[0].module_o_reg_reg[0][9]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[0].module_o_reg_reg[0][9]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][0]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][0]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][10]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][10]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][11]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][11]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][12]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][12]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][13]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][13]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][14]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][14]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][15]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][15]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][16]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][16]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][16]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][1]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][1]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][2]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][2]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][3]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][3]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][4]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][4]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][5]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][5]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][6]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][6]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][7]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][7]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][8]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][8]\ : label is "no";
  attribute DONT_TOUCH of \module_reg[1].module_o_reg_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \module_reg[1].module_o_reg_reg[1][9]\ : label is "yes";
  attribute equivalent_register_removal of \module_reg[1].module_o_reg_reg[1][9]\ : label is "no";
begin
\axi_tdata_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(0),
      O => axi_tdata_i_IBUF(0)
    );
\axi_tdata_i_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(10),
      O => axi_tdata_i_IBUF(10)
    );
\axi_tdata_i_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(11),
      O => axi_tdata_i_IBUF(11)
    );
\axi_tdata_i_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(12),
      O => axi_tdata_i_IBUF(12)
    );
\axi_tdata_i_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(13),
      O => axi_tdata_i_IBUF(13)
    );
\axi_tdata_i_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(14),
      O => axi_tdata_i_IBUF(14)
    );
\axi_tdata_i_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(15),
      O => axi_tdata_i_IBUF(15)
    );
\axi_tdata_i_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(16),
      O => axi_tdata_i_IBUF(16)
    );
\axi_tdata_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(1),
      O => axi_tdata_i_IBUF(1)
    );
\axi_tdata_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(2),
      O => axi_tdata_i_IBUF(2)
    );
\axi_tdata_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(3),
      O => axi_tdata_i_IBUF(3)
    );
\axi_tdata_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(4),
      O => axi_tdata_i_IBUF(4)
    );
\axi_tdata_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(5),
      O => axi_tdata_i_IBUF(5)
    );
\axi_tdata_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(6),
      O => axi_tdata_i_IBUF(6)
    );
\axi_tdata_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(7),
      O => axi_tdata_i_IBUF(7)
    );
\axi_tdata_i_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(8),
      O => axi_tdata_i_IBUF(8)
    );
\axi_tdata_i_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => axi_tdata_i(9),
      O => axi_tdata_i_IBUF(9)
    );
\axi_tdata_o[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(0),
      I1 => \module_o_reg[0]\(0),
      I2 => sel,
      O => data_o(0)
    );
\axi_tdata_o[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(10),
      I1 => \module_o_reg[0]\(10),
      I2 => sel,
      O => data_o(10)
    );
\axi_tdata_o[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(11),
      I1 => \module_o_reg[0]\(11),
      I2 => sel,
      O => data_o(11)
    );
\axi_tdata_o[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(12),
      I1 => \module_o_reg[0]\(12),
      I2 => sel,
      O => data_o(12)
    );
\axi_tdata_o[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(13),
      I1 => \module_o_reg[0]\(13),
      I2 => sel,
      O => data_o(13)
    );
\axi_tdata_o[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(14),
      I1 => \module_o_reg[0]\(14),
      I2 => sel,
      O => data_o(14)
    );
\axi_tdata_o[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(15),
      I1 => \module_o_reg[0]\(15),
      I2 => sel,
      O => data_o(15)
    );
\axi_tdata_o[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_tvalid_o_OBUF,
      I1 => axi_tready_o_IBUF,
      O => axi_tdata_o0
    );
\axi_tdata_o[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(16),
      I1 => \module_o_reg[0]\(16),
      I2 => sel,
      O => data_o(16)
    );
\axi_tdata_o[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(1),
      I1 => \module_o_reg[0]\(1),
      I2 => sel,
      O => data_o(1)
    );
\axi_tdata_o[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(2),
      I1 => \module_o_reg[0]\(2),
      I2 => sel,
      O => data_o(2)
    );
\axi_tdata_o[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(3),
      I1 => \module_o_reg[0]\(3),
      I2 => sel,
      O => data_o(3)
    );
\axi_tdata_o[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(4),
      I1 => \module_o_reg[0]\(4),
      I2 => sel,
      O => data_o(4)
    );
\axi_tdata_o[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(5),
      I1 => \module_o_reg[0]\(5),
      I2 => sel,
      O => data_o(5)
    );
\axi_tdata_o[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(6),
      I1 => \module_o_reg[0]\(6),
      I2 => sel,
      O => data_o(6)
    );
\axi_tdata_o[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(7),
      I1 => \module_o_reg[0]\(7),
      I2 => sel,
      O => data_o(7)
    );
\axi_tdata_o[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(8),
      I1 => \module_o_reg[0]\(8),
      I2 => sel,
      O => data_o(8)
    );
\axi_tdata_o[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \module_o_reg[1]\(9),
      I1 => \module_o_reg[0]\(9),
      I2 => sel,
      O => data_o(9)
    );
\axi_tdata_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(0),
      O => axi_tdata_o(0)
    );
\axi_tdata_o_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(10),
      O => axi_tdata_o(10)
    );
\axi_tdata_o_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(11),
      O => axi_tdata_o(11)
    );
\axi_tdata_o_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(12),
      O => axi_tdata_o(12)
    );
\axi_tdata_o_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(13),
      O => axi_tdata_o(13)
    );
\axi_tdata_o_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(14),
      O => axi_tdata_o(14)
    );
\axi_tdata_o_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(15),
      O => axi_tdata_o(15)
    );
\axi_tdata_o_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(16),
      O => axi_tdata_o(16)
    );
\axi_tdata_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(1),
      O => axi_tdata_o(1)
    );
\axi_tdata_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(2),
      O => axi_tdata_o(2)
    );
\axi_tdata_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(3),
      O => axi_tdata_o(3)
    );
\axi_tdata_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(4),
      O => axi_tdata_o(4)
    );
\axi_tdata_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(5),
      O => axi_tdata_o(5)
    );
\axi_tdata_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(6),
      O => axi_tdata_o(6)
    );
\axi_tdata_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(7),
      O => axi_tdata_o(7)
    );
\axi_tdata_o_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(8),
      O => axi_tdata_o(8)
    );
\axi_tdata_o_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => axi_tdata_o_OBUF(9),
      O => axi_tdata_o(9)
    );
\axi_tdata_o_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(0),
      Q => axi_tdata_o_OBUF(0),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(10),
      Q => axi_tdata_o_OBUF(10),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(11),
      Q => axi_tdata_o_OBUF(11),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(12),
      Q => axi_tdata_o_OBUF(12),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(13),
      Q => axi_tdata_o_OBUF(13),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(14),
      Q => axi_tdata_o_OBUF(14),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(15),
      Q => axi_tdata_o_OBUF(15),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(16),
      Q => axi_tdata_o_OBUF(16),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(1),
      Q => axi_tdata_o_OBUF(1),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(2),
      Q => axi_tdata_o_OBUF(2),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(3),
      Q => axi_tdata_o_OBUF(3),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(4),
      Q => axi_tdata_o_OBUF(4),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(5),
      Q => axi_tdata_o_OBUF(5),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(6),
      Q => axi_tdata_o_OBUF(6),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(7),
      Q => axi_tdata_o_OBUF(7),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(8),
      Q => axi_tdata_o_OBUF(8),
      R => rst_i_IBUF
    );
\axi_tdata_o_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tdata_o0,
      D => data_o(9),
      Q => axi_tdata_o_OBUF(9),
      R => rst_i_IBUF
    );
axi_tready_i_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => axi_tready_i
    );
axi_tready_o_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => axi_tready_o,
      O => axi_tready_o_IBUF
    );
axi_tvalid_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => axi_tvalid_i,
      O => axi_tvalid_i_IBUF
    );
axi_tvalid_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => axi_tvalid_o_OBUF,
      O => axi_tvalid_o
    );
axi_tvalid_output_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel,
      I1 => error_last,
      O => axi_tvalid_output_i_1_n_0
    );
axi_tvalid_output_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => axi_tvalid_output_i_1_n_0,
      Q => axi_tvalid_o_OBUF,
      R => '0'
    );
clk_i_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_i_IBUF,
      O => clk_i_IBUF_BUFG
    );
clk_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_i,
      O => clk_i_IBUF
    );
\coef_addr_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_addr_i(0),
      O => coef_addr_i_IBUF(0)
    );
\coef_addr_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_addr_i(1),
      O => coef_addr_i_IBUF(1)
    );
\coef_addr_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_addr_i(2),
      O => coef_addr_i_IBUF(2)
    );
\coef_addr_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_addr_i(3),
      O => coef_addr_i_IBUF(3)
    );
\coef_addr_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_addr_i(4),
      O => coef_addr_i_IBUF(4)
    );
\coef_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(0),
      O => coef_i_IBUF(0)
    );
\coef_i_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(10),
      O => coef_i_IBUF(10)
    );
\coef_i_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(11),
      O => coef_i_IBUF(11)
    );
\coef_i_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(12),
      O => coef_i_IBUF(12)
    );
\coef_i_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(13),
      O => coef_i_IBUF(13)
    );
\coef_i_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(14),
      O => coef_i_IBUF(14)
    );
\coef_i_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(15),
      O => coef_i_IBUF(15)
    );
\coef_i_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(16),
      O => coef_i_IBUF(16)
    );
\coef_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(1),
      O => coef_i_IBUF(1)
    );
\coef_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(2),
      O => coef_i_IBUF(2)
    );
\coef_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(3),
      O => coef_i_IBUF(3)
    );
\coef_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(4),
      O => coef_i_IBUF(4)
    );
\coef_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(5),
      O => coef_i_IBUF(5)
    );
\coef_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(6),
      O => coef_i_IBUF(6)
    );
\coef_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(7),
      O => coef_i_IBUF(7)
    );
\coef_i_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(8),
      O => coef_i_IBUF(8)
    );
\coef_i_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => coef_i(9),
      O => coef_i_IBUF(9)
    );
\data_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(0),
      Q => data_i(0),
      R => rst_i_IBUF
    );
\data_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(10),
      Q => data_i(10),
      R => rst_i_IBUF
    );
\data_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(11),
      Q => data_i(11),
      R => rst_i_IBUF
    );
\data_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(12),
      Q => data_i(12),
      R => rst_i_IBUF
    );
\data_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(13),
      Q => data_i(13),
      R => rst_i_IBUF
    );
\data_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(14),
      Q => data_i(14),
      R => rst_i_IBUF
    );
\data_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(15),
      Q => data_i(15),
      R => rst_i_IBUF
    );
\data_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(16),
      Q => data_i(16),
      R => rst_i_IBUF
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(1),
      Q => data_i(1),
      R => rst_i_IBUF
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(2),
      Q => data_i(2),
      R => rst_i_IBUF
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(3),
      Q => data_i(3),
      R => rst_i_IBUF
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(4),
      Q => data_i(4),
      R => rst_i_IBUF
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(5),
      Q => data_i(5),
      R => rst_i_IBUF
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(6),
      Q => data_i(6),
      R => rst_i_IBUF
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(7),
      Q => data_i(7),
      R => rst_i_IBUF
    );
\data_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(8),
      Q => data_i(8),
      R => rst_i_IBUF
    );
\data_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => axi_tvalid_i_IBUF,
      D => axi_tdata_i_IBUF(9),
      Q => data_i(9),
      R => rst_i_IBUF
    );
error_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => error_s_1,
      Q => error_last,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \error_mux[2]\
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \error_mux[1]\
    );
\module_gen[0].modules\: entity work.\module__1\
     port map (
      clk_i => clk_i_IBUF_BUFG,
      coef_addr_i(4 downto 0) => coef_addr_i_IBUF(4 downto 0),
      coef_i(16 downto 0) => coef_i_IBUF(16 downto 0),
      data_i(16 downto 0) => data_i(16 downto 0),
      data_o(16 downto 0) => \module_o_s[0]\(16 downto 0),
      error_o => \error_mux[0]\,
      rst_i => rst_i_IBUF,
      we_i => we_i_IBUF
    );
\module_gen[1].modules\: entity work.module
     port map (
      clk_i => clk_i_IBUF_BUFG,
      coef_addr_i(4 downto 0) => coef_addr_i_IBUF(4 downto 0),
      coef_i(16 downto 0) => coef_i_IBUF(16 downto 0),
      data_i(16 downto 0) => data_i(16 downto 0),
      data_o(16 downto 0) => \module_o_s[1]\(16 downto 0),
      error_o => error_s_1,
      rst_i => rst_i_IBUF,
      we_i => we_i_IBUF
    );
\module_reg[0].module_o_reg_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(0),
      Q => \module_o_reg[0]\(0),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(10),
      Q => \module_o_reg[0]\(10),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(11),
      Q => \module_o_reg[0]\(11),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(12),
      Q => \module_o_reg[0]\(12),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(13),
      Q => \module_o_reg[0]\(13),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(14),
      Q => \module_o_reg[0]\(14),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(15),
      Q => \module_o_reg[0]\(15),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(16),
      Q => \module_o_reg[0]\(16),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(1),
      Q => \module_o_reg[0]\(1),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(2),
      Q => \module_o_reg[0]\(2),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(3),
      Q => \module_o_reg[0]\(3),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(4),
      Q => \module_o_reg[0]\(4),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(5),
      Q => \module_o_reg[0]\(5),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(6),
      Q => \module_o_reg[0]\(6),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(7),
      Q => \module_o_reg[0]\(7),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(8),
      Q => \module_o_reg[0]\(8),
      R => '0'
    );
\module_reg[0].module_o_reg_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[0]\(9),
      Q => \module_o_reg[0]\(9),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(0),
      Q => \module_o_reg[1]\(0),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(10),
      Q => \module_o_reg[1]\(10),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(11),
      Q => \module_o_reg[1]\(11),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(12),
      Q => \module_o_reg[1]\(12),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(13),
      Q => \module_o_reg[1]\(13),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(14),
      Q => \module_o_reg[1]\(14),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(15),
      Q => \module_o_reg[1]\(15),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(16),
      Q => \module_o_reg[1]\(16),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(1),
      Q => \module_o_reg[1]\(1),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(2),
      Q => \module_o_reg[1]\(2),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(3),
      Q => \module_o_reg[1]\(3),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(4),
      Q => \module_o_reg[1]\(4),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(5),
      Q => \module_o_reg[1]\(5),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(6),
      Q => \module_o_reg[1]\(6),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(7),
      Q => \module_o_reg[1]\(7),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(8),
      Q => \module_o_reg[1]\(8),
      R => '0'
    );
\module_reg[1].module_o_reg_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \module_o_s[1]\(9),
      Q => \module_o_reg[1]\(9),
      R => '0'
    );
rst_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_i,
      O => rst_i_IBUF
    );
\sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \error_mux[0]\,
      Q => sel,
      R => '0'
    );
we_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => we_i,
      O => we_i_IBUF
    );
end STRUCTURE;
