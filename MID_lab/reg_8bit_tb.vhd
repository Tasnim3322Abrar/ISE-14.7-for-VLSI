LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY reg_8bit_tb IS
END reg_8bit_tb;

ARCHITECTURE behavior OF reg_8bit_tb IS

    COMPONENT reg_8bit
    PORT(
         D0  : IN  std_logic;
         D1  : IN  std_logic;
         D2  : IN  std_logic;
         D3  : IN  std_logic;
         D4  : IN  std_logic;
         D5  : IN  std_logic;
         D6  : IN  std_logic;
         D7  : IN  std_logic;
         CLK : IN  std_logic;
         Q0  : OUT std_logic;
         Q1  : OUT std_logic;
         Q2  : OUT std_logic;
         Q3  : OUT std_logic;
         Q4  : OUT std_logic;
         Q5  : OUT std_logic;
         Q6  : OUT std_logic;
         Q7  : OUT std_logic
        );
    END COMPONENT;

    signal D0 : std_logic := '0';
    signal D1 : std_logic := '0';
    signal D2 : std_logic := '0';
    signal D3 : std_logic := '0';
    signal D4 : std_logic := '0';
    signal D5 : std_logic := '0';
    signal D6 : std_logic := '0';
    signal D7 : std_logic := '0';
    signal CLK : std_logic := '0';

    signal Q0 : std_logic;
    signal Q1 : std_logic;
    signal Q2 : std_logic;
    signal Q3 : std_logic;
    signal Q4 : std_logic;
    signal Q5 : std_logic;
    signal Q6 : std_logic;
    signal Q7 : std_logic;

BEGIN

    uut: reg_8bit PORT MAP (
        D0 => D0,
        D1 => D1,
        D2 => D2,
        D3 => D3,
        D4 => D4,
        D5 => D5,
        D6 => D6,
        D7 => D7,
        CLK => CLK,
        Q0 => Q0,
        Q1 => Q1,
        Q2 => Q2,
        Q3 => Q3,
        Q4 => Q4,
        Q5 => Q5,
        Q6 => Q6,
        Q7 => Q7
    );

    stim_proc: process
    begin

        -- Load 00000000
        D0 <= '0';
        D1 <= '0';
        D2 <= '0';
        D3 <= '0';
        D4 <= '0';
        D5 <= '0';
        D6 <= '0';
        D7 <= '0';

        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;

        -- Load 11111111
        D0 <= '1';
        D1 <= '1';
        D2 <= '1';
        D3 <= '1';
        D4 <= '1';
        D5 <= '1';
        D6 <= '1';
        D7 <= '1';

        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;

        -- Load 10101010
        D0 <= '0';
        D1 <= '1';
        D2 <= '0';
        D3 <= '1';
        D4 <= '0';
        D5 <= '1';
        D6 <= '0';
        D7 <= '1';

        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;

        -- Load 01010101
        D0 <= '1';
        D1 <= '0';
        D2 <= '1';
        D3 <= '0';
        D4 <= '1';
        D5 <= '0';
        D6 <= '1';
        D7 <= '0';

        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;

        wait;

    end process;

END;