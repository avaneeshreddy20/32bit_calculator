library ieee;
use ieee.std_logic_1164.all;
entity divider2_tb is
end divider2_tb;
architecture behaviour of divider2_tb is
  component divider2 is
   port ( a: in std_logic_vector( 31 downto 0);
         c  : out std_logic_vector(31 downto 0));
  end component;
  signal x: std_logic_vector(31 downto 0);
  signal y: std_logic_vector(31 downto 0);
  begin
    u1:divider2 port map(a => x,c => y);
  process
    begin
      x <= "00000000000000000000000000000000"   ;
      wait for 10ns;
      x <= "00000000000000010000000000000000"   ;
      wait for 10ns;
      x <= "00000000000000100000000000000000"   ;
      wait for 10ns;
      x <= "00000000000000110000000000000000"   ;
      wait for 10ns;
      x <= "00000000000001000000000000000000"   ;
      wait for 10ns;
      x <= "00000000000001010000000000000000"   ;
      wait for 10ns;
      x <= "00000000000001100000000000000000"   ;
      wait for 10ns;
      x <= "00000000000001110000000000000000"   ;
      wait for 10ns;
    end process;
    
end behaviour;
