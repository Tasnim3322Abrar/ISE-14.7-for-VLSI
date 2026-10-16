library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_decoder is
    Port (
        INSTRUCTION : in  STD_LOGIC_VECTOR(11 downto 0);
        OPCODE      : out STD_LOGIC_VECTOR(3 downto 0);
        OPERAND     : out STD_LOGIC_VECTOR(7 downto 0);
        LOAD_EN     : out STD_LOGIC;
        ADD_EN      : out STD_LOGIC;
        NOT_EN      : out STD_LOGIC;
        SHL_EN      : out STD_LOGIC;
        JZ_EN       : out STD_LOGIC
    );
end instruction_decoder;
architecture Behavioral of instruction_decoder is
begin

    process(INSTRUCTION)
    begin
        OPCODE  <= INSTRUCTION(11 downto 8);
        OPERAND <= INSTRUCTION(7 downto 0);

        LOAD_EN <= '0';
        ADD_EN  <= '0';
        NOT_EN  <= '0';
        SHL_EN  <= '0';
        JZ_EN   <= '0';
        case INSTRUCTION(11 downto 8) is

            when "0001" =>
                LOAD_EN <= '1'; -- LDI

            when "0010" =>
                ADD_EN <= '1';  -- ADD

            when "0111" =>
                NOT_EN <= '1';  -- NOT
            when "1000" =>
                SHL_EN <= '1';  -- SHL

            when "1100" =>
                JZ_EN <= '1';   -- JZ

            when others =>
                null;           -- NOP

        end case;
    end process;

end Behavioral;