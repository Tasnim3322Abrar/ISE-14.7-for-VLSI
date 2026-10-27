
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity adder_onebit is
	Port(
		A	 : in STD_LOGIC;
		B	 : in STD_LOGIC;
		CIN : in STD_LOGIC;
		SUM : out STD_LOGIC;
		COUT: out STD_LOGIC
	);
end adder_onebit;

architecture Dataflow of adder_onebit is

begin
	SUM  <= A XOR B XOR CIN;
	COUT <= (A AND B) OR (A AND CIN) OR (B AND CIN);
 
end Dataflow;

