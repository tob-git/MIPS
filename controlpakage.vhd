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

package controlpakage is

component maincontrol 
 port(
   op: in STD_LOGIC_VECTOR(5 downto 0); 
	memtoreg, memwrite ,branch, alusrc ,regdst, regwrite , jump : out STD_LOGIC;
	aluop: out STD_LOGIC_VECTOR(1 downto 0)
 ); 
 end component; 
 
component alucontrol is
	port(func: in STD_LOGIC_Vector (5 downto 0);
	aluop: in STD_LOGIC_Vector(1 downto 0);
	alucontrol: out STD_lOGIC_Vector ( 3 downto 0));
end component;


end controlpakage;

package body controlpakage is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end controlpakage;
