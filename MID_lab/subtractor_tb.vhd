LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY subtractor_tb IS
END subtractor_tb;

ARCHITECTURE behavior OF subtractor_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT subtractor
    PORT(
         A    : IN  std_logic;
         B    : IN  std_logic;
         BIN  : IN  std_logic;
         DIFF : OUT std_logic;
         BOUT : OUT std_logic
        );
    END COMPONENT;
    -- Inputs
    signal A   : std_logic := '0';
    signal B   : std_logic := '0';
    signal BIN : std_logic := '0';

    -- Outputs
    signal DIFF : std_logic;
    signal BOUT : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: subtractor PORT MAP (
          A    => A,
          B    => B,
          BIN  => BIN,
          DIFF => DIFF,
          BOUT => BOUT
        );
    -- Stimulus process
    stim_proc: process
    begin

        -- Test 1: A=0, B=0, BIN=0
        A <= '0';
        B <= '0';
        BIN <= '0';
        wait for 100 ns;

        -- Test 2: A=0, B=0, BIN=1
        A <= '0';
        B <= '0';
        BIN <= '1';
        wait for 100 ns;

        -- Test 3: A=0, B=1, BIN=0
        A <= '0';
        B <= '1';
        BIN <= '0';
        wait for 100 ns;
        -- Test 4: A=0, B=1, BIN=1
        A <= '0';
        B <= '1';
        BIN <= '1';
        wait for 100 ns;

        -- Test 5: A=1, B=0, BIN=0
        A <= '1';
        B <= '0';
        BIN <= '0';
        wait for 100 ns;

        -- Test 6: A=1, B=0, BIN=1
        A <= '1';
        B <= '0';
        BIN <= '1';
        wait for 100 ns;
        -- Test 7: A=1, B=1, BIN=0
        A <= '1';
        B <= '1';
        BIN <= '0';
        wait for 100 ns;

        -- Test 8: A=1, B=1, BIN=1
        A <= '1';
        B <= '1';
        BIN <= '1';
        wait for 100 ns;

        -- Stop simulation
        wait;

    end process;

END behavior;