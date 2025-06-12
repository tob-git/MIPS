library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mypack.ALL;


entity REGISTERFILE is
    PORT(
         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0)
        );


end REGISTERFILE;

architecture Behavioral of REGISTERFILE is
SIGNAL L : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Out1, Out2, Out3, Out4, Out5, Out6, Out7, Out8 , Out9 , Out10, Out11, Out12, Outl3, Outl4, Out15,
Out16, Out17, Out18, Out19, Out20, Out21, Out22, Out23, Out24, Out25, Out26, Out27, Out28, Out29,
Out30, Out31, Out32 : STD_LOGIC_VECTOR (31 DOWNTO 0);
begin 

decoderl : DECODER PORT MAP (write_sel, write_ena, L);

Out1 <=(others => '0');
reg2 : MYREGISTER PORT MAP (write_data, Out2, L(1), clk, '0');
reg3 : MYREGISTER PORT MAP (write_data, Out3, L(2), clk, '0');
reg4 : MYREGISTER PORT MAP (write_data, Out4, L(3), clk, '0');
reg5 : MYREGISTER PORT MAP (write_data, Out5, L(4), clk, '0');
reg6 : MYREGISTER PORT MAP (write_data, Out6, L(5), clk, '0');
reg7 : MYREGISTER PORT MAP (write_data, Out7, L(6), clk, '0');
reg8 : MYREGISTER PORT MAP (write_data, Out8, L(7), clk, '0');
reg9 : MYREGISTER PORT MAP (write_data, Out9, L(8), clk, '0');
reg10 : MYREGISTER PORT MAP (write_data, Out10, L(9), clk, '0');
reg11 : MYREGISTER PORT MAP (write_data, Out11, L(10), clk, '0');
reg12 : MYREGISTER PORT MAP (write_data, Out12, L(11), clk, '0');
reg13 : MYREGISTER PORT MAP (write_data, Outl3, L(12), clk, '0');
reg14 : MYREGISTER PORT MAP (write_data, Outl4, L(13), clk, '0');
reg15 : MYREGISTER PORT MAP (write_data, Out15, L(14), clk, '0');
reg16 : MYREGISTER PORT MAP (write_data, Out16, L(15), clk, '0');
reg17 : MYREGISTER PORT MAP (write_data, Out17, L(16), clk, '0');
reg18 : MYREGISTER PORT MAP (write_data, Out18, L(17), clk, '0');
reg19 : MYREGISTER PORT MAP (write_data, Out19, L(18), clk, '0');
reg20 : MYREGISTER PORT MAP (write_data, Out20, L(19), clk, '0');
reg21	: MYREGISTER PORT MAP (write_data, Out21, L(20), clk, '0');
reg22 : MYREGISTER PORT MAP (write_data, Out22, L(21), clk, '0');
reg23 : MYREGISTER PORT MAP (write_data, Out23, L(22), clk, '0');
reg24 : MYREGISTER PORT MAP (write_data, Out24, L(23), clk, '0');
reg25 : MYREGISTER PORT MAP (write_data, Out25, L(24), clk, '0');
reg26 : MYREGISTER PORT MAP (write_data, Out26, L(25), clk, '0');
reg27 : MYREGISTER PORT MAP (write_data, Out27, L(26), clk, '0');
reg28 : MYREGISTER PORT MAP (write_data, Out28, L(27), clk, '0');
reg29 : MYREGISTER PORT MAP (write_data, Out29, L(28), clk, '0');
reg30 : MYREGISTER PORT MAP (write_data, Out30, L(29), clk, '0');
reg31 : MYREGISTER PORT MAP (write_data, Out31, L(30), clk, '0');
reg32 : MYREGISTER PORT MAP (write_data, Out32, L(31), clk, '0');


MUX1 : MUX PORT MAP(Out1, Out2, Out3, Out4, Out5, Out6, Out7, Out8 , Out9 , Out10, Out11, Out12, Outl3, Outl4, Out15,
Out16, Out17, Out18, Out19, Out20, Out21, Out22, Out23, Out24, Out25, Out26, Out27, Out28, Out29,
Out30, Out31, Out32,read_sel1,data1);
 
MUX2 : MUX PORT MAP(Out1, Out2, Out3, Out4, Out5, Out6, Out7, Out8 , Out9 , Out10, Out11, Out12, Outl3, Outl4, Out15,
Out16, Out17, Out18, Out19, Out20, Out21, Out22, Out23, Out24, Out25, Out26, Out27, Out28, Out29,
Out30, Out31, Out32,read_sel2,data2);


end Behavioral;

