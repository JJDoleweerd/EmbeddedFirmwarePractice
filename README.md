# EmbeddedFirmwarePractice
All drivers that have been developed for the purpose of practicing and learning firmware. 
This will be documentation of my journey into firmware development. This will consist of tutorial projects and practice projects.
Languages Used: Assembly, C, C++. The STM32 HAL Driver library is used.

## Assembly Projects

Gpio Assembly Tutorial Project: A simple project to get a basic understanding of assembly programming and the differences between driver development in C and assembly. Next Steps: Write an identical driver for the Nucleo STM32F401RE board and run on the physical board. This will be good practice at reading datasheets and reaffirming current assembly knowledge. 


## Timer Projects

Timer Delay Tutorial Project: A C based project designed for the Nucleo STM32F411RE board. Toggles an LED on/off every second.

Timer Counter Tutorial Project: Built in C to toggle an LED ON/OFF every 5 button presses of the embedded button on the board. Then replicated and successfully run on the Nucleo-STM32F401RE board. A delay could be useful to prevent accidental double clicks.

Timer Interrupt Tutorial Project: A C based project that toggles the onboard LED every time a set period has elapsed.

Timer Output Compare Tutorial Project: C based project that toggles different pins on different set intervals.

TimerPWM Tutorial Project: Description To Be Added


## ADC Projects

ADC DMA Tutorial Project: Description To Be Added

ADC Interrupt Tutorial Project: C Based project using the HAL library to read the values of a potentiometer.

ADC Continuous Conversion Tutorial Project: Embedded C based project using ADC and continous conversion to read the values of an attached potentiometer.

## SPI Projects

SPI Interrupt Tutorial Project: C Based tutorial project that utilizes SPI communication with interrupt through the HAL library.

SPI and DMA Project: Coming Soon
