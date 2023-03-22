library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity deco2a4A is
    Port (
    S : in STD_LOGIC_VECTOR (1 downto 0);
    Y : out STD_LOGIC_VECTOR (3 downto 0)); 
end deco2a4A;

architecture Arch_deco2a4A of deco2a4A is
    begin
    -- process msg_indx 
    -- begin
        
        Y(0)<= '1' WHEN S="00" ELSE '0'; 
        Y(1)<= '1' WHEN S="01" ELSE '0'; 
        Y(2)<= '1' WHEN S="10" ELSE '0'; 
        Y(3)<= '1' WHEN S="11" ELSE '0';
        
-- end process;
end Arch_deco2a4A;