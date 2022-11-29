library ieee;
use ieee.std_logic_1164.all;
entity adder is
  port ( a  : in std_logic_vector( 15 downto 0);
         c  : out std_logic_vector(15 downto 0));
end adder;

architecture structural of adder is
  
  component ha is
    port ( a,b : in std_logic;
           c,s   : out std_logic);
  end component;
  signal d: std_logic_vector(15 downto 0);
  
begin
  u00: ha port map(a => a(0),b => '1',c => d(0),s => c(0));
  u01: ha port map(a => a(1),b => d(0),c => d(1),s => c(1));
  u02: ha port map(a => a(2),b => d(1),c => d(2),s => c(2));
  u03: ha port map(a => a(3),b => d(2),c => d(3),s => c(3));
  u04: ha port map(a => a(4),b => d(3),c => d(4),s => c(4));
  u05: ha port map(a => a(5),b => d(4),c => d(5),s => c(5));
  u06: ha port map(a => a(6),b => d(5),c => d(6),s => c(6));
  u07: ha port map(a => a(7),b => d(6),c => d(7),s => c(7));
  u08: ha port map(a => a(8),b => d(7),c => d(8),s => c(8));
  u09: ha port map(a => a(9),b => d(8),c => d(9),s => c(9));
  u10: ha port map(a => a(10),b => d(9),c => d(10),s => c(10));
  u11: ha port map(a => a(11),b => d(10),c => d(11),s => c(11));
  u12: ha port map(a => a(12),b => d(11),c => d(12),s => c(12));
  u13: ha port map(a => a(13),b => d(12),c => d(13),s => c(13));
  u14: ha port map(a => a(14),b => d(13),c => d(14),s => c(14));
  u15: ha port map(a => a(15),b => d(14),c => d(15),s => c(15));
    
end structural;