library ieee;
use ieee.std_logic_1164.all;

entity facell2 is
  port ( a,b,c: in std_logic;
         cin: in std_logic;
         cout,s   : out std_logic);
end facell2;

architecture structural of facell2 is
  component fa is
  port ( a,b,cin : in std_logic;
         cout,s   : out std_logic);
  end component;
  component and2 is
    Port ( a,b : in std_logic;
           y : out std_logic);
  end component;
  signal x1: std_logic;
begin
  u1:and2 port map(a => a, b=> b, y=> x1); 
  u2:fa   port map(a => x1,b => c, cin => cin, cout => cout, s => s);
end structural;
