library ieee;
use ieee.std_logic_1164.all;
entity top_8bit_tb is
end top_8bit_tb;
architecture behaviour of top_8bit_tb is
component top_8bit is
  port ( x,y: in std_logic_vector( 7 downto 0);
         load,clear,clock : in std_logic;
         z  : out std_logic_vector(15 downto 0));
end component;
  signal x,y: std_logic_vector(7 downto 0);
  signal z: std_logic_vector(15 downto 0);
  signal load,clear,clock : std_logic;
  begin
    u1:top_8bit port map(x => x,y => y,load=>load,clear=>clear,clock=>clock,z => z);
  process
    begin
      clock <= '0';
      wait for 5ns;
      clock <= '1';
      wait for 5ns;
    end process;
    
  process
    begin
      x <= "00000000"   ;
      y <= "00000000"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "00000101"   ;
      y <= "00000101"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "00000010"   ;
      y <= "00000010"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "00000011"   ;
      y <= "00000011"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "00000100"   ;
      y <= "00000100"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "00000101"   ;
      y <= "00000101"   ;
      load <= '0';
      clear <= '0';
      wait for 50ns;
      x <= "00000110"   ;
      y <= "00000110"   ;
      load <= '1';
      clear <= '1';
      wait for 50ns;
      x <= "00000111"   ;
      y <= "00000111"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
    end process;
    
end behaviour;

