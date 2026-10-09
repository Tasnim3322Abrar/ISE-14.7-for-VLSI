LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY program_counter_tb IS
END program_counter_tb;

ARCHITECTURE behavior OF program_counter_tb IS

    COMPONENT program_counter
        PORT (
            CLK   : IN  STD_LOGIC;
            RESET : IN  STD_LOGIC;
            PC    : OUT STD_LOGIC_VECTOR(7 downto 0)
        );
    END COMPONENT;
    SIGNAL CLK   : STD_LOGIC := '0';
    SIGNAL RESET : STD_LOGIC := '0';
    SIGNAL PC    : STD_LOGIC_VECTOR(7 downto 0);

BEGIN

    UUT: program_counter
        PORT MAP (
            CLK   => CLK,
            RESET => RESET,
            PC    => PC
        );
    -- Clock period = 20 ns
    CLK_PROCESS: PROCESS
    BEGIN
        CLK <= '0';
        WAIT FOR 10 ns;
        CLK <= '1';
        WAIT FOR 10 ns;
    END PROCESS;

    STIMULUS: PROCESS
    BEGIN
        -- Test 1: Reset PC to zero
        RESET <= '1';
        WAIT FOR 25 ns;
        ASSERT PC = x"00"
            REPORT "Test 1 FAILED: PC should be zero"
            SEVERITY ERROR;

        -- Test 2: First increment
        RESET <= '0';
        WAIT FOR 20 ns;
        ASSERT PC = x"01"
            REPORT "Test 2 FAILED: PC should be 1"
            SEVERITY ERROR;
        -- Test 3: Second increment
        WAIT FOR 20 ns;
        ASSERT PC = x"02"
            REPORT "Test 3 FAILED: PC should be 2"
            SEVERITY ERROR;

        -- Test 4: Third increment
        WAIT FOR 20 ns;
        ASSERT PC = x"03"
            REPORT "Test 4 FAILED: PC should be 3"
            SEVERITY ERROR;
        -- Test 5: Reset again
        RESET <= '1';
        WAIT FOR 20 ns;
        ASSERT PC = x"00"
            REPORT "Test 5 FAILED: PC did not reset"
            SEVERITY ERROR;

        REPORT "Program counter tests completed."
            SEVERITY NOTE;

        WAIT;
    END PROCESS;

END behavior;