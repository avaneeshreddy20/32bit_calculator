library ieee;
use ieee.std_logic_1164.all;
 
entity t_register is
port( T: in std_logic_vector(15 downto 0);
clock,clear: in std_logic;
Q: out std_logic);
end t_register;
 
architecture behavioral of t_register is
signal state_reg,state_next: std_logic_vector(15 downto 0);
begin
process (clock,clear,T,state_reg,state_next)
begin

 if (clear = '1') then
   state_reg <= "0000000000000000";
elsif rising_edge(clock) then
  state_reg<= state_next; 
end if;

 
end process ;
state_next<= t;
Q <= '1' when state_reg /= T else
    '0';
end behavioral;

