library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MYREGISTER is
	PORT (
	I: IN STD_LOGIC_VECTOR (31 DOWNTO 0);	
	O: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);

	L , CLK , rst : IN STD_LOGIC

	);

end MYREGISTER;

architecture Behavioral of MYREGISTER is

BEGIN
		PROCESS(CLK , rst )
			BEGIN
			IF (rst='1') THEN
				O <=(others =>'0');
			ELSIF(CLK'event AND CLK='1')THEN
				IF (L = '1') THEN
					O <= I;	
				END IF;
			END IF;
			END PROCESS;

end Behavioral;

