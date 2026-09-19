
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY nor_gate_tb IS
END nor_gate_tb;

ARCHITECTURE behavior OF nor_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT nor_gate
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Y : OUT std_logic
        );
    END COMPONENT;

    -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';

    -- Output
    signal Y : std_logic;
 

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: nor_gate PORT MAP (
          A => A,
          B => B,
          Y => Y
        );

    -- Stimulus process
    stim_proc: process
    begin		
      -- Case 1: A=0, B=0
        A <= '0';
        B <= '0';
        wait for 10 ns;

        -- Case 2: A=0, B=1
        A <= '0';
        B <= '1';
        wait for 10 ns;

        -- Case 3: A=1, B=0
        A <= '1';
        B <= '0';
        wait for 10 ns;

        -- Case 4: A=1, B=1
        A <= '1';
        B <= '1';
        wait for 10 ns;

        -- Stop simulation
        wait;

    end process;

END behavior;
