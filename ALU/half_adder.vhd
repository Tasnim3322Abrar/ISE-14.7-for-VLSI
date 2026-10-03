library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        SUM   : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end half_adder;

architecture Structural of half_adder is
    -- XOR gate component
    component xor_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    -- AND gate component
    component and_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
begin

    -- SUM = A XOR B
    XOR1: xor_gate
        port map (
            A => A,
            B => B,
            Y => SUM
        );

    -- CARRY = A AND B
    AND1: and_gate
        port map (
            A => A,
            B => B,
            Y => CARRY
        );

end Structural;