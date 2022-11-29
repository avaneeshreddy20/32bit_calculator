
library ieee;
use ieee.std_logic_1164.all;

entity hacell2 is
  port ( a,b,cin: in std_logic;
         c,s   : out std_logic);
end hacell2;

architecture structural of hacell2 is
  component ha is
  port ( a,b : in std_logic;
         c,s   : out std_logic);
  end component;
  component and2 is
    Port ( a,b : in std_logic;
           y : out std_logic);
  end component;
  signal x1: std_logic;
begin
  u1:and2 port map(a => a, b=> b, y=> x1); 
  u3:ha   port map(a => x1,b => cin,c => c, s => s);
end structural;