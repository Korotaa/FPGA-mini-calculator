--********************************************
--            USED LIBRARY                  --
--********************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

--*******************************************
--            ENTITY Declaration
--*******************************************

ENTITY compare_4bits_tb IS 
END compare_4bits_tb;

--*******************************************
--            RTL Description
--*******************************************

ARCHITECTURE bhv OF compare_4bits_tb IS
COMPONENT compare_4bits IS 
  PORT(
     a: IN std_logic_vector(3 DOWNTO 0);
     b: IN std_logic_vector(3 DOWNTO 0);
     sup: OUT std_logic;
     ega: OUT std_logic;
     inf: OUT std_logic);
   END COMPONENT;
   
  SIGNAL a:std_logic_vector(3 DOWNTO 0);
  SIGNAL b: std_logic_vector(3 DOWNTO 0);
  SIGNAL sup: std_logic;
  SIGNAL ega: std_logic;
  SIGNAL inf: std_logic;
  BEGIN
    
  C0: compare_4bits PORT MAP(
     a => a,
     b => b,
     sup => sup,
     ega => ega,
     inf => inf);
  PROCESS
    BEGIN
      a <= "1100";
      b <= "0101";
      WAIT FOR 5 ns;
      a <= "0001";
      b <= "0101";
      WAIT FOR 5 ns;
      a <= "1010";
      b <= "1010";
      WAIT FOR 5 ns;
    END PROCESS;
  END bhv;