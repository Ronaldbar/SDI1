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
        -- ME QUEDO GRANDE MUCHACHOS --
        -- display <= "0010";
        
        case msg_indx is

            when x"00" => letter <= x"30"
            when x"01" => letter <= x"6A"
            when x"02" => letter <= x"30"
            when x"03" => letter <= x"24"
            when x"04" => letter <= x"70"
            when x"05" => letter <= x"08"
            when x"06" => letter <= x"2B"
            when x"07" => letter <= x"08"
            when x"08" => letter <= x"70"
            when x"09" => letter <= x"30"
            when x"0A" => letter <= x"7A"
            when x"0B" => letter <= x"79"
            when x"0C" => letter <= x"08"
            when x"0D" => letter <= x"24"
            when x"0E" => letter <= x"30"
            when x"0F" => letter <= x"08"
            when x"10" => letter <= x"18"
            when x"11" => letter <= x"7A"
            when x"12" => letter <= x"30"
            when x"13" => letter <= x"6A"
            when x"14" => letter <= x"42"
            when x"15" => letter <= x"30"
            when x"16" => letter <= x"2B"
            when x"17" => letter <= x"40"
            when x"18" => letter <= x"31"
            when x"19" => letter <= x"49"
            when x"1A" => letter <= x"01"
            when others => letter <= x"7F";

        end case;

    end Behavioral;