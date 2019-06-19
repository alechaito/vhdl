LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity bcd is
	generic (
				p_in : INTEGER := 8;
				p_out : INTEGER := 7
				);
	port(
		i_data  : in STD_LOGIC_VECTOR(p_in-1 downto 0); 
		o_q  : out STD_LOGIC_VECTOR(p_out-1 downto 0)
	);
	
end bcd;
	
architecture behavioral OF bcd is
	begin
		process(i_data)
		begin
			case i_data is
				--G1: for n in 5 downto 1 GENERATE
				--end generate G1;
					WHEN "00000000" => o_q <= "1111110"; -- 0
					WHEN "00000001" => o_q <= "0110000";  -- 1
					WHEN "00000010" => o_q <= "1101101"; -- 2
					WHEN "00000011" => o_q <= "1111001"; -- 3
					WHEN "00000100" => o_q <= "0110011"; -- 4
					WHEN "00000101" => o_q <= "1011011"; -- 5
					WHEN "00000110" => o_q <= "0011111"; -- 6
					WHEN "00000111" => o_q <= "1110000"; -- 7
					WHEN "00001000" => o_q <= "1111111"; -- 8
					WHEN "00001001" => o_q <= "1110011"; -- 9
					WHEN OTHERS => o_q <= "1111111"; -- desligado
			end case;
		end process;
end behavioral;