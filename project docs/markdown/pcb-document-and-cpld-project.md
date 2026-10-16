# pcb document and cpld project

*Markdown preview extracted from pcb document and cpld project.docx for GitHub reading. Original Word file remains the provenance copy.*

Lake Washington Institute of Technology

7th Quarter Project

CPLD development board

January 12, 2018

Jim Burney

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018

Executive Summary – The goal of this project was to make a very high quality Printed Circuit board for making things like the calculator from the Digital Electronics Class 211. Using

This project documents the two revisions of the boards made, and some examples what can be done with them. This project took over 33 hours for the development of the documentation, and the development of the projects to make with it. What follows is the documentation of the two versions. Even though the two only have three pins from the CPLD to the display changed, this needs to be shown.

Ver1

Ver2

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018

The easiest way to tell the two versions apart is simple, version 1 has no silkscreen, and version 2 does. There are also other minor changes in the layout, to make the board better.

What follows is the pin assignments used for the two boards, this is really all that matters for their use.

ComponentVersion1Version2

CPLD Pin           CPLD Pin

Dip switch 1     4     4

Dip switch 2     5     5

Dip switch 3     6     6

Dip switch 4     8     8

Dip switch 5     9     9

Dip switch 6    12    12

Dip switch 7    11    11

Dip switch 8       14    14

Dip switch 9    16    16

Dip switch 10    17    17

Dip switch 11    19    19

Dip switch 12    18    18

Clock 66.6KHz    24    24

Display

Right/left A    27   27

Right/left B    25   25

Right/left C    26   26

Right/left D    28   28

Right/left Blank    29   29

Right Latch    31   33     *

Left Latch    33   36     *

Right DP    34   34

Left DP    36   31*

*Changes made from version 1 to version 2

Ver1 is used for all examples used in this report.

Note: The pins to the programming header are not shown as they are standard.

some notes on the use of this board, always drive the Decimal Point of the display with and Open Drain buffer. If you don’t, the DP may not turn fully off completely, depending on the voltage supplied. The supply voltage should be from 6.5 Volts to 12 Volts, and current should be limited to about 160mA. Iif using a power supply, please current limit.  The regulators will get very HOT, so it is better to operate on the lowest voltage possible. At 9V input, power dissipation is 3/4Watts in the 5V regulators.

7th Quarter Project – CPLD development board CPLD – Jim Burney – January, 2018

The following is the parts list for either version of this board.

R11K ¼ WATT 1%RNF14FTD1K00CT-ND

R2-R3470 Ohms ¼ WATT 1%RNF14FTD470RCT-ND

R410k ¼ WATT 1%RNF14FTD10K0CT-ND

RN1ARRAY 12 RES 10K 13Sip4613X-101-103LF-ND

RN2ARRAY 5 RES 10K 6SipCSC10KE-ND

C1-C422uF 16v710-860020372002Mouser

C5-C61000pF495-6839-ND

C7-C8.1uF478-5194-ND

IC1CPLD 32MC 10NS PLCC544-1995-ND

*OrCPLD 64MC 10NS PLCC 989-EPM7064AELC44-10Mouser

U1-U2LM1117-5.0LM1117T-5.0/NOPB-ND

U3LM1117-3.3LM1117T-3.3/NOPB-ND

U4LM555LM555CNFS-ND

U5-U6Til311HARD TO FIND (See note)eBay / Jim Burney

SW1SLIDE DIP 12-POSCT20812-ND

J11x2 Header 2.54mmWM18785-ND

J22x5 Header 2.54mm437-8021001010002101Mouser

PCBCustom BoardJHB00005Jim Burney

Sockets for board

PLCC44AE10057-ND

**DIP-24 Pin575-1104732441001000Mouser

**DIP-14 Pin (2 needed)575-1104731441001000Mouser

**DIP-8 Pin 575-1104730841001000Mouser

**Adhesive feet (4 needed)RM822-ND

*needed if you want to do all projects

**Optional parts.

All parts are from Digi-key unless otherwise noted.

NOTE: The Til311 can be found on eBay also, the DIS1417 may be able to replace the Til311.

By the time you are done, the cost will be about $100 for each assembled board, if done in quantity of ten. Your mileage may vary, as mine was much higher, as three different boards were made and each set of 10 cost about $40.

7th Quarter Project – CPLD development board CPLD – Jim Burney – January, 2018

Ver1

Ver2

Note: Pin 1of RN1 is on the right side for version 1, and on the left side for version 2.

7th Quarter Project – CPLD development board CPLD – Jim Burney – January, 2018

The first project was done to test the displays, and the clock on the board, this is really a simple test. Switch 1 is the A bit, and 2 is B, 3 is C, and 4 is D. Switch 9 is the Latch to the Left display, and 10 is Latch to the right display. Finally switch 12 controls the blanking of the displays.

Negative logic comes from the switches, as they provide a low (0) when the switch is on, so all switches used are inverted, so that when the switch is on, it makes this a high (1).

Ver1 is used for all examples used in this report.

This takes the negative logic from the switches and converts it to positive logic for the display.

By doing this, it makes it easier to understand how the hexadecimal displays work.

