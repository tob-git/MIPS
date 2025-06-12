library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity alucontrol is
	port(
	func: in STD_LOGIC_Vector (5 downto 0);
	aluop: in STD_LOGIC_Vector(1 downto 0);
	alucontrol: out STD_lOGIC_Vector ( 3 downto 0)
	);
end alucontrol;

architecture Behavioral of alucontrol is

begin
	process (aluop,func)
		begin 
		case aluop is 
		when "00" => alucontrol <= "0010";  --add (for lw/sw/addi)
		when "01" => alucontrol <= "0110"; --sub (for beq)
		when others =>
			case func is  --Rtypeinst
				when "100000" => alucontrol <= "0010" ; --add
				when "100010" => alucontrol <= "0110" ; --sub
				when "100100" => alucontrol <= "0000" ; --and
				when "100101" => alucontrol <= "0001" ; --or
				when "101010" => alucontrol <= "0111" ; --slt
				when "100111" => alucontrol <= "1100" ; --nor
				when others => alucontrol <= "----" ; --unlegal
			 end case;
			end case;
	end process;

end Behavioral;

