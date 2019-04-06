This repository contains all labs done in "Verilog" as a part of the Embedded Logic and Design course.
Instructor : Dr. Sumit Darak

Lab 1
Design and implement a 4:2 Priority Encoder on Basys 3.

Lab 2
Design and Implement a 4-bit adder/subtractor (adds/subtracts two 4-bit inputs)
using the full-adders designed.

Lab 3
Design and implement a counter on basys3. The counter should continuously count from 0
to 31. The output of the counter can be displayed on the LEDs of basys3 at a rate of 1,2,4 or 8
seconds. The rate is decided by the user(use switched for this task). The counter should be able
to clear itself whenever the clear button is pressed.

Lab 4
Design a counter that counts from 0 to 255.
Display the count on the seven segment display.
Using a switch select as Up/Down counter or Using a switch, to add pause functionality. (Counter pauses counting)
Note: While switching the counter, the count value should not be reset.

Lab 5
Design a 6 bit up_counter and Display its out count on SSD (Seven Segment
Display) using both Internal and External SSD. Display 2 LSB bit on External
SSD and 4 MSB bit on Internal SSD.

Lab 6
Design a 6 bit up_counter and Display its out count on SSD (Seven Segment Display) using both Internal and External SSD. Display 2 LSB bit on External SSD and 4 MSB bit on Internal SSD.

Lab 7
Take input from two brams, do the sum and store the bcd output in the FIFO (using independent clock built-in/block-ram FIFO​). One bram coe file will consist of your name letters and other file will contain numbers. Read the sum value from fifo one by one using push button. Display the output on the on-board ssd. Check my announcement for other intricacies.

Lab 8
Design and code an FSM to detect an overlapping and non-overlapping sequence of '10101' as either MealyMoore. A switch should be taken as a control input to detect overlapping/non-overlapping sequence.

Lab 9
Include the option to read the inputs stored in block RAM (The switches will act as Block RAM address).
Then calculate GCD and display result on SSD.

Lab 10
• Write separate Verilog code for the control path.
• Write separate Verilog code for datapath 
• Write top file (name it as gcd_top) 
• Give the input via switches and display the results on 7-segment in BCD format 
• Use 25 MHz clock for gcd and 190Hz clock for led-to-bcd. 
• Validate the design on FPGA

Lab 11
Design a door lock circuit with passcode as “CCD”. The code should be entered
using PMOD keypad and the user can enter the code of any length. The user
must push “Enter” push buon to indicate that he has entered a
complete code. Based on the entered code, display one of the three outputs on
the SSD
1) “PASS” when complete code has been entered and it is correct,
2) “FAIL” when complete code has been entered and it is wrong, and
3) “INV” when entered code is either less or more than 3 digits

Lab 12
Consider the following function:
Q = (X/T) + sqrt (D*ln(N)/T)
Here X,T,N are integers such that X <=T and N > T. The D is constant and equal to 2.Find the corresponding value of Q.

Lab 13
Create a custom LED IP instead of GPIO IP for the zynq block diagram. Create a .c file
to execute the following operation.
1. BTN0 pressed- Show the up counter operation on the LEDs
2. BTN1 pressed- Show the down counter operation on the LEDs
3. BTN2 pressed- Increase the speed of LED blinking.
4. BTN3 pressed- Decrease the speed of LED blinking.
Also, show the status of buttons on the UART. Take input value 1 from the UART and
pause the LED counter.
