library ieee;
use ieee.std_logic_1164.all;
entity t_register_tb is
end t_register_tb;
architecture behaviour of t_register_tb is
component t_register is
port( T: in std_logic_vector(15 downto 0);
clock,clear: in std_logic;
Q: out std_logic);
end component;
  signal x: std_logic_vector(15 downto 0);
  signal y,clock,clear: std_logic:='0';
  begin
    u1: t_register port map(T => x,clock => clock,clear => clear,Q => y);
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
      x <= "0000000000000000"   ;
      wait for 10ns;
      clear <= '0';
      x <= "0000000000000000"   ;
      wait for 10ns;
      clear <= '0';
      x <= "0000000000000001"   ;
      wait for 10ns;
      clear <= '0';
      x <= "0000000000000010"   ;
      wait for 10ns;
      clear <= '0';
      x <= "0000000000000011"   ;
      wait for 10ns;
      clear <= '0';
      x <= "0000000000000100"   ;
      wait for 10ns;
      clear <= '1';
      x <= "0000000000000011"   ;
      wait for 10ns;
      clear <= '0';
      x <= "0000000000000011"   ;
      wait for 10ns;
    end process;
    
end behaviour;
