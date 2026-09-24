library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_8bit is
    Port (
        D   : in  STD_LOGIC_VECTOR(7 downto 0);
        CLK : in  STD_LOGIC;
        Q   : out STD_LOGIC_VECTOR(7 downto 0)
    );
end register_8bit;

architecture Structural of register_8bit is

    component register_4bit
        Port (
            D   : in  STD_LOGIC_VECTOR(3 downto 0);
            CLK : in  STD_LOGIC;
            Q   : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;
	 
begin

    REG_LOW: register_4bit
        port map (
            D   => D(3 downto 0),
            CLK => CLK,
            Q   => Q(3 downto 0)
        );

    REG_HIGH: register_4bit
        port map (
            D   => D(7 downto 4),
            CLK => CLK,
            Q   => Q(7 downto 4)
        );

end Structural;