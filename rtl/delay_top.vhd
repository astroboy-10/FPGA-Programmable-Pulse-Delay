----------------------------------------------------------------------------------
-- Company: University of Cambridge
-- Engineer: Gaurav Kumar
-- 
-- Create Date: 10.09.2026 15:10:49
-- Design Name: 
-- Module Name: delay_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity delay_top is
    port (
        clk       : in  std_logic;
        pulse_in  : in  std_logic;
        sw        : in  std_logic_vector(3 downto 0);
        pulse_out : out std_logic;
        led       : out std_logic_vector(3 downto 0)
    );
end entity delay_top;


architecture rtl of delay_top is

    signal pulse_in_d : std_logic := '0';
    signal delay_cnt  : unsigned(3 downto 0) := (others => '0');
    signal active     : std_logic := '0';

begin

    -- Display the selected delay on the four LEDs.
    led <= sw;

    process(clk)
    begin
        if rising_edge(clk) then

            -- Detect rising edge of input pulse.
            pulse_in_d <= pulse_in;

            -- Start a delay whenever a rising edge is detected.
            if pulse_in = '1' and pulse_in_d = '0' then
                delay_cnt <= unsigned(sw);
                active    <= '1';
            end if;

            -- Count down the programmed delay.
            if active = '1' then

                if delay_cnt = 0 then
                    pulse_out <= '1';
                    active    <= '0';
                else
                    delay_cnt <= delay_cnt - 1;
                    pulse_out <= '0';
                end if;

            else
                pulse_out <= '0';
            end if;

        end if;
    end process;

end architecture rtl;
