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

package datapathpack is

component adder
   port(a, b: in STD_LOGIC_VECTOR(31 downto 0);
           y: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component  MYREGISTER is
	PORT (
	I: IN STD_LOGIC_VECTOR (31 DOWNTO 0);	
	O: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);

	L , CLK , rst : IN STD_LOGIC

	);
end component;

component shiftleft2 is
    Port ( I: in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component signextened
   port(
		I: in STD_LOGIC_VECTOR(15 downto 0);
		O: out STD_LOGIC_VECTOR(31 downto 0)
			);
end component;

component mux2 generic(width: integer);
	port(d0, d1: in STD_LOGIC_VECTOR(width-1 downto 0);
	s: in STD_LOGIC;
	y: out STD_LOGIC_VECTOR(width-1 downto 0));
end component;

component ALU is
Port ( 	  data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflag : out  STD_LOGIC);
end component;

component RegisterFile is
Port ( 
		  clk       : in std_logic;
        read_sel1 : in std_logic_vector(4 downto 0);
        read_sel2 : in std_logic_vector(4 downto 0);
        write_sel : in std_logic_vector(4 downto 0); --WriteRegister
        write_ena : in std_logic; --from controller write/read
        write_data: in std_logic_vector(31 downto 0);
        data1     : out std_logic_vector(31 downto 0); 	--ReadData1
        data2     : out std_logic_vector(31 downto 0)		--ReadData2
    );
end component;





end datapathpack;

package body datapathpack is

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
 
end datapathpack;
