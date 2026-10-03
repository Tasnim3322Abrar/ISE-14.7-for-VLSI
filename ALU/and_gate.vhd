library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end and_gate;

architecture Structural of and_gate is

    -- NAND gate component
    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    -- Intermediate signal
    signal X : STD_LOGIC;

begin

    -- First NAND gate
    NAND1: nand_gate
        port map (
            A => A,
            B => B,
            Y => X
        );

    -- Second NAND gate works as NOT gate
    NAND2: nand_gate
        port map (
            A => X,
            B => X,
            Y => Y
        );

end Structural;