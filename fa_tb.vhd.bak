library ieee;
use ieee.std_logic_1164.all;
entity fa_tb is
end fa_tb;
architecture behaviour of fa_tb is
  component fa is
  port ( a,b,cin : in std_logic;
         cout,s   : out std_logic);
  end component;
  signal x: std_logic_vector(2 downto 0);
  signal y: std_logic_vector(1 downto 0);
  begin
    u1:fa port map(a => x(0),b => x(1),cin => x(2),cout => y(1),s => y(0));
  process
    begin
      x <= "000"   ;
      wait for 10ns;
      x <= "001"   ;
      wait for 10ns;
      x <= "010"   ;
      wait for 10ns;
      x <= "011"   ;
      wait for 10ns;
      x <= "100"   ;
      wait for 10ns;
      x <= "101"   ;
      wait for 10ns;
      x <= "110"   ;
      wait for 10ns;
      x <= "111"   ;
      wait for 10ns;
    end process;
    
 process
   variable error_status: boolean;
   begin
     wait on x;
     wait for 10ns;
     if ((x ="000" and y = "00")or
         (x ="001" and y = "01")or
         (x ="010" and y = "01")or
         (x ="011" and y = "10")or
         (x ="100" and y = "01")or
         (x ="101" and y = "10")or
         (x ="110" and y = "10")or
         (x ="111" and y = "11"))
     then error_status:= false;
   else error_status:= true;
   end if;
   assert not error_status
      report "test failed."
      severity note;
    end process;
end behaviour;