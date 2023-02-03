----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2023 05:24:11 PM
-- Design Name: 
-- Module Name: module - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
use work.util_pkg.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity module is
    generic(in_out_data_width : natural := 17;
    fixed_width : natural := 1;
    fir_ord : natural := 20);
    Port (clk_i : in STD_LOGIC;
        rst_i  : in std_logic;
        we_i : in STD_LOGIC;
        coef_addr_i : std_logic_vector(log2c(fir_ord)-1 downto 0);
        coef_i : in STD_LOGIC_VECTOR (in_out_data_width-1 downto 0);
        data_i : in STD_LOGIC_VECTOR (in_out_data_width-1 downto 0);
        data_o : out STD_LOGIC_VECTOR (in_out_data_width-1 downto 0);
        error_o : out STD_LOGIC);
attribute dont_touch : string;
attribute dont_touch of module: entity is "true";
end module;

architecture Behavioral of module is
signal data_o_0,data_o_1: std_logic_vector(in_out_data_width-1 downto 0); 
attribute dont_touch of data_o_0: signal is "true";
attribute dont_touch of data_o_1: signal is "true";
begin
fir_filter_0:
 entity work.fir_filtar(behavioral)
 generic map(fir_ord=>fir_ord, --kada isljucim ovo racuna resurse modul sa 2 FIR filtera, inace sa samo jednim
 input_data_width=>in_out_data_width,
 fixed_width => fixed_width,
 output_data_width=>in_out_data_width)
 port map(clk_i=>clk_i,
 rst_i=>rst_i,
 we_i=>we_i,
 coef_i=>coef_i,
 coef_addr_i=>coef_addr_i,
 data_i=>data_i,
 data_o=>data_o_0);
 fir_filter_1:
 entity work.fir_filtar(behavioral)
 generic map(fir_ord=>fir_ord,
 fixed_width => fixed_width,
 input_data_width=>in_out_data_width,
 output_data_width=>in_out_data_width)
 port map(clk_i=>clk_i,
 rst_i=>rst_i,
 we_i=>we_i,
 coef_i=>coef_i,
 coef_addr_i=>coef_addr_i,
 data_i=>data_i,
 data_o=>data_o_1);
 
 data_o<=data_o_0;
 error_o<='0' when (data_o_0=data_o_1) else '1'; 
end Behavioral;
