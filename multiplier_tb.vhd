library ieee;
use ieee.std_logic_1164.all;
entity multiplier_tb is
end multiplier_tb;
architecture behaviour of multiplier_tb is
  component multiplier is
   port ( a,b: in std_logic_vector( 7 downto 0);
         c  : out std_logic_vector(15 downto 0));
  end component;
  signal x,y: std_logic_vector(7 downto 0);
  signal z: std_logic_vector(15 downto 0);
  begin
    u1:multiplier port map(a => x,b => y,c => z);
  process
    begin
      x <= "00000000"   ;
      y <= "00000000"   ;
      wait for 10ns;
      x <= "00000001"   ;
      y <= "00000001"   ;
      wait for 10ns;
      x <= "00000010"   ;
      y <= "00000010"   ;
      wait for 10ns;
      x <= "00000011"   ;
      y <= "00000011"   ;
      wait for 10ns;
      x <= "00000100"   ;
      y <= "00000100"   ;
      wait for 10ns;
      x <= "00000101"   ;
      y <= "00000101"   ;
      wait for 10ns;
      x <= "00000110"   ;
      y <= "00000110"   ;
      wait for 10ns;
      x <= "00000111"   ;
      y <= "00000111"   ;
      wait for 10ns;
    end process;
    
end behaviour;
