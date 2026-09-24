library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flip_flop is
    Port (
        D   : in STD_LOGIC;
        CLK : in STD_LOGIC;
        Q   : out STD_LOGIC
    );
end flip_flop;

architecture Structural of flip_flop is

    component nand_gate
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal D_NOT : STD_LOGIC;
    signal S     : STD_LOGIC;
    signal R     : STD_LOGIC;
    signal Q_INT : STD_LOGIC;
    signal QB_INT : STD_LOGIC;
	 
begin

    NAND1: nand_gate
        port map (
            A => D,
            B => D,
            Y => D_NOT
        );

    NAND2: nand_gate
        port map (
            A => D,
            B => CLK,
            Y => S
        );

    NAND3: nand_gate
        port map (
            A => D_NOT,
            B => CLK,
            Y => R
        );
		  
	 NAND4: nand_gate
        port map (
            A => S,
            B => QB_INT,
            Y => Q_INT
        );

    NAND5: nand_gate
        port map (
            A => R,
            B => Q_INT,
            Y => QB_INT
        );

    Q <= Q_INT;

end Structural;