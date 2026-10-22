library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accumulator is
    Port (
        D     : in  STD_LOGIC_VECTOR(7 downto 0);
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(7 downto 0)
    );
end accumulator;
architecture Structural of accumulator is
begin

    ACC_REGISTER : entity work.register_8bit
        port map (
            D     => D,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q
        );

end Structural;