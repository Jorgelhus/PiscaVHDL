entity aula_181016 is
port (
signal CLOCK_50 : in bit;
signal SW : in bit_vector (17 downto 0);
signal KEY : in bit_vector (3 downto 0);
signal LEDR : out bit_vector (17 downto 0);
signal LEDG : out bit_vector (7 downto 0);
signal HEX7, HEX6, HEX5, HEX4, HEX3, HEX2,
		HEX1, HEX0 : out bit_vector (6 downto 0)
);
end entity aula_181016;


architecture c_aula_181016 of aula_181016 is

--GERADOR DE PWM, QUE GERA OS CLOCKS DE TRABALHO

component gerador_pwm is
port (
signal clock_in : in bit;
--entrada do clock inicial, que e determinado pelo usuario/pela fpga

signal pwm1, pwm2, pwm3 : out bit
--saida dos diferentes clocks de operaçao

);
end component gerador_pwm;


component maq is
port (

signal dado, reset, key2, clk : in bit;
signal alm : out bit;
signal estado : out bit_vector (3 downto 0)

);

end component;





------------------------------------------------

-- COMPONENTE QUE RECEBE OS TOQUES FÍSICOS DOS BOTÕES

component entrada is
port (
signal sw : in bit_vector (17 downto 0);
signal estado : in bit_vector (3 downto 0);
signal key3 : in bit;
signal pwm1 : in bit;
signal ledr : out bit_vector (17 downto 0);
signal bit_in : out bit
);
end component entrada;




component conv_7seg is
port (
	signal en : in bit;
	signal dado : in bit_vector (3 downto 0);
--entra o enable, que garante energia para o display, e o dado, que contem o valor numerico.
	signal display : out bit_vector (6 downto 0)
--sai o display, que e o valor de cada ponto do display de sete seguimentos a ser acendido.
);
end component conv_7seg;

component led is
port (
signal clock_ledg : in bit;
signal alm : in bit;
signal LEDG : out bit_vector (7 downto 0)
);
end component led;




---------------------------------------------------

-- COMPONENTE QUE CONTROLA O DISPLAY FINAL

component controlador_display_new is
port (
signal pwm2, clock_out1, clock_out2 : in bit;
--Entrada dos clocks.Entrada do segundo clock gerado internamente (com um pouco de atraso),
--e determinado pelo gerador interno. Entrada dos clocks de Pisca1 e Pisca2, gerados pelo gerador
--de clock duplo.

signal estado : in bit_vector(3 downto 0);
--Entrada do valor gerado na maquina de primos

signal tipo : in bit_vector(1 downto 0);
--Entrada do tipo de valor, ja determinado pela maquina de primos, o qual sera atribuida a devida ordem de pisca.

signal num7, num6, num5, num4, num3, num2, num1, num0 : out bit_vector (3 downto 0);
--Saida dos valores traduzidos, e que definirao o que/onde acendera no display de 7 segmentos.

signal en7, en6, en5, en4, en3, en2, en1, en0 : out bit
--Saida dos Enables que farao o display acender ou piscar, ao serem conectados ao seu devido clock.

);
end component controlador_display_new;

------------------------------------------------------
component clk_led is
port (
signal clock_in : in bit;
signal clock_led : out bit

);
end component clk_led;



--SINAIS DE CONTROLE INTERMEDIÁRIOS

signal key3, key2, key1 : bit;
signal pwm1, pwm2, pwm3, bit_in : bit;
signal estado : bit_vector (3 downto 0);
signal alm: bit;
signal num7, num6, num5, num4, num3, num2, num1, num0 : bit_vector (3 downto 0);
signal clock_ledg : bit;

begin

--ASSOCIAÇÃO DOS DÍGITOS AOS PONTOS NA PLACA

key3 <= KEY(3);
key2 <= KEY(2);
key1 <= KEY(1);

xgerador_pwm: gerador_pwm port map (CLOCK_50, pwm1, pwm2, pwm3);



xentrada: entrada port map (SW, estado, key3, pwm1, LEDR, bit_in);
xmaq: maq port map (bit_in, key1, key2, pwm2, alm, estado);
xled: led port map (clock_ledg, alm, LEDG);
xclk_led: clk_led port map (CLOCK_50, clock_ledg);												 

xcontrolador: controlador_display_new port map (pwm3, '0', '0', estado, "01", num7, num6, num5, num4, num3, num2, num1, num0);

x7conv_7seg : conv_7seg port map ('1', num7, HEX7);
x6conv_7seg : conv_7seg port map ('1', num6, HEX6);
x5conv_7seg : conv_7seg port map ('1', num5, HEX5);
x4conv_7seg : conv_7seg port map ('1', num4, HEX4);
x3conv_7seg : conv_7seg port map ('1', num3, HEX3);
x2conv_7seg : conv_7seg port map ('1', num2, HEX2);
x1conv_7seg : conv_7seg port map ('1', num1, HEX1);
x0conv_7seg : conv_7seg port map ('1', num0, HEX0);


end architecture c_aula_181016;