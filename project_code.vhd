--Name:Praneel Sahu
--student ID:40292167
--COEN 313 Project (VHDL CODE)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity room_occupancy_tracker is
    port (
        clk         : in  std_logic;       -- Input: clock signal
        reset       : in  std_logic;       -- Input:  reset signal
        X           : in  std_logic;       -- Input :Entry photocell signal
        Y           : in  std_logic;       -- Input :Exit photocell signal
        m           : in  std_logic_vector(7 downto 0); -- Input :Maximum occupancy threshold
        max_capacity: out std_logic        -- Output: Signal indicating max capacity reached
    );
end entity;

architecture room_occupancy_tracker_arch of room_occupancy_tracker is
    signal occupancy_count : unsigned(7 downto 0) := (others => '0'); -- 8-bit room occupancy counter
begin

    -- reset process
    process (clk, reset)
    begin
        if reset = '1' then
            occupancy_count <= (others => '0');--occupancy_count counter initialised to 0 when reset='1'
        elsif (clk'event and clk='1') then
            if X = '1' and occupancy_count < unsigned(m) then
                occupancy_count <= occupancy_count + 1;--Increment occupancy_count when person enters the room
            elsif Y = '1' and occupancy_count > 0 then
                occupancy_count <= occupancy_count - 1;--Decrement occupancy_count when person leaves the room
            end if;
        end if;
    end process;

    -- Max capacity signal
    max_capacity <= '1' when occupancy_count >= unsigned(m) else 
						  '0';

end room_occupancy_tracker_arch;
