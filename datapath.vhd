library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.datapathpack.ALL;


entity datapath is
    Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        readdata   : in  STD_LOGIC_VECTOR(31 downto 0);
        instr      : in  STD_LOGIC_VECTOR (31 downto 0);
        memtoreg   : in  STD_LOGIC;
        jumpsrc    : in  STD_LOGIC;
        pcsrc      : in  STD_LOGIC;
        alusrc     : in  STD_LOGIC;
        regwrite   : in  STD_LOGIC;
        regdst     : in  STD_LOGIC;
        aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
        zero       : out STD_LOGIC;
        pc         : out STD_LOGIC_VECTOR(31 downto 0);
        aluout     : out STD_LOGIC_VECTOR (31 downto 0);
        writedata  : out STD_LOGIC_VECTOR (31 downto 0)
    );
end datapath;

architecture Behavioral of datapath is
   signal writereg: STD_LOGIC_VECTOR(4 downto 0);
signal pcjump, pcnext, pcnextbr, pcplus4,  pcbranch : STD_LOGIC_VECTOR(31 downto 0);
signal signexout, slout: STD_LOGIC_VECTOR(31 downto 0);
signal srca, aluin , data1 , data2 , pcsignal , aluoutsignal: STD_LOGIC_VECTOR(31 downto 0);
begin
    -- PC update logic
    pc <= pcsignal;
    aluout <= aluoutsignal;
    writedata <= data2;

    -- Jump address calculation
    pcjump <= pcplus4(31 downto 28) & instr(25 downto 0) & "00";

    -- PC register
    pcreg: MYREGISTER
        port map (pcnext, pcsignal, '1', clk, reset);

    -- Increment PC
    pcadd1: adder
        port map (pcsignal, X"00000004", pcplus4);

    -- Shift left immidiate (Branch offset preparation)
    immsh: shiftleft2
        port map (signexout, slout);

    -- Calculate branch target address
    pcadd2: adder
        port map (pcplus4, slout, pcbranch);

    -- Branch decision multiplexer
    pcbrmux: mux2 generic map (32)
        port map (pcplus4, pcbranch, pcsrc, pcnextbr);

    -- Jump decision multiplexer
    pcmux: mux2 generic map (32)
        port map (pcnextbr, pcjump, jumpsrc, pcnext);

    -- Register file operations
    rf: registerfile
        port map (clk, instr(25 downto 21), instr(20 downto 16), writereg, regwrite, srca, data1, data2);

    -- Register write multiplexer (Rt or Rd)
    wrmux: mux2 generic map (5)
        port map (instr(20 downto 16), instr(15 downto 11), regdst, writereg);

    -- Result source multiplexer (ALU or Memory)
    resmux: mux2 generic map(32) port map(aluoutsignal , readdata,memtoreg, srca);
    -- Sign extend the immediate value
    se: signextened
        port map (instr(15 downto 0), signexout);

    -- ALU source multiplexer (Rt or Immediate)
    srcbmux: mux2 generic map (32)
        port map (data2, signexout, alusrc, aluin);

    -- ALU operations
    alu32: alu
        port map (data1, aluin, aluoperation, aluoutsignal, zero);

end Behavioral;