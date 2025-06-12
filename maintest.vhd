
library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;
use ieee.numeric_std.all;

 
ENTITY maintest IS
END maintest;
 
ARCHITECTURE behavior OF maintest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         writedata : OUT  std_logic_vector(31 downto 0);
         dataadr : OUT  std_logic_vector(31 downto 0);
         memwrite : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal writedata : std_logic_vector(31 downto 0);
   signal dataadr : std_logic_vector(31 downto 0);
   signal memwrite : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          clk => clk,
          reset => reset,
          writedata => writedata,
          dataadr => dataadr,
          memwrite => memwrite
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	 -- Generate reset for first two clock cycles
	process begin
	reset <= '1';
	wait for 22 ns;
	reset <= '0';
	wait;
	end process;

   
	-- check that 7 gets written to address 84 at end of program
	process(clk) begin
		if (clk'event and clk = '0' and memwrite = '1') then
			if (CONV_INTEGER(dataadr) = 84 and CONV_INTEGER(writedata) = 7) then
				report "NO ERRORS: Simulation succeeded" severity failure;
			elsif (CONV_INTEGER(dataadr) = 84) then
				report "Simulation failed" severity failure;
			end if;
		end if;

	end process;

END;
