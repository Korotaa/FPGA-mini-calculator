--******************************************************************--
--           Nom   :    Korota Arsène COULIBALY
--           Classe :   gseii2
--******************************************************************--

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

ENTITY UAL IS
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
END UAL;

--******************************************************************--
--                          rtl Description                         --
--******************************************************************--

ARCHITECTURE rtl OF UAL IS

COMPONENT Operations IS 
  PORT(
     A: IN std_logic_vector(15 DOWNTO 0);
     B: IN std_logic_vector(15 DOWNTO 0);
     opcode: IN std_logic_vector(2 DOWNTO 0);
     Result: OUT std_logic_vector(15 DOWNTO 0));
END COMPONENT;

COMPONENT Compare_16bits IS
  PORT(
        A: IN std_logic_vector(15 DOWNTO 0);
        B: IN std_logic_vector(15 DOWNTO 0);
        Sup: OUT std_logic;
        Ega: OUT std_logic;
        Inf: OUT std_logic);
END COMPONENT;

COMPONENT State_result IS
  PORT( Result: IN std_logic_vector(15 DOWNTO 0);
        Z: OUT std_logic; --Indicates a null result
        V: OUT std_logic;-- Indicates an Overflow
        N: OUT std_logic);-- Indicates a negative result
END COMPONENT;
SIGNAL sig_0: std_logic_vector(15 DOWNTO 0);
BEGIN
  Op1: Operations PORT MAP(
     A => Input_A,
     B => Input_B,
     Opcode => Opcode,
     Result => sig_0);
    
  comp1: Compare_16bits PORT MAP(
        A => Input_A,
        B => Input_B,
        Sup => Sup,
        Ega => Ega,
        Inf => Inf);
  
  State: State_result PORT MAP(
       Result  => sig_0,
       Z => Z,
       V => V,
       N => N);
  Result <= sig_0;
END rtl;