LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY accumulator_8bit_tb IS
END accumulator_8bit_tb;


ARCHITECTURE behavior OF accumulator_8bit_tb IS

    -- Component Declaration
    COMPONENT accumulator_8bit
        PORT(
            A0    : IN  std_logic;
            A1    : IN  std_logic;
            A2    : IN  std_logic;
            A3    : IN  std_logic;
            A4    : IN  std_logic;
            A5    : IN  std_logic;
            A6    : IN  std_logic;
            A7    : IN  std_logic;

            B0    : IN  std_logic;
            B1    : IN  std_logic;
            B2    : IN  std_logic;
            B3    : IN  std_logic;
            B4    : IN  std_logic;
            B5    : IN  std_logic;
            B6    : IN  std_logic;
            B7    : IN  std_logic;

            CLK   : IN  std_logic;
            RESET : IN  std_logic;

            Q0    : OUT std_logic;
            Q1    : OUT std_logic;
            Q2    : OUT std_logic;
            Q3    : OUT std_logic;
            Q4    : OUT std_logic;
            Q5    : OUT std_logic;
            Q6    : OUT std_logic;
            Q7    : OUT std_logic
        );
    END COMPONENT;


    -- Input signals
    SIGNAL A0 : std_logic := '0';
    SIGNAL A1 : std_logic := '0';
    SIGNAL A2 : std_logic := '0';
    SIGNAL A3 : std_logic := '0';
    SIGNAL A4 : std_logic := '0';
    SIGNAL A5 : std_logic := '0';
    SIGNAL A6 : std_logic := '0';
    SIGNAL A7 : std_logic := '0';

    SIGNAL B0 : std_logic := '0';
    SIGNAL B1 : std_logic := '0';
    SIGNAL B2 : std_logic := '0';
    SIGNAL B3 : std_logic := '0';
    SIGNAL B4 : std_logic := '0';
    SIGNAL B5 : std_logic := '0';
    SIGNAL B6 : std_logic := '0';
    SIGNAL B7 : std_logic := '0';

    SIGNAL CLK   : std_logic := '0';
    SIGNAL RESET : std_logic := '0';


    -- Output signals
    SIGNAL Q0 : std_logic;
    SIGNAL Q1 : std_logic;
    SIGNAL Q2 : std_logic;
    SIGNAL Q3 : std_logic;
    SIGNAL Q4 : std_logic;
    SIGNAL Q5 : std_logic;
    SIGNAL Q6 : std_logic;
    SIGNAL Q7 : std_logic;


    -- Clock period
    CONSTANT CLK_period : time := 100 ns;


BEGIN

    -- Unit Under Test
    UUT: accumulator_8bit
        PORT MAP (
            A0 => A0,
            A1 => A1,
            A2 => A2,
            A3 => A3,
            A4 => A4,
            A5 => A5,
            A6 => A6,
            A7 => A7,

            B0 => B0,
            B1 => B1,
            B2 => B2,
            B3 => B3,
            B4 => B4,
            B5 => B5,
            B6 => B6,
            B7 => B7,

            CLK   => CLK,
            RESET => RESET,

            Q0 => Q0,
            Q1 => Q1,
            Q2 => Q2,
            Q3 => Q3,
            Q4 => Q4,
            Q5 => Q5,
            Q6 => Q6,
            Q7 => Q7
        );


    -- Clock Generation
    CLK_process : process
    begin

        CLK <= '0';
        wait for CLK_period / 2;

        CLK <= '1';
        wait for CLK_period / 2;

    end process;


    -- Test Sequence
    stimulus : process
    begin

        ----------------------------------------------------------------
        -- STEP 1
        -- RESET = 1
        -- A = 00000000
        -- B = 00000000
        -- Expected Q = 00000000
        ----------------------------------------------------------------

        RESET <= '1';

        A7 <= '0';
        A6 <= '0';
        A5 <= '0';
        A4 <= '0';
        A3 <= '0';
        A2 <= '0';
        A1 <= '0';
        A0 <= '0';

        B7 <= '0';
        B6 <= '0';
        B5 <= '0';
        B4 <= '0';
        B3 <= '0';
        B2 <= '0';
        B1 <= '0';
        B0 <= '0';

        wait for CLK_period;


        ----------------------------------------------------------------
        -- STEP 2
        -- RESET = 0
        -- A = 00000011
        -- B = 00000101
        -- Expected Q = 00001000
        ----------------------------------------------------------------

        RESET <= '0';

        A7 <= '0';
        A6 <= '0';
        A5 <= '0';
        A4 <= '0';
        A3 <= '0';
        A2 <= '0';
        A1 <= '1';
        A0 <= '1';

        B7 <= '0';
        B6 <= '0';
        B5 <= '0';
        B4 <= '0';
        B3 <= '0';
        B2 <= '1';
        B1 <= '0';
        B0 <= '1';

        wait for CLK_period;


        ----------------------------------------------------------------
        -- STEP 3
        -- RESET = 0
        -- A = 00000010
        -- B = 00000001
        -- Expected Q = 00000011
        ----------------------------------------------------------------

        A7 <= '0';
        A6 <= '0';
        A5 <= '0';
        A4 <= '0';
        A3 <= '0';
        A2 <= '0';
        A1 <= '1';
        A0 <= '0';

        B7 <= '0';
        B6 <= '0';
        B5 <= '0';
        B4 <= '0';
        B3 <= '0';
        B2 <= '0';
        B1 <= '0';
        B0 <= '1';

        wait for CLK_period;


        ----------------------------------------------------------------
        -- STEP 4
        -- RESET = 0
        -- A = 11111111
        -- B = 00000001
        -- Expected Q = 00000000
        ----------------------------------------------------------------

        A7 <= '1';
        A6 <= '1';
        A5 <= '1';
        A4 <= '1';
        A3 <= '1';
        A2 <= '1';
        A1 <= '1';
        A0 <= '1';

        B7 <= '0';
        B6 <= '0';
        B5 <= '0';
        B4 <= '0';
        B3 <= '0';
        B2 <= '0';
        B1 <= '0';
        B0 <= '1';

        wait for CLK_period;


        ----------------------------------------------------------------
        -- STEP 5
        -- RESET = 0
        -- A = 10101010
        -- B = 00000101
        -- Expected Q = 10101111
        ----------------------------------------------------------------

        A7 <= '1';
        A6 <= '0';
        A5 <= '1';
        A4 <= '0';
        A3 <= '1';
        A2 <= '0';
        A1 <= '1';
        A0 <= '0';

        B7 <= '0';
        B6 <= '0';
        B5 <= '0';
        B4 <= '0';
        B3 <= '0';
        B2 <= '1';
        B1 <= '0';
        B0 <= '1';

        wait for CLK_period;


        -- End Simulation
        wait;

    end process;

END behavior;