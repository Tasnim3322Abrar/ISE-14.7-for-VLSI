LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DFlipFlop_TB IS
END DFlipFlop_TB;

ARCHITECTURE behavior OF DFlipFlop_TB IS 

    COMPONENT DFlipFlop
    PORT(
         D   : IN  std_logic;
         CLK : IN  std_logic;
         Q   : OUT std_logic
        );
    END COMPONENT;

    signal D   : std_logic := '0';
    signal CLK : std_logic := '0';
    signal Q   : std_logic;

    constant CLK_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test
    uut: DFlipFlop PORT MAP (
          D   => D,
          CLK => CLK,
          Q   => Q
        );

    -- Stimulus process
    stim_proc: process
    begin

        -- D = 0
        D <= '0';
        CLK <= '0';
        wait for 100 ns;

        CLK <= '1';
        wait for 100 ns;

        -- D = 1
        D <= '1';
        CLK <= '0';
        wait for 100 ns;

        CLK <= '1';
        wait for 100 ns;

        -- D = 0
        D <= '0';
        CLK <= '0';
        wait for 100 ns;

        CLK <= '1';
        wait for 100 ns;

        -- D = 1
        D <= '1';
        CLK <= '0';
        wait for 100 ns;

        CLK <= '1';
        wait for 5 ns;

        -- D = 0
        D <= '0';
        CLK <= '0';
        wait for 100 ns;

        CLK <= '1';
        wait for 100 ns;

        -- End simulation
        wait;

    end process;

END;