library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity input_machine is
	generic (
		p_disp : INTEGER := 8
	);
	Port(
		i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_type_1 : in STD_LOGIC;
		i_type_2 : in STD_LOGIC;
		i_type_3 : in STD_LOGIC;
		i_size : in STD_LOGIC;
		i_sugar : in STD_LOGIC;
		i_prepare : in STD_LOGIC;
		i_temp : in STD_LOGIC;
		--#AINDA PRECISO ESCREVER AQQUI
		o_data : out STD_LOGIC_VECTOR(9 downto 0);
		o_wr : out STD_LOGIC;
	);
end input_machine;

architecture behavioral of input_machine is
	-- Internal signals
	----------------------------------------------------
type w_state_type is (st_idle, st_check_repo, st_check_type, st_check_size, st_check_sugar, st_check_valv );
	attribute syn_encoding : string;
	attribute syn_encoding of w_state_type : type is "safe";
	
	signal w_state : w_state_type;
	--# Sinais internos para os contadores de quantidade em binario;
	signal w_res_1 : STD_LOGIC_VECTOR(3 downto 0); --#Reservatorio de cafe
	signal w_res_2 : STD_LOGIC_VECTOR(3 downto 0); --#Reservatorio de leite
	signal w_res_3 : STD_LOGIC_VECTOR(3 downto 0); --#Reservatorio de chocolate
	signal w_res_4 : STD_LOGIC_VECTOR(3 downto 0); --#Reservatorio de sugar
	signal w_res_stats : STD_LOGIC; -- (0) = estado ok | (1) = precisa de reposicao
	-----------------------------------------------------
	
begin
	--------------------------
	-- O_DATA = [t1, t2, t3, size, sugar, repo]
	--	O_DATA =	[0, 1, 2, 3, 4, 5]
	---------------------------
	
	UU1 : process(i_clk, i_rst)
	begin
		if (i_rst = '0') then
			w_state <= st_idle;
			w_res_1 <= "1010"; --#Inicialisando reservatorios com 10
			w_res_2 <= "1010"; --#Inicialisando reservatorios com 10
			w_res_3 <= "1010"; --#Inicialisando reservatorios com 10
			w_res_4 <= "1010"; --#Inicialisando reservatorios com 10
			w_res_stats <= "1"; -- Ja inicia a maquina de estados indo para o estado de reposicao
		elsif rising_edge(i_clk) then
			case w_state is
				when st_check_repo =>
					if(w_res_1 = "0000" or w_res_2 = "0000" or w_res_3 = "0000" or w_res_4 = "0000" ) then
						--#ENVIA SINAL DE LIGAR LED REPosicao
						o_data(5) <= "1";
						o_wr <= "1";
						--#MAQUINA ENTRA EM LOOP NESSE ESTADO ATE REPOSICAO
					else 
						w_res_stats <= "0";
						o_led_repo <= "0";
						w_state <= st_check_temp;
					end if;
				when st_check_temp =>
					if(i_temp = "0") then
						--#ISSO VAI PROPORCIONAR UM LOOP
						--#ENVIA SINAL LIGAR LED DE TEMPERATURA BAIXA, ISSO NA PLACA
						--#LIGA O RESISTOR
					else
						w_state <= st_idle;
					end if;
				when st_idle =>
					if(w_res_stats == "1") then
						w_state <= st_check_repo;
					end if;
					if(i_type_1 = "1" or i_type_2 = "1" or i_type_2 = "1") then
						w_state <= st_check_type; --# REDIRECIONA PRO ESTADO DE CHECAR O TIPO
					end if;
				when st_check_type =>
					--# ing1 = cafe / ing2 = leite / ing3 = chocolate / ing4 = sugar
					--#vec = [ing1, ing2, ing3, ing4]
					if(i_type_1 == "1") then --#TIPO CAFE PURO
						--# ENVIA SINAL PARA LIGAR LED TIPO CAFE PURO
					else if(i_type_2 == "1") then --#TIPO CAFE C/ LEITE
						--# ENVIA SINAL PARA LIGAR LED TIPO CAFE C/ LEITE
					else if(i_type_3 == "1") then --#TIPO MOCHACINO
						--# ENVIA SINAL PARA LIGAR LED TIPO MOCHACINO
					end if;
					--##############
					w_state <= st_check_size; --# PROX ESTADO 
				when st_check_size =>
					if(i_size = "1") then --#TAMANHO GRANDE
						--# ENVIA SINAL PARA LIGAR LED TAMANHO
					end if;
					w_state <= st_check_sugar;
				when st_check_sugar =>
					if(i_sugar = "1") then
						--# ENVIA SINAL PARA LIGAR LED SUGAR
					end if;
				when st_check_valv =>
					--# W_TIMER = [0000] -- CONTA ATE 15 NO MAXIMO
					if(i_type_1 == "1") then --#TIPO CAFE PURO
						--# LIBERA PO DE CAFE
						w_res_1 <= w_res_1 - 1;
						w_timer <= w_timer + 1;  -- 1 SEGUNDOS TOTAL
					else if(i_type_2 == "1") then --#TIPO CAFE C/ LEITE
						--# LIBERA PO DE CAFE
						w_res_1 <= w_res_1 - 1;
						--# LIBERA LEITE
						w_res_2 <= w_res_2 - 1;
						w_timer <= w_timer + 2; ; -- 2 SEGUNDOS TOTAL
					else if(i_type_3 == "1") then --#TIPO MOCHACINO
						--# LIBERA PO DE CAFE
						w_res_1 <= w_res_1 - 1;
						--#ENVIA SINAL PRO TIMER DE 1 SEGUNDO
						--# LIBERA LEITE
						w_res_2 <= w_res_2 - 1;
						--#ENVIA SINAL PRO TIMER DE 1 SEGUNDO
						--# LIBERA CHOCOLATE
						w_res_3 <= w_res_3 - 1;
						--#ENVIA SINAL PRO TIMER DE 1 SEGUNDO
						w_timer <= w_timer + 3;  -- 3 SEGUNDOS TOTAL
					end if;
					if(i_sugar = "1") then
						--# LIBERA SUGAR
						w_res_4 <= w_res_4 - 1;
						--#ENVIA SINAL PRO TIMER DE 1 SEGUNDO
						w_timer <= w_timer + 1; -- 1 SEGUNDOS TOTAL
					end if;
					if(i_size = "1") then --# GRANDE
						--# LIBERA AGUA
						--#ENVIA SINAL PRO TIMER DE 10s
						w_timer <= w_timer + 10; 
					else --# PEQUENO
						--# LIBERA AGUA 5S
						--#ENVIA SINAL PRO TIMER DE 5s
						w_timer <= w_timer + 5;
					end if;
					--# ENVIA SINAL PRO TIMER CONTAR o valor de w_timer
					if(w_timer < timer) then --# EM QUANTO FOR MENOR ELE FICA AQUI NO LOOP
						w_state <= st_idle;
					end if;
				when others =>
					w_state <= st_idle;
				end case;
		end if;
	end process UU1;
	--------------
	-- Component BCD
	
	U_BCD: bcd
		port map (
			i_data => w_disp_0
		);
		
	U_TOP: top_logic
	port map(
		--INPUTS
		i_disp_1  => w_disp_1, 
		i_disp_2  => w_disp_2,
		i_disp_3  => w_disp_3,
	);
	
	
end behavioral;