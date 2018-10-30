# PiscaVHDL
VHDL Project for a Digital Systems Class, in which a FPGA Board would have numbers displayed, and have the display blink according to an alarm variable

Projeto de VHDL para a aula de Sistemas Digitais.

Nos foi fornecido uma sequência básica de números, e com uma condicional para uma variável de alarme, que ficaria ligada até uma segunda condicional ser atendida. Existe um botão reset para parar a operação a qualquer momento.

Para realizarmos a operação de LEDs, foi necessário criar um componente, que controlava a ação do LED, e realizar sua movimentação com o auxílio de uma variável intermediária.

Para definir o clock do LED de acordo com o que foi solicitado, criamos um gerador de clock, e o mesmo funcionava definindo o tempo.
