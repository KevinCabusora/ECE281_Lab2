--------------------------------------------------------------------------------
-- Company: 		USAFA, DFEC
-- Engineer:	   C3C Kevin Cabusora
--
-- Create Date:   02:40:15 02/10/2014
-- Design Name:   Full Adder Testbench
-- Module Name:   C:/Users/C16kevin.cabusora/Documents/xilinx projects ece281/Lab2/Lab2_Full_Adder_Testbench.vhd
-- Project Name:  Lab2
-- Target Device: Diligent Nexus 2
-- Tool versions: N/A 
-- Description:   Testbench for Full Adder Functionality
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
-- 
-- Dependencies:  N/A
-- 
-- Revision:      N/A
-- Revision 0.01 - File Created
-- Additional Comments: N/A
--
-- Notes: N/A
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
 
ENTITY Lab2_Full_Adder_Testbench IS
END Lab2_Full_Adder_Testbench;
 
ARCHITECTURE behavior OF Lab2_Full_Adder_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Sum : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

 --     wait for <clock>_period*10;

-- First line of truth table
		A <= '0';
		B <= '0';
		Cin <= '0';
		wait for 100 ns;
		
		-- Second line of truth table
		A <= '0';
		B <= '0';
		Cin <= '1';
		wait for 100 ns;
		
		-- Third line of truth table
		A <= '0';
		B <= '1';
		Cin <= '0';
		wait for 100 ns;
		
		-- Fourth line of truth table
		A <= '0';
		B <= '1';
		Cin <= '1';
		wait for 100 ns;
		
		-- Fifth line of truth table
		A <= '1';
		B <= '0';
		Cin <= '0';
		wait for 100 ns;
		
		-- Sixth line of truth table
		A <= '1';
		B <= '0';
		Cin <= '1';
		wait for 100 ns;
		
		-- Seventh line of truth table
		A <= '1';
		B <= '1';
		Cin <= '0';
		wait for 100 ns;
		
		-- Eighth line of truth table
		A <= '1';
		B <= '1';
		Cin <= '1';
		wait for 100 ns; 

      wait;
   end process;

END;
