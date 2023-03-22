    library library IEEE;
    use IEEE.std_logic_1164.all;
   
    entity SEVEN_SEG_MSG2 is

        port (
            msg_inxd: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(6 downto 0)
            -- display: out std_logic_vector(3 downto 0)
        );

    end SEVEN_SEG_MSG2;

    architecture Behavioral of SEVEN_SEG_MSG2 is
        begin
            -- process msg_indx
            -- begin
        
            case msg_inxd is

            -- EN ESTA MATERIA SE APRENDE MUCHO --
            -- display <= "0010";

            when x"00" => letter <= x"B0";
            when x"01" => letter <= x"EA";
            when x"02" => letter <= x"B0";
            when x"03" => letter <= x"A4";
            when x"04" => letter <= x"F0";
            when x"05" => letter <= x"88";
            when x"06" => letter <= x"AB";
            when x"07" => letter <= x"88";
            when x"08" => letter <= x"F0";
            when x"09" => letter <= x"B0";
            when x"0A" => letter <= x"FA";
            when x"0B" => letter <= x"F9";
            when x"0C" => letter <= x"88";
            when x"0D" => letter <= x"A4";
            when x"0E" => letter <= x"B0";
            when x"0F" => letter <= x"88";
            when x"10" => letter <= x"98";
            when x"11" => letter <= x"FA";
            when x"12" => letter <= x"80";
            when x"13" => letter <= x"EA";
            when x"14" => letter <= x"C2";
            when x"15" => letter <= x"B0";
            when x"16" => letter <= x"AB";
            when x"17" => letter <= x"C0";
            when x"18" => letter <= x"B1";
            when x"19" => letter <= x"C9";
            when x"1A" => letter <= x"81";
            when others => letter <= x"FF";

            end case;
        -- end process;
    end Behavioral;