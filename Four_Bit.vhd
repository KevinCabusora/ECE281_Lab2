----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:11:08 02/10/2014 
-- Design Name: 
-- Module Name:    Four_Bit - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Four_Bit is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Four_Bit;

architecture Structural of Four_Bit is

signal K, L, M, N : STD_LOGIC;

	component Full_Adder is
		Port ( Ain : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	end component Full_Adder;

begin

Bit0: Full_Adder
	PORT MAP (Ain => Ain(0),
				Bin => Bin(0),
				Cin => Cin,
				Cout => K,
				Sum => Sum(0));
				
Bit1: Full_Adder
	PORT MAP (Ain => Ain(1),
				Bin => Bin(1),
				Cin => K,
				Cout => L,
				Sum => Sum(1));
				
Bit2: Full_Adder
	PORT MAP (Ain => Ain(2),
				Bin => Bin(2),
				Cin => L,
				Cout => M,
				Sum => Sum(2));
				
Bit3: Full_Adder
	PORT MAP (Ain => Ain(3),
				Bin => Bin(3),
				Cin => M,
				Cout => N,
				Sum => Sum(3));				

end Structural;

