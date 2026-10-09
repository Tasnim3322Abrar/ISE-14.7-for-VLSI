library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accumulator_8bit is
    Port (
        D     : in  STD_LOGIC_VECTOR(7 downto 0);
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(7 downto 0)
    );
end accumulator_8bit;
architecture Structural of accumulator_8bit is

    component full_adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR(7 downto 0);
            B    : in  STD_LOGIC_VECTOR(7 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR(7 downto 0);
            COUT : out STD_LOGIC
        );
    end component;
    component register_8bit
        Port (
            D     : in  STD_LOGIC_VECTOR(7 downto 0);
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            Q     : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    signal SUM_VALUE : STD_LOGIC_VECTOR(7 downto 0);
    signal ACC_VALUE : STD_LOGIC_VECTOR(7 downto 0);
    signal CARRY_OUT : STD_LOGIC;
begin

    ADDER: full_adder_8bit
        port map (
            A    => ACC_VALUE,
            B    => D,
            CIN  => '0',
            SUM  => SUM_VALUE,
            COUT => CARRY_OUT
        );

    ACC_REGISTER: register_8bit
        port map (
            D     => SUM_VALUE,
            CLK   => CLK,
            RESET => RESET,
            Q     => ACC_VALUE
        );

    Q <= ACC_VALUE;

end Structural;