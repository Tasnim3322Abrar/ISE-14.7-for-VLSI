-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT adder_onebit
          PORT(
                  A		: IN STD_LOGIC;
						B		: IN STD_LOGIC;
						CIN	: IN STD_LOGIC;
						SUM	: OUT STD_LOGIC;
						COUT	: OUT STD_LOGIC
                  );
          END COMPONENT;

          SIGNAL A		: STD_LOGIC := '0';
			 SIGNAL B		: STD_LOGIC := '0';
			 SIGNAL CIN		: STD_LOGIC := '0';
			 SIGNAL SUM		: STD_LOGIC;
			 SIGNAL COUT	: STD_LOGIC;
			

  BEGIN

  -- Component Instantiation
          uut: adder_onebit PORT MAP(
                  A		=> A,
						B		=> B,
						CIN	=> CIN,
						SUM	=> SUM,
						COUT	=> COUT
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
		  -- 0 0 0 
		  A <= '0';
		  B <= '0';
		  CIN <= '0';
        wait for 100 ns;
		  
		  	-- 0 0 1 
		  A <= '0';
		  B <= '0';
		  CIN <= '1';
        wait for 100 ns;
		  
		  -- 0 1 0
		  A <= '0';
		  B <= '1';
		  CIN <= '0';
        wait for 100 ns;

		  
		  -- 0 1 1
		  A <= '0';
		  B <= '1';
		  CIN <= '1';
        wait for 100 ns;

		  
		  -- 1 0 0
		  A <= '1';
		  B <= '0';
		  CIN <= '0';
        wait for 100 ns;
		  
		  
		  -- 1 0 1
		  A <= '1';
		  B <= '0';
		  CIN <= '1';
        wait for 100 ns;
		  
		  -- 1 1 0
		  A <= '1';
		  B <= '1';
		  CIN <= '0';
        wait for 100 ns;
		  
		  -- 1 1 1
		  A <= '1';
		  B <= '1';
		  CIN <= '1';
        wait for 100 ns;


        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
