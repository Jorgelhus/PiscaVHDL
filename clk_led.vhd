entity clk_led is
port (
signal clock_in : in bit;
signal clock_led : out bit

);
end entity clk_led;


architecture c_clk_led of clk_led is

signal auxled : bit :='0';

begin

clock_led <=auxled;

clk: process(clock_in)

variable contador2 : integer range 0 to 5000000 := 0; --5milhões

begin

if clock_in='0' and clock_in'event then

if contador2<2499999 then
contador2:=contador2+1;


else
contador2:=0;

auxled<= not auxled;

end if;

end if;


end process;
end architecture c_clk_led;
