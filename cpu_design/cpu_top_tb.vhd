
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cpu_top_tb IS
END cpu_top_tb;

ARCHITECTURE behavior OF cpu_top_tb IS
    COMPONENT cpu_top
        PORT (
            CLK   : IN  std_logic;
            RESET : IN  std_logic;
            Q     : OUT std_logic_vector(7 downto 0);
            Z     : OUT std_logic;
            PC    : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    SIGNAL CLK   : std_logic := '0';
    SIGNAL RESET : std_logic := '1';

    SIGNAL Q  : std_logic_vector(7 downto 0);
    SIGNAL Z  : std_logic;
    SIGNAL PC : std_logic_vector(3 downto 0);

    CONSTANT CLK_PERIOD : time := 20 ns;

BEGIN
    -- Instantiate the CPU
    uut : cpu_top
        PORT MAP (
            CLK   => CLK,
            RESET => RESET,
            Q     => Q,
            Z     => Z,
            PC    => PC
        );
    -- Clock generation
    clk_process : PROCESS
    BEGIN
        LOOP
            CLK <= '0';
            WAIT FOR CLK_PERIOD / 2;

            CLK <= '1';
            WAIT FOR CLK_PERIOD / 2;
        END LOOP;
    END PROCESS;
    -- Set 9 CPU test sequence
    stim_proc : PROCESS
    BEGIN

        -- STEP 1: Synchronous reset
        RESET <= '1';

        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT Q = x"00" AND Z = '1' AND PC = "0000"
            REPORT "FAIL: Reset state"
            SEVERITY failure;
        -- Release reset
        RESET <= '0';

        -- STEP 2: Instruction 0 - LDI FF
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT Q = x"FF" AND Z = '0' AND PC = "0001"
            REPORT "FAIL: LDI FF"
            SEVERITY failure;
        -- STEP 3: Instruction 1 - NOT
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT Q = x"00" AND Z = '1' AND PC = "0010"
            REPORT "FAIL: NOT"
            SEVERITY failure;

        -- STEP 4: Instruction 2 - JZ 05 (taken)
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;
        ASSERT Q = x"00" AND Z = '1' AND PC = "0101"
            REPORT "FAIL: JZ 05 taken"
            SEVERITY failure;

        -- STEP 5: Instruction 5 - ADD 11
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT Q = x"11" AND Z = '0' AND PC = "0110"
            REPORT "FAIL: ADD 11"
            SEVERITY failure;
        -- STEP 6: Instruction 6 - SHL
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT Q = x"22" AND Z = '0' AND PC = "0111"
            REPORT "FAIL: SHL at address 6"
            SEVERITY failure;

        -- STEP 7: Instruction 7 - JZ 00 (not taken)
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;
        ASSERT Q = x"22" AND Z = '0' AND PC = "1000"
            REPORT "FAIL: JZ 00 not taken"
            SEVERITY failure;

        -- STEP 8: Instruction 8 - SHL
        WAIT UNTIL rising_edge(CLK);
        WAIT FOR 1 ns;

        ASSERT Q = x"44" AND Z = '0' AND PC = "1001"
            REPORT "FAIL: SHL at address 8"
            SEVERITY failure;
        -- All tests passed
        REPORT "PASS: Set 9 CPU testbench completed successfully."
            SEVERITY note;

        WAIT;
    END PROCESS;

END behavior;