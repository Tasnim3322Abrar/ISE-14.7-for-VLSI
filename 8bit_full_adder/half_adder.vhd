library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        Sum   : out STD_LOGIC;
        Carry : out STD_LOGIC
    );
end half_adder;

architecture Structural of half_adder is

    -- XOR gate component
    component x_or_gate
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

    -- Sum = A XOR B
    XOR1: x_or_gate
        port map (
            A => A,
            B => B,
            Y => Sum
        );

    -- Carry = A AND B
    AND1: and_gate
        port map (
            A => A,
            B => B,
            Y => Carry
        );

end Structural;