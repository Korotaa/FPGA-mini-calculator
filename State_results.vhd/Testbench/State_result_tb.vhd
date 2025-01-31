--******************************************************************--
--                      LIBRARY USED                                --
--******************************************************************--

LIBRARY IEEE;
USE IEEE.NUMERIC_STD.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

--******************************************************************--
--                      ENTITY Declaration                          --
--******************************************************************--

ENTITY State_result_tb IS

END State_result_tb;


--******************************************************************--
--                      rtl Description                             --
--******************************************************************--

ARCHITECTURE rtl OF State_result_tb IS
COMPONENT State_result IS 
  PORT( Result: IN std_logic_vector(15 DOWNTO 0)
        Z: OUT std_logic; --Indique un resultat
        V: OUT std_logic;
        N: OUT std_logic);
END COMPONENT;
 SIGNAL Result: std_logic_vector(15 DOWNTO 0)
 SIGNAL Z: std_logic; --Indique un resultat
 SIGNAL V: std_logic;
 SIGNAL N: std_logic;
 BEGIN
   PROCESS
     BEGIN
       Result <= (OTHERS => '0');
       WAIT AFTER 10 ns;
  
END  rtl;
