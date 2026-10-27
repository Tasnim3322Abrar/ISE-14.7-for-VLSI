library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFlipFlop is
    Port (
        D   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q   : out STD_LOGIC
    );
end DFlipFlop;

architecture Behavioral of DFlipFlop is

begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            Q <= D;
        end if;
    end process;

end Behavioral;