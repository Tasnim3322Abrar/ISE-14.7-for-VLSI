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
    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
	 signal not_A : STD_LOGIC;
    signal not_B : STD_LOGIC;

begin
    NAND1: nand_gate
        port map (
            A => A,
            B => A,
            Y => not_A
        );

    NAND2: nand_gate
        port map (
            A => B,
            B => B,
            Y => not_B
        );

    NAND3: nand_gate
        port map (
            A => not_A,
            B => not_B,
            Y => Y
        );

end Structural;

