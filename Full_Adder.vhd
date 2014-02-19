----------------------------------------------------------------------------------
-- Company:        USAFA, DFEC
-- Engineer: 		 C3C Kevin Cabusora
-- 
-- Create Date:    02:21:28 02/10/2014 
-- Design Name:    Full Adder
-- Module Name:    Full_Adder - Behavioral 
-- Project Name:   Lab 2
-- Target Devices: Diligent Nexus 2
-- Tool versions:  N/A
-- Description:    Full Adder for Lab 2
--
-- Dependencies:   N/A
--
-- Revision:       N/A
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( Ain : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

signal D, E, F, G, H, I, J, Ain_NOT, Bin_NOT, Cin_NOT : STD_LOGIC;

begin

Ain_NOT <= not Ain;
Bin_NOT <= not Bin;
Cin_NOT <= not Cin;
D <= Ain_NOT and Bin and Cin;
E <= Ain_NOT and Bin and Cin_NOT;
F <= Ain and Bin_NOT and Cin_NOT;
G <= Ain and Bin and Cin;
H <= Ain_NOT and Bin and Cin;
I <= Ain and Bin_NOT and Cin;
J <= Ain and Bin;
Sum <= D or E or F or G;
Cout <= H or I or J;

end Behavioral;

