library ieee;
use ieee.std_logic_1164.all;
entity top_16bit is
  port ( x,y: in std_logic_vector( 15 downto 0);
         load,clear,clock : in std_logic;
         z  : out std_logic_vector(31 downto 0));
end top_16bit;

architecture structural of top_16bit is
  
  component ff32 is
    port ( a : in std_logic_vector( 31 downto 0);
           load,clear,clock : in std_logic;
           z : out std_logic_vector( 31 downto 0) );
  end component;
  
  component ff16 is
    port ( a : in std_logic_vector( 15 downto 0);
           load,clear,clock : in std_logic;
           z : out std_logic_vector( 15 downto 0) );
  end component;
  
  component multiplier16 is
    port ( a,b: in std_logic_vector( 15 downto 0);
           c  : out std_logic_vector(31 downto 0));
  end component;
  
  component divider2 is
    port ( a  : in std_logic_vector( 31 downto 0);
           c  : out std_logic_vector(31 downto 0));
  end component;
  
  component adder2 is
    port ( a  : in std_logic_vector( 31 downto 0);
           c  : out std_logic_vector(31 downto 0));
  end component;
  
  signal x1,x2: std_logic_vector( 15 downto 0);
  signal x3,x4,x5,x6,x7: std_logic_vector( 31 downto 0);
  
  begin
    u01: ff16 port map(a => x,load => load,clear =>clear,clock =>clock,z => x1);
    u02: ff16 port map(a => y,load => load,clear =>clear,clock =>clock,z => x2);
    u03: multiplier16 port map(a => x1,b => x2, c =>x3);
    u04: ff32 port map(a => x3,load => load,clear =>clear,clock =>clock,z => x4);
    u05: divider2 port map(a => x4,c =>x5);
    u06: ff32 port map(a => x5,load => load,clear =>clear,clock =>clock,z => x6);
    u07: adder2 port map(a => x6,c =>z);
      
end structural;
