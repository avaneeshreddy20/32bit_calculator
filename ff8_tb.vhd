library ieee;
use ieee.std_logic_1164.all;
entity ff8_tb is
end ff8_tb;
architecture behavioural of ff8_tb is
component ff8 is
  port ( a : in std_logic_vector( 7 downto 0);
         load,clear,clock : in std_logic;
         z : out std_logic_vector( 7 downto 0) );
end component;
signal x,y: std_logic_vector(7 downto 0);
signal load,clear,clock: std_logic;
begin
  u01: ff8 port map(a=> x,load=>load,clear=>clear,clock=>clock,z=> y);
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
           clear <= '0';load <= '1';    
           wait for 10ns;
           x <= "00000001"   ;
           clear <= '0';load <= '1'; 
           wait for 10ns;
           x <= "00000010"   ;
           clear <= '0';load <= '1'; 
           wait for 10ns;
           x <= "00000011"   ;
           clear <= '0';load <= '1'; 
           wait for 10ns;
           x <= "00000100"   ;
           clear <= '0';load <= '1'; 
           wait for 10ns;
           x <= "00000101"   ;
           clear <= '1';load <= '1'; 
           wait for 10ns;
           x <= "00000110"   ;
           clear <= '0';load <= '1'; 
           wait for 10ns;
           x <= "00000111"   ;
           clear <= '0';load <= '1'; 
           wait for 10ns;
         end process;
         
     end behavioural;