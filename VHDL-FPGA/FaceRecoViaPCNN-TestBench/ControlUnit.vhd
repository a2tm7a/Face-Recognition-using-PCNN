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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is port(clk : IN std_logic;
									out_minNorm : OUT integer;
									image_number : OUT integer;
									--test_image : IN std_logic_vector (3 downto 0)
									slider : IN integer
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
		--variable slider : integer;
		variable out_index : integer;
									
		
		begin
			--slider := to_integer(unsigned(test_image));
			if clk'event and clk='1' then
				if first_time = '1' then
					get_input(x_2D,w_2D,yp_2D);
					first_time := '0';
				end if;
				
				for i in 0 to 1023 loop
 					x_1D(i) := x_2D(slider,i);
				end loop;
				calculate_y(x_1D,w_2D,y_1D);
				distance(y_1D,yp_2D,index,minNorm);
				out_index := index;
				out_minNorm <= minNorm;
				image_number <= out_index;
			end if;
	end process;

end Behavioral;

