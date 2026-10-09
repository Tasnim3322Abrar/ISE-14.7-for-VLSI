LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY accumulator_8bit_tb IS
END accumulator_8bit_tb;

ARCHITECTURE behavior OF accumulator_8bit_tb IS

    COMPONENT accumulator_8bit
        PORT (
            D     : IN  STD_LOGIC_VECTOR(7 downto 0);
            CLK   : IN  STD_LOGIC;
            RESET : IN  STD_LOGIC;
            Q     : OUT STD_LOGIC_VECTOR(7 downto 0)
        );
    END COMPONENT;
    SIGNAL D     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    SIGNAL CLK   : STD_LOGIC := '0';
    SIGNAL RESET : STD_LOGIC := '0';
    SIGNAL Q     : STD_LOGIC_VECTOR(7 downto 0);

BEGIN

    UUT: accumulator_8bit
        PORT MAP (
            D     => D,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q
        );
    CLK_PROCESS: PROCESS
    BEGIN
        CLK <= '0';
        WAIT FOR 10 ns;
        CLK <= '1';
        WAIT FOR 10 ns;
    END PROCESS;

    STIMULUS: PROCESS
    BEGIN

        -- Test 1: Reset
        RESET <= '1';
        D <= x"00";
        WAIT FOR 25 ns;
        ASSERT Q = x"00"
            REPORT "Test 1 FAILED: Reset"
            SEVERITY ERROR;
        -- Test 2: Add 5
        RESET <= '0';
        D <= x"05";
        WAIT FOR 20 ns;
        ASSERT Q = x"05"
            REPORT "Test 2 FAILED: Expected 5"
            SEVERITY ERROR;

        -- Test 3: Add 10; total = 15
        D <= x"0A";
        WAIT FOR 20 ns;
        ASSERT Q = x"0F"
            REPORT "Test 3 FAILED: Expected 15"
            SEVERITY ERROR;
        -- Test 4: Add 20; total = 35
        D <= x"14";
        WAIT FOR 20 ns;
        ASSERT Q = x"23"
            REPORT "Test 4 FAILED: Expected 35"
            SEVERITY ERROR;

        -- Test 5: Add 255; 35 + 255 = 290
        -- 8-bit result = 34
        D <= x"FF";
        WAIT FOR 20 ns;
        ASSERT Q = x"22"
            REPORT "Test 5 FAILED: Expected 34"
            SEVERITY ERROR;
        -- Test 6: Reset again
        RESET <= '1';
        D <= x"00";
        WAIT FOR 20 ns;
        ASSERT Q = x"00"
            REPORT "Test 6 FAILED: Reset"
            SEVERITY ERROR;

        REPORT "All accumulator tests completed."
            SEVERITY NOTE;

        WAIT;
    END PROCESS;

END behavior;