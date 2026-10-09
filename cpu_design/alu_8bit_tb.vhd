LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY alu_8bit_tb IS
END alu_8bit_tb;
 
ARCHITECTURE behavior OF alu_8bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_8bit
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         OP : IN  std_logic;
         RESULT : OUT  std_logic_vector(7 downto 0);
         COUT : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal OP : std_logic := '0';

 	--Outputs
   signal RESULT : std_logic_vector(7 downto 0);
   signal COUT : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_8bit PORT MAP (
          A => A,
          B => B,
          OP => OP,
          RESULT => RESULT,
          COUT => COUT
        );

   -- Stimulus process
   stim_proc: process
   begin		
        -- Test 1: Addition 10 + 20 = 30
        A <= "00001010";
        B <= "00010100";
        OP <= '0';
        wait for 20 ns;

        -- Test 2: Addition 255 + 1 = 256
        A <= "11111111";
        B <= "00000001";
        OP <= '0';
        wait for 20 ns;

        -- Test 3: Addition 100 + 50 = 150
        A <= "01100100";
        B <= "00110010";
        OP <= '0';
        wait for 20 ns;

        -- Test 4: Subtraction 20 - 10 = 10
        A <= "00010100";
        B <= "00001010";
        OP <= '1';
        wait for 20 ns;

        -- Test 5: Subtraction 5 - 9 = -4
        -- 8-bit result is 252 (11111100)
        A <= "00000101";
        B <= "00001001";
        OP <= '1';
        wait for 20 ns;

        -- Test 6: Subtraction 9 - 9 = 0
        A <= "00001001";
        B <= "00001001";
        OP <= '1';
        wait for 20 ns;

        -- Test 7: Subtraction 0 - 1 = -1
        -- 8-bit result is 255 (11111111)
        A <= "00000000";
        B <= "00000001";
        OP <= '1';
        wait for 20 ns;

        wait;
    end process;

END;
