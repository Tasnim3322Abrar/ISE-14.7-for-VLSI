LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_8bit_tb IS
END mux_8bit_tb;

ARCHITECTURE behavior OF mux_8bit_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT mux_8bit
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic;
         Y : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    -- Inputs
    signal A : std_logic_vector(7 downto 0) := (others => '0');
    signal B : std_logic_vector(7 downto 0) := (others => '0');
    signal S : std_logic := '0';

    -- Outputs
    signal Y : std_logic_vector(7 downto 0);

BEGIN

    -- Instantiate the Unit Under Test (UUT)

    uut: mux_8bit PORT MAP (
          A => A,
          B => B,
          S => S,
          Y => Y
        );
    -- Stimulus process

    stim_proc: process
    begin

        -- Test 1: S = 0, Y should be A
        A <= "10101010";
        B <= "11001100";
        S <= '0';
        wait for 100 ns;

        -- Test 2: S = 1, Y should be B
        A <= "10101010";
        B <= "11001100";
        S <= '1';
        wait for 100 ns;
        -- Test 3: S = 0, Y should be A
        A <= "11110000";
        B <= "00001111";
        S <= '0';
        wait for 100 ns;

        -- Test 4: S = 1, Y should be B
        A <= "11110000";
        B <= "00001111";
        S <= '1';
        wait for 100 ns;

        -- Test 5: A = 00000000, B = 11111111, S = 0
        A <= "00000000";
        B <= "11111111";
        S <= '0';
        wait for 100 ns;
        -- Test 6: A = 00000000, B = 11111111, S = 1
        A <= "00000000";
        B <= "11111111";
        S <= '1';
        wait for 100 ns;

        -- Test 7: Different patterns, S = 0
        A <= "00110101";
        B <= "11001010";
        S <= '0';
        wait for 100 ns;
        -- Test 8: Different patterns, S = 1
        A <= "00110101";
        B <= "11001010";
        S <= '1';
        wait for 100 ns;

        wait;

    end process;

END behavior;