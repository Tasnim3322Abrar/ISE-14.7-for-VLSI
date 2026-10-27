
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder_8bit is
	PORT(
		A		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		B		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		CIN	: IN STD_LOGIC;
		SUM	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		COUT	: OUT STD_LOGIC
	);
end full_adder_8bit;


-- ARCHI
architecture Dataflow of full_adder_8bit is
	-- COMPONENT DEC
	COMPONENT adder_onebit
		PORT(
			A		: IN STD_LOGIC;
			B		: IN STD_LOGIC;
			CIN	: IN STD_LOGIC;
			SUM	: OUT STD_LOGIC;
			COUT	: OUT STD_LOGIC
		);
		END COMPONENT;
		
	-- INTERNAL CARRY SIGNAL
	SIGNAL C : STD_LOGIC_VECTOR(8 DOWNTO 0);



begin
	-- INIT CARRY
	C(0) <= CIN;
	
	FA0: adder_onebit
		PORT MAP (A(0), B(0), C(0), SUM(0), C(1));
	
	FA1: adder_onebit
		PORT MAP (A(1), B(1), C(1), SUM(1), C(2));
	
	FA2: adder_onebit
		PORT MAP (A(2), B(2), C(2), SUM(2), C(3));
	
	FA3: adder_onebit
		PORT MAP (A(3), B(3), C(3), SUM(3), C(4));
	
	FA4: adder_onebit
		PORT MAP (A(4), B(4), C(4), SUM(4), C(5));
	
	FA5: adder_onebit
		PORT MAP (A(5), B(5), C(5), SUM(5), C(6));
	
	FA6: adder_onebit
		PORT MAP (A(6), B(6), C(6), SUM(6), C(7));
	
	FA7: adder_onebit
		PORT MAP (A(7), B(7), C(7), SUM(7), C(8));
	
	
	
	
	COUT <= C(8);

	-- 8 BIT FULL ADDER
--	FA0: full_adder
--			PORT MAP(
--				A		=> A(0),
--				B		=> B(0),
--				CIN	=> C(0),
--				SUM	=> SUM(0),
--				COUT	=> C(1)
--			);
--			
--	FA1: full_adder
--			PORT MAP(
--				A		=> A(1),
--				B		=> B(1),
--				CIN	=> C(1),
--				SUM	=> SUM(1),
--				COUT	=> C(2)
--			);
--			
--	FA2: full_adder
--			PORT MAP(
--				A		=> A(2),
--				B		=> B(2),
--				CIN	=> C(2),
--				SUM	=> SUM(2),
--				COUT	=> C(3)
--			);
--			
--	FA3: full_adder
--			PORT MAP(
--				A		=> A(3),
--				B		=> B(3),
--				CIN	=> C(3),
--				SUM	=> SUM(3),
--				COUT	=> C(4)
--			);			
--	FA4: full_adder
--			PORT MAP(
--				A		=> A(4),
--				B		=> B(4),
--				CIN	=> C(4),
--				SUM	=> SUM(4),
--				COUT	=> C(5)
--			);
--
--	FA5: full_adder
--			PORT MAP(
--				A		=> A(5),
--				B		=> B(5),
--				CIN	=> C(5),
--				SUM	=> SUM(5),
--				COUT	=> C(6)
--			);
--	FA6: full_adder
--			PORT MAP(
--				A		=> A(6),
--				B		=> B(6),
--				CIN	=> C(6),
--				SUM	=> SUM(6),
--				COUT	=> C(7)
--			);
--	FA7: full_adder
--			PORT MAP(
--				A		=> A(7),
--				B		=> B(7),
--				CIN	=> C(7),
--				SUM	=> SUM(7),
--				COUT	=> C(8)
--			);
--	
--	-- FINAL CARRY
--	COUT <= C(8);
			
			
end Dataflow;

