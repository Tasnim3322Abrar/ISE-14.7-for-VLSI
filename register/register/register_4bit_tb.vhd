LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY register_4bit_tb IS
END register_4bit_tb;

ARCHITECTURE behavior OF register_4bit_tb IS

    COMPONENT register_4bit
    PORT(
        D   : IN  std_logic_vector(3 downto 0);
        CLK : IN  std_logic;
        Q   : OUT std_logic_vector(3 downto 0)
    );
    END COMPONENT;

    signal D   : std_logic_vector(3 downto 0) := "0000";
    signal CLK : std_logic := '0';
    signal Q   : std_logic_vector(3 downto 0);

    constant CLK_period : time := 10 ns;
	 
BEGIN

    uut: register_4bit PORT MAP (
        D   => D,
        CLK => CLK,
        Q   => Q
    );

    CLK_process: process
    begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
    end process;

    stim_proc: process
    begin
	 
        D <= "0000";
        wait for CLK_period;

        D <= "0001";
        wait for CLK_period;

        D <= "0011";
        wait for CLK_period;

        D <= "0101";
        wait for CLK_period;

        D <= "1010";
        wait for CLK_period;

        D <= "1111";
        wait for CLK_period;

        D <= "1001";
        wait for CLK_period;
        D <= "0110";
        wait for CLK_period;

        wait;

    end process;

END behavior;