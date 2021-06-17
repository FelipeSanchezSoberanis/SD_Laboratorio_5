library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CONV_7SEG is
    Port(
        conta10s: in std_logic_vector(3 downto 0);
        SEG: out std_logic_vector(6 downto 0);
        An: out std_logic := '1'
    );
  end  CONV_7SEG;

architecture CONV_7SEG_Arch of CONV_7SEG is
begin
    process(conta10s)
    begin
        case conta10s is
            when "0000" =>
                SEG <= "1111110";
                An <= '1';
            when "0001" =>
                SEG <= "0110000";
                An <= '1';
            when "0010" =>
                SEG <= "1101101";
                An <= '1';
            when "0011" =>
                SEG <= "1111001";
                An <= '1';
            when "0100" =>
                SEG <= "0110011";
                An <= '1';
            when "0101" =>
                SEG <= "1011011";
                An <= '1';
            when "0110" =>
                SEG <= "1011111";
                An <= '1';
            when "0111" =>
                SEG <= "1110000";
                An <= '1';
            when "1000" =>
                SEG <= "1111111";
                An <= '1';
            when "1001" =>
                SEG <= "1111011";
                An <= '1';
            when others =>
                SEG <= "0000000";
                An <= '0';
        end case;
    end process;
end CONV_7SEG_Arch ;