--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library work;
use work.arraypack.all;

package inputs is

procedure get_input(variable x_2D  : out x_array_2D;
						 variable w_2D  : out w_array_2D;
						 variable yp_2D  : out yp_array_2D);

procedure calculate_y(variable x_1D : in x_array_1D;
							 variable w_2D : in w_array_2D;
							 variable y_1D : out y_array_1D);

procedure distance(variable y_1D : in y_array_1D;
						 variable yp_2D : in yp_array_2D;
						 variable index : out integer;
						 variable minNorm : out integer);
							
end inputs;

package body inputs is
	
	procedure get_input(variable x_2D  : out x_array_2D;
								variable w_2D  : out w_array_2D;
								variable yp_2D  : out yp_array_2D) IS
		begin
			x_2D := ((5,10,12,14,13,9,3,2,1,8,12,13,12,8,5,0,1,7,0,7,2,2,6,0,0,3,5,5,5,2,6,0,5,8,10,8,7,10,6,3,19,7,8,5,4,6,5,6,18,8,4,1,1,3,4,13,17,16,4,6,8,5,3,8),(0,1,6,9,9,5,0,0,0,6,8,13,12,7,3,0,0,6,2,2,2,2,3,0,6,6,2,5,1,1,5,4,8,6,9,9,9,8,6,7,14,5,6,1,0,4,3,9,19,6,1,3,4,1,4,19,19,19,4,6,5,3,4,19),(0,0,0,4,6,6,1,0,0,2,6,12,12,9,5,0,0,5,8,5,6,9,5,2,0,6,3,9,7,3,2,5,7,9,15,10,9,14,12,7,10,6,7,3,2,7,7,6,18,6,5,2,1,4,5,19,19,9,5,9,9,5,4,19),(0,8,13,13,16,12,4,0,0,9,15,17,17,13,7,0,0,3,0,3,2,0,4,1,11,9,0,10,8,1,9,8,8,11,16,10,10,15,9,7,19,8,10,7,3,7,6,17,19,6,7,5,5,4,6,19,19,8,3,11,12,5,5,19));
			yp_2D := ((48091,12208,15598,-10268),(53443,11231,7498,-1940),(62439,14307,1509,241),(76860,14255,12424,-3718));
			w_2D := ((60,55,119,149,152,108,47,53,19,90,156,179,176,127,72,19,21,95,54,101,86,62,78,20,62,118,77,110,101,88,107,52,133,149,182,136,126,166,130,91,209,119,129,79,71,111,98,165,263,121,88,67,75,77,94,231,271,183,88,111,115,85,122,239),(40,-63,22,45,-55,5,66,-25,-62,-83,19,84,2,0,-27,-29,-4,102,28,-12,65,-40,107,61,-33,0,-6,-3,55,67,-26,20,-7,121,-38,24,101,6,76,-28,167,29,38,8,-37,77,66,-6,77,78,120,-27,-9,50,55,22,49,26,-7,0,33,-35,14,120),(-67,-14,-33,-109,161,61,-115,-143,96,-14,28,-74,-110,88,249,53,-92,-30,-40,-124,-5,33,105,-24,-123,-73,174,59,101,22,49,31,-103,19,228,63,109,39,-22,-34,21,231,187,-46,63,15,24,158,-7,-15,25,110,81,122,10,0,-69,-245,-112,41,88,59,109,-77),(-261,0,-221,-2,66,-268,106,177,302,95,-3,256,37,169,-207,-38,-173,-116,-127,85,19,6,135,-7,-40,-114,-19,277,-32,-137,225,187,-117,97,-53,-70,-45,34,-174,88,212,213,-117,-115,-135,246,113,-23,-274,-150,-120,46,-191,-154,-124,133,-222,158,-88,157,-15,-285,36,33));
	end procedure get_input;
	
	procedure calculate_y(variable x_1D : in x_array_1D;
							variable w_2D : in w_array_2D;
							variable y_1D : out y_array_1D) IS
		
		variable accumulator : integer := 0;
		begin
			for i in 0 to 3 loop -- 4 outputs
				accumulator := 0;
				for j in 0 to 63 loop -- 64 pixels in images
					accumulator := accumulator + w_2D(i,j)*x_1D(j);
				end loop;
				y_1D(i) := accumulator;
			end loop;
	end procedure calculate_y;

	procedure distance(variable y_1D : in y_array_1D;
						 variable yp_2D : in yp_array_2D;
						 variable index : out integer;
						 variable minNorm : out integer) IS
		variable dist : integer :=0;
		variable temp : integer :=0;
		variable minDist : integer := 99999999;
		begin
			index := -1;
			for i in 0 to 3 loop -- number of images in y
				dist := 0;
				for j in 0 to 3 loop -- num of outputs
					temp := yp_2D(i,j) - y_1D(j);
					if temp < 0 then
						dist := dist - temp;
					else
						dist := dist + temp;
					end if;
				end loop;
				
				if dist < minDist then
					minNorm := dist;
					minDist := dist;
					index := i;
				--else
					--minNorm := minNorm;
					--index := index;
				end if;
				
			end loop;
	end procedure distance;
			
end package body;
