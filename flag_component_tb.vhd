library ieee;
use ieee.std_logic_1164.all;
entity flag_component_tb is
end flag_component_tb;
architecture behaviour of flag_component_tb is
component flag_component is
port( T: in std_logic_vector(15 downto 0);
clock,clear,load: in std_logic;
end_flag: out std_logic);
end component;
  signal x: std_logic_vector(15 downto 0);
  signal y: std_logic:='0';
  signal clock,clear,load: std_logic;
  begin
    u1: flag_component port map(T => x,clock => clock,clear => clear,load =>load,end_flag => y);
    process
         begin
           clock <= '0';
           wait for 5ns;
           clock <= '1';
           wait for 5ns;
         end process;
  process
    begin
      clear <= '1';
      load <= '1';
      x <= "0000000000000000"   ;
      wait for 10ns;
      clear <= '0';
      load <= '1';
      x <= "0000000000000000"   ;
      wait for 10ns;
      clear <= '0';
      load <= '1';
      x <= "0000000000000001"   ;
      wait for 10ns;
      clear <= '0';
      load <= '1';
      x <= "0000000000000010"   ;
      wait for 10ns;
      clear <= '0';
      load <= '0';
      x <= "0000000000000011"   ;
      wait for 10ns;
      clear <= '0';
      load <= '1';
      x <= "0000000000000100"   ;
      wait for 10ns;
      clear <= '1';
      load <= '1';
      x <= "0000000000000011"   ;
      wait for 10ns;
      clear <= '0';
      load <= '1';
      x <= "0000000000000011"   ;
      wait for 10ns;
    end process;
    
end behaviour;

