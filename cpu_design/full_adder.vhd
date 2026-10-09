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
    component half_adder
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            SUM   : out STD_LOGIC;
            CARRY : out STD_LOGIC
        );
    end component;

    component or_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal sum1  : STD_LOGIC;
    signal carry1 : STD_LOGIC;
    signal carry2 : STD_LOGIC;

begin
    HA1: half_adder
        port map (
            A     => A,
            B     => B,
            SUM   => sum1,
            CARRY => carry1
        );

    HA2: half_adder
        port map (
            A     => sum1,
            B     => CIN,
            SUM   => SUM,
            CARRY => carry2
        );

    OR1: or_gate
        port map (
            A => carry1,
            B => carry2,
            Y => COUT
        );

end Structural;

