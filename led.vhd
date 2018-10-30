entity led is
port (
signal clock_ledg : in bit;
signal alm : in bit;
signal LEDG : out bit_vector (7 downto 0)
);
end entity led;

architecture c_led of led is 

signal estado5 : bit_vector (2 downto 0) := "000";

begin

led: process(clock_ledg)

begin

if clock_ledg='0' and clock_ledg'event then 


case estado5 is
	when "000" =>
		if alm='1' then 
			estado5<="001";
			LEDG <= "10000001";
		else
			LEDG <= "00000000";
		end if;
	
	when "001" =>
		if alm='1' then 
			estado5<="010";
			LEDG <= "01000010";
		else
			LEDG <= "00000000";
		end if;
		
	when "010" =>
		if alm='1' then 
			estado5<="011";
			LEDG <= "00100100";
		else
			LEDG <= "00000000";
		end if;
			
	when "011" =>
		if alm='1' then 
			estado5<="100";
			LEDG <= "00011000";
		else
			LEDG <= "00000000";
		end if;
			
	when "100" =>
		if alm='1' then 
			estado5<="101";
			LEDG <= "00100100";
		else
			LEDG <= "00000000";
		end if;
			
	when "101" =>
		if alm='1' then 
			estado5<="110";
			LEDG <= "01000010";
		else
			LEDG <= "00000000";
		end if;
			
	when "110" =>
		if alm='1' then 
			estado5<="111";
			LEDG <= "10000001";
		else
			LEDG <= "00000000";
		end if;
			
	when "111" =>
		if alm='1' then 
			estado5<="000";
			LEDG <= "00000000";
		else
			LEDG <= "00000000";
		end if;
	
end case;

end if;

end process led;
	
end architecture c_led;