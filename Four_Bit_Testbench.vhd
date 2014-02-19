--------------------------------------------------------------------------------
-- Company: 		USAFA, DFEC
-- Engineer:		C3C Kevin Cabusora
--
-- Create Date:   00:40:35 02/14/2014
-- Design Name:   Four Bit Testbench
-- Module Name:   C:/Users/C16kevin.cabusora/Documents/xilinx projects ece281/Lab2/Four_Bit_Testbench.vhd
-- Project Name:  Lab2
-- Target Device: Diligent Nexys 2
-- Tool versions: N/A
-- Description:   N/A
-- 
-- VHDL Test Bench Created by ISE for module: Four_Bit
-- 
-- Dependencies:	N/A
-- 
-- Revision:		N/A
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
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;
 
ENTITY Four_Bit_Testbench IS
END Four_Bit_Testbench;

ARCHITECTURE behavior OF Four_Bit_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Four_Bit
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
			Sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
	 

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_Bit PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

   -- Clock process definitions
 --  <clock>_process :process
--  begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

stim_proc: process
   begin		

	--initialize the values of Ain and Bin
	Ain <= "0000";
	Bin <= "0000";
	Cin <= '0';
	
	--for loop
	for I in 0 to 3 loop
		for J in 0 to 3 loop

		wait for 10ns;
		--make an assertion, throw report if it's not right
		assert Sum = (Ain + Bin) report "Expected sum of " &
			integer'image(to_integer(unsigned((Ain + Bin)))) & "for A = " &
			integer'image(to_integer(unsigned((Ain)))) & "for B = " &
			integer'image(to_integer(unsigned((Bin)))) & ", but was " &
			integer'image(to_integer(unsigned((Sum)))) severity ERROR;	
		--increment B	
		Bin <= Bin + "0001";
		end loop;
	Ain <= Ain + "0001";
	end loop;

		report "testing completed";
		WAIT;
	END PROCESS;

END;
