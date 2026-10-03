library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_8bit is
    Port (
        A : in  STD_LOGIC_VECTOR(7 downto 0);
        B : in  STD_LOGIC_VECTOR(7 downto 0);
        S : in  STD_LOGIC;
        Y : out STD_LOGIC_VECTOR(7 downto 0)
    );
end mux_8bit;

architecture Structural of mux_8bit is
    component not_gate
        Port (
            A : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    component and_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    component or_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal S_NOT : STD_LOGIC;

    signal AND0 : STD_LOGIC;
    signal AND1 : STD_LOGIC;
    signal AND2 : STD_LOGIC;
    signal AND3 : STD_LOGIC;
    signal AND4 : STD_LOGIC;
    signal AND5 : STD_LOGIC;
    signal AND6 : STD_LOGIC;
    signal AND7 : STD_LOGIC;
    signal AND8  : STD_LOGIC;
    signal AND9  : STD_LOGIC;
    signal AND10 : STD_LOGIC;
    signal AND11 : STD_LOGIC;
    signal AND12 : STD_LOGIC;
    signal AND13 : STD_LOGIC;
    signal AND14 : STD_LOGIC;
    signal AND15 : STD_LOGIC;

begin
    -- NOT S
    NOT1: not_gate
        port map (
            A => S,
            Y => S_NOT
        );

    -- Bit 0
    AND0_0: and_gate
        port map (A => A(0), B => S_NOT, Y => AND0);

    AND0_1: and_gate
        port map (A => B(0), B => S, Y => AND8);

    OR0: or_gate
        port map (A => AND0, B => AND8, Y => Y(0));
    -- Bit 1
    AND1_0: and_gate
        port map (A => A(1), B => S_NOT, Y => AND1);

    AND1_1: and_gate
        port map (A => B(1), B => S, Y => AND9);

    OR1: or_gate
        port map (A => AND1, B => AND9, Y => Y(1));
    -- Bit 2
    AND2_0: and_gate
        port map (A => A(2), B => S_NOT, Y => AND2);

    AND2_1: and_gate
        port map (A => B(2), B => S, Y => AND10);

    OR2: or_gate
        port map (A => AND2, B => AND10, Y => Y(2));


    -- Bit 3
    AND3_0: and_gate
        port map (A => A(3), B => S_NOT, Y => AND3);

    AND3_1: and_gate
        port map (A => B(3), B => S, Y => AND11);

    OR3: or_gate
        port map (A => AND3, B => AND11, Y => Y(3));
    -- Bit 4
    AND4_0: and_gate
        port map (A => A(4), B => S_NOT, Y => AND4);

    AND4_1: and_gate
        port map (A => B(4), B => S, Y => AND12);

    OR4: or_gate
        port map (A => AND4, B => AND12, Y => Y(4));


    -- Bit 5
    AND5_0: and_gate
        port map (A => A(5), B => S_NOT, Y => AND5);

    AND5_1: and_gate
        port map (A => B(5), B => S, Y => AND13);

    OR5: or_gate
        port map (A => AND5, B => AND13, Y => Y(5));
    -- Bit 6
    AND6_0: and_gate
        port map (A => A(6), B => S_NOT, Y => AND6);

    AND6_1: and_gate
        port map (A => B(6), B => S, Y => AND14);

    OR6: or_gate
        port map (A => AND6, B => AND14, Y => Y(6));


    -- Bit 7
    AND7_0: and_gate
        port map (A => A(7), B => S_NOT, Y => AND7);

    AND7_1: and_gate
        port map (A => B(7), B => S, Y => AND15);

    OR7: or_gate
        port map (A => AND7, B => AND15, Y => Y(7));

end Structural;