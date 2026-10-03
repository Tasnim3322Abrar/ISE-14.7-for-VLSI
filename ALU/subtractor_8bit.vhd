library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor_8bit is
    Port (
        A    : in  STD_LOGIC_VECTOR(7 downto 0);
        B    : in  STD_LOGIC_VECTOR(7 downto 0);
        BIN  : in  STD_LOGIC;
        DIFF : out STD_LOGIC_VECTOR(7 downto 0);
        BOUT : out STD_LOGIC
    );
end subtractor_8bit;

architecture Structural of subtractor_8bit is
    -- 1-bit Full Subtractor component
    component subtractor
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            BIN  : in  STD_LOGIC;
            DIFF : out STD_LOGIC;
            BOUT : out STD_LOGIC
        );
    end component;

    -- Borrow signals
    signal B1 : STD_LOGIC;
    signal B2 : STD_LOGIC;
    signal B3 : STD_LOGIC;
    signal B4 : STD_LOGIC;
    signal B5 : STD_LOGIC;
    signal B6 : STD_LOGIC;
    signal B7 : STD_LOGIC;

begin
    -- Bit 0
    FS0: subtractor
        port map (
            A    => A(0),
            B    => B(0),
            BIN  => BIN,
            DIFF => DIFF(0),
            BOUT => B1
        );

    -- Bit 1
    FS1: subtractor
        port map (
            A    => A(1),
            B    => B(1),
            BIN  => B1,
            DIFF => DIFF(1),
            BOUT => B2
        );
    -- Bit 2
    FS2: subtractor
        port map (
            A    => A(2),
            B    => B(2),
            BIN  => B2,
            DIFF => DIFF(2),
            BOUT => B3
        );

    -- Bit 3
    FS3: subtractor
        port map (
            A    => A(3),
            B    => B(3),
            BIN  => B3,
            DIFF => DIFF(3),
            BOUT => B4
        );
    -- Bit 4
    FS4: subtractor
        port map (
            A    => A(4),
            B    => B(4),
            BIN  => B4,
            DIFF => DIFF(4),
            BOUT => B5
        );

    -- Bit 5
    FS5: subtractor
        port map (
            A    => A(5),
            B    => B(5),
            BIN  => B5,
            DIFF => DIFF(5),
            BOUT => B6
        );
    -- Bit 6
    FS6: subtractor
        port map (
            A    => A(6),
            B    => B(6),
            BIN  => B6,
            DIFF => DIFF(6),
            BOUT => B7
        );

    -- Bit 7
    FS7: subtractor
        port map (
            A    => A(7),
            B    => B(7),
            BIN  => B7,
            DIFF => DIFF(7),
            BOUT => BOUT
        );

end Structural;