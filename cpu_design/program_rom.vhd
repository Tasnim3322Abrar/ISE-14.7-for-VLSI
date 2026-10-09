library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity program_rom is
    Port (
        ADDRESS     : in  STD_LOGIC_VECTOR(3 downto 0);
        INSTRUCTION : out STD_LOGIC_VECTOR(11 downto 0)
    );
end program_rom;
architecture Behavioral of program_rom is
begin
    process(ADDRESS)
    begin
        case ADDRESS is
            when "0000" => INSTRUCTION <= x"1FF"; -- LDI FF
            when "0001" => INSTRUCTION <= x"700"; -- NOT
            when "0010" => INSTRUCTION <= x"C05"; -- JZ 05
            when "0011" => INSTRUCTION <= x"277"; -- ADD 77
            when "0100" => INSTRUCTION <= x"277"; -- ADD 77
            when "0101" => INSTRUCTION <= x"211"; -- ADD 11
            when "0110" => INSTRUCTION <= x"800"; -- SHL
            when "0111" => INSTRUCTION <= x"C00"; -- JZ 00
            when "1000" => INSTRUCTION <= x"800"; -- SHL
            when others => INSTRUCTION <= x"000"; -- NOP
        end case;
    end process;
end Behavioral;