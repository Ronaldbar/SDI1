library library IEEE;
use IEEE.std_logic_1164.all;

entity messages_storage is
    port (
        -- 5 SWITCHES
        indx : in std_logic_vector(4 downto 0);
        -- 2 SWITCHES
        s : in std_logic_vector(1 downto 0);
        -- 4 DISPLAYS
        display : out std_logic_vector(3 downto 0);
        -- 7 SEGMENTS
        letter_out : out std_logic_vector(6 downto 0);
    );
end messages_storage;

architecture arch of messages_storage is

    signal letter_sigA: std_logic_vector(6 downto 0);
    signal letter_sigB: std_logic_vector(6 downto 0);
    signal letter_sigC: std_logic_vector(6 downto 0);
    signal letter_sigD: std_logic_vector(6 downto 0);

    component SEVEN_SEG_MSG1 is

        port (
            msg_indx: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(6 downto 0)
        );

    end component;

    component SEVEN_SEG_MSG2 is

        port (
            msg_indx: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(6 downto 0)
        );

    end component;

    component SEVEN_SEG_MSG3 is

        port (
            msg_indx: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(6 downto 0)
        );

    end component;

    component SEVEN_SEG_MSG4 is

        port (
            msg_indx: in std_logic_vector(4 downto 0);
            letter: out std_logic_vector(6 downto 0)
        );

    end component;

    component deco2a4A is
        Port (
        S : in STD_LOGIC_VECTOR (1 downto 0);
        Y : out STD_LOGIC_VECTOR (3 downto 0)); 
    end component;

    component mux4a1 is
        Port ( 
        I : in STD_LOGIC_VECTOR (3 downto 0);
        S : in STD_LOGIC_VECTOR (1 downto 0);
        Y : out STD_LOGIC);
     end component;

    begin
            
            msg1: SEVEN_SEG_MSG1 port map (msg_indx => indx, letter_out => letter_sigA);
            msg2: SEVEN_SEG_MSG2 port map (msg_indx => indx, letter_out => letter_sigB);
            msg3: SEVEN_SEG_MSG3 port map (msg_indx => indx, letter_out => letter_sigC);
            msg4: SEVEN_SEG_MSG4 port map (msg_indx => indx, letter_out => letter_sigD);
    
            mux: mux4a1 port map (
                I(0)=>letter_sigA,
                I(1)=>letter_sigB,
                I(2)=>letter_sigC,
                I(3)=>letter_sigD,
                S=>s,
                Y=>letter_out
                );
            
            deco: deco2a4A port map (S=>s, Y=>display);


        end arch;