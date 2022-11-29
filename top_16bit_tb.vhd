library ieee;
use ieee.std_logic_1164.all;
entity top_16bit_tb is
end top_16bit_tb;
architecture behaviour of top_16bit_tb is
component top_16bit is
  port ( x,y: in std_logic_vector( 15 downto 0);
         load,clear,clock : in std_logic;
         z  : out std_logic_vector(31 downto 0));
end component;
  signal x,y: std_logic_vector(15 downto 0);
  signal z: std_logic_vector(31 downto 0);
  signal load,clear,clock : std_logic;
  begin
    u1:top_16bit port map(x => x,y => y,load=>load,clear=>clear,clock=>clock,z => z);
  process
    begin
      clock <= '0';
      wait for 5ns;
      clock <= '1';
      wait for 5ns;
    end process;
    
  process
    begin
      x <= "0000000000000000"   ;
      y <= "0000000000000000"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "0000010100000101"   ;
      y <= "0000010100000101"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "0000001000000010"   ;
      y <= "0000001000000010"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "0000001100000011"   ;
      y <= "0000001100000011"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "0000010000000100"   ;
      y <= "0000010000000100"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
      x <= "0000010100000101"   ;
      y <= "0000010100000101"   ;
      load <= '0';
      clear <= '0';
      wait for 50ns;
      x <= "0000011000000110"   ;
      y <= "0000011000000110"   ;
      load <= '1';
      clear <= '1';
      wait for 50ns;
      x <= "0000011100000111"   ;
      y <= "0000011100000111"   ;
      load <= '1';
      clear <= '0';
      wait for 50ns;
    end process;
    
end behaviour;
