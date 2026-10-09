library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zero_flag is
    Port (
        A     : in  STD_LOGIC_VECTOR(7 downto 0);
        ZERO  : out STD_LOGIC
    );
end zero_flag;

architecture Structural of zero_flag is
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
    signal N0, N1, N2, N3 : STD_LOGIC;
    signal N4, N5, N6, N7 : STD_LOGIC;
    signal G1, G2, G3, G4 : STD_LOGIC;
    signal G5, G6 : STD_LOGIC;

begin
    -- Invert every input bit
    INV0: not_gate port map (A => A(0), Y => N0);
    INV1: not_gate port map (A => A(1), Y => N1);
    INV2: not_gate port map (A => A(2), Y => N2);
    INV3: not_gate port map (A => A(3), Y => N3);
    INV4: not_gate port map (A => A(4), Y => N4);
    INV5: not_gate port map (A => A(5), Y => N5);
    INV6: not_gate port map (A => A(6), Y => N6);
    INV7: not_gate port map (A => A(7), Y => N7);
    -- Combine the inverted bits
    AND1: and_gate port map (A => N0, B => N1, Y => G1);
    AND2: and_gate port map (A => N2, B => N3, Y => G2);
    AND3: and_gate port map (A => N4, B => N5, Y => G3);
    AND4: and_gate port map (A => N6, B => N7, Y => G4);

    AND5: and_gate port map (A => G1, B => G2, Y => G5);
    AND6: and_gate port map (A => G3, B => G4, Y => G6);

    AND7: and_gate port map (A => G5, B => G6, Y => ZERO);

end Structural;