library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_latch is
    Port (
        D  : in  STD_LOGIC;
        EN : in  STD_LOGIC;
        Q  : out STD_LOGIC
    );
end d_latch;
architecture Structural of d_latch is

    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    component not_gate
        Port (
            A : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal D_NOT : STD_LOGIC;
    signal S_N   : STD_LOGIC;
    signal R_N   : STD_LOGIC;
    signal Q_INT : STD_LOGIC;
    signal QN_INT : STD_LOGIC;
begin

    -- Invert D
    INV_D : not_gate
        port map (
            A => D,
            Y => D_NOT
        );
    -- NAND-based input gating
    NAND_S : nand_gate
        port map (
            A => D,
            B => EN,
            Y => S_N
        );

    NAND_R : nand_gate
        port map (
            A => D_NOT,
            B => EN,
            Y => R_N
        );
    -- Cross-coupled NAND latch
    NAND_Q : nand_gate
        port map (
            A => S_N,
            B => QN_INT,
            Y => Q_INT
        );

    NAND_QN : nand_gate
        port map (
            A => R_N,
            B => Q_INT,
            Y => QN_INT
        );

    Q <= Q_INT;

end Structural;