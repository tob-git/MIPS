library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity shiftleft2 is
    Port ( I : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end shiftleft2;

architecture Behavioral of shiftleft2 is

begin
o <= i(29 downto 0) & "00";

end Behavioral;

