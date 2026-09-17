
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x_or_gate is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end x_or_gate;

architecture Structural of x_or_gate is

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

    -- NAND1: N1 = A NAND B
    NAND1: nand_gate
        port map (
            A => A,
            B => B,
            Y => N1
        );

    -- NAND2: N2 = A NAND N1
    NAND2: nand_gate
        port map (
            A => A,
            B => N1,
            Y => N2
        );
		  
	 -- NAND3: N3 = B NAND N1
    NAND3: nand_gate
        port map (
            A => B,
            B => N1,
            Y => N3
        );

    -- NAND4: Y = N2 NAND N3
    NAND4: nand_gate
        port map (
            A => N2,
            B => N3,
            Y => Y
        );

end Structural;

