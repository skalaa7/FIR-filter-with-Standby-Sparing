----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2022 10:10:35 AM
-- Design Name: 
-- Module Name: fir_filtar - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use work.util_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fir_filtar is
    generic(fir_ord : natural := 20;
        input_data_width : natural := 17;
        fixed_width : natural := 1;
        output_data_width : natural := 17);
    Port (clk_i : in STD_LOGIC;
        rst_i  : in std_logic;
        we_i : in STD_LOGIC;
        coef_addr_i : std_logic_vector(log2c(fir_ord)-1 downto 0);
        coef_i : in STD_LOGIC_VECTOR (input_data_width-1 downto 0);
        data_i : in STD_LOGIC_VECTOR (input_data_width-1 downto 0);
        data_o : out STD_LOGIC_VECTOR (output_data_width-1 downto 0)); attribute dont_touch : string;
attribute dont_touch of fir_filtar : entity is "true";
end fir_filtar;

architecture Behavioral of fir_filtar is
type std_2d is array (fir_ord-1 downto 0) of
std_logic_vector(2*input_data_width-1 downto 0);
 signal mac_inter : std_2d:=(others=>(others=>'0'));
 type std_l_2d is array (fir_ord-1 downto 0) of
std_logic_vector(input_data_width-1 downto 0);
 signal u_inter : std_l_2d:=(others=>(others=>'0'));
 type coef_t is array (fir_ord downto 0) of
std_logic_vector(input_data_width-1 downto 0);
 signal b_s : coef_t := (others=>(others=>'0')); 
 
begin
 --proces koji modeluje sinkroni upis u memoriju b_s
 process(clk_i)
 begin
 if(clk_i'event and clk_i = '1')then
 if we_i = '1' then
 b_s(to_integer(unsigned(coef_addr_i))) <= coef_i;
 end if;
 end if;
 end process;
 --instanca prvog MAC-a ?iji je ulaz sec_i jednak 0
 first_section:
 entity work.mac(behavioral)
 generic map(input_data_width=>input_data_width)
 port map(clk_i=>clk_i,
 rst_i=>rst_i,
 u_i=>data_i,
 b_i=>b_s(fir_ord-1),
 sec_i=>(others=>'0'),
 sec_o=>mac_inter(0),
 u_o=>u_inter(0));
 --instanciranje ostalih MAC modula filtra 
 other_sections:
for i in 1 to fir_ord-1 generate
 fir_section:
 entity work.mac(behavioral)
 generic map(input_data_width=>input_data_width)
 port map(clk_i=>clk_i,
 rst_i=>rst_i,
 u_i=>u_inter(i-1),
 b_i=>b_s(fir_ord-i-1),
 sec_i=>mac_inter(i-1), --sec_o signal prethodnog MAC modula
 sec_o=>mac_inter(i),
 u_o=>u_inter(i));
 end generate;
 --registrovanje izlaznog signala
 process(clk_i)
 begin
 if(clk_i'event and clk_i='1')then
 data_o <= mac_inter(fir_ord-1)
(2*input_data_width-1-fixed_width downto output_data_width-fixed_width);
 end if;
 end process;
end Behavioral;
