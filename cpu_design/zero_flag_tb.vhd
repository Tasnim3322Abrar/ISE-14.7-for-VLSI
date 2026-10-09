LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY zero_flag_tb IS
END zero_flag_tb;

ARCHITECTURE behavior OF zero_flag_tb IS

    COMPONENT zero_flag
        PORT (
            A    : IN  STD_LOGIC_VECTOR(7 downto 0);
            ZERO : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL A    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    SIGNAL ZERO : STD_LOGIC;
BEGIN

    UUT: zero_flag
        PORT MAP (
            A    => A,
            ZERO => ZERO
        );

    STIMULUS: PROCESS
    BEGIN

        -- Test 1: All bits are zero
        A <= x"00";
        WAIT FOR 10 ns;
        ASSERT ZERO = '1'
            REPORT "Test 1 FAILED: Expected ZERO = 1"
            SEVERITY ERROR;
        -- Test 2: Input is 1
        A <= x"01";
        WAIT FOR 10 ns;
        ASSERT ZERO = '0'
            REPORT "Test 2 FAILED: Expected ZERO = 0"
            SEVERITY ERROR;

        -- Test 3: Input is FF
        A <= x"FF";
        WAIT FOR 10 ns;
        ASSERT ZERO = '0'
            REPORT "Test 3 FAILED: Expected ZERO = 0"
            SEVERITY ERROR;
        -- Test 4: Input is 80
        A <= x"80";
        WAIT FOR 10 ns;
        ASSERT ZERO = '0'
            REPORT "Test 4 FAILED: Expected ZERO = 0"
            SEVERITY ERROR;

        -- Test 5: Input is 0 again
        A <= x"00";
        WAIT FOR 10 ns;
        ASSERT ZERO = '1'
            REPORT "Test 5 FAILED: Expected ZERO = 1"
            SEVERITY ERROR;

        REPORT "All zero flag tests completed."
            SEVERITY NOTE;

        WAIT;
    END PROCESS;

END behavior;