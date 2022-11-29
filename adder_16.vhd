library ieee;
use ieee.std_logic_1164.all;
entity adder_16 is
  port ( a,b  : in std_logic_vector( 15 downto 0);
         c  : out std_logic_vector(15 downto 0));
end adder_16;

architecture structural of adder_16 is
  
  component fa is
    port ( a,b,cin : in std_logic;
           cout,s   : out std_logic);
  end component;
  signal d: std_logic_vector(15 downto 0);
  
begin
  u00: fa port map(a => a(0),b => b(0),cin => '0',cout => d(0),s => c(0));
  u01: fa port map(a => a(1),b => b(1),cin => d(0),cout => d(1),s => c(1));
  u02: fa port map(a => a(2),b => b(2),cin => d(1),cout => d(2),s => c(2));
  u03: fa port map(a => a(3),b => b(3),cin => d(2),cout => d(3),s => c(3));
  u04: fa port map(a => a(4),b => b(4),cin => d(3),cout => d(4),s => c(4));
  u05: fa port map(a => a(5),b => b(5),cin => d(4),cout => d(5),s => c(5));
  u06: fa port map(a => a(6),b => b(6),cin => d(5),cout => d(6),s => c(6));
  u07: fa port map(a => a(7),b => b(7),cin => d(6),cout => d(7),s => c(7));
  u08: fa port map(a => a(8),b => b(8),cin => d(7),cout => d(8),s => c(8));
  u09: fa port map(a => a(9),b => b(9),cin => d(8),cout => d(9),s => c(9));
  u10: fa port map(a => a(10),b => b(10),cin => d(9),cout => d(10),s => c(10));
  u11: fa port map(a => a(11),b => b(11),cin => d(10),cout => d(11),s => c(11));
  u12: fa port map(a => a(12),b => b(12),cin => d(11),cout => d(12),s => c(12));
  u13: fa port map(a => a(13),b => b(13),cin => d(12),cout => d(13),s => c(13));
  u14: fa port map(a => a(14),b => b(14),cin => d(13),cout => d(14),s => c(14));
  u15: fa port map(a => a(15),b => b(15),cin => d(14),cout => d(15),s => c(15));

    
end structural;
