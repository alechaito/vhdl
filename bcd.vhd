LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity bcd is
	
	generic(
		t_in : integer := 8
	);
	
	port(
		i_data    : in STD_LOGIC_VECTOR (t_in -1 downto 0);
		o_q    : out STD_LOGIC_VECTOR (t_in -1 downto 0)
		);

	end bcd;
	
architecture behavioral of bcd is
	
	Begin
	process (i_data)
	begin
	 
		if (i_data = "00000000") then      --0
			--o_q <= "11111100";
			o_q <= "00000011";
		elsif (i_data = "00000001") then   --1
			--o_q <= "01100000";
			o_q <= "10011111";
		elsif (i_data = "00000010") then  --2
			--o_q <= "11011010";
			o_q <= "00100101";
		elsif (i_data = "00000011") then  --3 
			--o_q <= "11110010";
			o_q <= "00001101";
		elsif (i_data = "00000100") then  --4 
			--o_q <= "01100110";
			o_q <= "10011001";
		elsif (i_data = "00000101") then  --5 
			--o_q <= "10110110";
			o_q <= "01001001";
		elsif (i_data =  "00000110") then --6
			--o_q <= "10111110";
			o_q <= "01000001";
		elsif (i_data = "00000111") then --7
			--o_q <= "11100000";			
			o_q <= "00011111";			
		elsif (i_data = "00001000") then --8
			--o_q <= "11111110";
			o_q <= "00000001";		
		elsif (i_data = "00001001") then --9
			--o_q <= "11110110";
			o_q <= "00001001";
		else
			--o_q <= "11111110";
			o_q <= "00000011";
				
		end if;
	end process;
end behavioral;