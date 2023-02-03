----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2023 07:13:43 PM
-- Design Name: 
-- Module Name: fault_tolerant - Behavioral
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

entity fault_tolerant is
    generic(fir_ord : natural := 20;
    fixed_width : natural := 1;
    in_out_data_width : natural := 17;
    module_ord : natural := 3);
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
end fault_tolerant;
architecture Behavioral of fault_tolerant is
--constant module_ord : natural :=2;
signal error_s : std_logic_vector (module_ord-1 downto 0);
type module_o_2d is array (module_ord-1 downto 0) of
std_logic_vector(in_out_data_width-1 downto 0);
signal module_o_s,module_o_reg: module_o_2d :=(others=>(others=>'0'));
signal data_i_s,data_o_s:std_logic_vector (in_out_data_width-1 downto 0);
signal sel,or_sel: std_logic_vector (log2c(module_ord)-1 downto 0);
type error_2d is array (module_ord downto 0) of std_logic_vector(log2c(module_ord)-1 downto 0);
signal error_mux:error_2d:=(others=>(others=>'0'));
signal data_i :  STD_LOGIC_VECTOR (in_out_data_width-1 downto 0);
signal data_o :  STD_LOGIC_VECTOR (in_out_data_width-1 downto 0);
 signal axi_tready_input, axi_tvalid_output: STD_LOGIC;
 signal error_last : std_logic;
 attribute dont_touch : string;
attribute dont_touch of error_mux: signal is "true";
attribute dont_touch of module_o_s: signal is "true";
attribute dont_touch of module_o_reg: signal is "true";
begin
module_gen:
for i in 0 to module_ord-1 generate
    modules: entity work.module(Behavioral)
    generic map(in_out_data_width=>in_out_data_width,
    fixed_width =>fixed_width,
    fir_ord=>fir_ord
    )
    port map(clk_i=>clk_i,
 rst_i=>rst_i,
 we_i=>we_i,
 coef_i=>coef_i,
 coef_addr_i=>coef_addr_i,
 data_i=>data_i_s,
 data_o=>module_o_s(i),
 error_o=>error_s(i));
end generate;

 logic_gen:
for i in 0 to module_ord-2 generate
   if_gen:if(i=module_ord-2) generate
        error_mux(i)<=std_logic_vector(to_unsigned(i,log2c(module_ord))) when error_s(i)='0' else std_logic_vector(to_unsigned(i+1,log2c(module_ord))); 
    else generate
         error_mux(i)<=std_logic_vector(to_unsigned(i,log2c(module_ord))) when error_s(i)='0' else error_mux(i+1);
    end generate;  
end generate;

module_reg:
for i in 0 to module_ord-1 generate
    process (clk_i) begin
        if (rising_edge(clk_i)) then
            module_o_reg(i)<=module_o_s(i);
    end if;
    end process;
end generate;
process (clk_i) begin
    if (rising_edge(clk_i)) then
        sel<=error_mux(0);
        error_last<=error_s(module_ord-1);
        axi_tvalid_output <= '1';
        if(sel=std_logic_vector(to_unsigned(module_ord-1,log2c(module_ord))) and error_last='1') then
            axi_tvalid_output <= '0';
        end if;
    end if;
end process;
--module_o_s(module_ord)<=(others=>'0');

data_i_s<=data_i;
data_o<=module_o_reg(TO_INTEGER(unsigned(sel)));
--data_o<=data_o_s;

axi_tready_i <= axi_tready_input;
 axi_tready_input <= '1';--!!!!!!!!!!!!!!!!
    
 axi_tvalid_o <= axi_tvalid_output;
 
-- system is always ready to receive new data

-- proces koji radi axi stream slave
process(clk_i)
begin
    if(clk_i'event and clk_i = '1')then
	   if(rst_i = '1') then
           data_i <= (others => '0');
       else
           -- don't store the data unless we're ready
           if (axi_tvalid_i = '1' and axi_tready_input = '1') then
              data_i <= axi_tdata_i;
           end if;
       end if;
    end if;
end process;
--proces koji radi axi master interfejs
process(clk_i)
begin
    if(clk_i'event and clk_i = '1')then
	   if(rst_i = '1') then
           axi_tdata_o <= (others => '0');
       else
           -- don't store the data unless we're ready
           if (axi_tvalid_output = '1' and axi_tready_o = '1') then
              axi_tdata_o <= data_o;
           end if;
       end if;
    end if;
end process;

end Behavioral;
