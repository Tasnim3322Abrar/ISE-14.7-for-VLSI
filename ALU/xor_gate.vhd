library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end xor_gate;

architecture Structural of xor_gate is

    -- NAND gate component
    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    -- Intermediate signals
    signal X1 : STD_LOGIC;
    signal X2 : STD_LOGIC;
    signal X3 : STD_LOGIC;

begin

    -- First NAND gate
    NAND1: nand_gate
        port map (
            A => A,
            B => B,
            Y => X1
        );

    -- Second NAND gate
    NAND2: nand_gate
        port map (
            A => A,
            B => X1,
            Y => X2
        );
    -- Third NAND gate
    NAND3: nand_gate
        port map (
            A => B,
            B => X1,
            Y => X3
        );

    -- Fourth NAND gate
    NAND4: nand_gate
        port map (
            A => X2,
            B => X3,
            Y => Y
        );

end Structural;