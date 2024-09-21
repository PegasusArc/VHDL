library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity room_occupancy_tracker_tb is
    -- Testbench has no ports
end room_occupancy_tracker_tb;

architecture behavior of room_occupancy_tracker_tb is
	
    -- Signal declarations
    signal clk         : std_logic := '0';
    signal reset       : std_logic;
    signal X           : std_logic := '0';
    signal Y           : std_logic := '0';
    signal m           : std_logic_vector(7 downto 0);
    signal max_capacity: std_logic;
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.room_occupancy_tracker
        port map (
            clk         => clk,
            reset       => reset,
            X           => X,
            Y           => Y,
            m           => m,
            max_capacity=> max_capacity
        );

    -- Clock process definitions
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;  -- Clock period is 20 ns
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Test scenarios
    stim_proc: process
    begin
        -- Set maximum occupancy to 4
        m <= "00000100";
        
        -- Reset the system
        reset <= '1';
        wait for 40 ns;
        reset <= '0';
        wait for 40 ns;

        -- Simulate entries and check for max_capacity assertion
        for i in 1 to 4 loop
            X <= '1';
            wait for 20 ns;
            X <= '0';
            wait for 20 ns;
            -- Check if max_capacity is asserted correctly
            if (unsigned(m) <= i) then
                assert max_capacity = '1'
                report "Max capacity should be reached at iteration " & integer'image(i)
                severity error;
            else
                assert max_capacity = '0'
                report "Max capacity should not be reached yet at iteration " & integer'image(i)
                severity error;
            end if;
        end loop;
        
        -- Simulate exits and check for max_capacity deassertion
        for i in 1 to 4 loop
            Y <= '1';
            wait for 20 ns;
            Y <= '0';
            wait for 20 ns;
            -- Check if max_capacity is deasserted correctly
            if (unsigned(m) < (4-i)) then
                assert max_capacity = '0'
                report "Max capacity should be deasserted at iteration " & integer'image(i)
                severity error;
            end if;
        end loop;
        
        -- Reset the system again
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 40 ns;

        -- Check if the system has been reset properly
        assert max_capacity = '0'
        report "Max capacity should be '0' after reset"
        severity error;

        -- Finish the simulation
        report "Testbench completed successfully.";
        wait;
    end process;
end behavior;
