library ieee;
use ieee.std_logic_1164.all;
entity multiplier16_tb is
end multiplier16_tb;
architecture behaviour of multiplier16_tb is
  component multiplier16 is
   port ( a,b: in std_logic_vector( 15 downto 0);
         c  : out std_logic_vector(31 downto 0));
  end component;
  signal x,y: std_logic_vector(15 downto 0);
  signal z: std_logic_vector(31 downto 0);
  begin
    u1:multiplier16 port map(a => x,b => y,c => z);
  process
    begin
      x <= "0000000000000000"   ;
      y <= "0000000000000000"   ;
      wait for 10ns;
      x <= "0000000100000001"   ;
      y <= "0000000100000001"   ;
      wait for 10ns;
      x <= "0000001000000001"   ;
      y <= "0000001000000001"   ;
      wait for 10ns;
      x <= "0000001100000001"   ;
      y <= "0000001100000001"   ;
      wait for 10ns;
      x <= "0000010000000001"   ;
      y <= "0000010000000001"   ;
      wait for 10ns;
      x <= "0000010100000001"   ;
      y <= "0000010100000001"   ;
      wait for 10ns;
      x <= "0000011000000001"   ;
      y <= "0000011000000001"   ;
      wait for 10ns;
      x <= "0000011100000001"   ;
      y <= "0000011100000001"   ;
      wait for 10ns;
    end process;
    
end behaviour;
