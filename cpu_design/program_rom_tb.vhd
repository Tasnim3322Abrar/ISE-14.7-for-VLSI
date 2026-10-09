library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity program_rom_tb is
end program_rom_tb;

architecture behavior of program_rom_tb is

    component program_rom
        Port (
            ADDRESS     : in  STD_LOGIC_VECTOR(3 downto 0);
            INSTRUCTION : out STD_LOGIC_VECTOR(11 downto 0)
        );
    end component;
    signal ADDRESS     : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal INSTRUCTION : STD_LOGIC_VECTOR(11 downto 0);

begin

    UUT: program_rom
        port map (
            ADDRESS     => ADDRESS,
            INSTRUCTION => INSTRUCTION
        );

    STIMULUS: process
    begin
        ADDRESS <= x"0";
        wait for 10 ns;
        assert INSTRUCTION = x"1FF"
            report "Address 0 failed"
            severity error;

        ADDRESS <= x"1";
        wait for 10 ns;
        assert INSTRUCTION = x"700"
            report "Address 1 failed"
            severity error;
        ADDRESS <= x"2";
        wait for 10 ns;
        assert INSTRUCTION = x"C05"
            report "Address 2 failed"
            severity error;

        ADDRESS <= x"3";
        wait for 10 ns;
        assert INSTRUCTION = x"277"
            report "Address 3 failed"
            severity error;
        ADDRESS <= x"4";
        wait for 10 ns;
        assert INSTRUCTION = x"277"
            report "Address 4 failed"
            severity error;

        ADDRESS <= x"5";
        wait for 10 ns;
        assert INSTRUCTION = x"211"
            report "Address 5 failed"
            severity error;
        ADDRESS <= x"6";
        wait for 10 ns;
        assert INSTRUCTION = x"800"
            report "Address 6 failed"
            severity error;

        ADDRESS <= x"7";
        wait for 10 ns;
        assert INSTRUCTION = x"C00"
            report "Address 7 failed"
            severity error;
        ADDRESS <= x"8";
        wait for 10 ns;
        assert INSTRUCTION = x"800"
            report "Address 8 failed"
            severity error;

        ADDRESS <= x"9";
        wait for 10 ns;
        assert INSTRUCTION = x"000"
            report "Unused address should return NOP"
            severity error;

        report "ROM tests completed."
            severity note;

        wait;
    end process;

end behavior;