First you can see that as long as switch 12 is low, the data on the displays can be seen, but as soon as you turn the switch on, the display BLANKS. This shows that the blank signal to the display is active high. The data bits are really straight forward, but the bits go to both displays, so the Latch signal is used to hold the data on each display. If you have switch 9 off and stich 10 on, as you change the positions of switches 1 to 4, you will see that only the left display changes and the right display hold whatever was on the display when you started. This right display has Latched the data, as the Latch signal is active high, this is an easy way to do multiplexing to reduce the number of wires in a system.

So, let’s take a look at the flashing DP of the displays. The CPLD is clocked by an evil 66.6Khz signal form a 555 timer IC and is connected to pin 24 of the CPLD. A divider chain divides this by 65,536, giving about a 1Hz signal, this in turn is connected to one of the displays DP, then the signal is inverted and drives the others displays DP.

Ver1 is used for all examples used in this report.

This is simply a chain of four divide by sixteen counters that drive the displays DP.

This test also let you know how to drive the displays, and that the clock source workes. however, it did not test the switches. This is addressed in the next project with a priority encoder to test the switches and display.

7th Quarter Project - CPLD development board PLD - Jim Burney – January, 2018

A priority encoder takes the highest decimal numbered input and converts that to BCD, regardless of any lower numbered inputs. This encoder is based on negative logic (active low, or NOT by a bar over the signal name) so the switch inputs don’t need to be inverted, as they are negative logic as well. The output however needs to be inverted as the displays work on positive logic (active high). This project shows that all the switches are working, as well as the displays.

Ver1 is used for all examples used in this report.

Again, the counter chain is used to toggle the DP of the displays and show that the 555 timer is working at the right frequency, and clocking the CPLD.

Ver1 is used for all examples used in this report.

Below is a table entered for this encoder

Ver1 is used for all examples used in this report.

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018

In this last project you will make a calculator that can add/subtract, multiply, and show min/max number. It should be noted that you need the 64 MC chip to do this project.

Min-Max Module

This section is right out of the textbook with a few minor changes to work right, and the control of the display DP. The 7485 is a four-bit magnitude comparator and has outputs to tell what four-bit bank is higher than the other. This output drives the two multiplexers that can swap the two four-bit digits based on this comparison. When the second four-bit number is grater then the first four-bit number, the displays DP will come on and the four-bit numbers will be swapped. The DP will only light-up in this mode.

The dip switch is setup as follows

With Switch 12 and switch 11 both off, the calculator is in min max mode.

Switch 1 to 3 are the first nibble, and switches 4 to 8 are the second nibble. So, if

1011 0110 is entered on the switches, then D6 will be displayed. However, if the numbers are

Reversed 0110 1011 then D6 will be displayed and both DP will be turned on, this shows that the numbers were swapped.

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018

The next part of the calculator is the adder/subtractor module, this is very modified from the book to correct for a borrow when subtracting. The full adder has a carry output and this is used when adding.

This subtractor module is also from the book and modified, this allows a borrow to happen if the second number is larger than the first number.

With Switch 11 off and switch 12 on, the calculator is in addition mode.

If 1110 1001 00 01 is put on the dip switch, this is 0xEh + 0x9h and add mode.

The results should be 0x17h, go ahead and try 0111 1011 00 01. 0x7h + 0xB.

The results should be 0x12h.

With Switch 11 on and switch 12 on, the calculator is in subtraction mode.

Enter 1110 1001 00 11 on the dip switch, this is 0xEh – 0x9h and subtract mode.

The results should be 0x5h.

Enter 0110 1101 00 11 is put on the dip switch, this is 0x6h – 0xDh and subtract mode.

The results should be 0xF9h, as a barrow occurred.

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018

Next is the multiplier module

This is right out of the text book, again done slightly differently to make it easier to use.

The multiplication module is selected by switch 11 being on and switch 12 being off.

Enter 1110 1001 00 11 on the dip switch, this is 0xEh x 0x9h and subtract mode.

The results should be 0x7Eh.

Enter 0110 1101 00 11 is put on the dip switch, this is 0x6h x 0xDh and subtract mode.

The results should be 0x4Eh, as a barrow occurred.

Enter 1110 1100 00 11 is put on the dip switch, this is 0xEh x 0xCh and subtract mode.

The results should be 0xA8h, as a barrow occurred.

Enter 1111 1111 00 11 is put on the dip switch, this is 0xFh x 0xFh and subtract mode.

The results should be 0xE1h, as a barrow occurred.

Enter 1000 0010 00 11 is put on the dip switch, this is 0x8h x 0x4h and subtract mode.

The results should be 0x10h, as a barrow occurred.

Enter 1000 0100 00 11 is put on the dip switch, this is 0x8h x 0x4h and subtract mode.

The results should be 0x20h, as a barrow occurred.

Enter 1000 1000 00 11 is put on the dip switch, this is 0x8h x 0x8h and subtract mode.

The results should be 0x40h, as a barrow occurred.

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018

This is an over view of all the modules that make up the calculator’s functions. Some of the modules you have already seen. The two sections left are both multiplexers, one selects what function module to use, and the other multiplexes the data from eight-bits to four-bit for the display buss.

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018

Display multiplexer module

Module to pinout module

Ver1 is used for all examples used in this report.

Pinout table

Ver1 is used for all examples used in this report.

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018

X-ray view of back layer of Version 2 board

7th Quarter Project - CPLD development board CPLD - Jim Burney – January, 2018
