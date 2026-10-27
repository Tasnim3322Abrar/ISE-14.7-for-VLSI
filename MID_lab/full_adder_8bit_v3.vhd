
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity full_adder_8bit_v2 is
	PORT(
		A0 : IN STD_LOGIC;
		A1 : IN STD_LOGIC;
		A2 : IN STD_LOGIC;
		A3 : IN STD_LOGIC;
		A4 : IN STD_LOGIC;
		A5 : IN STD_LOGIC;
		A6 : IN STD_LOGIC;
		A7 : IN STD_LOGIC;
		
		B0 : IN STD_LOGIC;
		B1 : IN STD_LOGIC;
		B2 : IN STD_LOGIC;
		B3 : IN STD_LOGIC;
		B4 : IN STD_LOGIC;
		B5 : IN STD_LOGIC;
		B6 : IN STD_LOGIC;
		B7 : IN STD_LOGIC;
		
		CIN : IN STD_LOGIC;
		
		S0 : OUT STD_LOGIC;
		S1 : OUT STD_LOGIC;
		S2 : OUT STD_LOGIC;
		S3 : OUT STD_LOGIC;
		S4 : OUT STD_LOGIC;
		S5 : OUT STD_LOGIC;
		S6 : OUT STD_LOGIC;
		S7 : OUT STD_LOGIC;
		
		COUT : OUT STD_LOGIC
		
	
	);
end full_adder_8bit_v2;

architecture Dataflow of full_adder_8bit_v2 is

	-- COMP
	COMPONENT adder_onebit
		PORT(
			A 		: IN STD_LOGIC;
			B		: IN STD_LOGIC;
			CIN	: IN STD_LOGIC;
			SUM	: OUT STD_LOGIC;
			COUT	: OUT STD_LOGIC
		);
	END COMPONENT;
	
	SIGNAL C1 : STD_LOGIC;
	SIGNAL C2 : STD_LOGIC;
	SIGNAL C3 : STD_LOGIC;
	SIGNAL C4 : STD_LOGIC;
	SIGNAL C5 : STD_LOGIC;
	SIGNAL C6 : STD_LOGIC;
	SIGNAL C7 : STD_LOGIC;
	SIGNAL C8 : STD_LOGIC;





begin
	
	FA0: adder_onebit
		PORT MAP (A0, B0, CIN, S0, C1);
	
	
	
	FA1: adder_onebit
		PORT MAP (A1, B1, C1, S1, C2);
	
	
	
	FA2: adder_onebit
		PORT MAP (A2, B2, C2, S2, C3);
	
	
	
	FA3: adder_onebit
		PORT MAP (A3, B3, C3, S3, C4);
	
	
	
	FA4: adder_onebit
		PORT MAP (A4, B4, C4, S4, C5);
	
	
	
	FA5: adder_onebit
		PORT MAP (A5, B5, C5, S5, C6);
	
	
	FA6: adder_onebit
		PORT MAP (A6, B6, C6, S6, C7);
	
	
	FA7: adder_onebit
		PORT MAP (A7, B7, C7, S7, COUT);
	
	
	
	
	
	

end Dataflow;

