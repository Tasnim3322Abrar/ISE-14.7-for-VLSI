LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY flip_flop_tb IS
END flip_flop_tb;

ARCHITECTURE behavior OF flip_flop_tb IS

    COMPONENT flip_flop
    PORT(
        S    : IN  std_logic;
        R    : IN  std_logic;
        Q    : OUT std_logic;
        Qbar : OUT std_logic
    );
    END COMPONENT;
	 
	 signal S    : std_logic := '1';
    signal R    : std_logic := '1';
    signal Q    : std_logic;
    signal Qbar : std_logic;

BEGIN

    uut: flip_flop PORT MAP (
        S    => S,
        R    => R,
        Q    => Q,
        Qbar => Qbar
    );
	 
	 stim_proc: process
    begin

        -- HOLD
        S <= '1';
        R <= '1';
        wait for 10 ns;

        -- SET
        S <= '0';
        R <= '1';
        wait for 10 ns;

        -- HOLD
        S <= '1';
        R <= '1';
        wait for 10 ns;
		  
		  -- RESET
        S <= '1';
        R <= '0';
        wait for 10 ns;

        -- HOLD
        S <= '1';
        R <= '1';
        wait for 10 ns;

        -- INVALID
        S <= '0';
        R <= '0';
        wait for 10 ns;

        wait;

    end process;

END behavior;