--******************************************--
--              USED LIBRARY                --
--******************************************--

LIBRARY IEEE;
USE IEEE.NUMERIC_STD.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

--*****************************************************************--
--            ENTITY Declaration                                   --
--*****************************************************************--

ENTITY Operations_tb IS 
END Operations_tb;

--*****************************************************************--
--            rtl Description                                      --
--*****************************************************************--

ARCHITECTURE rtl OF Operations_tb IS 
COMPONENT Operations IS
  PORT(
     A: IN std_logic_vector(15 DOWNTO 0);
     B: IN std_logic_vector(15 DOWNTO 0);
     opcode: IN std_logic_vector(2 DOWNTO 0);
     Result: OUT std_logic_vector(15 DOWNTO 0));
  END COMPONENT;
  
  SIGNAL A: std_logic_vector(15 DOWNTO 0);
  SIGNAL B: std_logic_vector(15 DOWNTO 0);
  SIGNAL opcode: std_logic_vector(2 DOWNTO 0);
  SIGNAL Result: std_logic_vector(15 DOWNTO 0);
BEGIN
  
  Op0: Operations PORT MAP(
    A => A,
    B  => B,
    opcode => opcode,
    Result => Result);
    A <= "1110010101101010";
    B  <= "1110010101101010";
    
    PROCESS
      BEGIN
        opcode <= "000";
        WAIT FOR 10 ns;
        opcode <= "001";
        WAIT FOR 10 ns;
        opcode <= "010";
        WAIT FOR 10 ns;
        opcode <= "011";
        WAIT FOR 10 ns;
        opcode <= "100";
        WAIT FOR 10 ns;
        opcode <= "101";
        WAIT FOR 10 ns;
        opcode <= "110";
        WAIT FOR 10 ns;
        opcode <= "111";
        WAIT FOR 10 ns;
      END PROCESS;
    END rtl;