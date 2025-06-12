--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MYPACK is
component  MYREGISTER is
	PORT (
	I: IN STD_LOGIC_VECTOR (31 DOWNTO 0);	
	O: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);

	L , CLK , rst : IN STD_LOGIC

	);
end component;

component  DECODER is
		Port ( 	Input : in  STD_LOGIC_VECTOR (4 downto 0);
					enable : in std_logic ;
					Output : out STD_LOGIC_VECTOR (31 downto 0)
		);
end component;


component  MUX is
	PORT( 
		I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31 : in std_logic_vector(31 downto 0);
		S :  in std_logic_vector(4 downto 0);
		O :  OUT std_logic_vector(31 downto 0)
	);
end component;


end MYPACK;
