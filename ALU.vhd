library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ALU is
    port(
        data1, data2: in std_logic_vector(31 downto 0);
        aluop: in std_logic_vector(3 downto 0);
        dataout: out std_logic_vector(31 downto 0);
        zflag: out std_logic
    );
end ALU;

architecture Behavioral of ALU is
    -- Intermediate signals for ALU operations
    signal negated_data2: std_logic_vector(31 downto 0);
    signal negated_data1: std_logic_vector(31 downto 0);
    signal result_add: std_logic_vector(31 downto 0);
    signal result_slt: std_logic_vector(31 downto 0);
    signal alu_result: std_logic_vector(31 downto 0);

begin
    -- Conditional negation based on ALU operation control bits
    negated_data2 <= NOT data2 when aluop(2) = '1' else data2;
    negated_data1 <= NOT data1 when aluop(3) = '1' else data1;

    -- Calculate the addition or subtraction result
    result_add <= data1 + negated_data2 + aluop(2);

    -- Set Less Than operation
    result_slt <= "0000000000000000000000000000000" & result_add(31);

    -- Output selection based on ALU operation control bits
    alu_result <= (negated_data1 AND negated_data2) when aluop(1 downto 0) = "00" else
                  (data1 OR negated_data2) when aluop(1 downto 0) = "01" else
                  result_add when aluop(1 downto 0) = "10" else
                  result_slt when aluop(1 downto 0) = "11";

    -- Assign the computed result to the output
    dataout <= alu_result;

    -- Zero flag determination
    zflag <= '1' when alu_result = x"00000000" else '0';

end Behavioral;