library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        CIN  : in  STD_LOGIC;
        SUM  : out STD_LOGIC;
        COUT : out STD_LOGIC
    );
end full_adder;

architecture Structural of full_adder is
    -- Half Adder component
    component half_adder
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            SUM   : out STD_LOGIC;
            CARRY : out STD_LOGIC
        );
    end component;

    -- OR gate component
    component or_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    -- Intermediate signals
    signal SUM1   : STD_LOGIC;
    signal CARRY1 : STD_LOGIC;
    signal CARRY2 : STD_LOGIC;

begin

    -- First Half Adder
    HA1: half_adder
        port map (
            A     => A,
            B     => B,
            SUM   => SUM1,
            CARRY => CARRY1
        );
    -- Second Half Adder
    HA2: half_adder
        port map (
            A     => SUM1,
            B     => CIN,
            SUM   => SUM,
            CARRY => CARRY2
        );

    -- Final Carry
    OR1: or_gate
        port map (
            A => CARRY1,
            B => CARRY2,
            Y => COUT
        );

end Structural;