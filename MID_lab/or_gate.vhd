library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end or_gate;

architecture Structural of or_gate is

    -- NAND gate component
    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    -- Intermediate signals
    signal A_NOT : STD_LOGIC;
    signal B_NOT : STD_LOGIC;

begin

    -- NOT A using NAND
    NAND1: nand_gate
        port map (
            A => A,
            B => A,
            Y => A_NOT
        );

    -- NOT B using NAND
    NAND2: nand_gate
        port map (
            A => B,
            B => B,
            Y => B_NOT
        );
    -- OR operation using NAND
    NAND3: nand_gate
        port map (
            A => A_NOT,
            B => B_NOT,
            Y => Y
        );

end Structural;