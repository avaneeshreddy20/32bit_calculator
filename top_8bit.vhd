library ieee;
use ieee.std_logic_1164.all;
entity top_8bit is
  port ( x,y: in std_logic_vector( 7 downto 0);
         load,clear,clock : in std_logic;
         z  : out std_logic_vector(15 downto 0));
end top_8bit;

architecture structural of top_8bit is
  
  component ff8 is
    port ( a : in std_logic_vector( 7 downto 0);
           load,clear,clock : in std_logic;
           z : out std_logic_vector( 7 downto 0) );
  end component;
  
  component ff16 is
    port ( a : in std_logic_vector( 15 downto 0);
           load,clear,clock : in std_logic;
           z : out std_logic_vector( 15 downto 0) );
  end component;
  
  component multiplier is
    port ( a,b: in std_logic_vector( 7 downto 0);
           c  : out std_logic_vector(15 downto 0));
  end component;
  
  component divider is
    port ( a  : in std_logic_vector( 15 downto 0);
           c  : out std_logic_vector(15 downto 0));
  end component;
  
  component adder is
    port ( a  : in std_logic_vector( 15 downto 0);
           c  : out std_logic_vector(15 downto 0));
  end component;
  
  signal x1,x2: std_logic_vector( 7 downto 0);
  signal x3,x4,x5,x6,x7,x8: std_logic_vector( 15 downto 0);
  
  begin
    u01: ff8 port map(a => x,load => load,clear =>clear,clock =>clock,z => x1);
    u02: ff8 port map(a => y,load => load,clear =>clear,clock =>clock,z => x2);
  ----  u03: multiplier port map(a => x1,b => x2, c =>x3);
    u03: multiplier port map(a => x1,b => x2, c =>x4);
  ---  u04: ff16 port map(a => x3,load => load,clear =>clear,clock =>clock,z => x4);
    u05: divider port map(a => x4,c =>x5);
  ---  u06: ff16 port map(a => x5,load => load,clear =>clear,clock =>clock,z => x6);
    u07: adder port map(a => x5,c =>x8);
    u08: ff16 port map(a => x8,load => load,clear =>clear,clock =>clock,z => z);
      
end structural;
    
      
      
