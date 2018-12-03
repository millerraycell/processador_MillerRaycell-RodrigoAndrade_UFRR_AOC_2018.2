library ieee; 
use ieee.std_logic_1164.all;

entity registerjk is 
	port (
	ent1, ent2,relogio: in std_logic;
	saida: out std_logic );
end registerjk;

architecture behavior of registerjk is

   signal state: std_logic;
   signal input: std_logic_vector(1 downto 0);

begin

   input <= ent1 & ent2;		

   p: process(relogio) is
   begin
	if (rising_edge(relogio)) then
		case (input) is
			when "11" => state <= not (state);
			when "10" => state <= '1';
			when "01" => state <= '0';
			when others => null;
		end case;
	end if;

   end process;
   saida <= state;

end behavior;