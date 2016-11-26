--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:25:54 11/25/2016
-- Design Name:   
-- Module Name:   D:/EMBEDDED PROJECT/Hopefully Final/PCNN/FaceRecoViaPCNN/FaceRecoViaPCNN/tb_ControlUnit5.vhd
-- Project Name:  FaceRecoViaPCNN
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlUnit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_ControlUnit5 IS
END tb_ControlUnit5;
 
ARCHITECTURE behavior OF tb_ControlUnit5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         clk : IN  std_logic;
         out_minNorm : OUT  integer;
         image_number : OUT  integer;
         slider : IN  integer
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal slider : integer := 0;

 	--Outputs
   signal out_minNorm : integer;
   signal image_number : integer;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          clk => clk,
          out_minNorm => out_minNorm,
          image_number => image_number,
          slider => slider
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		slider <= 0;
		wait for 50 ns;
		slider <= 1;
		wait for 50 ns;
      slider <= 2;
		wait for 50 ns;
		slider <= 3;
		wait for 50 ns;
		slider <= 4;
		wait for 50 ns;
		slider <= 5;
		wait for 50 ns;
		slider <= 6;
		wait for 50 ns;
		slider <= 7;
		wait for 50 ns;
		slider <= 8;
		wait for 50 ns;
		slider <= 9;
		wait for 50 ns;
		slider <= 10;
		wait for 50 ns;
		slider <= 11;
		wait for 50 ns;
		slider <= 12;
		wait for 50 ns;
		slider <= 13;
		wait for 50 ns;
		slider <= 14;
		wait for 50 ns;
		slider <= 15;
		wait for 50 ns;
		
		wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
