library library IEEE;
use IEEE.std_logic_1164.all;

entity messages_storage is
    port (
        -- 5 SWITCHES
        -- I/O: (R2 T1 U1 W2 R3)
        indx : in std_logic_vector(4 downto 0);

        -- 2 SWITCHES -- MULTIPLEXER CHANNEL
        -- I/O: (T2 T3)
        s : in std_logic_vector(1 downto 0);

        -- 4 DISPLAYS
        -- I/O: (W4 V4 U4 U2)
        display : out std_logic_vector(3 downto 0);

        -- 7 SEGMENTS
        -- I/O: (V7 W7 W6 U8 V8 U5 V5 U7) -- TIENE QUE SER EN ESTE ORDEN!!
        letter_out : out std_logic_vector(6 downto 0);
    );
end messages_storage;

architecture arch of messages_storage is

    signal letter_sigA: std_logic_vector(6 downto 0);
    signal letter_sigB: std_logic_vector(6 downto 0);
    signal letter_sigC: std_logic_vector(6 downto 0);
    signal letter_sigD: std_logic_vector(6 downto 0);

    -- Estas declaraciones parecen no ser necesarias:

    -- component SEVEN_SEG_MSG1 is

    --     port (
    --         msg_indx: in std_logic_vector(4 downto 0);
    --         letter: out std_logic_vector(6 downto 0)
    --     );

    -- end component;

    -- component SEVEN_SEG_MSG2 is

    --     port (
    --         msg_indx: in std_logic_vector(4 downto 0);
    --         letter: out std_logic_vector(6 downto 0)
    --     );

    -- end component;

    -- component SEVEN_SEG_MSG3 is

    --     port (
    --         msg_indx: in std_logic_vector(4 downto 0);
    --         letter: out std_logic_vector(6 downto 0)
    --     );

    -- end component;

    -- component SEVEN_SEG_MSG4 is

    --     port (
    --         msg_indx: in std_logic_vector(4 downto 0);
    --         letter: out std_logic_vector(6 downto 0)
    --     );

    -- end component;

    -- component deco2a4A is
    --     Port (
    --     S : in STD_LOGIC_VECTOR (1 downto 0);
    --     Y : out STD_LOGIC_VECTOR (3 downto 0)); 
    -- end component;

    -- component mux4a1 is
    --     Port ( 
    --     I : in STD_LOGIC_VECTOR (3 downto 0);
    --     S : in STD_LOGIC_VECTOR (1 downto 0);
    --     Y : out STD_LOGIC);
    --  end component;

    begin
        -- Puede que aqui se necesite un process

      -- process msg_indx 
            -- begin
            
            msg1: entity work.SEVEN_SEG_MSG1 port map (
                msg_indx => indx,
                letter_out => letter_sigA);
            msg2: entity work.SEVEN_SEG_MSG2 port map (
                msg_indx => indx,
                letter_out => letter_sigB);
            msg3: entity work.SEVEN_SEG_MSG3 port map (
                msg_indx => indx,
                letter_out => letter_sigC);
            msg4: entity work.SEVEN_SEG_MSG4 port map (
                msg_indx => indx,
                letter_out => letter_sigD);
    
            mux: entity work.mux4a1 port map (
                I(0)=>letter_sigA,
                I(1)=>letter_sigB,
                I(2)=>letter_sigC,
                I(3)=>letter_sigD,
                S=>s,
                Y=>letter_out
                );
            
            deco: entity work.deco2a4A port map (
                S=>s,
                Y=>display
                );

        -- end process;
        end arch;