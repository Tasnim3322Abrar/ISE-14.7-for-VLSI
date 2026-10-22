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
architecture Structural of register_8bit is

    signal REG_DATA : STD_LOGIC_VECTOR(7 downto 0);
    signal REG_NEXT : STD_LOGIC_VECTOR(7 downto 0);
    signal CLK_NOT  : STD_LOGIC;

begin
    -- Invert the clock using your NOT gate
    CLK_INV : entity work.not_gate
        port map (
            A => CLK,
            Y => CLK_NOT
        );
    -- Feedback mux: select zero during reset, otherwise D
    -- Assumes mux A is selected for SEL='0'
    -- and mux B for SEL='1'.
    REG_MUX : entity work.mux_8bit
        port map (
            A   => (others => '0'),
            B   => D,
            SEL => RESET,
            Y   => REG_NEXT
        );
    -- Eight storage bits
    REG_BITS : for i in 0 to 7 generate
        BIT_REG : entity work.d_flip_flop
            port map (
                D     => REG_NEXT(i),
                CLK   => CLK,
                RESET => '0',
                Q     => REG_DATA(i)
            );
    end generate;

    Q <= REG_DATA;

end Structural;