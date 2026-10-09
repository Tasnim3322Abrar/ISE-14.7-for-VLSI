library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_8bit_tb is
end register_8bit_tb;

architecture Behavioral of register_8bit_tb is

    component register_8bit
        Port (
            D     : in  STD_LOGIC_VECTOR(7 downto 0);
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            Q     : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    signal D     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal CLK   : STD_LOGIC := '0';
    signal RESET : STD_LOGIC := '0';
    signal Q     : STD_LOGIC_VECTOR(7 downto 0);

begin

    UUT: register_8bit
        port map (
            D     => D,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q
        );
    -- Clock period = 20 ns
    clock_process: process
    begin
        while true loop
            CLK <= '0';
            wait for 10 ns;
            CLK <= '1';
            wait for 10 ns;
        end loop;
    end process;

    stim_proc: process
    begin
        -- Test 1: Apply reset
        RESET <= '1';
        D <= "10101010";
        wait for 20 ns;
        -- Test 2: Store first data value
        RESET <= '0';
        D <= "10101010";
        wait for 20 ns;

        -- Test 3: Change input and store new value
        D <= "11110000";
        wait for 20 ns;

        -- Test 4: Verify data retention
        D <= "00001111";
        wait for 5 ns;
        -- Q should still hold 11110000 until next rising edge
        wait for 15 ns;
        -- Test 5: Reset the register again
        RESET <= '1';
        wait for 20 ns;

        -- Test 6: Store zero
        RESET <= '0';
        D <= "00000000";
        wait for 20 ns;

        wait;
    end process;

end Behavioral;