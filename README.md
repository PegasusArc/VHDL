Project: Digital Room Occupancy Tracking And Monitoring System

Author: PRANEEL SAHU


Description:
This project contains the VHDL code for a Digital Room Occupancy Tracking And Monitoring System designed to monitor the number of people in a room using entry and exit photocells. 
The system outputs a signal when the room reaches its maximum occupancy threshold.


## Directory Structure

  - `project_code.vhd`: The VHDL code for the room occupancy tracker module.
  - `project_tb.vhd`: The testbench for the room occupancy tracker module.
  - `coen313_project.xdc`:The XDC constraint file for the implementing on the FPGA device.
  

  - `synthesis.log`: Log file generated during the synthesis process.
  - `implementation.log`: Log file generated during the implementation process.


  - `elaborated schematic.pdf`: The elaborated schematic of the design in pdf format.
  - `synthesis schematic.pdf`: The schematic post-synthesis in pdf format.
  - `implementation schematic.pdf`: The schematic post-implementation in pdf format.

How to execute the code:
1. Install Vivado Design Suite from Xilinx or ensure it is already installed on your system.
2. Open Vivado and create a new project.
3. Add 'project_code.vhd' to your project's design sources. This file contains the main VHDL code for the Room Occupancy Tracker system.	
4. Add 'project_tb.vhd' to your project's simulation sources. This file is the testbench for the Room Occupancy Tracker, used to validate the design through simulation. 
5.Add 'coen313_project.xdc' to your project's constraints sources.
6. Run the synthesis and implementation.
7. Open the 'Run Simulation' tool and execute the behavioral simulation to observe the testbench results.
8. Run the 'Generate Bitsream'.   
9. Run the 'Open Hardware Manager' and program the FPGA device.

Please ensure you have the appropriate FPGA board [xc7a100tcsg324-1] selected in your project settings, matching the requirements for this code.

For any further questions or issues, please contact 2praneelsahu@gmail.com.
