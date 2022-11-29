library ieee;
use ieee.std_logic_1164.all;
entity multiplier16 is
    port ( a,b: in std_logic_vector( 15 downto 0);
           c  : out std_logic_vector(31 downto 0));
  end multiplier16;
  
architecture structural of multiplier16 is

component multiplier is
    port ( a,b: in std_logic_vector( 7 downto 0);
           c  : out std_logic_vector(15 downto 0));
  end component;
  
component adder_24 is
    port ( a,b  : in std_logic_vector( 23 downto 0);
           c  : out std_logic_vector(23 downto 0));
  end component;

component adder_16 is
  port ( a,b  : in std_logic_vector( 15 downto 0);
         c  : out std_logic_vector(15 downto 0));
end component;

signal d,e,f,g,g1,h1: std_logic_vector( 15 downto 0);
signal d1,e1,m,h2: std_logic_vector( 23 downto 0);

begin
  
  u00: multiplier port map(a => a(15 downto 8) ,b=> b(15 downto 8) ,c=> d );
  u01: multiplier port map(a => a(7 downto 0),b=> b(15 downto 8),c=> e);
  u02: multiplier port map(a =>b(7 downto 0) ,b=> a(15 downto 8),c=> f);
  u03: multiplier port map(a => a(7 downto 0) ,b=> b(7 downto 0),c=> g);
  
      d1 <= d & "00000000" ;
      e1 <= "00000000" & e ;
      g1 <= "00000000" & g(15 downto 8) ;
 
  u04: adder_24 port map(a=> d1,b=> e1 ,c=> m );
  u05: adder_16 port map(a=> f ,b=> g1 ,c=> h1 );
  
      h2<=  "00000000"& h1;
      
  u06: adder_24 port map(a => m,b => h2, c=> c(31 downto 8));
  
  c(7 downto 0) <= g (7 downto 0);
  
end structural; 

  
  