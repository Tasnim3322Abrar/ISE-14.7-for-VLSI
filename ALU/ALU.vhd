library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port (
        A      : in  STD_LOGIC_VECTOR(7 downto 0);
        B      : in  STD_LOGIC_VECTOR(7 downto 0);
        OP     : in  STD_LOGIC;
        RESULT : out STD_LOGIC_VECTOR(7 downto 0);
        CARRY  : out STD_LOGIC;
        BORROW : out STD_LOGIC
    );
end ALU;

architecture Structural of ALU is
    -- 8-bit Full Adder
    component full_adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR(7 downto 0);
            B    : in  STD_LOGIC_VECTOR(7 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR(7 downto 0);
            COUT : out STD_LOGIC
        );
    end component;
    -- 8-bit Subtractor
    component subtractor_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR(7 downto 0);
            B    : in  STD_LOGIC_VECTOR(7 downto 0);
            BIN  : in  STD_LOGIC;
            DIFF : out STD_LOGIC_VECTOR(7 downto 0);
            BOUT : out STD_LOGIC
        );
    end component;
    -- 8-bit 2-to-1 MUX
    component mux_8bit
        Port (
            A : in  STD_LOGIC_VECTOR(7 downto 0);
            B : in  STD_LOGIC_VECTOR(7 downto 0);
            S : in  STD_LOGIC;
            Y : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    -- Internal signals
    signal SUM  : STD_LOGIC_VECTOR(7 downto 0);
    signal DIFF : STD_LOGIC_VECTOR(7 downto 0);

    signal ADD_COUT : STD_LOGIC;
    signal SUB_BOUT : STD_LOGIC;

begin

    -- =====================================================
    -- ADDITION: A + B
    -- =====================================================
    ADDER: full_adder_8bit
        port map (
            A    => A,
            B    => B,
            CIN  => '0',
            SUM  => SUM,
            COUT => ADD_COUT
        );


    -- =====================================================
    -- SUBTRACTION: A - B
    -- =====================================================
    SUBTRACTOR: subtractor_8bit
        port map (
            A    => A,
            B    => B,
            BIN  => '0',
            DIFF => DIFF,
            BOUT => SUB_BOUT
        );
    -- =====================================================
    -- MUX
    -- OP = 0 → SUM
    -- OP = 1 → DIFF
    -- =====================================================

    MUX: mux_8bit
        port map (
            A => SUM,
            B => DIFF,
            S => OP,
            Y => RESULT
        );
    -- =====================================================
    -- CARRY AND BORROW OUTPUTS
    -- =====================================================

    CARRY  <= ADD_COUT;
    BORROW <= SUB_BOUT;

end Structural;