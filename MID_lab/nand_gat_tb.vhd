LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY nand_gat_tb IS
END nand_gat_tb;
 
 
 
 
ARCHITECTURE behavior OF nand_gat_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nand_gate
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Y : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nand_gate PORT MAP (
          A => A,
          B => B,
          Y => Y
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      
		-- case 1 : A=0, B=0
		A <= '0';
      B <= '0';
		wait for 100 ns;

		-- case 2 : A=0, B=1
		A <= '0';
      B <= '1';
		wait for 100 ns;

		-- case 3 : A=1, B=0
		A <= '1';
      B <= '0';
		wait for 100 ns;		
		
		-- case 4 : A=1, B=1
		A <= '1';
      B <= '1';
		wait for 100 ns;		

      wait;
   end process;

END;
