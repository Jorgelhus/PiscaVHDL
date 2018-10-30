entity entrada is
port (
signal sw : in bit_vector (17 downto 0);
signal estado : in bit_vector (3 downto 0);
signal key3 : in bit;
signal pwm1 : in bit;
signal ledr : out bit_vector (17 downto 0);
signal bit_in : out bit
);
end entity entrada;

architecture c_entrada of entrada is 

begin

ent: process(pwm1)

variable registro : bit_vector (17 downto 0);

begin

if pwm1='0' and pwm1'event then

if estado="0000" then

if key3='0' then
	registro := sw;
end if;

else

--NESTE EXERCÍCIO FAZEMOS O DESLOCAMENTO PRO MEIO DO OPERADOR LOGICO sll
--registro sll (1)

--ABAIXO TEMOS O DESLOCAMENTO MANUAL

registro(0) := registro(1); 
registro(1) := registro(2);
registro(2) := registro(3);
registro(3) := registro(4);
registro(4) := registro(5);
registro(5) := registro(6); 
registro(6) := registro(7);
registro(7) := registro(8);
registro(8) := registro(9);
registro(9) := registro(10);
registro(10) := registro(11); 
registro(11) := registro(12);
registro(12) := registro(13);
registro(13) := registro(14);
registro(14) := registro(15);
registro(15) := registro(16); 
registro(16) := registro(17);
registro(17) := '0';

end if;

end if;

ledr <= registro;
bit_in <= registro(0);

end process ent;


end architecture c_entrada;