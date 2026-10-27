LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY subtractor_8bit_tb IS
END subtractor_8bit_tb;

ARCHITECTURE behavior OF subtractor_8bit_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT subtractor_8bit
    PORT(
         A    : IN  std_logic_vector(7 downto 0);
         B    : IN  std_logic_vector(7 downto 0);
         BIN  : IN  std_logic;
         DIFF : OUT std_logic_vector(7 downto 0);
         BOUT : OUT std_logic
        );
    END COMPONENT;
    -- Inputs
    signal A   : std_logic_vector(7 downto 0) := (others => '0');
    signal B   : std_logic_vector(7 downto 0) := (others => '0');
    signal BIN : std_logic := '0';

    -- Outputs
    signal DIFF : std_logic_vector(7 downto 0);
    signal BOUT : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)

    uut: subtractor_8bit PORT MAP (
          A    => A,
          B    => B,
          BIN  => BIN,
          DIFF => DIFF,
          BOUT => BOUT
        );
    -- Stimulus process

    stim_proc: process
    begin

        -- Test 1: 0 - 0 = 0
        A <= "00000000";
        B <= "00000000";
        BIN <= '0';
        wait for 100 ns;

        -- Test 2: 5 - 3 = 2
        A <= "00000101";
        B <= "00000011";
        BIN <= '0';
        wait for 100 ns;
        -- Test 3: 10 - 5 = 5
        A <= "00001010";
        B <= "00000101";
        BIN <= '0';
        wait for 100 ns;

        -- Test 4: 15 - 1 = 14
        A <= "00001111";
        B <= "00000001";
        BIN <= '0';
        wait for 100 ns;

        -- Test 5: 100 - 50 = 50
        A <= "01100100";
        B <= "00110010";
        BIN <= '0';
        wait for 100 ns;
        -- Test 6: 255 - 1 = 254
        A <= "11111111";
        B <= "00000001";
        BIN <= '0';
        wait for 100 ns;

        -- Test 7: 0 - 1 = 255 with borrow
        A <= "00000000";
        B <= "00000001";
        BIN <= '0';
        wait for 100 ns;

        -- Test 8: 5 - 10 = 251 with borrow
        A <= "00000101";
        B <= "00001010";
        BIN <= '0';
        wait for 100 ns;
        -- Test 9: 5 - 3 - 1 = 1
        A <= "00000101";
        B <= "00000011";
        BIN <= '1';
        wait for 100 ns;

        -- Test 10: 10 - 5 - 1 = 4
        A <= "00001010";
        B <= "00000101";
        BIN <= '1';
        wait for 100 ns;

        -- Test 11: 50 - 25 = 25
        A <= "00110010";
        B <= "00011001";
        BIN <= '0';
        wait for 100 ns;
        -- Test 12: 128 - 64 = 64
        A <= "10000000";
        B <= "01000000";
        BIN <= '0';
        wait for 100 ns;

        wait;

    end process;

END behavior;