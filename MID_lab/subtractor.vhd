library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor is
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        BIN  : in  STD_LOGIC;
        DIFF : out STD_LOGIC;
        BOUT : out STD_LOGIC
    );
end subtractor;

architecture Structural of subtractor is
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
    -- OR gate component
    component or_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    -- NOT gate component
    component not_gate
        Port (
            A : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    -- Intermediate signals
    signal X1    : STD_LOGIC;
    signal A_NOT : STD_LOGIC;
    signal X1_NOT : STD_LOGIC;
    signal B1    : STD_LOGIC;
    signal B2    : STD_LOGIC;

begin

    -- X1 = A XOR B
    XOR1: xor_gate
        port map (
            A => A,
            B => B,
            Y => X1
        );
    -- DIFF = X1 XOR BIN
    XOR2: xor_gate
        port map (
            A => X1,
            B => BIN,
            Y => DIFF
        );

    -- A_NOT = NOT A
    NOT1: not_gate
        port map (
            A => A,
            Y => A_NOT
        );

    -- B1 = NOT(A) AND B
    AND1: and_gate
        port map (
            A => A_NOT,
            B => B,
            Y => B1
        );
    -- X1_NOT = NOT(A XOR B)
    NOT2: not_gate
        port map (
            A => X1,
            Y => X1_NOT
        );

    -- B2 = NOT(A XOR B) AND BIN
    AND2: and_gate
        port map (
            A => X1_NOT,
            B => BIN,
            Y => B2
        );

    -- BOUT = B1 OR B2
    OR1: or_gate
        port map (
            A => B1,
            B => B2,
            Y => BOUT
        );

end Structural;