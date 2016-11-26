----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:39 09/24/2016 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.arraypack.all;
use work.inputs.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx prim itives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is port(clk : IN std_logic;
								--	reg sf_e : out std_logic;
								--	reg e : out std_logic;
								--	reg rs : out std_logic;
								--	reg rw : out std_logic;
								--	reg d : out std_logic;
								--	reg c : out std_logic;
								--	reg b : out std_logic;
								--	reg a : out std_logic;


									out_minNorm : OUT integer;
									image_number : OUT std_logic_vector (7 downto 0);
									test_image : IN std_logic_vector (1 downto 0)
									
);
end ControlUnit;

architecture Behavioral of ControlUnit is

begin 
	
	process(clk)
		variable x_2D  : x_array_2D;
		variable w_2D  : w_array_2D;
		variable yp_2D  : yp_array_2D;
		variable y_1D  : y_array_1D;
		variable index : integer := -1;
		variable minNorm : integer := -1;
		variable first_time : std_logic :='1';
		variable x_1D  : x_array_1D;
		variable slider : integer;
		variable out_index : integer;
	 								
		 
		begin
			slider := to_integer(unsigned(test_image));
			if clk'event and clk='1' then
				if first_time = '1' then
					get_input(x_2D,w_2D,yp_2D);
					first_time := '0';
				end if;
				 
				for i in 0 to 63 loop -- number of pixels
 					x_1D(i) := x_2D(0,i);
				end loop;
				calculate_y(x_1D,w_2D,y_1D);
				distance(y_1D,yp_2D,index,minNorm);
				out_index := index;
				out_minNorm <= minNorm;
				
				image_number <= std_logic_vector(to_unsigned(out_index,8));
				
			end if;
	end process;
	
	
	--process(clk)
	--variable count: std_logic_vector (25 downto 0) := (others :=0);
	--variable code :std_logic_vector (4 downto 0) := (others :=0);
	--variable refres : std_logic;

	--begin
	-- count := count+1
	 --case count (25 downto 21) is
	 --when "000000"=> code <=6'h03;
		--	when "000001"=> code<=6'h03;
			--when "000010"=>  code<=6'h03;
		--	when "000011"=>  code<=6'h02;
		--	when "000100"=>  code<=6'h02;
		--	when "000101"=>  code<=6'h08;
		---	when "000110"=>  code<=6'h00;
		--	when "000111"=>  code<=6'h06;
		--	when "001000"=>  code<=6'h00;
		--	when "001001"=>  code<=6'h0C;
		--	when "001010" => code<=6'h00;
		--	when "001011" => code<=6'h01;
		--	when "001100" => code<=6'h23;
		--	when "001101" => if(cin1==1)
--					code<=6'h21;
--				 else
--					code<=6'h20;
--			when "001110" => code <=6'h22;
--			when "001111" => code <=6'h2B;
--			when "010000" => code<=6'h23;
--			when "010001" => if(num1[1]==1)
--					code<=6'h21;
--				 else
--					code<=6'h20;
--			when "001001" => code<=6'h23;
--			when "001001" => if(num1[0]==1)
--					code<=6'h21;
--				 else
--					code<=6'h20;
--			when "001001" => code <=6'h22;
--			when "001001" => code <=6'h2B;
--			when "001001" => code<=6'h23;
--			when "001001" => if(num2[1]==1)
--					code<=6'h21;
--				 else
--					code<=6'h20;
--			24: code<=6'h23;
--			25: if(num2[0]==1)
--					code<=6'h21;
--				 else
--					code<=6'h20;
--			26: code <=6'h23;
--			27: code <=6'h2D;		
--			28: code<=6'h23;
--			29: if(cout==1)
--					code<=6'h21;
--				 else
--					code<=6'h20;
--			30: code<=6'h23;
--			31: if(num_out[1]==1)
--					code<=6'h21;
--				 else
--					code<=6'h20;
--			32: code<=6'h23;
--			33: if(num_out[0]==1)
--					code<=6'h21;
--				 else
--					code<=6'h20;
--			default: code <= 6'h10;
--			
--		endcase
--		refresh <= count[ 20 ];
--		sf_e <= 1;
--		{ e, rs, rw, d, c, b, a } <= { refresh, code };

	
			--if clk'event and clk='1' then
				--out_index <= index;
				--out_minNorm <= minNorm;
		--	end if;
--	end process;
end Behavioral;

