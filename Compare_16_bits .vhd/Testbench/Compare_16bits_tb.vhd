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

ENTITY Compare_16bits_tb IS 
END Compare_16bits_tb;

--*******************************************
--            RTL Description
--*******************************************

ARCHITECTURE bhv OF Compare_16bits_tb IS
COMPONENT Compare_16bits IS 
  PORT(
     A: IN std_logic_vector(15 DOWNTO 0);
     B: IN std_logic_vector(15 DOWNTO 0);
     Sup: OUT std_logic;
     Ega: OUT std_logic;
     Inf: OUT std_logic);
   END COMPONENT;
   
  SIGNAL a:std_logic_vector(15 DOWNTO 0);
  SIGNAL b: std_logic_vector(15 DOWNTO 0);
  SIGNAL sup: std_logic;
  SIGNAL ega: std_logic;
  SIGNAL inf: std_logic;
  BEGIN
    
  C0: Compare_16bits PORT MAP(
     A => a,
     B => b,
     Sup => sup,
     Ega => ega,
     Inf => inf);
  PROCESS
    BEGIN
      a <= "1100010111000101";
      b <= "0101000011000101";
      WAIT FOR 15 ns;
      a <= "0001010111000101";
      b <= "0101111011000101";
      WAIT FOR 15 ns;
      a <= "1010101011000101";
      b <= "1010101011000101";
      WAIT FOR 15 ns;
    END PROCESS;
  END bhv;