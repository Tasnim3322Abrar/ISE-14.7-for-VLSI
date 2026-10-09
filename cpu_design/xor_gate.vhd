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
    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal nand1_out : STD_LOGIC;
    signal nand2_out : STD_LOGIC;
    signal nand3_out : STD_LOGIC;
begin
    NAND1: nand_gate
        port map (
            A => A,
            B => B,
            Y => nand1_out
        );

    NAND2: nand_gate
        port map (
            A => A,
            B => nand1_out,
            Y => nand2_out
        );
    NAND3: nand_gate
        port map (
            A => B,
            B => nand1_out,
            Y => nand3_out
        );

    NAND4: nand_gate
        port map (
            A => nand2_out,
            B => nand3_out,
            Y => Y
        );


end Structural;

