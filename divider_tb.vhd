library ieee;
use ieee.std_logic_1164.all;
entity divider_tb is
end divider_tb;
architecture behaviour of divider_tb is
  component divider is
   port ( a: in std_logic_vector( 15 downto 0);
         c  : out std_logic_vector(15 downto 0));
  end component;
  signal x: std_logic_vector(15 downto 0);
  signal y: std_logic_vector(15 downto 0);
  begin
    u1:divider port map(a => x,c => y);
  process
    begin
      x <= "0000000000000000"   ;
      wait for 10ns;
      x <= "0000000000000001"   ;
      wait for 10ns;
      x <= "0000000000000010"   ;
      wait for 10ns;
      x <= "0000000000000011"   ;
      wait for 10ns;
      x <= "0000000000000100"   ;
      wait for 10ns;
      x <= "0000000000000101"   ;
      wait for 10ns;
      x <= "0000000000000110"   ;
      wait for 10ns;
      x <= "0000000000000111"   ;
      wait for 10ns;
    end process;
    
end behaviour;
