----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    09:38:36 09/19/2026
-- Design Name:
-- Module Name:    full_adder_8bit - Structural
-- Project Name:
-- Target Devices:
-- Tool versions:
-- Description:    8-bit Ripple Carry Full Adder
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_8bit is
    Port (
        A    : in  STD_LOGIC_VECTOR(7 downto 0);
        B    : in  STD_LOGIC_VECTOR(7 downto 0);
        Cin  : in  STD_LOGIC;

        Sum  : out STD_LOGIC_VECTOR(7 downto 0);
        Cout : out STD_LOGIC
    );
end full_adder_8bit;

architecture Structural of full_adder_8bit is

    component full_adder
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Cin  : in  STD_LOGIC;
            Sum  : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

    -- Internal carry signals
    signal C : STD_LOGIC_VECTOR(8 downto 0);

begin

    -- Initial carry input
    C(0) <= Cin;

    -- Bit 0
    FA0: full_adder
        port map (
            A    => A(0),
            B    => B(0),
            Cin  => C(0),
            Sum  => Sum(0),
            Cout => C(1)
        );

    -- Bit 1
    FA1: full_adder
        port map (
            A    => A(1),
            B    => B(1),
            Cin  => C(1),
            Sum  => Sum(1),
            Cout => C(2)
        );
		  
		  -- Bit 2
    FA2: full_adder
        port map (
            A    => A(2),
            B    => B(2),
            Cin  => C(2),
            Sum  => Sum(2),
            Cout => C(3)
        );

    -- Bit 3
    FA3: full_adder
        port map (
            A    => A(3),
            B    => B(3),
            Cin  => C(3),
            Sum  => Sum(3),
            Cout => C(4)
        );
		  
		  -- Bit 4
    FA4: full_adder
        port map (
            A    => A(4),
            B    => B(4),
            Cin  => C(4),
            Sum  => Sum(4),
            Cout => C(5)
        );

    -- Bit 5
    FA5: full_adder
        port map (
            A    => A(5),
            B    => B(5),
            Cin  => C(5),
            Sum  => Sum(5),
            Cout => C(6)
        );
		  
		  -- Bit 6
    FA6: full_adder
        port map (
            A    => A(6),
            B    => B(6),
            Cin  => C(6),
            Sum  => Sum(6),
            Cout => C(7)
        );

    -- Bit 7
    FA7: full_adder
        port map (
            A    => A(7),
            B    => B(7),
            Cin  => C(7),
            Sum  => Sum(7),
            Cout => C(8)
        );

    -- Final carry output
    Cout <= C(8);

end Structural;
