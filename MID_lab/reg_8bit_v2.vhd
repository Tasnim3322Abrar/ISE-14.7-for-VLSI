library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_8bit_v2 is
    Port (
        D0    : in  STD_LOGIC;
        D1    : in  STD_LOGIC;
        D2    : in  STD_LOGIC;
        D3    : in  STD_LOGIC;
        D4    : in  STD_LOGIC;
        D5    : in  STD_LOGIC;
        D6    : in  STD_LOGIC;
        D7    : in  STD_LOGIC;

        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;

        Q0    : out STD_LOGIC;
        Q1    : out STD_LOGIC;
        Q2    : out STD_LOGIC;
        Q3    : out STD_LOGIC;
        Q4    : out STD_LOGIC;
        Q5    : out STD_LOGIC;
        Q6    : out STD_LOGIC;
        Q7    : out STD_LOGIC
    );
end reg_8bit_v2;


architecture Behavioral of reg_8bit_v2 is

    component DFF_v2
        Port (
            D     : in  STD_LOGIC;
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            Q     : out STD_LOGIC
        );
    end component;

begin

    DFF0: DFF_v2
        port map (
            D     => D0,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q0
        );

    DFF1: DFF_v2
        port map (
            D     => D1,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q1
        );

    DFF2: DFF_v2
        port map (
            D     => D2,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q2
        );

    DFF3: DFF_v2
        port map (
            D     => D3,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q3
        );

    DFF4: DFF_v2
        port map (
            D     => D4,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q4
        );

    DFF5: DFF_v2
        port map (
            D     => D5,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q5
        );

    DFF6: DFF_v2
        port map (
            D     => D6,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q6
        );

    DFF7: DFF_v2
        port map (
            D     => D7,
            CLK   => CLK,
            RESET => RESET,
            Q     => Q7
        );

end Behavioral;