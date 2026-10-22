LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cpu_top_tb IS
END cpu_top_tb;

ARCHITECTURE behavior OF cpu_top_tb IS

    COMPONENT cpu_top
        PORT (
            CLK   : IN  std_logic;
            RESET : IN  std_logic;
            Q     : OUT std_logic_vector(7 downto 0);
            Z     : OUT std_logic;
            PC    : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    -- Inputs
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '0';

    -- Outputs
    signal Q  : std_logic_vector(7 downto 0);
    signal Z  : std_logic;
    signal PC : std_logic_vector(3 downto 0);

    constant CLK_PERIOD : time := 20 ns;

BEGIN
    -- Instantiate the CPU
    uut : cpu_top
        PORT MAP (
            CLK   => CLK,
            RESET => RESET,
            Q     => Q,
            Z     => Z,
            PC    => PC
        );

    -- Clock generation: 20 ns period
    clk_process : process
    begin
        CLK <= '0';
        wait for CLK_PERIOD / 2;
        CLK <= '1';
        wait for CLK_PERIOD / 2;
    end process;
    -- Set 9 test sequence
    stim_proc : process
    begin
        -- Apply synchronous reset
        RESET <= '1';
        wait for CLK_PERIOD;
        wait for 1 ns;

        assert Q = x"00" and Z = '1' and PC = "0000"
            report "FAIL: Reset state"
            severity error;

        RESET <= '0';
        -- Instruction 0: LDI FF
        wait for CLK_PERIOD;
        wait for 1 ns;

        assert Q = x"FF" and Z = '0' and PC = "0001"
            report "FAIL: LDI FF"
            severity error;

        -- Instruction 1: NOT
        wait for CLK_PERIOD;
        wait for 1 ns;
        assert Q = x"00" and Z = '1' and PC = "0010"
            report "FAIL: NOT"
            severity error;

        -- Instruction 2: JZ 05 (taken)
        wait for CLK_PERIOD;
        wait for 1 ns;

        assert Q = x"00" and Z = '1' and PC = "0101"
            report "FAIL: JZ 05"
            severity error;
        -- Instruction 5: ADD 11
        wait for CLK_PERIOD;
        wait for 1 ns;

        assert Q = x"11" and Z = '0' and PC = "0110"
            report "FAIL: ADD 11"
            severity error;

        -- Instruction 6: SHL
        wait for CLK_PERIOD;
        wait for 1 ns;
        assert Q = x"22" and Z = '0' and PC = "0111"
            report "FAIL: SHL at address 6"
            severity error;

        -- Instruction 7: JZ 00 (not taken)
        wait for CLK_PERIOD;
        wait for 1 ns;

        assert Q = x"22" and Z = '0' and PC = "1000"
            report "FAIL: JZ 00 not taken"
            severity error;
        -- Instruction 8: SHL
        wait for CLK_PERIOD;
        wait for 1 ns;

        assert Q = x"44" and Z = '0' and PC = "1001"
            report "FAIL: SHL at address 8"
            severity error;

        report "Set 9 CPU testbench completed."
            severity note;

        wait;
    end process;

END behavior;