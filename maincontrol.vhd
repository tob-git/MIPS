library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity maincontrol is
	Port (
	op: in STD_LOGIC_VECTOR(5 downto 0); 
	memtoreg, memwrite ,branch, alusrc ,regdst, regwrite , jump : out STD_LOGIC;
	aluop: out STD_LOGIC_VECTOR(1 downto 0)
	); 
end maincontrol;

architecture Behavioral of maincontrol is

signal controls: STD_LOGIC_Vector(8 downto 0);
 
begin 

process(op)
begin
case op is
    when "000000" => controls <="110000010"; --Rtyype
    when "100011" => controls <="101001000"; --lw
    when "101011" => controls <="001010000"; --SW
    when "000100" => controls <="000100001"; --beq
    when "001000" => controls <="101000000"; --Addi
    when "000010" => controls <="000000100"; --j
    when others => controls   <=  "---------";  --illegal op
end case;
end process;

(regwrite , regdst , alusrc , branch , memwrite , memtoreg , jump , aluop(1),
aluop(0)) <= controls;

end Behavioral;

