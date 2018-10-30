--Este arquivo converte os dados numericos em saida para o display, de forma a acender as areas definidas.

entity conv_7seg is
port (
	signal en : in bit;
	signal dado : in bit_vector (3 downto 0);
--entra o enable, que garante energia para o display, e o dado, que contem o valor numerico.
	signal display : out bit_vector (6 downto 0)
--sai o display, que e o valor de cada ponto do display de sete seguimentos a ser acendido.
);
end entity conv_7seg;

architecture c_conv_7seg of conv_7seg is

signal aux : bit_vector (6 downto 0);

begin

display <= aux when en='1' else
				"1111111";
--o display tem todos os valores em 1, ou seja, fica desligado, quando o enable chega 1.

with dado select
	  aux <= "1000000" when "0000",
				"1111001" when "0001",
				"0100100" when "0010",
				"0110000" when "0011",
				"0011001" when "0100",
				"0010010" when "0101",
				"0000010" when "0110",
				"1111000" when "0111",
				"0000000" when "1000",
				"0010000" when "1001",
				"0001000" when "1010",
				"0000011" when "1011",
				"1000110" when "1100",
				"0100001" when "1101",
				"0000110" when "1110",
				"0001110" when "1111";
				 
end architecture c_conv_7seg;

