library ieee;
use ieee.std_logic_1164.all;
entity xor2 is
  port ( x,y : in std_logic;
         z   : out std_logic);
end xor2;
architecture behavioural of xor2 is
begin
  z <= x xor y ;
end behavioural;

