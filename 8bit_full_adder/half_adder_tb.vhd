LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY half_adder_tb IS
END half_adder_tb;

ARCHITECTURE behavior OF half_adder_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT half_adder
    PORT(
         A     : IN  std_logic;
         B     : IN  std_logic;
         Sum   : OUT std_logic;
         Carry : OUT std_logic
        );
    END COMPONENT;
	 
	  -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';

    -- Outputs
    signal Sum   : std_logic;
    signal Carry : std_logic;
	 
BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: half_adder PORT MAP (
          A     => A,
          B     => B,
          Sum   => Sum,
          Carry => Carry
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