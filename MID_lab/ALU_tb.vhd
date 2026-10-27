LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ALU_tb IS
END ALU_tb;

ARCHITECTURE behavior OF ALU_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT ALU
    PORT(
         A      : IN  std_logic_vector(7 downto 0);
         B      : IN  std_logic_vector(7 downto 0);
         OP     : IN  std_logic;
         RESULT : OUT std_logic_vector(7 downto 0);
         CARRY  : OUT std_logic;
         BORROW : OUT std_logic
        );
    END COMPONENT;
    -- Inputs
    signal A  : std_logic_vector(7 downto 0) := (others => '0');
    signal B  : std_logic_vector(7 downto 0) := (others => '0');
    signal OP : std_logic := '0';

    -- Outputs
    signal RESULT : std_logic_vector(7 downto 0);
    signal CARRY  : std_logic;
    signal BORROW : std_logic;

BEGIN
    -- Instantiate the Unit Under Test (UUT)

    uut: ALU PORT MAP (
          A      => A,
          B      => B,
          OP     => OP,
          RESULT => RESULT,
          CARRY  => CARRY,
          BORROW => BORROW
        );

    -- Stimulus process

    stim_proc: process
    begin
        -- =========================================
        -- ADDITION TESTS: OP = 0
        -- =========================================

        -- Test 1: 0 + 0 = 0
        A <= "00000000";
        B <= "00000000";
        OP <= '0';
        wait for 100 ns;

        -- Test 2: 5 + 3 = 8
        A <= "00000101";
        B <= "00000011";
        OP <= '0';
        wait for 100 ns;
        -- Test 3: 10 + 5 = 15
        A <= "00001010";
        B <= "00000101";
        OP <= '0';
        wait for 100 ns;

        -- Test 4: 15 + 1 = 16
        A <= "00001111";
        B <= "00000001";
        OP <= '0';
        wait for 100 ns;
        -- Test 5: 100 + 50 = 150
        A <= "01100100";
        B <= "00110010";
        OP <= '0';
        wait for 100 ns;

        -- Test 6: 255 + 1 = 0 with carry
        A <= "11111111";
        B <= "00000001";
        OP <= '0';
        wait for 100 ns;

        -- Test 7: 200 + 100 = 44 with carry
        A <= "11001000";
        B <= "01100100";
        OP <= '0';
        wait for 100 ns;
        -- =========================================
        -- SUBTRACTION TESTS: OP = 1
        -- =========================================

        -- Test 8: 0 - 0 = 0
        A <= "00000000";
        B <= "00000000";
        OP <= '1';
        wait for 100 ns;

        -- Test 9: 5 - 3 = 2
        A <= "00000101";
        B <= "00000011";
        OP <= '1';
        wait for 100 ns;
        -- Test 10: 10 - 5 = 5
        A <= "00001010";
        B <= "00000101";
        OP <= '1';
        wait for 100 ns;

        -- Test 11: 15 - 1 = 14
        A <= "00001111";
        B <= "00000001";
        OP <= '1';
        wait for 100 ns;
        -- Test 12: 100 - 50 = 50
        A <= "01100100";
        B <= "00110010";
        OP <= '1';
        wait for 100 ns;

        -- Test 13: 255 - 1 = 254
        A <= "11111111";
        B <= "00000001";
        OP <= '1';
        wait for 100 ns;

        -- Test 14: 5 - 10 = 251 with borrow
        A <= "00000101";
        B <= "00001010";
        OP <= '1';
        wait for 100 ns;
        -- Test 15: 0 - 1 = 255 with borrow
        A <= "00000000";
        B <= "00000001";
        OP <= '1';
        wait for 100 ns;

        wait;

    end process;

END behavior;