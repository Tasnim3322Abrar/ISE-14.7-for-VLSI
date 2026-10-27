LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY not_gate_tb IS
END not_gate_tb;

ARCHITECTURE behavior OF not_gate_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT not_gate
    PORT(
         A : IN  std_logic;
         Y : OUT std_logic
        );
    END COMPONENT;
    -- Inputs
    signal A : std_logic := '0';

    -- Outputs
    signal Y : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: not_gate PORT MAP (
          A => A,
          Y => Y
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test 1: A = 0
        A <= '0';
        wait for 100 ns;

        -- Test 2: A = 1
        A <= '1';
        wait for 100 ns;

        -- Stop simulation
        wait;

    end process;

END behavior;