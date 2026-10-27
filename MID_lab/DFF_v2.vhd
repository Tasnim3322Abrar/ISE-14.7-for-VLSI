library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF_v2 is
    Port (
        D     : in  STD_LOGIC;
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC
    );
end DFF_v2;

architecture Behavioral of DFF_v2 is

begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                Q <= '0';
            else
                Q <= D;
            end if;
        end if;
    end process;

end Behavioral;