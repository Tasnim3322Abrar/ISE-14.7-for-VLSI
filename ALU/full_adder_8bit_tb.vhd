LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_8bit_tb IS
END full_adder_8bit_tb;

ARCHITECTURE behavior OF full_adder_8bit_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT full_adder_8bit
    PORT(
         A    : IN  std_logic_vector(7 downto 0);
         B    : IN  std_logic_vector(7 downto 0);
         CIN  : IN  std_logic;
         SUM  : OUT std_logic_vector(7 downto 0);
         COUT : OUT std_logic
        );
    END COMPONENT;
    -- Inputs
    signal A   : std_logic_vector(7 downto 0) := (others => '0');
    signal B   : std_logic_vector(7 downto 0) := (others => '0');
    signal CIN : std_logic := '0';

    -- Outputs
    signal SUM  : std_logic_vector(7 downto 0);
    signal COUT : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: full_adder_8bit PORT MAP (
          A    => A,
          B    => B,
          CIN  => CIN,
          SUM  => SUM,
          COUT => COUT
        );
    -- Stimulus process
    stim_proc: process
    begin

        -- Test 1: 0 + 0
        A <= "00000000";
        B <= "00000000";
        CIN <= '0';
        wait for 100 ns;

        -- Test 2: 1 + 1 = 2
        A <= "00000001";
        B <= "00000001";
        CIN <= '0';
        wait for 100 ns;
        -- Test 3: 15 + 1 = 16
        A <= "00001111";
        B <= "00000001";
        CIN <= '0';
        wait for 100 ns;

        -- Test 4: 10 + 5 = 15
        A <= "00001010";
        B <= "00000101";
        CIN <= '0';
        wait for 100 ns;

        -- Test 5: 100 + 50 = 150
        A <= "01100100";
        B <= "00110010";
        CIN <= '0';
        wait for 100 ns;
        -- Test 6: 127 + 1 = 128
        A <= "01111111";
        B <= "00000001";
        CIN <= '0';
        wait for 100 ns;

        -- Test 7: 255 + 1 = 256
        -- 8-bit SUM becomes 0 and COUT becomes 1
        A <= "11111111";
        B <= "00000001";
        CIN <= '0';
        wait for 100 ns;

        -- Test 8: 255 + 255 = 510
        -- 8-bit SUM = 254, COUT = 1
        A <= "11111111";
        B <= "11111111";
        CIN <= '0';
        wait for 100 ns;
        -- Test 9: Addition with CIN
        -- 5 + 3 + 1 = 9
        A <= "00000101";
        B <= "00000011";
        CIN <= '1';
        wait for 100 ns;

        -- Stop simulation
        wait;

    end process;

END behavior;