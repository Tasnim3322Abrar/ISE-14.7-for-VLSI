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
         SUM   : OUT std_logic;
         CARRY : OUT std_logic
        );
    END COMPONENT;
    -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';

    -- Outputs
    signal SUM   : std_logic;
    signal CARRY : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: half_adder PORT MAP (
          A     => A,
          B     => B,
          SUM   => SUM,
          CARRY => CARRY
        );
    -- Stimulus process
    stim_proc: process
    begin

        -- Test 1: A=0, B=0
        A <= '0';
        B <= '0';
        wait for 100 ns;

        -- Test 2: A=0, B=1
        A <= '0';
        B <= '1';
        wait for 100 ns;

        -- Test 3: A=1, B=0
        A <= '1';
        B <= '0';
        wait for 100 ns;
		  
        -- Test 4: A=1, B=1
        A <= '1';
        B <= '1';
        wait for 100 ns;

        -- Stop simulation
        wait;

    end process;

END behavior;