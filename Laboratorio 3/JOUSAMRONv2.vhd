----------------------------------------------------------------------------------
-- Company: Escuela Colombiana de Ingenieria Julio Garavito
-- Engineer:
-- Samuel Arturo Lopez
-- Ronald Steven Barreto
-- Joel Simon Hernandez

-- Create Date: 03.03.2023 13:06:16
-- Design Name: Laboratorio 3
-- Module Name: JOUSAMRONv2 - Behavioral
-- Project Name: Laboratorio 3
-- Target Devices: Basys3
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity JOUSAMRONv2 is
    Port( V : in STD_LOGIC;
           W : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           a : out STD_LOGIC;
           b : out STD_LOGIC;
           c : out STD_LOGIC;
           d : out STD_LOGIC;
           e : out STD_LOGIC;
           f : out STD_LOGIC;
           g : out STD_LOGIC;
           Disp: out std_logic_vector (3 downto 0)
        );
end JOUSAMRONv2;

architecture Behavioral of JOUSAMRONv2 is

begin
Disp<="1110";


-- Tabla de Verdad

-- in	v	w	x	y	z   	out	    a	b	c	d	e	f	g
-- 0	0	0	0	0	0   	J	    1	0	0	0	0	1	1
-- 1	0	0	0	0	1   	O	    0	0	0	0	0	0	1
-- 2	0	0	0	1	0   	E	    0	1	1	0	0	0	0
-- 3	0	0	0	1	1   	L	    1	1	1	0	0	0	1
-- 4	0	0	1	0	0   	S	    0	1	0	0	1	0	0
-- 5	0	0	1	0	1   	A	    0	0	0	1	0	0	0
-- 6	0	0	1	1	0   	M	    0	1	0	1	0	1	1
-- 7	0	0	1	1	1   	U	    1	0	0	0	0	0	1
-- 8	0	1	0	0	0   	E	    0	1	1	0	0	0	0
-- 9	0	1	0	0	1   	L	    1	1	1	0	0	0	1
-- 10	0	1	0	1	0   	A	    0	0	0	1	0	0	0
-- 11	0	1	0	1	1   	R	    1	1	1	1	0	1	0
-- 12	0	1	1	0	0   	O	    0	0	0	0	0	0	1
-- 13	0	1	1	0	1   	N	    1	1	0	1	0	1	0
-- 14	0	1	1	1	0   	A	    0	0	0	1	0	0	0
-- 15	0	1	1	1	1   	L	    1	1	1	0	0	0	1
-- 16	1	0	0	0	0   	D	    1	0	0	0	0	1	0

a<=(y and z) or (w and z) or (not w and not x and not y and not z);
b<=(w and z) or (not w and not x and y) or (not w and x and not z) or ( w and not x and not y);
c<=(not w and not x and y) or ( w and not x and not y) or (w and y and z);
e<=(not w and x and not y and not z);
f<=(not w and not x and not y and not z) or (not w and x and y and not z) or (w and not x and y and z) or (w and x and not y and z);
g<=(not w and not x and z) or (not x and not y and z) or (not w and x and y) or (x and y and z) or (not v and not w and not x and not y)or (w and x and not y and not z);
d<=(x and not y and z) or (x and y and not z) or (w and not x and y);

end Behavioral;
