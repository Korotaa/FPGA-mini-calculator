--********************************************
--            USED LIBRARY                  --
--********************************************
LIBRARY IEEE;
USE IEEE.NUMERIC_STD.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

--*******************************************
--            ENTITY Declaration
--*******************************************

ENTITY compare_4bits IS 
PORT(
     a: IN std_logic_vector(3 DOWNTO 0);
     b: IN std_logic_vector(3 DOWNTO 0);
     sup: OUT std_logic;
     ega: OUT std_logic;
     inf: OUT std_logic);
END compare_4bits;

--*******************************************
--            RTL Description
--*******************************************

ARCHITECTURE bhv OF compare_4bits IS
BEGIN
  sup <= '1' WHEN a > b ELSE '0';
  ega <= '1' WHEN a=b ELSE '0';
  inf <= '1' WHEN a< b ELSE '0';
END bhv;
     