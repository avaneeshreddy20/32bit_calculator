library ieee;
use ieee.std_logic_1164.all;

entity ha is
  port ( a,b : in std_logic;
         c,s   : out std_logic);
end ha;

architecture behavioural of ha is
  component xor2 is
  port ( x,y : in std_logic;
         z   : out std_logic);
  end component;
  component and2 is
    Port ( a,b : in std_logic;
           y : out std_logic);
  end component;
begin
  u1:xor2 port map(x => a, y=> b, z=>s); 
  u2:and2 port map(a => a, b=> b, y=>c); 
end behavioural;
