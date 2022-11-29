library ieee;
use ieee.std_logic_1164.all;
entity ff32 is
  port ( a : in std_logic_vector( 31 downto 0);
         load,clear,clock : in std_logic;
         z : out std_logic_vector( 31 downto 0) );
end ff32;
architecture behavioural of ff32 is
begin
process(clock,clear)
begin
  if (clear = '1') then
    z <= "00000000000000000000000000000000" ;
  elsif (rising_edge(clock)) then
   if ( load = '1' ) then 
  z <= a;
end if;
  end if;
  end process;
end behavioural;
