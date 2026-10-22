LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY program_counter_tb IS
END program_counter_tb;

ARCHITECTURE behavior OF program_counter_tb IS
    COMPONENT program_counter
        PORT (
            CLK   : IN  STD_LOGIC;
            RESET : IN  STD_LOGIC;
            LOAD  : IN  STD_LOGIC;
            D     : IN  STD_LOGIC_VECTOR(3 downto 0);
            PC    : OUT STD_LOGIC_VECTOR(3 downto 0)
        );
    END COMPONENT;
    SIGNAL CLK   : STD_LOGIC := '0';
    SIGNAL RESET : STD_LOGIC := '0';
    SIGNAL LOAD  : STD_LOGIC := '0';
    SIGNAL D     : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    SIGNAL PC    : STD_LOGIC_VECTOR(3 downto 0);

BEGIN

    UUT: program_counter
        PORT MAP (
            CLK   => CLK,
            RESET => RESET,
            LOAD  => LOAD,
            D     => D,
            PC    => PC
        );
    -- Clock period: 20 ns
    CLK_PROCESS: PROCESS
    BEGIN
        LOOP
            CLK <= '0';
            WAIT FOR 10 ns;
            CLK <= '1';
            WAIT FOR 10 ns;
        END LOOP;
    END PROCESS;

    STIMULUS: PROCESS
    BEGIN
        -- Test 1: Reset PC to zero
        RESET <= '1';
        LOAD  <= '0';
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT PC = "0000"
            REPORT "Test 1 FAILED: PC should be zero"
            SEVERITY ERROR;

        -- Test 2: First increment
        RESET <= '0';

        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT PC = "0001"
            REPORT "Test 2 FAILED: PC should be 1"
            SEVERITY ERROR;
        -- Test 3: Second increment
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT PC = "0010"
            REPORT "Test 3 FAILED: PC should be 2"
            SEVERITY ERROR;

        -- Test 4: Third increment
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT PC = "0011"
            REPORT "Test 4 FAILED: PC should be 3"
            SEVERITY ERROR;
        -- Test 5: Load jump address 7
        D    <= "0111";
        LOAD <= '1';

        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT PC = "0111"
            REPORT "Test 5 FAILED: PC should load address 7"
            SEVERITY ERROR;

        -- Test 6: Increment after jump
        LOAD <= '0';

        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;
        ASSERT PC = "1000"
            REPORT "Test 6 FAILED: PC should increment to 8"
            SEVERITY ERROR;

        -- Test 7: Reset again
        RESET <= '1';

        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT PC = "0000"
            REPORT "Test 7 FAILED: PC did not reset"
            SEVERITY ERROR;

        REPORT "All program counter tests completed."
            SEVERITY NOTE;
        WAIT;
    END PROCESS;

END behavior;