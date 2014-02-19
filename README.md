ECE281_Lab2
===========

# 4-Bit 2's Complement Adder

### C3C Kevin Cabusora
### Dr. Neebel
### ECE 281
### 18 February 2014

Prelab 
===========

## Testbench Screenshot

![alt text][Testbench_Screenshot.PNG]

[Testbench_Screenshot.PNG]: https://github.com/KevinCabusora/ECE281_Lab2/blob/master/Testbench_Screenshot.PNG?raw=true "Testbench_Screenshot.PNG"

## VHDL Files

[Full Adder VHDL](Full_Adder.vhd)

[Full Adder Testbench](Lab2_Full_Adder_Testbench.vhd)

## Truth Table

|  A |  B | Cin| Sum|Cout|
|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  |
| 0  | 0  | 1  | 1  | 0  |
| 0  | 1  | 0  | 1  | 0  |
| 0  | 1  | 1  | 0  | 1  |
| 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 1  | 0  | 1  |
| 1  | 1  | 0  | 0  | 1  |
| 1  | 1  | 1  | 1  | 1  | 

## Schematic

![alt text][Schematic.PNG]

[Schematic.PNG]: https://github.com/KevinCabusora/ECE281_Lab2/blob/master/Schematic.PNG?raw=true "Schematic.PNG"

Main Lab
==========

## Design Process
In the prelab I created a full adder, which used the inputs Ain, Bin, Cin, and output the variables Sum and Cout.  The prelab section of the README contains my truth table.  I used this to create an SOP and create an initial schematic and form my VHDL code.  The testbench confirmed that both my code and truth table were valid.

In the main lab the objective was to create at the minimum a Four-Bit Adder.  This used structural modeling, and consisted of four Full Adders as components connected together, with the Cout feeding into the Cin of the next one, and so on and so forth.  The code "std_logic_vector" was assigned to the variables Ain, Bin, and Sum, while "std_logic" was used for the Cin and Cout values.  

Initially the Four-Bit Adder testbench would not display correct values, but it was found that initially when forming the code the variables A and B were used instead of the Ain and Bin consistent with the proper values.  Correcting this mistake led to an improved testbench.

I created a .ucf file in order to demonstrate the results on the Diligent Nexys FPGA.

## VHDL Files

[Four Bit VHDL](Four_Bit_vhd)

[Four Bit Testbench](Four_Bit_Testbench.vhd)

[Four Bit UCF](Four_Bit_UCF.ucf)


