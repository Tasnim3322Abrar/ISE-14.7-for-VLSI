library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_8bit is
    Port (
        A    : in  STD_LOGIC_VECTOR(7 downto 0);
        B    : in  STD_LOGIC_VECTOR(7 downto 0);
        CIN  : in  STD_LOGIC;
        SUM  : out STD_LOGIC_VECTOR(7 downto 0);
        COUT : out STD_LOGIC
    );
end full_adder_8bit;

architecture Structural of full_adder_8bit is
    -- Full Adder component
    component full_adder
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC;
            COUT : out STD_LOGIC
        );
    end component;

    -- Carry signals
    signal C1 : STD_LOGIC;
    signal C2 : STD_LOGIC;
    signal C3 : STD_LOGIC;
    signal C4 : STD_LOGIC;
    signal C5 : STD_LOGIC;
    signal C6 : STD_LOGIC;
    signal C7 : STD_LOGIC;
begin

    -- Bit 0
    FA0: full_adder
        port map (
            A    => A(0),
            B    => B(0),
            CIN  => CIN,
            SUM  => SUM(0),
            COUT => C1
        );

    -- Bit 1
    FA1: full_adder
        port map (
            A    => A(1),
            B    => B(1),
            CIN  => C1,
            SUM  => SUM(1),
            COUT => C2
        );
    -- Bit 2
    FA2: full_adder
        port map (
            A    => A(2),
            B    => B(2),
            CIN  => C2,
            SUM  => SUM(2),
            COUT => C3
        );

    -- Bit 3
    FA3: full_adder
        port map (
            A    => A(3),
            B    => B(3),
            CIN  => C3,
            SUM  => SUM(3),
            COUT => C4
        );
    -- Bit 4
    FA4: full_adder
        port map (
            A    => A(4),
            B    => B(4),
            CIN  => C4,
            SUM  => SUM(4),
            COUT => C5
        );

    -- Bit 5
    FA5: full_adder
        port map (
            A    => A(5),
            B    => B(5),
            CIN  => C5,
            SUM  => SUM(5),
            COUT => C6
        );
    -- Bit 6
    FA6: full_adder
        port map (
            A    => A(6),
            B    => B(6),
            CIN  => C6,
            SUM  => SUM(6),
            COUT => C7
        );

    -- Bit 7
    FA7: full_adder
        port map (
            A    => A(7),
            B    => B(7),
            CIN  => C7,
            SUM  => SUM(7),
            COUT => COUT
        );

end Structural;