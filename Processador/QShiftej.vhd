LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QShiftej IS
PORT
(
	pc : in std_logic_vector (15 downto 0);
	opshiftej : in std_logic_vector(11 downto 0);
	resshiftej : out std_logic_vector(15 downto 0));
END QShiftej;

ARCHITECTURE behavior of QShiftej is
	signal vet : std_logic_vector(13 downto 0);
	signal vet2 : std_logic_vector(1 downto 0);
	BEGIN
		vet <= opshifteJ(15 DOWNTO 2);
		vet2 <= pc(15 downto 14);
		resshifteJ <= vet & vet2;
end behavior;
	