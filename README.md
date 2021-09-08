# fpga-vision
Goal: Perform optical character recognition (OCR) on simple character set (0-9) entirely on FPGA.

This project was inspired by the computer vision demo on the Hello FPGA Kit from Microchip (Microsemi).

Initial setup:
* Digilent Basys 3 board with a Xilinx Artix-7 FPGA
* Omnivision OV7670 640x480 CMOS camera
* TFT SPI OLED display or VGA display

Goals:
* Interface FPGA with OV7670 camera
* Control VGA display
* Display camera data on VGA display
* Control SPI OLED display
* Display camera data on SPI OLED display
* Draw overlays on (e.g. bounding boxes) on camera data
* Develop CNN logic for FPGA
* Train OCR model in Python
* Port Python-trained weights to FPGA CNN
* Translate CNN output to numeric overlays for image
* Port logic designs to Intel Cyclone 10 architecture