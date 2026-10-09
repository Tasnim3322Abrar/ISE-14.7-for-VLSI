LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY full_adder_8bit_tb IS
END full_adder_8bit_tb;
 
ARCHITECTURE behavior OF full_adder_8bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_8bit
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         CIN : IN  std_logic;
         SUM : OUT  std_logic_vector(7 downto 0);
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal CIN : std_logic := '0';

 	--Outputs
   signal SUM : std_logic_vector(7 downto 0);
   signal COUT : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_8bit PORT MAP (
          A => A,
          B => B,
          CIN => CIN,
          SUM => SUM,
          COUT => COUT
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
        -- Test 1: 10 + 20 = 30
        A <= "00001010";
        B <= "00010100";
        CIN <= '0';
        wait for 20 ns;

        -- Test 2: 100 + 50 = 150
        A <= "01100100";
        B <= "00110010";
        CIN <= '0';
        wait for 20 ns;

        -- Test 3: 255 + 1 = 256
        A <= "11111111";
        B <= "00000001";
        CIN <= '0';
        wait for 20 ns;

        -- Test 4: 255 + 255 = 510
        A <= "11111111";
        B <= "11111111";
        CIN <= '0';
        wait for 20 ns;

        -- Test 5: 5 + 7 + carry-in 1 = 13
        A <= "00000101";
        B <= "00000111";
        CIN <= '1';
        wait for 20 ns;

        wait;
    end process;

END;
