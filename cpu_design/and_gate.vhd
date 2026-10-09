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

    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal nand_out : STD_LOGIC;

begin

    NAND1: nand_gate
        port map (
            A => A,
            B => B,
            Y => nand_out
        );

    NAND2: nand_gate
        port map (
            A => nand_out,
            B => nand_out,
            Y => Y
        );


end Structural;

