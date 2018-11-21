LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY QShifte IS
PORT
(
	opshifte : in std_logic_vector(15 downto 0);
	resshifte : out std_logic_vector(15 downto 0));
END QShifte;

ARCHITECTURE behavior of QShifte is
	signal vet : std_logic_vector(13 downto 0);
	BEGIN
		vet <= opshifte(15 DOWNTO 2);
		resshifte <= vet & "00";
end behavior;
	