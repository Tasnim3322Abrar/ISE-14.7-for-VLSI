library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_8bit is
    Port (
        D     : in  STD_LOGIC_VECTOR(7 downto 0);
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(7 downto 0)
    );
end register_8bit;

architecture Behavioral of register_8bit is

    signal REG_DATA : STD_LOGIC_VECTOR(7 downto 0)
        := (others => '0');
begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                REG_DATA <= (others => '0');
            else
                REG_DATA <= D;
            end if;
        end if;
    end process;

    Q <= REG_DATA;

end Behavioral;