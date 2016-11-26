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

package arraypack is

	type yp_array_2D is array (0 to 149, 0 to 15) of integer;
	type w_array_2D is array (0 to 15, 0 to 1023) of integer;
	type x_array_2D is array (0 to 15, 0 to 1023) of integer;
	type x_array_1D is array (0 to 1023) of integer;
	type y_array_1D is array (0 to 15) of integer;

end arraypack;
