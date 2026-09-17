library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Cin  : in  STD_LOGIC;
        Sum  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end full_adder;

architecture Structural of full_adder is

    -- Half Adder component
    component half_adder
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            Sum   : out STD_LOGIC;
            Carry : out STD_LOGIC
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
	 
	 -- Internal signals
    signal Sum1   : STD_LOGIC;
    signal Carry1 : STD_LOGIC;
    signal Carry2 : STD_LOGIC;
	 
begin

    -- First Half Adder
    HA1: half_adder
        port map (
            A     => A,
            B     => B,
            Sum   => Sum1,
            Carry => Carry1
        );

    -- Second Half Adder
    HA2: half_adder
        port map (
            A     => Sum1,
            B     => Cin,
            Sum   => Sum,
            Carry => Carry2
        );
		  
		  -- OR gate for final Carry
    OR1: or_gate
        port map (
            A => Carry1,
            B => Carry2,
            Y => Cout
        );

end Structural;