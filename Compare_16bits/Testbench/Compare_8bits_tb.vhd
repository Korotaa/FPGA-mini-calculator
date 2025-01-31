--********************************************
--            USED LIBRARY                  --
--********************************************
LIBRARY IEEE;
USE IEEE.NUMERIC_STD.all; 
USE IEEE.STD_LOGIC_1164.all;
--USE IEEE.STD_LOGIC_UNSIGNED.all;

--*******************************************
--            ENTITY Declaration
--*******************************************

ENTITY Compare_8bits_tb IS 
END Compare_8bits_tb;

--*******************************************
--            RTL Description
--*******************************************

ARCHITECTURE bhv OF Compare_8bits_tb IS
COMPONENT Compare_8bits IS 
  PORT(
     A: IN std_logic_vector(7 DOWNTO 0);
     B: IN std_logic_vector(7 DOWNTO 0);
     Sup: OUT std_logic;
     Ega: OUT std_logic;
     Inf: OUT std_logic);
   END COMPONENT;
   
  SIGNAL a:std_logic_vector(7 DOWNTO 0);
  SIGNAL b: std_logic_vector(7 DOWNTO 0);
  SIGNAL sup: std_logic;
  SIGNAL ega: std_logic;
  SIGNAL inf: std_logic;
  BEGIN
    
  C0: Compare_8bits PORT MAP(
     A => a,
     B => b,
     Sup => sup,
     Ega => ega,
     Inf => inf);
  PROCESS
    BEGIN
      a <= "11000101";
      b <= "01010000";
      WAIT FOR 15 ns;
      a <= "00010101";
      b <= "01011110";
      WAIT FOR 15 ns;
      a <= "10101010";
      b <= "10101010";
      WAIT FOR 15 ns;
    END PROCESS;
  END bhv;