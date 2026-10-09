library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit_tb is
end control_unit_tb;

architecture Behavioral of control_unit_tb is

    component control_unit
        Port (
            CLK         : in  STD_LOGIC;
            RESET       : in  STD_LOGIC;
            INSTRUCTION : in  STD_LOGIC_VECTOR(11 downto 0);
            LOAD_EN     : out STD_LOGIC;
            ADD_EN      : out STD_LOGIC;
            NOT_EN      : out STD_LOGIC;
            SHL_EN      : out STD_LOGIC;
            JZ_EN       : out STD_LOGIC;
            PC_RESET    : out STD_LOGIC;
            PC_LOAD     : out STD_LOGIC
        );
    end component;
    signal CLK         : STD_LOGIC := '0';
    signal RESET       : STD_LOGIC := '0';
    signal INSTRUCTION : STD_LOGIC_VECTOR(11 downto 0) := x"000";

    signal LOAD_EN  : STD_LOGIC;
    signal ADD_EN   : STD_LOGIC;
    signal NOT_EN   : STD_LOGIC;
    signal SHL_EN   : STD_LOGIC;
    signal JZ_EN    : STD_LOGIC;
    signal PC_RESET : STD_LOGIC;
    signal PC_LOAD  : STD_LOGIC;

    constant CLK_PERIOD : time := 20 ns;
begin

    UUT: control_unit
        port map (
            CLK         => CLK,
            RESET       => RESET,
            INSTRUCTION => INSTRUCTION,
            LOAD_EN     => LOAD_EN,
            ADD_EN      => ADD_EN,
            NOT_EN      => NOT_EN,
            SHL_EN      => SHL_EN,
            JZ_EN       => JZ_EN,
            PC_RESET    => PC_RESET,
            PC_LOAD     => PC_LOAD
        );
    CLK_PROCESS: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    STIMULUS: process
    begin
        -- Test RESET
        RESET <= '1';
        INSTRUCTION <= x"000";
        wait until rising_edge(CLK);
        wait for 1 ns;

        assert PC_RESET = '1'
            report "RESET test failed"
            severity error;

        RESET <= '0';
        -- Test LOAD instruction
        INSTRUCTION <= x"1FF";
        wait until rising_edge(CLK);
        wait for 1 ns;

        assert LOAD_EN = '1' and ADD_EN = '0'
            report "LOAD instruction test failed"
            severity error;

        -- Test ADD instruction
        INSTRUCTION <= x"277";
        wait until rising_edge(CLK);
        wait for 1 ns;
        assert ADD_EN = '1' and LOAD_EN = '0'
            report "ADD instruction test failed"
            severity error;

        -- Test NOT instruction
        INSTRUCTION <= x"700";
        wait until rising_edge(CLK);
        wait for 1 ns;

        assert NOT_EN = '1'
            report "NOT instruction test failed"
            severity error;
        -- Test SHL instruction
        INSTRUCTION <= x"800";
        wait until rising_edge(CLK);
        wait for 1 ns;

        assert SHL_EN = '1'
            report "SHL instruction test failed"
            severity error;

        -- Test JZ instruction
        INSTRUCTION <= x"C05";
        wait until rising_edge(CLK);
        wait for 1 ns;
        assert JZ_EN = '1' and PC_LOAD = '1'
            report "JZ instruction test failed"
            severity error;

        -- Test NOP instruction
        INSTRUCTION <= x"000";
        wait until rising_edge(CLK);
        wait for 1 ns;
        assert LOAD_EN = '0' and
               ADD_EN  = '0' and
               NOT_EN  = '0' and
               SHL_EN  = '0' and
               JZ_EN   = '0' and
               PC_LOAD = '0'
            report "Invalid/NOP instruction test failed"
            severity error;

        report "Control unit test completed successfully."
            severity note;

        wait;
    end process;

end Behavioral;