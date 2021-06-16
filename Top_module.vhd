library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_module is
    Port(
        clk, reset: in std_logic;
        LED: out std_logic_vector(3 downto 0);
        SEG: out std_logic_vector(6 downto 0)
    );
end Top_module;

architecture TB_Top_module_arc of Top_module is
    component P_Conta1seg is
        Port(
            clk, reset: in std_logic;
            s1seg: out std_logic
        );
    end component;

    component PConta10segs is
        Port(
            clk, reset, s1seg: in std_logic;
            s10segs: out std_logic_vector(3 downto 0)
        );
    end component;

    component CONV_7SEG is
        Port(
            in_decoder_7seg : in std_logic_vector(3 downto 0);
            SEG: out std_logic_vector(6 downto 0)
        );
    end component;

    signal cable1: std_logic;
    signal cable2: std_logic_vector(3 downto 0);
begin
    u0: P_Conta1seg port map(
        clk => clk,
        reset => reset,
        s1seg =>  cable1
    );

    u1: PConta10segs port map(
        clk =>  clk,
        reset => reset,
        s1seg => cable1,
        s10segs => cable2
    );

    u2: CONV_7SEG port map (
        in_decoder_7seg => cable2,
        SEG => SEG
    );

    LED <= cable2;
end TB_Top_module_arc;