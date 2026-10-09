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
         SEL : IN  std_logic;
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_8bit PORT MAP (
          A => A,
          B => B,
          SEL => SEL,
          Y => Y
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
        -- Test 1: SEL = 0, select A
        A <= "10101010";
        B <= "01010101";
        SEL <= '0';
        wait for 20 ns;

        -- Test 2: SEL = 1, select B
        SEL <= '1';
        wait for 20 ns;

        -- Test 3: Select A with different values
        A <= "11110000";
        B <= "00001111";
        SEL <= '0';
        wait for 20 ns;

        -- Test 4: Select B with different values
        SEL <= '1';
        wait for 20 ns;

        -- Test 5: Both inputs zero
        A <= "00000000";
        B <= "00000000";
        SEL <= '0';
        wait for 20 ns;

        -- Test 6: All bits set in both inputs
        A <= "11111111";
        B <= "11111111";
        SEL <= '1';
        wait for 20 ns;

        wait;
    end process;

END;
