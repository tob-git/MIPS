library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mainpack.all;




entity main is
port(clk, reset: in STD_LOGIC; 
     writedata, dataadr: out STD_LOGIC_VECTOR(31 downto 0);
     memwrite: out STD_LOGIC
	  ); 
end main;

architecture Behavioral of main is

signal memwrite1: STD_LOGIC;
signal pc,instr,readdata,dataadr1,writedata1: STD_LOGIC_VECTOR (31 downto 0);

begin
memwrite<=memwrite1;
dataadr<=dataadr1;
writedata<= writedata1;


InstructionMemory: imem port map(pc(7 downto 2),instr);
MIPSS: mips port map(clk,reset,instr,readdata,pc,dataadr1,writedata1,memwrite1);
DataMemory: dmem port map(clk,memwrite1,dataadr1,writedata1,readdata);



end Behavioral;

