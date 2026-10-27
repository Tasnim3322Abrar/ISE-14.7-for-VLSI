library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accumulator_8bit is
    Port (
        A0    : in  STD_LOGIC;
        A1    : in  STD_LOGIC;
        A2    : in  STD_LOGIC;
        A3    : in  STD_LOGIC;
        A4    : in  STD_LOGIC;
        A5    : in  STD_LOGIC;
        A6    : in  STD_LOGIC;
        A7    : in  STD_LOGIC;

        B0    : in  STD_LOGIC;
        B1    : in  STD_LOGIC;
        B2    : in  STD_LOGIC;
        B3    : in  STD_LOGIC;
        B4    : in  STD_LOGIC;
        B5    : in  STD_LOGIC;
        B6    : in  STD_LOGIC;
        B7    : in  STD_LOGIC;

        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;

        Q0    : out STD_LOGIC;
        Q1    : out STD_LOGIC;
        Q2    : out STD_LOGIC;
        Q3    : out STD_LOGIC;
        Q4    : out STD_LOGIC;
        Q5    : out STD_LOGIC;
        Q6    : out STD_LOGIC;
        Q7    : out STD_LOGIC
    );
end accumulator_8bit;


architecture Behavioral of accumulator_8bit is

    -- 8-bit Full Adder
    component full_adder_8bit_v2
        Port (
            A0   : in  STD_LOGIC;
            A1   : in  STD_LOGIC;
            A2   : in  STD_LOGIC;
            A3   : in  STD_LOGIC;
            A4   : in  STD_LOGIC;
            A5   : in  STD_LOGIC;
            A6   : in  STD_LOGIC;
            A7   : in  STD_LOGIC;

            B0   : in  STD_LOGIC;
            B1   : in  STD_LOGIC;
            B2   : in  STD_LOGIC;
            B3   : in  STD_LOGIC;
            B4   : in  STD_LOGIC;
            B5   : in  STD_LOGIC;
            B6   : in  STD_LOGIC;
            B7   : in  STD_LOGIC;

            CIN  : in  STD_LOGIC;

            S0   : out STD_LOGIC;
            S1   : out STD_LOGIC;
            S2   : out STD_LOGIC;
            S3   : out STD_LOGIC;
            S4   : out STD_LOGIC;
            S5   : out STD_LOGIC;
            S6   : out STD_LOGIC;
            S7   : out STD_LOGIC;

            COUT : out STD_LOGIC
        );
    end component;


    -- 8-bit Register
    component reg_8bit_v2
        Port (
            D0    : in  STD_LOGIC;
            D1    : in  STD_LOGIC;
            D2    : in  STD_LOGIC;
            D3    : in  STD_LOGIC;
            D4    : in  STD_LOGIC;
            D5    : in  STD_LOGIC;
            D6    : in  STD_LOGIC;
            D7    : in  STD_LOGIC;

            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;

            Q0    : out STD_LOGIC;
            Q1    : out STD_LOGIC;
            Q2    : out STD_LOGIC;
            Q3    : out STD_LOGIC;
            Q4    : out STD_LOGIC;
            Q5    : out STD_LOGIC;
            Q6    : out STD_LOGIC;
            Q7    : out STD_LOGIC
        );
    end component;


    -- Adder output signals
    signal S0 : STD_LOGIC;
    signal S1 : STD_LOGIC;
    signal S2 : STD_LOGIC;
    signal S3 : STD_LOGIC;
    signal S4 : STD_LOGIC;
    signal S5 : STD_LOGIC;
    signal S6 : STD_LOGIC;
    signal S7 : STD_LOGIC;

    signal COUT : STD_LOGIC;


begin

    -- 8-bit Adder
    ADDER: full_adder_8bit_v2
        port map (
            A0   => A0,
            A1   => A1,
            A2   => A2,
            A3   => A3,
            A4   => A4,
            A5   => A5,
            A6   => A6,
            A7   => A7,

            B0   => B0,
            B1   => B1,
            B2   => B2,
            B3   => B3,
            B4   => B4,
            B5   => B5,
            B6   => B6,
            B7   => B7,

            CIN  => '0',

            S0   => S0,
            S1   => S1,
            S2   => S2,
            S3   => S3,
            S4   => S4,
            S5   => S5,
            S6   => S6,
            S7   => S7,

            COUT => COUT
        );


    -- 8-bit Register
    REGISTER8: reg_8bit_v2
        port map (
            D0    => S0,
            D1    => S1,
            D2    => S2,
            D3    => S3,
            D4    => S4,
            D5    => S5,
            D6    => S6,
            D7    => S7,

            CLK   => CLK,
            RESET => RESET,

            Q0    => Q0,
            Q1    => Q1,
            Q2    => Q2,
            Q3    => Q3,
            Q4    => Q4,
            Q5    => Q5,
            Q6    => Q6,
            Q7    => Q7
        );

end Behavioral;