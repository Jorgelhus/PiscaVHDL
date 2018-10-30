entity maq is
port (

signal dado, reset, key2, clk : in bit;
signal alm : out bit;
signal estado : out bit_vector (3 downto 0)

);

end entity;

architecture c_maq of maq is 

signal estado2 : bit_vector (3 downto 0):= "0000";
signal alm2 : bit := '0';
begin

estado <= estado2;
alm <= alm2;

maq: process(clk)

begin

if clk='0' and clk'event then 


if reset='0' then 

estado2 <= "0000";
alm2<='0';

else
--Estado 0
--1 vai pra 1
--0 vai pra 2
 case estado2 is 
	when "0000" =>
	  if key2 = '0' then
	   if dado ='0' then 
		     estado2<="0010";
		     alm2 <= '0';
		  else 
		     estado2<= "0001";
		     alm2<= '0';		 
		  end if;
		end if;
 
 --Estado 1
 --0 vai pra 0
 --1 vai pra 4
 when "0001" =>
	   if dado ='0' then 
		     estado2<="0000";
		     alm2 <= '0';
		  else 
		     estado2<= "0100";
		     alm2<= '0';		 
		  end if;

		  
--Estado 2
--0 vai pra 3
--1 vai pra 1
when "0010" =>
	   if dado ='0' then 
		     estado2<="0011";
		     alm2 <= '0';
		  else 
		     estado2<= "0001";
		     alm2<= '0';		 
		  end if;
		  
--Estado 3
--0 vai pra 0
--1 vai pra 1		  
when "0011" =>
	   if dado ='0' then 
		     estado2<="0000";
		     alm2 <= '0';
		  else 
		     estado2<= "0001";
		     alm2<= '0';		 
		  end if; 

--Estado 4
--0 vai pra 5
--1 vai pra 4		  
when "0100" =>
	   if dado ='0' then 
		     estado2<="0101";
		     alm2 <= '0';
		  else 
		     estado2<= "0100";
		     alm2<= '0';		 
		  end if;

--Estado 5
--0 vai pra 6
--1 vai pra 1		  
when "0101" =>
	   if dado ='0' then 
		     estado2<="0110";
		     alm2 <= '0';
		  else 
		     estado2<= "0001";
		     alm2<= '0';		 
		  end if;

--Estado 6
--0 vai pra 0
--1 vai pra 7		  
when "0110" =>
	   if dado ='0' then 
		     estado2<="0000";
		     alm2 <= '0';
		  else 
		     estado2<= "0111";
		     alm2<= '0';		 
		  end if;

--Estado 7
--0 vai pra 8
--1 vai pra 1
when "0111" =>
	   if dado ='0' then 
		     estado2<="1000";
		     alm2 <= '0';
		  else 
		     estado2<= "0010";
		     alm2<= '0';		 
		  end if;
		  
--Estado 8
--0 vai pra 3
--1 vai pra 15
when "1000" =>
	   if dado ='0' then 
		     estado2<="0011";
		     alm2 <= '0';
		  else 
		     estado2<= "1111";
		     alm2<= '1';		 
		  end if;

--Estado 15
--0 vai pra 10
--1 vai pra 15
when "1111" =>
	   if dado ='0' then 
		     estado2<="1010";
		     alm2 <= '1';
		  else 
		     estado2<= "1111";
		     alm2<= '1';		 
		  end if;		  
		  
--Estado 10
--0 vai pra 10
--1 vai pra 11
when "1010" =>
	   if dado ='0' then 
		     estado2<="1010";
		     alm2 <= '1';
		  else 
		     estado2<= "1011";
		     alm2<= '1';		 
		  end if;		  
		  
--Estado 11
--0 vai pra 10
--1 vai pra 0
when "1011" =>
	   if dado ='0' then 
		     estado2<="1010";
		     alm2 <= '1';
		  else 
		     estado2<= "0000";
		     alm2<= '0';		 
		  end if;		  
		  		  
		  
 when others =>
		estado2 <= "0000";
		alm2 <= '0';
  
 
 
 end case;

end if;
end if;

end process maq;


end architecture;