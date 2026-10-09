library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_8bit is
    Port (
        A      : in  STD_LOGIC_VECTOR(7 downto 0);
        B      : in  STD_LOGIC_VECTOR(7 downto 0);
        OP     : in  STD_LOGIC;
        RESULT : out STD_LOGIC_VECTOR(7 downto 0);
        COUT   : out STD_LOGIC
    );
end alu_8bit;
architecture Structural of alu_8bit is

    component full_adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR(7 downto 0);
            B    : in  STD_LOGIC_VECTOR(7 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR(7 downto 0);
            COUT : out STD_LOGIC
        );
    end component;

    component not_gate
        Port (
            A : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    component and_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    component or_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
    signal B_INV      : STD_LOGIC_VECTOR(7 downto 0);
    signal B_OPERAND  : STD_LOGIC_VECTOR(7 downto 0);
    signal SUM_INT    : STD_LOGIC_VECTOR(7 downto 0);
    signal CARRY_INT  : STD_LOGIC;
    signal BORROW_INT : STD_LOGIC;
    signal NOT_OP     : STD_LOGIC;
    signal FLAG_ADD   : STD_LOGIC;
    signal FLAG_SUB   : STD_LOGIC;

begin
    -- Invert every bit of B for subtraction
    GEN_NOT_B: for i in 0 to 7 generate
        INV_B: not_gate
            port map (
                A => B(i),
                Y => B_INV(i)
            );
    end generate GEN_NOT_B;

    -- Select B for addition or NOT B for subtraction
    GEN_OPERAND: for i in 0 to 7 generate
        B_OPERAND(i) <= B(i) when OP = '0'
                        else B_INV(i);
    end generate GEN_OPERAND;
    -- A + B for OP=0
    -- A + NOT(B) + 1 for OP=1
    ADDER: full_adder_8bit
        port map (
            A    => A,
            B    => B_OPERAND,
            CIN  => OP,
            SUM  => SUM_INT,
            COUT => CARRY_INT
        );

    -- Invert OP
    INV_OP: not_gate
        port map (
            A => OP,
            Y => NOT_OP
        );
    -- For subtraction, borrow = NOT(carry out)
    INV_CARRY: not_gate
        port map (
            A => CARRY_INT,
            Y => BORROW_INT
        );

    -- Select carry flag for addition
    AND_ADD: and_gate
        port map (
            A => CARRY_INT,
            B => NOT_OP,
            Y => FLAG_ADD
        );
    -- Select borrow flag for subtraction
    AND_SUB: and_gate
        port map (
            A => BORROW_INT,
            B => OP,
            Y => FLAG_SUB
        );

    -- Combine the selected flags
    OR_FLAG: or_gate
        port map (
            A => FLAG_ADD,
            B => FLAG_SUB,
            Y => COUT
        );

    RESULT <= SUM_INT;

end Structural;