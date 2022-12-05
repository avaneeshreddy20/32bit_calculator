library ieee;
use ieee.std_logic_1164.all;
 
entity flag_component is
port( T: in std_logic_vector(15 downto 0);
clock,clear,load: in std_logic;
end_flag: out std_logic);
end flag_component;
 
architecture behavioral of flag_component is
  
component t_register is
port( T: in std_logic_vector(15 downto 0);
clock,clear: in std_logic;
Q: out std_logic);
end component;

component and2 is
    Port ( a,b : in std_logic;
           y : out std_logic);
  end component;
  
  component ff is
    port ( a : in std_logic;
           load,clear,clock : in std_logic;
           z : out std_logic );
  end component;
signal x1,x2: std_logic;
begin 

u2:t_register port map(T => T,clock=>clock,clear=>clear,Q=>x1);
u3:and2 port map(a => load, b=> x1, y=> x2);
u4:ff port map(a => x2,clock=>clock,clear=>clear,load=>load,z=>end_flag);

end behavioral;
