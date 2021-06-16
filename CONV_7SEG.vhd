library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CONV_7SEG is
    Port(
        in_decoder_7seg : in std_logic_vector(3 downto 0);
        SEG: out std_logic_vector(6 downto 0)
    );
  end  CONV_7SEG;

architecture CONV_7SEG_Arch of CONV_7SEG is
begin
    process(in_decoder_7seg)
    begin
        case in_decoder_7seg is
                when "0000" =>
                    SEG <="1111110";
                when "0001" =>
                    SEG <="0110000";
                when "0010" =>
                    SEG <="1101101";
                when "0011" =>
                    SEG <="1111001";
                when "0100" =>
                    SEG <="0110011";
                when "0101" =>
                    SEG <="1011011";
                when "0110" =>
                    SEG <="1011111";
                when "0111" =>
                    SEG <="1110000";
                when "1000" =>
                    SEG <="1111111";
                when "1001" =>
                    SEG <="1111011";
                when others =>
                    SEG <="0000000";
        end case;
    end process;
end CONV_7SEG_Arch ;