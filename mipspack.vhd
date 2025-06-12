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

package mipspack is

component datapath is
Port ( 
		clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		readdata: in STD_LOGIC_VECTOR(31 downto 0);
		instr : in  STD_LOGIC_VECTOR (31 downto 0);
		memtoreg, jumpsrc,pcsrc,alusrc,regwrite,regdst : in  STD_LOGIC;
		aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
		zero : out  STD_LOGIC;
		pc: out STD_LOGIC_VECTOR(31 downto 0);
		aluout, writedata: out  STD_LOGIC_VECTOR (31 downto 0)
	);
end component;

component controller is -- Alu Controller
 port(op, funct: in STD_LOGIC_VECTOR(5 downto 0); 
 zero: in STD_LOGIC;
 memtoreg, memwrite: out STD_LOGIC; 
 pcsrc, alusrc: out STD_LOGIC; 
 regdst, regwrite: out STD_LOGIC; 
 jump: out STD_LOGIC;
 alucontrolsignal: out STD_LOGIC_VECTOR(3 downto 0)); 

end component;


end mipspack;

package body mipspack is

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
 
end mipspack;
