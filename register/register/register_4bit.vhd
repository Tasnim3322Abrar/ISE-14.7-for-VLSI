library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_4bit is
    Port (
        D   : in STD_LOGIC_VECTOR(3 downto 0);
        CLK : in STD_LOGIC;
        Q   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end register_4bit;

architecture Structural of register_4bit is

    component flip_flop
        Port (
            D   : in STD_LOGIC;
            CLK : in STD_LOGIC;
            Q   : out STD_LOGIC
        );
    end component;
	 
begin

    FF0: flip_flop
        port map (
            D   => D(0),
            CLK => CLK,
            Q   => Q(0)
        );

    FF1: flip_flop
        port map (
            D   => D(1),
            CLK => CLK,
            Q   => Q(1)
        );
		  
    FF2: flip_flop
        port map (
            D   => D(2),
            CLK => CLK,
            Q   => Q(2)
        );

    FF3: flip_flop
        port map (
            D   => D(3),
            CLK => CLK,
            Q   => Q(3)
        );

end Structural;