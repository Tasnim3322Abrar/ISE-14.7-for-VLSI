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

    signal ACC_VALUE     : STD_LOGIC_VECTOR(7 downto 0);
    signal ACC_NEXT      : STD_LOGIC_VECTOR(7 downto 0);

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
    -- 4. ALU next-value logic
    --------------------------------------------------
    process(ACC_VALUE, OPERAND, OPCODE)
    begin
        ACC_NEXT <= ACC_VALUE;

        case OPCODE is
            when "0001" =>
                ACC_NEXT <= OPERAND; -- LDI
            when "0010" =>
                ACC_NEXT <= std_logic_vector(
                    unsigned(ACC_VALUE) + unsigned(OPERAND)
                ); -- ADD

            when "0111" =>
                ACC_NEXT <= not ACC_VALUE; -- NOT

            when "1000" =>
                ACC_NEXT <= ACC_VALUE(6 downto 0) & '0'; -- SHL

            when others =>
                ACC_NEXT <= ACC_VALUE;
        end case;
    end process;
    ACC_WRITE_EN <= LOAD_EN or ADD_EN or NOT_EN or SHL_EN;

    --------------------------------------------------
    -- 5. Accumulator
    --------------------------------------------------
    ACC_UNIT : entity work.accumulator_8bit
		 port map (
			  CLK   => CLK,
			  RESET => RESET,
			  D     => ACC_NEXT,
			  Q     => ACC_VALUE
		 );
    --------------------------------------------------
    -- 6. Zero Flag next-value logic
    --------------------------------------------------
    process(ACC_NEXT, ACC_WRITE_EN, Z_VALUE)
    begin
        Z_NEXT <= Z_VALUE;

        if ACC_WRITE_EN = '1' then
            if ACC_NEXT = x"00" then
                Z_NEXT <= '1';
            else
                Z_NEXT <= '0';
            end if;
        end if;
    end process;
    --------------------------------------------------
    -- 7. Zero Flag
    --------------------------------------------------
    ZERO_UNIT : entity work.zero_flag
		 port map (
			  A    => ACC_VALUE,
			  ZERO => Z_VALUE
		 );
	 ---------------------------------------------
    -- 8. Program Counter next-value logic
    --------------------------------------------------
    process(PC_VALUE, OPERAND, PC_LOAD, PC_RESET, Z_VALUE)
    begin
        PC_NEXT <= std_logic_vector(unsigned(PC_VALUE) + 1);

        if PC_RESET = '1' then
            PC_NEXT <= (others => '0');

        elsif PC_LOAD = '1' and JZ_EN = '1' and Z_VALUE = '1' then
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
			  PC    => PC_VALUE
		 );
    --------------------------------------------------
    -- Outputs
    --------------------------------------------------
    Q  <= ACC_VALUE;
    Z  <= Z_VALUE;
    PC <= PC_VALUE;

end Structural;