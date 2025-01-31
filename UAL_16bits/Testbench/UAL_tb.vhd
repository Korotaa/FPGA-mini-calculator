--**********************************************************
-- ENSA FES 
-- Filière : 1ère Année GSEII
--**********************************************************
--Title : sub_1_bit.vhd
--TP : Conception d'une serrure Electronique
--Block : Mémoire
--
--*************************************************************
--File : sub_1bit.vhd
--Authors : COULIBALY Korota Arsène
--Created : 
--
--*************************************************************
--Description :  
--
--*************************************************************

--******************************************************************--
--                          USED LIBRARY                            --
--******************************************************************--

LIBRARY IEEE;
USE IEEE.NUMERIC_STD.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

--******************************************************************--
--                          ENTITY Declaration                      --
--******************************************************************--

ENTITY UAL_tb IS
  
END UAL_tb;

--******************************************************************--
--                          rtl Description                         --
--******************************************************************--

ARCHITECTURE rtl OF UAL_tb IS
 COMPONENT UAL IS
    PORT(
       Input_A: IN std_logic_vector(15 DOWNTO 0);
       Input_B: IN std_logic_vector(15 DOWNTO 0);
       Result: OUT std_logic_vector(15 DOWNTO 0);
       Opcode: IN std_logic_vector(2 DOWNTO 0);
       Sup: OUT std_logic;
       Ega: OUT std_logic;
       Inf: OUT std_logic;
       Z: OUT std_logic;
       V: OUT std_logic;
       N: OUT std_logic);
  END COMPONENT; 
  
  SIGNAL Input_A: std_logic_vector(15 DOWNTO 0);
  SIGNAL Input_B: std_logic_vector(15 DOWNTO 0);
  SIGNAL Result: std_logic_vector(15 DOWNTO 0);
  SIGNAL Opcode: std_logic_vector(2 DOWNTO 0);
  SIGNAL Sup: std_logic;
  SIGNAL Ega: std_logic;
  SIGNAL Inf: std_logic;
  SIGNAL Z: std_logic;
  SIGNAL V: std_logic;
  SIGNAL N: std_logic;
   BEGIN
     Unité0: UAL PORT MAP(
     Input_A => Input_A,
     Input_B => Input_B,
     Result => Result,
     Opcode => Opcode,
     Sup => Sup,
     Ega => Ega,
     Inf => Inf,
     Z => Z,
     V => V,
     N => N);
    PROCESS
      BEGIN
        Input_A <= "1110010101101111";
        Input_B <= "1011001010101011";
        WAIT FOR 7 ns;
        Input_A <= "0010010101101110";
        Input_B <= "1111001010101001";
        WAIT FOR 7 ns;
        Input_A <= "1010101010101010";
        Input_B <= "1010101010101010";
        WAIT FOR 7 ns;
    END PROCESS;
    PROCESS
      BEGIN
        Opcode <= "000";
        WAIT FOR 7 ns;
        Opcode <= "001";
        WAIT FOR 7 ns;
        Opcode <= "010";
        WAIT FOR 7 ns;
        Opcode <= "011";
        WAIT FOR 7 ns;
        Opcode <= "100";
        WAIT FOR 7 ns;
        Opcode <= "101";
        WAIT FOR 7 ns;
        Opcode <= "110";
        WAIT FOR 7 ns;
        Opcode <= "111";
        WAIT FOR 7 ns;
    END PROCESS;
  END rtl;
  