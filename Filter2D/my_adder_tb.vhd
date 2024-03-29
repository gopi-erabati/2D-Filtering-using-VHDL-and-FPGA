--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:14:46 12/01/2017
-- Design Name:   
-- Module Name:   C:/Users/ge515497/Documents/VHDL/test_MSCV/my_adder_tb.vhd
-- Project Name:  test_MSCV
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: my_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY my_adder_tb IS
END my_adder_tb;
 
ARCHITECTURE behavior OF my_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT my_adder
    PORT(
         a : IN  std_logic_vector(11 downto 0);
         b : IN  std_logic_vector(11 downto 0);
         clk : IN  std_logic;
         s : OUT  std_logic_vector(12 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(11 downto 0) := (others => '0');
   signal b : std_logic_vector(11 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(12 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: my_adder PORT MAP (
          a => a,
          b => b,
          clk => clk,
          s => s
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		a <= "111000000011";
		b <= "001000000000";

      -- insert stimulus here 

      wait;
   end process;

END;
