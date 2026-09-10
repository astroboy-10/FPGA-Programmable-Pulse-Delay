library ieee;
use ieee.std_logic_1164.all;

entity tb_delay_top is
end entity tb_delay_top;


architecture sim of tb_delay_top is

    signal clk       : std_logic := '0';
    signal pulse_in  : std_logic := '0';
    signal pulse_out : std_logic;
    signal sw        : std_logic_vector(3 downto 0) := "0011";
    signal led       : std_logic_vector(3 downto 0);

begin

    ----------------------------------------------------------------
    -- 100 MHz clock
    ----------------------------------------------------------------
    clk <= not clk after 5 ns;


    ----------------------------------------------------------------
    -- Device under test
    ----------------------------------------------------------------
    dut : entity work.delay_top
        port map (
            clk       => clk,
            pulse_in  => pulse_in,
            sw        => sw,
            pulse_out => pulse_out,
            led       => led
        );


    ----------------------------------------------------------------
    -- Test stimulus
    ----------------------------------------------------------------
    stimulus : process
    begin

        -- Wait for a few clock cycles.
        wait for 25 ns;

        -- Generate input pulse.
        pulse_in <= '1';
        wait for 20 ns;
        pulse_in <= '0';

        -- Allow time for delayed output.
        wait for 150 ns;

        -- Finish simulation.
        wait;

    end process;

end architecture sim;
