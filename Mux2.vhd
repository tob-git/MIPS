library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux2 is generic(width: integer:=32);
	port(d0, d1: in STD_LOGIC_VECTOR(width-1 downto 0);
	s: in STD_LOGIC;
	y: out STD_LOGIC_VECTOR(width-1 downto 0));
END Mux2; 
ARCHITECTURE MuxArch OF Mux2 IS
BEGIN
y <= d1 WHEN s='1' ELSE d0; 
END MuxArch;