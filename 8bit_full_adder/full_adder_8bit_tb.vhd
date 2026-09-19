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
         Cin  : IN  std_logic;
         Sum  : OUT std_logic_vector(7 downto 0);
         Cout : OUT std_logic
        );
    END COMPONENT;
	 
	 -- Inputs
    signal A   : std_logic_vector(7 downto 0) := (others => '0');
    signal B   : std_logic_vector(7 downto 0) := (others => '0');
    signal Cin : std_logic := '0';

    -- Outputs
    signal Sum  : std_logic_vector(7 downto 0);
    signal Cout : std_logic;
	 
BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: full_adder_8bit
    PORT MAP (
        A    => A,
        B    => B,
        Cin  => Cin,
        Sum  => Sum,
        Cout => Cout
    );

    -- Stimulus process
    stim_proc: process
    begin
	 
	 -- Test 1: 0 + 0 + 0 = 0
        A <= "00000000";
        B <= "00000000";
        Cin <= '0';
        wait for 100 ns;

        -- Test 2: 1 + 1 = 2
        A <= "00000001";
        B <= "00000001";
        Cin <= '0';
        wait for 100 ns;

        -- Test 3: 5 + 3 = 8
        A <= "00000101";
        B <= "00000011";
        Cin <= '0';
        wait for 100 ns;
		  
		  -- Test 4: 15 + 10 = 25
        A <= "00001111";
        B <= "00001010";
        Cin <= '0';
        wait for 100 ns;

        -- Test 5: 100 + 50 = 150
        A <= "01100100";
        B <= "00110010";
        Cin <= '0';
        wait for 100 ns;

        -- Test 6: 255 + 1 = 256
        -- Expected: Sum = 00000000, Cout = 1
        A <= "11111111";
        B <= "00000001";
        Cin <= '0';
        wait for 100 ns;
		  
		  -- Test 7: 127 + 1 = 128
        A <= "01111111";
        B <= "00000001";
        Cin <= '0';
        wait for 100 ns;

        -- Test 8: Carry-in test
        -- 10 + 20 + 1 = 31
        A <= "00001010";
        B <= "00010100";
        Cin <= '1';
        wait for 100 ns;

        -- Test 9: Maximum + Maximum
        -- 255 + 255 = 510
        -- Expected: Sum = 11111110, Cout = 1
        A <= "11111111";
        B <= "11111111";
        Cin <= '0';
        wait for 100 ns;
		  
		  -- Test 10: Maximum + Maximum + Carry
        -- 255 + 255 + 1 = 511
        -- Expected: Sum = 11111111, Cout = 1
        A <= "11111111";
        B <= "11111111";
        Cin <= '1';
        wait for 100 ns;

        -- End simulation
        wait;

    end process;

END;
