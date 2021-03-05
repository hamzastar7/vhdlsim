------------------------------------
-- TINA HDL Macro Description Begin
-- 
-- entity_name:counter;
-- arch_name:ignored;
-- ports:clock,e0,e1,e2,e3;s;
-- Mode:VHDLTyp;
-- 
-- TINA HDL Macro Description End
------------------------------------

library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
ENTITY counter is 
    port(clock: in std_logic; 
    E0: in std_logic;
    E1: in std_logic;
    E2: in std_logic;
    E3: in std_logic;    
    S: out std_logic
    ); 
END counter;
ARCHITECTURE behv of counter is
    signal cnt: std_logic_vector(3 downto 0) := "0000";
    signal e:   std_logic_vector(3 downto 0);
    signal ss: std_logic;
BEGIN 
    process(clock ) begin
    if (clock = '1' and clock'event) then
            if (CNT <= e) then  ss <= '1';
            else ss <= '0';
            end if;

            if(CNT = "1111") then CNT <= "0000";
            else CNT <= CNT+1 ;
            end if;
    end if;
    end process;
    e(0) <= E0;
    e(1) <= E1;
    e(2) <= E2;
    e(3) <= E3;    
    S <= ss;
END behv;
