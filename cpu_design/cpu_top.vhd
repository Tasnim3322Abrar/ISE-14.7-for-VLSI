
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cpu_top is
    Port (
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(7 downto 0);
        Z     : out STD_LOGIC;
        PC    : out STD_LOGIC_VECTOR(3 downto 0)
    );
end cpu_top;
architecture Structural of cpu_top is

    signal PC_VALUE      : STD_LOGIC_VECTOR(3 downto 0);
    signal PC_NEXT       : STD_LOGIC_VECTOR(3 downto 0);
	 signal PC_REG_Q      : STD_LOGIC_VECTOR(7 downto 0);

	 signal ACC_NEXT      : STD_LOGIC_VECTOR(7 downto 0);
    signal ACC_VALUE     : STD_LOGIC_VECTOR(7 downto 0);
	 signal ALU_VALUE		 : STD_LOGIC_VECTOR(7 downto 0);
    signal INSTRUCTION   : STD_LOGIC_VECTOR(11 downto 0);
    signal OPCODE        : STD_LOGIC_VECTOR(3 downto 0);
    signal OPERAND       : STD_LOGIC_VECTOR(7 downto 0);

    signal LOAD_EN       : STD_LOGIC;
    signal ADD_EN        : STD_LOGIC;
    signal NOT_EN        : STD_LOGIC;
    signal SHL_EN        : STD_LOGIC;
    signal JZ_EN         : STD_LOGIC;
    signal PC_RESET      : STD_LOGIC;
    signal PC_LOAD       : STD_LOGIC;

    signal ACC_WRITE_EN  : STD_LOGIC;
    signal Z_VALUE       : STD_LOGIC;
    signal Z_NEXT        : STD_LOGIC;
	 
    -- ALU signals
    signal ALU_RESULT    : STD_LOGIC_VECTOR(7 downto 0);
    signal ALU_COUT      : STD_LOGIC;

begin
    --------------------------------------------------
    -- 1. Program ROM
    --------------------------------------------------
    ROM_UNIT : entity work.program_rom
        port map (
            ADDRESS     => PC_VALUE,
            INSTRUCTION => INSTRUCTION
        );
    --------------------------------------------------
    -- 2. Instruction Decoder
    --------------------------------------------------
    DECODER_UNIT : entity work.instruction_decoder
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
    --------------------------------------------------
    -- 3. Control Unit
    --------------------------------------------------
    CONTROL_UNIT : entity work.control_unit
        port map (
            CLK         => CLK,
            RESET       => RESET,
            INSTRUCTION => INSTRUCTION,
            LOAD_EN     => open,
            ADD_EN      => open,
            NOT_EN      => open,
            SHL_EN      => open,
            JZ_EN       => open,
            PC_RESET    => PC_RESET,
            PC_LOAD     => PC_LOAD
        );
    --------------------------------------------------
    -- 4. ALU
    --------------------------------------------------
    ALU_UNIT : entity work.alu_8bit
        port map (
            A      => ACC_VALUE,
            B      => OPERAND,
            OP     => '0',
            RESULT => ALU_RESULT,
            COUT   => ALU_COUT
        );
    --------------------------------------------------
    -- 5. Accumulator next-value logic
    --------------------------------------------------
    process(ACC_VALUE, OPERAND, OPCODE, ALU_RESULT)
    begin
        -- Default: preserve current accumulator
        ACC_NEXT <= ACC_VALUE;

        case OPCODE is
            when "0001" =>
                ACC_NEXT <= OPERAND;     -- LDI

            when "0010" =>
                ACC_NEXT <= ALU_RESULT;  -- ADD
            when "0111" =>
                ACC_NEXT <= ALU_VALUE;  -- NOT

            when "1000" =>
                ACC_NEXT <= ACC_VALUE(6 downto 0) & '0';  -- SHL

            when others =>
                ACC_NEXT <= ACC_VALUE;   -- JZ or NOP
        end case;
    end process;

    ACC_WRITE_EN <= LOAD_EN or ADD_EN or NOT_EN or SHL_EN;
    --------------------------------------------------
    -- 6. Accumulator
    --------------------------------------------------
    ACC_UNIT : entity work.accumulator
        port map (
            D     => ACC_NEXT,
            CLK   => CLK,
            RESET => RESET,
            Q     => ACC_VALUE
        );
    --------------------------------------------------
    -- 7. Zero Flag
    --------------------------------------------------
    ZERO_UNIT : entity work.zero_flag
        port map (
            A    => ACC_VALUE,
            ZERO => Z_VALUE
        );
    --------------------------------------------------
    -- 8. Program Counter next-value logic
    --------------------------------------------------
    process(PC_VALUE, OPERAND, JZ_EN, Z_VALUE, RESET)
    begin
        -- Normal instruction: move to next address
        PC_NEXT <= std_logic_vector(unsigned(PC_VALUE) + 1);
        if RESET = '1' then
            PC_NEXT <= (others => '0');

        elsif JZ_EN = '1' and Z_VALUE = '1' then
            -- JZ: jump only when zero flag is set
            PC_NEXT <= OPERAND(3 downto 0);

        end if;
    end process;
    --------------------------------------------------
    -- 9. Program Counter
    --------------------------------------------------
    PC_UNIT : entity work.program_counter
		 port map (
			  CLK   => CLK,
			  RESET => RESET,
			  LOAD  => JZ_EN and Z_VALUE,
			  D     => OPERAND(3 downto 0),
			  PC    => PC_VALUE
		 );
    --------------------------------------------------
    -- 10. Outputs
    --------------------------------------------------
    Q  <= ACC_VALUE;
    Z  <= Z_VALUE;
    PC <= PC_VALUE;

end Structural;