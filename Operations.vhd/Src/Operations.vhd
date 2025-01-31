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

ENTITY Operations IS 
PORT(
     A: IN std_logic_vector(15 DOWNTO 0);
     B: IN std_logic_vector(15 DOWNTO 0);
     opcode: IN std_logic_vector(2 DOWNTO 0);
     Result: OUT std_logic_vector(15 DOWNTO 0));
END Operations;

--*****************************************************************--
--            rtl Description                                      --
--*****************************************************************--

ARCHITECTURE rtl OF Operations IS 
BEGIN
  PROCESS(opcode,A,B)
    BEGIN
      CASE opcode IS
      WHEN "000" => 
                   Result <= A AND B;
      WHEN "001" => 
                   Result <= A OR B;
      WHEN "010" => 
                   Result <= A NAND B;
      WHEN "011" => 
                   Result <= A NOR B;
      WHEN "100" => 
                   Result <= A XOR B;
      WHEN "101" => 
                   Result <= NOT A;
      WHEN "110" => 
                   Result <= A + B;
      WHEN "111" => 
                   Result <= A - B;
      WHEN OTHERS => 
                   Result <= (OTHERS => '0');
  END CASE;
END PROCESS;
END rtl;
     