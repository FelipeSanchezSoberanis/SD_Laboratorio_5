LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY TB_Top_module IS
END TB_Top_module;

ARCHITECTURE behavior OF TB_Top_module IS

   component Top_module is
      Port(
         clk, reset: in std_logic;
         LED: out std_logic_vector(3 downto 0);
         SEG: out std_logic_vector(6 downto 0)
      );
   end component;

   signal clk : std_logic := '1';
   signal reset : std_logic := '0';
   signal LED : std_logic_vector(3 downto 0);
   signal SEG : std_logic_vector(6 downto 0);

   constant clockFrequency: integer := 50e6;
   constant clockPeriod: time := 1000 ms / clockFrequency;

   signal clock: std_logic := '1';
BEGIN
   uut: Top_module PORT MAP (
      clk => clk,
      reset => reset,
      LED => LED,
      SEG => SEG
   );

   clock <= not clock after clockPeriod / 2;
   clk <= clock;
END;