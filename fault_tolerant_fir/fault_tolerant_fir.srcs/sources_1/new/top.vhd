----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/02/2023 12:40:15 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
generic(fir_ord : natural := 20;
    fixed_width : natural := 1;
    in_out_data_width : natural := 17;
    module_ord : natural := 5);
Port (clk_i : in STD_LOGIC;
        rst_i  : in std_logic;
        we_i : in STD_LOGIC;
        coef_addr_i : std_logic_vector(log2c(fir_ord)-1 downto 0);
        coef_i : in STD_LOGIC_VECTOR (in_out_data_width-1 downto 0);
        -- AXI SLAVE INTERFACE
         axi_tdata_i : in STD_LOGIC_VECTOR (in_out_data_width-1 downto 0);
         axi_tvalid_i: in STD_LOGIC;
         axi_tready_i: out STD_LOGIC;
         -- AXI MASTER INTERFACE
         axi_tdata_o : out STD_LOGIC_VECTOR (in_out_data_width-1 downto 0);
         axi_tvalid_o: out STD_LOGIC;
         axi_tready_o: in STD_LOGIC
        );
end top;

architecture Behavioral of top is

begin
--everything: entity work.fault_tolerant(Behavioral)
--port map(
--clk_i=>clk_i,
--rst_i=>rst_i,
--we_i=>we_i,
--coef_addr_i=>coef_addr_i,
-- coef_i=>coef_i,
--        -- AXI SLAVE INTERFACE
-- axi_tdata_i=>axi_tdata_i,
-- axi_tvalid_i=>axi_tvalid_i,
-- axi_tready_i=>axi_tready_i,
--         -- AXI MASTER INTERFACE
-- axi_tdata_o =>axi_tdata_o,
-- axi_tvalid_o=>axi_tvalid_o,
-- axi_tready_o=>axi_tready_o);

end Behavioral;
