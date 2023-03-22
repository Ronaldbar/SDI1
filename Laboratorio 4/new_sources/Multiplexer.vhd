library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4a1 is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
        S : in STD_LOGIC_VECTOR (1 downto 0);
        Y : out STD_LOGIC
    );
 end mux4a1;

architecture arch_mux41 of mux4a1 is begin

    Y <= I(0) WHEN S="00" 
    ELSE I(1) WHEN S="01" 
    ELSE I(2) WHEN S="10" 
    ELSE I(3); 
end arch_mux41;