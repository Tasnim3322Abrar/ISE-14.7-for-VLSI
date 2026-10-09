library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
    Port (
        CLK         : in  STD_LOGIC;
        RESET       : in  STD_LOGIC;
        INSTRUCTION : in  STD_LOGIC_VECTOR(11 downto 0);

        LOAD_EN     : out STD_LOGIC;
        ADD_EN      : out STD_LOGIC;
        NOT_EN      : out STD_LOGIC;
        SHL_EN      : out STD_LOGIC;
        JZ_EN       : out STD_LOGIC;
        PC_RESET    : out STD_LOGIC;
        PC_LOAD     : out STD_LOGIC
    );
end control_unit;
architecture Behavioral of control_unit is
begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                LOAD_EN  <= '0';
                ADD_EN   <= '0';
                NOT_EN   <= '0';
                SHL_EN   <= '0';
                JZ_EN    <= '0';
                PC_RESET <= '1';
                PC_LOAD  <= '0';
            else
                LOAD_EN  <= '0';
                ADD_EN   <= '0';
                NOT_EN   <= '0';
                SHL_EN   <= '0';
                JZ_EN    <= '0';
                PC_RESET <= '0';
                PC_LOAD  <= '0';

                case INSTRUCTION(11 downto 8) is

                    when "0001" =>
                        LOAD_EN <= '1';

                    when "0010" =>
                        ADD_EN <= '1';
                    when "0111" =>
                        NOT_EN <= '1';

                    when "1000" =>
                        SHL_EN <= '1';

                    when "1100" =>
                        JZ_EN   <= '1';
                        PC_LOAD <= '1';

                    when others =>
                        null;

                end case;
            end if;
        end if;
    end process;

end Behavioral;