library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P_Conta1seg is
    Port(
        clk, reset: in std_logic;
        s1seg: out std_logic
    );
end P_Conta1seg;

architecture P_Conta1seg_arch of P_Conta1seg is
    signal counter: integer := 1;
    signal temp: std_logic := '1';
begin
    process(clk, reset, temp)
    begin
        if reset = '1' then
            counter <= 1;
            temp <= '1';
        elsif rising_edge(clk) then
            counter <= counter + 1;
            if counter = 50e6 then
                counter <= 1;
                temp <= '1';
            else
                temp <= '0';
            end if;
        end if;
        s1seg <= temp;
    end process;
end P_Conta1seg_arch;