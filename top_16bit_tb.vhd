library ieee;
use ieee.std_logic_1164.all;
entity top_16bit_tb is
end top_16bit_tb;

architecture behavioural of top_16bit_tb is
component top_16bit is
  port ( x,y: in std_logic_vector( 15 downto 0);
         load,clear,clock : in std_logic;
         z  : out std_logic_vector(31 downto 0);
       end_flag: out std_logic);
end component;
  signal x,y: std_logic_vector(15 downto 0);
  signal z: std_logic_vector(31 downto 0);
  signal load,clear,clock,end_flag : std_logic;
  begin
    u1:top_16bit port map(x => x,y => y,load=>load,clear=>clear,clock=>clock,z => z,end_flag=>end_flag);
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
        clear <= '1';
        wait for 10ns;
        x <= "0000000000000000"   ;
        y <= "0000000000000000"   ;
        load <= '1';
        clear <= '0';
        wait for 40ns;
        x <= "0000000000000010"   ;
        y <= "0000000000000010"   ;
        load <= '1';
        clear <= '0';
        wait for 40ns;
        x <= "0000000000000011"   ;
        y <= "0000000000000011"   ;
        load <= '1';
        clear <= '0';
        wait for 40ns;
        x <= "0000000000000100"   ;
        y <= "0000000000000100"   ;
        load <= '1';
        clear <= '0';
        wait for 40ns;
        x <= "0000000000000101"   ;
        y <= "0000000000000101"   ;
        load <= '0';
        clear <= '0';
        wait for 40ns;
        x <= "0000000000000110"   ;
        y <= "0000000000000110"   ;
        load <= '1';
        clear <= '0';
        wait for 40ns;
        x <= "0000000000000111"   ;
        y <= "0000000000000111"   ;
        load <= '1';
        clear <= '0';
        wait for 40ns;
      end process;
    
    process
      variable error_status: boolean;
      begin
        wait on x;
        wait for 20ns;
        if ((x ="0000000000000000" and y = "0000000000000000" and z="00000000000000000000000000000000" )or
            (x ="0000000000000000" and y = "0000000000000000" and z="00000000000000000000000000000111" )or
            (x ="0000000000000010" and y = "0000000000000010" and z="00000000000000000000000000000010" )or
            (x ="0000000000000011" and y = "0000000000000011" and z="00000000000000000000000000000011" )or
            (x ="0000000000000100" and y = "0000000000000100" and z="00000000000000000000000000000101" )or
            (x ="0000000000000101" and y = "0000000000000101" and z="00000000000000000000000000000000" )or
            (x ="0000000000000110" and y = "0000000000000110" and z="00000000000000000000000000000000" )or
            (x ="0000000000000111" and y = "0000000000000111" and z="00000000000000000000000000001101" ))
        then error_status:= false;
      else error_status:= true;
      end if;
      assert not error_status
         report "test failed."
         severity note;
       end process;
end behavioural;
