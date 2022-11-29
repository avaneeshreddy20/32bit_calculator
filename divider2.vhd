library ieee;
use ieee.std_logic_1164.all;
entity divider2 is
  port ( a  : in std_logic_vector( 31 downto 0);
         c  : out std_logic_vector(31 downto 0));
end divider2;

architecture structural of divider2 is
begin
  c <= "00" & a(31 downto 2);
end structural;