LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_8bit_v2_tb IS
END full_adder_8bit_v2_tb;

ARCHITECTURE behavior OF full_adder_8bit_v2_tb IS

    COMPONENT full_adder_8bit_v2
    PORT(
         A0   : IN  std_logic;
         A1   : IN  std_logic;
         A2   : IN  std_logic;
         A3   : IN  std_logic;
         A4   : IN  std_logic;
         A5   : IN  std_logic;
         A6   : IN  std_logic;
         A7   : IN  std_logic;

         B0   : IN  std_logic;
         B1   : IN  std_logic;
         B2   : IN  std_logic;
         B3   : IN  std_logic;
         B4   : IN  std_logic;
         B5   : IN  std_logic;
         B6   : IN  std_logic;
         B7   : IN  std_logic;

         CIN  : IN  std_logic;

         S0   : OUT std_logic;
         S1   : OUT std_logic;
         S2   : OUT std_logic;
         S3   : OUT std_logic;
         S4   : OUT std_logic;
         S5   : OUT std_logic;
         S6   : OUT std_logic;
         S7   : OUT std_logic;

         COUT : OUT std_logic
        );
    END COMPONENT;

    SIGNAL A0, A1, A2, A3, A4, A5, A6, A7 : std_logic := '0';
    SIGNAL B0, B1, B2, B3, B4, B5, B6, B7 : std_logic := '0';
    SIGNAL CIN : std_logic := '0';

    SIGNAL S0, S1, S2, S3, S4, S5, S6, S7 : std_logic;
    SIGNAL COUT : std_logic;

BEGIN

    UUT: full_adder_8bit_v2
    PORT MAP(
        A0 => A0,
        A1 => A1,
        A2 => A2,
        A3 => A3,
        A4 => A4,
        A5 => A5,
        A6 => A6,
        A7 => A7,

        B0 => B0,
        B1 => B1,
        B2 => B2,
        B3 => B3,
        B4 => B4,
        B5 => B5,
        B6 => B6,
        B7 => B7,

        CIN => CIN,

        S0 => S0,
        S1 => S1,
        S2 => S2,
        S3 => S3,
        S4 => S4,
        S5 => S5,
        S6 => S6,
        S7 => S7,

        COUT => COUT
    );


    stimulus: PROCESS
    BEGIN

        -- Test 1
        -- 00000000 + 00000000 + 0 = 00000000
        A7<='0'; A6<='0'; A5<='0'; A4<='0';
        A3<='0'; A2<='0'; A1<='0'; A0<='0';

        B7<='0'; B6<='0'; B5<='0'; B4<='0';
        B3<='0'; B2<='0'; B1<='0'; B0<='0';

        CIN<='0';

        WAIT FOR 100 ns;


        -- Test 2
        -- 00000001 + 00000001 + 0 = 00000010
        A7<='0'; A6<='0'; A5<='0'; A4<='0';
        A3<='0'; A2<='0'; A1<='0'; A0<='1';

        B7<='0'; B6<='0'; B5<='0'; B4<='0';
        B3<='0'; B2<='0'; B1<='0'; B0<='1';

        CIN<='0';

        WAIT FOR 100 ns;


        -- Test 3
        -- 00000101 + 00000011 + 0 = 00001000
        A7<='0'; A6<='0'; A5<='0'; A4<='0';
        A3<='0'; A2<='1'; A1<='0'; A0<='1';

        B7<='0'; B6<='0'; B5<='0'; B4<='0';
        B3<='0'; B2<='0'; B1<='1'; B0<='1';

        CIN<='0';

        WAIT FOR 100 ns;


        -- Test 4
        -- 00001111 + 00001010 + 0 = 00011001
        A7<='0'; A6<='0'; A5<='0'; A4<='0';
        A3<='1'; A2<='1'; A1<='1'; A0<='1';

        B7<='0'; B6<='0'; B5<='0'; B4<='0';
        B3<='1'; B2<='0'; B1<='1'; B0<='0';

        CIN<='0';

        WAIT FOR 100 ns;


        -- Test 5
        -- 11111111 + 00000000 + 0 = 11111111
        A7<='1'; A6<='1'; A5<='1'; A4<='1';
        A3<='1'; A2<='1'; A1<='1'; A0<='1';

        B7<='0'; B6<='0'; B5<='0'; B4<='0';
        B3<='0'; B2<='0'; B1<='0'; B0<='0';

        CIN<='0';

        WAIT FOR 100 ns;


        -- Test 6
        -- 11111111 + 00000001 + 0 = 1 00000000
        A7<='1'; A6<='1'; A5<='1'; A4<='1';
        A3<='1'; A2<='1'; A1<='1'; A0<='1';

        B7<='0'; B6<='0'; B5<='0'; B4<='0';
        B3<='0'; B2<='0'; B1<='0'; B0<='1';

        CIN<='0';

        WAIT FOR 100 ns;


        -- Test 7
        -- 11111111 + 11111111 + 0 = 1 11111110
        A7<='1'; A6<='1'; A5<='1'; A4<='1';
        A3<='1'; A2<='1'; A1<='1'; A0<='1';

        B7<='1'; B6<='1'; B5<='1'; B4<='1';
        B3<='1'; B2<='1'; B1<='1'; B0<='1';

        CIN<='0';

        WAIT FOR 100 ns;


        -- Test 8
        -- 00001010 + 00010100 + 1 = 00011111
        A7<='0'; A6<='0'; A5<='0'; A4<='0';
        A3<='1'; A2<='0'; A1<='1'; A0<='0';

        B7<='0'; B6<='0'; B5<='0'; B4<='1';
        B3<='0'; B2<='1'; B1<='0'; B0<='0';

        CIN<='1';

        WAIT FOR 100 ns;


        -- Test 9
        -- 11111111 + 11111111 + 1 = 1 11111111
        A7<='1'; A6<='1'; A5<='1'; A4<='1';
        A3<='1'; A2<='1'; A1<='1'; A0<='1';

        B7<='1'; B6<='1'; B5<='1'; B4<='1';
        B3<='1'; B2<='1'; B1<='1'; B0<='1';

        CIN<='1';

        WAIT FOR 100 ns;


        -- End simulation
        WAIT;

    END PROCESS;

END behavior;