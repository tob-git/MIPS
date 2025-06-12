library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mipspack.all;


entity mips is -- single cycle 
port(clk, reset: in STD_LOGIC; 
	  instr: in STD_LOGIC_VECTOR(31 downto 0);
	  readdata: in STD_LOGIC_VECTOR(31 downto 0);
     pc: out STD_LOGIC_VECTOR(31 downto 0);
	  aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0);
	  memwrite: out STD_LOGIC
	  ); 
	  end; 

architecture Behavioral of MIPS is

signal memtoreg,  jumpsrc , pcsrc , alusrc , regwrite,regdst: std_logic;
signal zero: std_logic;
signal alucontrolsignal: STD_LOGIC_VECTOR(3 downto 0); 
begin


ctrl: controller port map ( instr(31 downto 26), instr( 5 downto 0) , zero , memtoreg , memwrite , pcsrc 
                            , alusrc , regdst , regwrite , jumpsrc , alucontrolsignal );							 
dpath: datapath port map ( clk , reset , readdata , instr , memtoreg, jumpsrc , pcsrc,alusrc,regwrite,regdst, alucontrolsignal , zero , pc,
                         aluout, writedata );
								 		 
end Behavioral;

