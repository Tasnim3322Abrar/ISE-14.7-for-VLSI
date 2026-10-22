library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity program_counter is
    Port (
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        LOAD  : in  STD_LOGIC;
        D     : in  STD_LOGIC_VECTOR(3 downto 0);
        PC    : out STD_LOGIC_VECTOR(3 downto 0)
    );
end program_counter;
architecture Structural of program_counter is

    component full_adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR(7 downto 0);
            B    : in  STD_LOGIC_VECTOR(7 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR(7 downto 0);
            COUT : out STD_LOGIC
        );
    end component;
    component register_8bit
        Port (
            D     : in  STD_LOGIC_VECTOR(7 downto 0);
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            Q     : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    signal PC_CURRENT : STD_LOGIC_VECTOR(7 downto 0);
    signal PC_NEXT    : STD_LOGIC_VECTOR(7 downto 0);
    signal CARRY_OUT  : STD_LOGIC;
begin

    INCREMENTER: full_adder_8bit
        port map (
            A    => PC_CURRENT,
            B    => "00000001",
            CIN  => '0',
            SUM  => PC_NEXT,
            COUT => CARRY_OUT
        );
    PC_REGISTER: register_8bit
        port map (
            D     => PC_NEXT,
            CLK   => CLK,
            RESET => RESET,
            Q     => PC_CURRENT
        );

    PC <= PC_CURRENT(3 downto 0);

end Structural;