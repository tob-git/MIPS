library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity signextened is
	 port(
		I: in STD_LOGIC_VECTOR(15 downto 0);
		O: out STD_LOGIC_VECTOR(31 downto 0)
		);
end signextened;

architecture Behavioral of signextened is
begin
	O <= X"ffff" & i WHEN I(15) = '1' ELSE
	X"0000" & i;

end Behavioral;

