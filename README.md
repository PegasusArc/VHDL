# Digital Room Occupancy Tracking and Monitoring System

This repository contains the **VHDL implementation** of a Digital Room Occupancy Tracking and Monitoring System.  
The system monitors the number of people in a room using entry and exit photocells and outputs a signal when the room reaches its maximum occupancy threshold.  

The project is developed for implementation on an **FPGA board (xc7a100tcsg324-1)**.

---

## Author
**Praneel Sahu**

---

## Repository Contents
- `project_code.vhd` – Main VHDL code for the room occupancy tracker module.  
- `project_tb.vhd` – Testbench for simulating and validating the room occupancy tracker module.  
- `project.xdc` – XDC constraint file for FPGA implementation.  
- `synthesis(1).log` – Log file from the synthesis process.  
- `implementation(1).log` – Log file from the implementation process.  
- `elaborated schematic.pdf` – Elaborated schematic of the design.  
- `synthesis schematic.pdf` – Post-synthesis schematic.  
- `implementation schematic.pdf` – Post-implementation schematic.  

---

## Prerequisites
- **Vivado Design Suite** – Install the Xilinx Vivado Design Suite to synthesize, implement, and simulate the design.  
- **FPGA Board** – Ensure compatibility with the `xc7a100tcsg324-1` FPGA board.  

---

## How to Execute

Follow these steps to set up and run the project in Vivado:

1. **Install Vivado**  
   - Download and install the Xilinx Vivado Design Suite if not already installed.  

2. **Create a New Project**  
   - Open Vivado and create a new project.  
   - Select the `xc7a100tcsg324-1` FPGA board in the project settings.  

3. **Add Source Files**  
   - Add `project_code.vhd` to the project’s design sources.  
   - Add `project_tb.vhd` to the project’s simulation sources.  
   - Add `project.xdc` to the project’s constraint sources.  

4. **Run Synthesis and Implementation**  
   - Execute the synthesis process.  
   - Execute the implementation process.  

5. **Simulate the Design**  
   - Open the **Run Simulation** tool.  
   - Run the behavioral simulation to verify the design using the testbench (`project_tb.vhd`).  

6. **Generate Bitstream**  
   - Run the **Generate Bitstream** process to create the bitstream file for FPGA programming.  

7. **Program the FPGA**  
   - Open the **Hardware Manager** in Vivado.  
   - Connect to the target FPGA board (`xc7a100tcsg324-1`) and program the device with the generated bitstream.  

---

## Notes
- Ensure the FPGA board matches the **xc7a100tcsg324-1** specification to avoid compatibility issues.  
- The **testbench (`project_tb.vhd`)** validates the functionality of the room occupancy tracker through simulation.  
- Refer to the schematic PDFs for visual representations of the design at various stages:  
  - Elaborated schematic  
  - Post-synthesis schematic  
  - Post-implementation schematic  

---

## License
This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for details.  

---

## Contact
For questions or contributions, please contact:  
**Praneel Sahu** via GitHub.  

© 2025 PegasusArc
