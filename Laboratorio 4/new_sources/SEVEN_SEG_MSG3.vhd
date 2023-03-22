    library library IEEE;
    use IEEE.std_logic_1164.all;
   
    entity SEVEN_SEG_MSG3 is

        port (
            msg_indx: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(6 downto 0)
            -- display: out std_logic_vector(3 downto 0)
        );

    end SEVEN_SEG_MSG3;

    architecture Behavioral of SEVEN_SEG_MSG3 is
        begin
            -- process msg_indx
            -- begin

            -- DOÑA NUBIA LE MANDA SALUDOS PROFE --
            -- display <= "0100";
            
            case msg_inxd is
            when x"00" => letter <= x"C2";
            when x"01" => letter <= x"81";
            when x"02" => letter <= x"AA";
            when x"03" => letter <= x"88";
            when x"04" => letter <= x"EA";
            when x"05" => letter <= x"C0";
            when x"06" => letter <= x"E0";
            when x"07" => letter <= x"F9";
            when x"08" => letter <= x"88";
            when x"09" => letter <= x"F1";
            when x"0A" => letter <= x"80";
            when x"0B" => letter <= x"AB";
            when x"0C" => letter <= x"88";
            when x"0D" => letter <= x"EA";
            when x"0E" => letter <= x"C2";
            when x"0F" => letter <= x"88";
            when x"10" => letter <= x"A4";
            when x"11" => letter <= x"88";
            when x"12" => letter <= x"F1";
            when x"13" => letter <= x"C0";
            when x"14" => letter <= x"C2";
            when x"15" => letter <= x"81";
            when x"16" => letter <= x"A4";
            when x"17" => letter <= x"98";
            when x"18" => letter <= x"FA";
            when x"19" => letter <= x"81";
            when x"1A" => letter <= x"88";
            when x"1B" => letter <= x"80";
            when others => letter <= x"FF";
            
        end case;
        end process;
    end Behavioral;