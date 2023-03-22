    library library IEEE;
    use IEEE.std_logic_1164.all;
   
    entity SEVEN_SEG_MSG1 is

        port (
            msg_indx: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(7 downto 0)
            -- display: out std_logic_vector(3 downto 0)
        );

    end SEVEN_SEG_MSG1;

    architecture Behavioral of SEVEN_SEG_MSG1 is
        begin
            --no estoy seguro del process por que segun lo que vi, no lo ponen,
            --pero vivado lo pide, puede que sea solo cuando corre este arhivo directamente en la FPGA
            
            -- process msg_indx 
            -- begin
            
            -- JOE HERNANDEZ  SAM LOPEZ  RON BARRETO --
            -- display <= "1110";
            
            case msg_indx is
            when x"00" => letter <= x"C3";
            when x"01" => letter <= x"81";
            when x"02" => letter <= x"B0";
            when x"03" => letter <= x"C8";
            when x"04" => letter <= x"B0";
            when x"05" => letter <= x"FA";
            when x"06" => letter <= x"EA";
            when x"07" => letter <= x"88";
            when x"08" => letter <= x"EA";
            when x"09" => letter <= x"C2";
            when x"0A" => letter <= x"B0";
            when x"0B" => letter <= x"92";
            when x"0C" => letter <= x"A4";
            when x"0D" => letter <= x"88";
            when x"0E" => letter <= x"AB";
            when x"0F" => letter <= x"F1";
            when x"10" => letter <= x"81";
            when x"11" => letter <= x"98";
            when x"12" => letter <= x"B0";
            when x"13" => letter <= x"92";
            when x"14" => letter <= x"FA";
            when x"15" => letter <= x"81";
            when x"16" => letter <= x"EA";
            when x"17" => letter <= x"E0";
            when x"18" => letter <= x"88";
            when x"19" => letter <= x"FA";
            when x"1A" => letter <= x"FA";
            when x"1B" => letter <= x"B0";
            when x"1C" => letter <= x"F0";
            when x"1D" => letter <= x"81";
            when others => letter <= x"FF";
        
        end case;
        -- end process;
    end Behavioral;

    