
--**********************************************************
-- ENSA FES 
-- Filière : 1ère Année GSEII
--**********************************************************
--Title : sub_1_bit.vhd
--TP : Conception d'une serrure Electronique
--Block : 
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
--                      LIBRARY USED                                --
--******************************************************************--

LIBRARY IEEE;
USE IEEE.NUMERIC_STD.all;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

--******************************************************************--
--                      ENTITY Declaration                          --
--******************************************************************--

ENTITY State_result IS
  PORT( Result: IN std_logic_vector(15 DOWNTO 0);
        Z: OUT std_logic; --Indicates a null result
        V: OUT std_logic;-- Indicates an Overflow
        N: OUT std_logic);-- Indicates a negative result
END State_result;


--******************************************************************--
--                      rtl Description                             --
--******************************************************************--

ARCHITECTURE rtl OF State_result IS
BEGIN
  Z <= '1' WHEN Result <= "0000000000000000" ELSE '0';
  V <= '1' WHEN Result > "1111111111111111" ELSE '0';
  N <= '1' WHEN Result < "0000000000000000" ELSE '0';
END  rtl;
