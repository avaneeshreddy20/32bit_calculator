library ieee;
use ieee.std_logic_1164.all;
entity adder2 is
  port ( a  : in std_logic_vector( 31 downto 0);
         c  : out std_logic_vector(31 downto 0));
end adder2;

architecture structural of adder2 is
 
 component ha is
   port ( a,b : in std_logic;
          c,s   : out std_logic);
 end component;
 signal d: std_logic_vector(31 downto 0);
 
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
 u16: ha port map(a => a(16),b => d(15),c => d(16),s => c(16));
  u17: ha port map(a => a(17),b => d(16),c => d(17),s => c(17));
  u18: ha port map(a => a(18),b => d(17),c => d(18),s => c(18));
  u19: ha port map(a => a(19),b => d(18),c => d(19),s => c(19));
  u20: ha port map(a => a(20),b => d(19),c => d(20),s => c(20));
  u21: ha port map(a => a(21),b => d(20),c => d(21),s => c(21));
  u22: ha port map(a => a(22),b => d(21),c => d(22),s => c(22));
  u23: ha port map(a => a(23),b => d(22),c => d(23),s => c(23));
  u24: ha port map(a => a(24),b => d(23),c => d(24),s => c(24));
  u25: ha port map(a => a(25),b => d(24),c => d(25),s => c(25));
  u26: ha port map(a => a(26),b => d(25),c => d(26),s => c(26));
  u27: ha port map(a => a(27),b => d(26),c => d(27),s => c(27));
  u28: ha port map(a => a(28),b => d(27),c => d(28),s => c(28));
  u29: ha port map(a => a(29),b => d(28),c => d(29),s => c(29));
  u30: ha port map(a => a(30),b => d(29),c => d(30),s => c(30));
  u31: ha port map(a => a(31),b => d(30),c => d(31),s => c(31));
    
end structural;
