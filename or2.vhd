library ieee;
use ieee.std_logic_1164.all;
entity or2 is
  port ( x,y : in std_logic;
         z   : out std_logic);
end or2;
architecture behavioural of or2 is
begin
  z <= x or y ;
end behavioural;
