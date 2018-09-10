Nexys 4 DDR Out of Box Demo 
==============

Description
--------------
This project is a Vivado demo using the Nexys 4 DDr's switches, LEDs, pushbuttons, RGB LEDS, seven-segment display, VGA connector, USB HID Host port, PWM audio output, PDM microphone, 3-axis accelerometer and the temperature sensor written in VHDL. When programmed onto the board, all sixteen of the switches are tied to their corresponding LEDs. Every time a switch is toggled, the LED directly above it will toggle with it. The seven-segment display runs a constant snake pattern.

The two RGB LEDs are initially set to smoothly change from red to green, then green to blue, then blue to red. The table below describes how the D-pad buttons affects the RGB LEDs and the microphone. Once the audio recording is started with the BTNU button the data is taken from the omni-directional microphone and stored into the DDR2 memory. While recording audio the LEDs will light up from left to right. After about 5 seconds the recording stops and the audio will be read from DDR2 memory and played through the headphone jack (labeled mono audio out). Afterwhich the LEDs will turn off from right to left.

The VGA displays a  Digilent / Analog Devices logo, the mouse cursor connected by the usb HID Host port, the audio signal from the microphone, the x , y and z data from the Accelerometer, the FPGA temperature and the value of the RGB componnents. The VGA is only displayed in 1280×1024 resolution:


| Button | Function                                                          |
| ------ | ----------------------------------------------------------------- |
| BTNU   | Audio recording is started and data is taken from the              |
|        | omni-directional microphone                                       |
| BTNC   | The RGB LEDs are set to green                                     |                                    
| BTNL   | The RGB LEDs are set to red                                       |
| BTNR   | The RGB LEDs are set to blue                                      |
| BTND   | The RGB LEDs return to their gradual change loop.                 |
|        | If the user keeps pushing BTND, both LEDs will be isolated then   |
|        | both will be turned off                                           |   


Requirements
--------------
* **Nexys 4 DDR**:To purchase a Nexys 4 DDR, see the [Digilent Store](https://store.digilentinc.com/nexys-4-ddr-artix-7-fpga-trainer-board-recommended-for-ece-curriculum/)
* **Vivado 2018.2 Installation**:To set up Vivado, see the [Installing Vivado and Digilent Board Files Tutorial](https://reference.digilentinc.com/vivado/installing-vivado/start).
* **Serial Terminal Emulator Application**: For more information see the [Installing and Using a Terminal Emulator Tutorial](https://reference.digilentinc.com/learn/programmable-logic/tutorials/tera-term).
* **MicroUSB Cable**
* **Monitor with a VGA Port**
* **VGA Cable**
* **USB Mouse**
 
Demo Setup
--------------
1. Download and extract the most recent release ZIP archive from this repository's [Releases Page](https://github.com/Digilent/Nexys-4-DDR-OOB/releases).
2. Open the project in Vivado 2018.2 by double clicking on the included XPR file found at "\<archive extracted location\>/vivado_proj/Nexys-4-DDR-OOB.xpr".
3. In the Flow Navigator panel on the left side of the Vivado window, click **Open Hardware Manager**.
4. Plug the Nexys 4 DDR into the computer using a MicroUSB cable.
5. Open a serial terminal emulator (such as TeraTerm) and connect it to the Nexys 4 DDR's serial port, using a baud rate of 9600.
6. In the green bar at the top of the Vivado window, click **Open target**. Select **Auto connect** from the drop down menu.
7. In the green bar at the top of the Vivado window, click **Program device**.
8. In the Program Device Wizard, enter "\<archive extracted location\>vivado_proj/Nexys-4-DDR-OOB.runs/impl_1/Nexys4DdrUserDemo.bit" into the "Bitstream file" field. Then click **Program**.
9. The demo will now be programmed onto the Nexys 4 DDR. See the Description section of this README to learn how to interact with this demo.

Next Steps
--------------
This demo can be used as a basis for other projects, either by adding sources included in the demo's release to those projects, or by modifying the sources in the release project.

Check out the Nexys 4 DDR's [Resource Center](https://reference.digilentinc.com/reference/programmable-logic/nexys-4-ddr/start) to find more documentation, demos, and tutorials.

For technical support or questions, please post on the [Digilent Forum](https://forum.digilentinc.com).

Additional Notes
--------------
For more information on how this project is version controlled, refer to the [Digilent Vivado Scripts Repository](https://github.com/digilent/digilent-vivado-scripts)
