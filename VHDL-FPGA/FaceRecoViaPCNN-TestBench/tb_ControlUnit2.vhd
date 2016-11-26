--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:09:48 11/25/2016
-- Design Name:   
-- Module Name:   C:/Users/abish/Desktop/PCNN/FaceRecoViaPCNN/FaceRecoViaPCNN/tb_ControlUnit2.vhd
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
 
ENTITY tb_ControlUnit2 IS
END tb_ControlUnit2;
 
ARCHITECTURE behavior OF tb_ControlUnit2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         clk : IN  std_logic;
         out_minNorm : OUT  integer;
         image_number : OUT  std_logic_vector(7 downto 0);
         test_image : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal test_image : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal out_minNorm : integer;
   signal image_number : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          clk => clk,
          out_minNorm => out_minNorm,
          image_number => image_number,
          test_image => test_image
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
		test_image <= "0000";
		wait for 50 ns;
--		test_image <= "0001";
--		wait for 50 ns;
--		test_image <= "0010";
--		wait for 50 ns;
--		test_image <= "0011";
--		wait for 50 ns;
--		test_image <= "0100";
--		wait for 50 ns;
--		test_image <= "0101";
--		wait for 50 ns;
--		test_image <= "0110";
--		wait for 50 ns;
--		test_image <= "0111";
--		wait for 50 ns;
--		test_image <= "1000";
--		wait for 50 ns;
--		test_image <= "1001";
--		wait for 50 ns;
--		test_image <= "1010";
--		wait for 50 ns;
--		test_image <= "1011";
--		wait for 50 ns;
--		test_image <= "1100";
--		wait for 50 ns;
--		test_image <= "1101";
--		wait for 50 ns;
--		test_image <= "1110";
--		wait for 50 ns;
--		test_image <= "1111";
--		wait for 50 ns;
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
