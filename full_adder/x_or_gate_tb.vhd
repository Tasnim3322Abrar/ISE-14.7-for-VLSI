
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY x_or_gate_tb IS
END x_or_gate_tb;
 
ARCHITECTURE behavior OF x_or_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT x_or_gate
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
   uut: x_or_gate PORT MAP (
          A => A,
          B => B,
          Y => Y
        );
 

   -- Stimulus process
   stim_proc: process
   begin

        -- Test 00
        A <= '0';
        B <= '0';
        wait for 100 ns;

        -- Test 01
        A <= '0';
        B <= '1';
        wait for 100 ns;

        -- Test 10
        A <= '1';
        B <= '0';
        wait for 100 ns;

        -- Test 11
        A <= '1';
        B <= '1';
        wait for 100 ns;

        -- Stop simulation
        wait;

    end process;

END;
