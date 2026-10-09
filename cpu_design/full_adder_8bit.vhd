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

    component full_adder
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC;
            COUT : out STD_LOGIC
        );
    end component;

    signal C : STD_LOGIC_VECTOR(8 downto 0);
begin

    C(0) <= CIN;

    FA0: full_adder
        port map (
            A    => A(0),
            B    => B(0),
            CIN  => C(0),
            SUM  => SUM(0),
            COUT => C(1)
        );

    FA1: full_adder
        port map (
            A    => A(1),
            B    => B(1),
            CIN  => C(1),
            SUM  => SUM(1),
            COUT => C(2)
        );
    FA2: full_adder
        port map (
            A    => A(2),
            B    => B(2),
            CIN  => C(2),
            SUM  => SUM(2),
            COUT => C(3)
        );

    FA3: full_adder
        port map (
            A    => A(3),
            B    => B(3),
            CIN  => C(3),
            SUM  => SUM(3),
            COUT => C(4)
        );
    FA4: full_adder
        port map (
            A    => A(4),
            B    => B(4),
            CIN  => C(4),
            SUM  => SUM(4),
            COUT => C(5)
        );

    FA5: full_adder
        port map (
            A    => A(5),
            B    => B(5),
            CIN  => C(5),
            SUM  => SUM(5),
            COUT => C(6)
        );
    FA6: full_adder
        port map (
            A    => A(6),
            B    => B(6),
            CIN  => C(6),
            SUM  => SUM(6),
            COUT => C(7)
        );

    FA7: full_adder
        port map (
            A    => A(7),
            B    => B(7),
            CIN  => C(7),
            SUM  => SUM(7),
            COUT => C(8)
        );

    COUT <= C(8);

end Structural;