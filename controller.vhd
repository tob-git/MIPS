library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.controlpack.all;


entity controller is 
 port(
 op, funct: in STD_LOGIC_VECTOR(5 downto 0); 
 zero: in STD_LOGIC;
 memtoreg, memwrite: out STD_LOGIC; 
 pcsrc, alusrc: out STD_LOGIC; 
 regdst, regwrite: out STD_LOGIC; 
 jump: out STD_LOGIC;
 alucontrolsignal: out STD_LOGIC_VECTOR(3 downto 0)); 

end controller;

architecture struct of controller is

signal aluop : std_logic_vector ( 1 downto 0);
signal branch : std_logic;

begin


maincontrol1 : maincontrol port Map ( op , memtoreg , memwrite, branch ,alusrc, regdst , regwrite, jump , aluop );
alucontrol1 : alucontrol port map ( funct , aluop , alucontrolsignal);

pcsrc <= branch and zero;

end struct;



