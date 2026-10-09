library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_8bit is
    Port (
        A   : in  STD_LOGIC_VECTOR(7 downto 0);
        B   : in  STD_LOGIC_VECTOR(7 downto 0);
        SEL : in  STD_LOGIC;
        Y   : out STD_LOGIC_VECTOR(7 downto 0)
    );
end mux_8bit;
architecture Structural of mux_8bit is

    component not_gate
        Port (
            A : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    component and_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    component or_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal NOT_SEL : STD_LOGIC;
    signal AND_A   : STD_LOGIC_VECTOR(7 downto 0);
    signal AND_B   : STD_LOGIC_VECTOR(7 downto 0);

begin
    INV1: not_gate
        port map (
            A => SEL,
            Y => NOT_SEL
        );

    GEN_MUX: for i in 0 to 7 generate

        AND1: and_gate
            port map (
                A => A(i),
                B => NOT_SEL,
                Y => AND_A(i)
            );
        AND2: and_gate
            port map (
                A => B(i),
                B => SEL,
                Y => AND_B(i)
            );

        OR1: or_gate
            port map (
                A => AND_A(i),
                B => AND_B(i),
                Y => Y(i)
            );

    end generate GEN_MUX;

end Structural;