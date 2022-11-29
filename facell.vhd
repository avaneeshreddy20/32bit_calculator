library ieee;
use ieee.std_logic_1164.all;

entity facell is
  port ( a,b: in std_logic_vector( 1 downto 0);
         cin: in std_logic;
         cout,s   : out std_logic);
end facell;

architecture structural of facell is
  component fa is
  port ( a,b,cin : in std_logic;
         cout,s   : out std_logic);
  end component;
  component and2 is
    Port ( a,b : in std_logic;
           y : out std_logic);
  end component;
  signal x1,x2: std_logic;
begin
  u1:and2 port map(a => a(0), b=> b(1), y=> x1); 
  u2:and2 port map(a => a(1), b=> b(0), y=> x2); 
  u3:fa   port map(a => x1,b => x2, cin => cin, cout => cout, s => s);
end structural;
