LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Qsll IS
PORT
(
	clk: in std_logic;
	pc : in std_logic_vector (15 downto 0);
	opshift : in std_logic_vector(11 downto 0);
	resshift : out std_logic_vector(15 downto 0));
END Qsll;

ARCHITECTURE behavior of Qsll is
	signal vet : std_logic_vector(13 downto 0);
begin
	process(clk)
		BEGIN
			IF (clk = '1') THEN
				vet <=  opshift & "00";
				resshift <= pc(15 downto 14) & vet;
			end if;
	end process;
end behavior;