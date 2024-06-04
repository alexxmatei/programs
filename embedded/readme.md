## pc_to_pico_serial_com.py
### Brief
Raspberry Pico project communicating over serial with a PC.
### Equipment used
- Raspberry Pi Pico with MicroPython
- USB to microUSB cable (to connect computer to Pico)
- Thonny IDE
### Instructions
- Create new file in Thonny
- Copy this py code into the file
- Save file as main.py **on the PICO.**
- Run the code with F5
- Writing 't' now should toggle the LED.
- (Optionally) Disconnect the USB cable from the PC, and reconnect it. The Pico will automatically run the `main.py` file.
  - Using a serial communication utility (like PuTTY), connect to the Pico COM over Serial at a 9600 Baud rate.
  - Writing 't' now should toggle the LED.

## pico_3pos_rotsw.py
### Brief
Raspberry Pico project using a 3 pos rotary switch. Detects active position
### Equipment used
- Raspberry Pi Pico with MicroPython
- CK1052
- 4 wires (pos1, pos2, pos3, GND)
- USB to microUSB cable (to connect computer to Pico)
### Wiring
- Switch POS1 to GPIO26
- Switch POS2 to GPIO27
- Switch POS3 to GPIO28
- Common Pole to any GND pin of the Pico
