# Countdown-Clock
 Countdown clock made for the DE10-Lite FPGA board
 
 # Features:
The key feature of an FPGA is the ability to design circuits using software then translated into a series of digital signals that are stored as a configuration in the FPGA. This means that the same design can be configured to perform many different functions. Which opens up whole new possibilities for designers to create complex systems that were previously impossible or impractical in traditional microprocessor-based designs. 

This is particularly useful for the four-mode timer project, which can perform multiple functions depending on user input and is capable of counting down for five seconds, ten seconds, one minute, and two minutes. 

The main aim of the project is to design a 4-mode timer that should be able to pause counting down when the hold input is activated by the user. The output is split into buses representing minutes and seconds, with the range as shown above. The range is split into the minutes and seconds when the timer counts down to zero. The timer is designed to be controlled by a 50MHz clock. This clock is divided down to 1Hz to drive the timer logic, which is responsible for the counting down function, as well as the setting and holding functions. The timer logic is designed to handle the binary values of the remaining time which are converted drought the 7-segment encoder module to be suitable to drive the 7-segment peripheral of the DE10-Lite board. 
