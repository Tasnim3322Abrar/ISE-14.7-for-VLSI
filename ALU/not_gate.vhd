library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
    Port (
        A : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end not_gate;

architecture Structural of not_gate is
    -- NAND gate component
    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

begin

    -- NOT gate using NAND
    NAND1: nand_gate
        port map (
            A => A,
            B => A,
            Y => Y
        );

end Structural;