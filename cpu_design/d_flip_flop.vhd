library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_flip_flop is
    Port (
        D     : in  STD_LOGIC;
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC
    );
end d_flip_flop;
architecture Structural of d_flip_flop is

    component d_latch
        Port (
            D   : in  STD_LOGIC;
            EN  : in  STD_LOGIC;
            Q   : out STD_LOGIC
        );
    end component;
    signal CLK_NOT : STD_LOGIC;
    signal MASTER_Q : STD_LOGIC;
    signal SLAVE_Q  : STD_LOGIC;

begin

    -- Invert clock
    CLK_INV : entity work.not_gate
        port map (
            A => CLK,
            Y => CLK_NOT
        );
    -- Master latch enabled when CLK = 0
    MASTER_LATCH : d_latch
        port map (
            D  => D,
            EN => CLK_NOT,
            Q  => MASTER_Q
        );

    -- Slave latch enabled when CLK = 1
    SLAVE_LATCH : d_latch
        port map (
            D  => MASTER_Q,
            EN => CLK,
            Q  => SLAVE_Q
        );
   -- Synchronous reset
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                -- Reset is handled at the output below
                null;
            end if;
        end if;
    end process;

    Q <= SLAVE_Q when RESET = '0' else '0';

end Structural;