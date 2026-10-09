library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_decoder_tb is
end instruction_decoder_tb;

architecture Behavioral of instruction_decoder_tb is
    component instruction_decoder
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
    end component;
    signal INSTRUCTION : STD_LOGIC_VECTOR(11 downto 0);
    signal OPCODE      : STD_LOGIC_VECTOR(3 downto 0);
    signal OPERAND     : STD_LOGIC_VECTOR(7 downto 0);
    signal LOAD_EN     : STD_LOGIC;
    signal ADD_EN      : STD_LOGIC;
    signal NOT_EN      : STD_LOGIC;
    signal SHL_EN      : STD_LOGIC;
    signal JZ_EN       : STD_LOGIC;
begin

    UUT: instruction_decoder
        port map (
            INSTRUCTION => INSTRUCTION,
            OPCODE      => OPCODE,
            OPERAND     => OPERAND,
            LOAD_EN     => LOAD_EN,
            ADD_EN      => ADD_EN,
            NOT_EN      => NOT_EN,
            SHL_EN      => SHL_EN,
            JZ_EN       => JZ_EN
        );
    stimulus: process
    begin

        -- Test LDI instruction
        INSTRUCTION <= x"1FF";
        wait for 10 ns;
        assert LOAD_EN = '1' and OPERAND = x"FF"
            report "LDI decode failed"
            severity error;
        -- Test ADD instruction
        INSTRUCTION <= x"277";
        wait for 10 ns;
        assert ADD_EN = '1' and OPERAND = x"77"
            report "ADD decode failed"
            severity error;

        -- Test NOT instruction
        INSTRUCTION <= x"700";
        wait for 10 ns;
        assert NOT_EN = '1'
            report "NOT decode failed"
            severity error;
        -- Test SHL instruction
        INSTRUCTION <= x"800";
        wait for 10 ns;
        assert SHL_EN = '1'
            report "SHL decode failed"
            severity error;

        -- Test JZ instruction
        INSTRUCTION <= x"C05";
        wait for 10 ns;
        assert JZ_EN = '1' and OPERAND = x"05"
            report "JZ decode failed"
            severity error;
				
        -- Test NOP instruction
        INSTRUCTION <= x"000";
        wait for 10 ns;
        assert LOAD_EN = '0' and
               ADD_EN  = '0' and
               NOT_EN  = '0' and
               SHL_EN  = '0' and
               JZ_EN   = '0'
            report "NOP decode failed"
            severity error;

        report "Instruction decoder test completed successfully."
            severity note;

        wait;
    end process;

end Behavioral;