library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PConta10segs is
    Port(
        clk, reset, s1seg: in std_logic;
        s10segs: out std_logic_vector(3 downto 0) := "0000"
    );
end PConta10segs;

architecture PConta10segs_arch of PConta10segs is
    signal counter: integer := 0;
begin
    process(s1seg, clk, counter, reset)
    begin
        if reset = '1' then
            counter <= 0;
        elsif rising_edge(s1seg) and clk = '1' then
            counter <= counter + 1;
            if counter = 10 then
                counter <= 0;
            end if;
        end if;
        s10segs <= std_logic_vector(to_unsigned(counter, 4));
    end process;
end PConta10segs_arch;