--********************************************--
--            USED LIBRARY                  --
--********************************************--

LIBRARY IEEE;
USE IEEE.NUMERIC_STD.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

--*******************************************--
--            ENTITY declararation           --
--*******************************************--

ENTITY Compare_8bits IS
    PORT(
        A: IN std_logic_vector(7 DOWNTO 0);
        B: IN std_logic_vector(7 DOWNTO 0);
        Sup: OUT std_logic;
        Ega: OUT std_logic;
        Inf: OUT std_logic);
    END Compare_8bits;

--********************************************--
--                  RTL Description
--********************************************--

ARCHITECTURE rtl OF Compare_8bits IS 
COMPONENT compare_4bits IS 
    PORT(a: IN std_logic_vector(3 DOWNTO 0);
         b: IN std_logic_vector(3 DOWNTO 0);
         sup: OUT std_logic;
         ega: OUT std_logic;
         inf: OUT std_logic);
     END COMPONENT;
SIGNAL sig_0: std_logic;
SIGNAL sig_1: std_logic;
SIGNAL sig_2: std_logic;
SIGNAL sig_3: std_logic;
SIGNAL sig_4: std_logic;
SIGNAL sig_5: std_logic;
SIGNAL sig_6: std_logic;
SIGNAL sig_7: std_logic;
BEGIN
    c0: compare_4bits PORT MAP(
       a => A(7 DOWNTO 4),
       b => B(7 DOWNTO 4),
       ega => sig_0,
       sup => sig_1,
       inf => sig_2);
       
    c1: compare_4bits PORT MAP(
       a => A(3 DOWNTO 0),
       b => B(3 DOWNTO 0),
       ega => sig_3,
       sup => sig_4,
       inf => sig_5);
    Ega <= sig_0 AND sig_3;
    sig_6 <= sig_0 AND sig_4;
    sig_7 <= sig_0 AND sig_5;
    Sup <= sig_1 OR sig_6;
    Inf <= sig_2 OR sig_7;
END rtl;