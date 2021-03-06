# Labs for CPE/EEE 64
This repository contains a set of labs for an introductory logic course. The goal is to introduce the DE0-Nano development kit for Terasic and the Quartus development for altera. These tutorials make use of Quartus' block diagram functionality as well as Verilog design entry. 

Each lab is made up of three parts in this repository. The lab manual is written in LaTeX and the source code is contained in the LabManual directory. Screencasts are referenced in the lab manual and expand upon it's content. Screencasts are included in their own directory. Most of the labs also include Quartus projects or and System Verilog  test benches. 

##text of labs
To find the rendered text of the lab manual look in an individual lab's folder. For example lab2/manual.pdf would be the text of lab two. These rendered documents will be included with changes to the source Latex.

<!-- ############################################################################ -->
##Written lab manual content

###Lab Two
- objective:  Introduce the DE0-Nano development board and the Quartus development environment.
- Lab Demo 1: 4 Two input LED controller from Altera's University program
- Lab Demo 2: 4 input AOI module

###Lab Three
- objective: Introduce the student to Verilog design entry and Verification
- Lab Demo 1: 4-bit and constant adder
- Lab Demo 2: 4-bit to 4-bit comparator using parametrized modules. 

###Lab Four
- objective:  Introduce timers and shift registers
- Lab Demo 1: Timer pulse generation
- Lab Demo 2: Shift register IO

### Lab Five
- objective: Introduce practical application of Mealy and Moore state machines
- Lab Demo 1: Button LED control 
- Lab Demo 2: Binary sequence detector + Clean timequest report 

### Lab Six
- objective: Allow Student to investigate particular topic of interest through project.

<!-- ############################################################################ -->
## Screencasts
### Lab Two
- Installing Quartus
- Block editor in Quartus
- Pin Editor in Quartus

### Lab Three
- Verilog Testbench
- Automated debugging

### Lab Four
- Latch Generation

### Lab Five

<!-- ############################################################################ -->
## Content to add
###Lab Two

###Lab Three
- Signals and probes editor

### Lab Four
- Signaltap
- tri-state 

### Lab Five
- Timing closure
- Example clock divider
- Example shift register

### Lab Six

<!-- ############################################################################ -->
##TODO
Add requirements for synthesis compilation and warnings

Add information about synthesis optimization

Add info about System Verilog scope

basic OVM/UVM validation?
