library ieee;
use ieee.std_logic_1164.all;
entity fa is
  port ( a,b,cin : in std_logic;
         cout,s   : out std_logic);
end fa;
architecture structural of fa is
component xor2 is
  port ( x,y : in std_logic;
         z   : out std_logic);
  end component;
  component and2 is
    Port ( a,b : in std_logic;
           y : out std_logic);
  end component;
  component or2 is
    port ( x,y : in std_logic;
           z   : out std_logic);
  end component;
  signal x1,x2,x3: std_logic;
begin
  u1:xor2 port map(x => a, y=> b, z=> x1); 
  u2:xor2 port map(x => x1, y=> cin, z=> s); 
  u3:and2 port map(a => a, b=> b, y=> x2); 
  u4:and2 port map(a => x1, b=> cin, y=> x3); 
  u5:or2  port map(x => x3, y=> x2, z=> cout);
end structural;
