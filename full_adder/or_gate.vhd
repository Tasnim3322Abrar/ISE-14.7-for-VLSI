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

    -- Internal signals
    signal N1 : STD_LOGIC;
    signal N2 : STD_LOGIC;
	 
begin

    -- NOT A
    NAND1: nand_gate
        port map (
            A => A,
            B => A,
            Y => N1
        );

    -- NOT B
    NAND2: nand_gate
        port map (
            A => B,
            B => B,
            Y => N2
        );

    -- OR: Y = NOT(N1 AND N2)
    NAND3: nand_gate
        port map (
            A => N1,
            B => N2,
            Y => Y
        );

end Structural;