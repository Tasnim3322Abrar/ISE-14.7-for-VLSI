
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_gate is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end nor_gate;

architecture Structural of nor_gate is

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
    signal N3 : STD_LOGIC;
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
	-- A OR B
    NAND3: nand_gate
        port map (
            A => N1,
            B => N2,
            Y => N3
        );

    -- NOT (A OR B) = NOR
    NAND4: nand_gate
        port map (
            A => N3,
            B => N3,
            Y => Y
        );

end Structural;


