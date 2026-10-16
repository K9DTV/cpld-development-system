# two digit counter cpld project

*Markdown preview extracted from two digit counter cpld project.docx for GitHub reading. Original Word file remains the provenance copy.*

Lake Washington Institute of Technology

CPLD development board

Two Digit Counter

May 27, 2018

Jim Burney

CPLD development board - Two Digit counter - Jim Burney – May 27, 2018

What follows is the documentation of the CPLD development board being used to make a

Two Digit Calculator for your final.

This is the schematic of the board.

The pin assignments used for the board.

Component    CPLD Pin

Dip switch 14

Dip switch 25

Dip switch 36

Dip switch 48

Dip switch 59

Dip switch 612

Dip switch 711

Dip switch 8   14

Dip switch 916

Dip switch 1017

Dip switch 1119

Dip switch 1218

Clock 66.6KHz24

Display

Right/left A 27

Right/left B25

Right/left C26

Right/left D28

Right/left Blank29

Right Latch33

Left Latch36

Right DP34

Left DP31

Note: The pins to the programming header are not shown as they are standard.

CPLD development board - Two Digit counter - Jim Burney – May 27, 2018

The following is the parts list for the board.

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

**Optional parts.

All parts are from Digi-key unless otherwise noted.

NOTE: The Til311 can be found on eBay also, the DIS1417 may be able to replace the Til311.

Always drive the Decimal Point of the display with and Open Drain buffer. If you don’t, the DP may not turn off completely, depending on the voltage supplied. The supply voltage should be from 6.5 Volts to 12 Volts, and current should be limited to about 160mA. If using a power supply, please current limit.  The regulators will get very HOT, so it is better to operate on the lowest voltage possible. At 9V input, power dissipation is 3/4Watts in the 5V regulators.

CPLD development board - Two Digit counter - Jim Burney – May 27, 2018

Parts placement for the CPLD development board Two Digit counter

WARNING

This is not a how to guide, this assumes you know how to use Quartus 13, so no step by steps will be given, just an over view or highlights will be shown. It is up to you to get the information you need from reading the course book and doing the labs.

CPLD development board - Two Digit counter - Jim Burney – May 27, 2018

The switches that drive the CPLD are active low, this means when the switch is in the ON position, the output is Low, and when the switch is in the OFF position, the output is High.

This is also known as negative logic or shown by drawing a line (bar) over the signals name.

In this paper, it will be referred to as negative logic.

Positive logic means just the opposite, when the switch is on, the output is high, and when off, the output is low, this is also called active high logic.

To change from one type of logic to the other, you must invert the signal, it is that easy.

So, the first step in testing the CPLD development board you just made is to test some of the switches and the displays. This will also show you how the displays work and hopefully reinforce the concept of positive and negative logic.

For this test you are going to use switches 1,2,3,4,9,10, and 12 only, and both displays, and their decimal points will be tested. The switches will be inverted to make them the same logic levels that the displays work on, positive logic. Again, this is done by simply inverting the switch inputs, now when the switches are on, they will have a high output or be active high state.

This makes it easier to understand how these hexadecimal displays work.

First if you turn all switches off, the displays show 00 on the displays, but as soon as you turn switch 12 on, the displays BLANK and no numbers are shown. This shows that the blank signal to the display is now active high, meaning the displays blank when high.

The data buss is straight forward, but the bits of the buss go to both displays, so the Latch signal is used to hold the data on each one of the displays. These Latch signals are used to de-multiplex the data buss, so each display gets the information meant for it.

So, with all switches in the off position, turn on switch 1, and note that two 8’s are shown.

Now turn on switch 9 and note that the displays still show 88. Now turn on switch 2, the right display should be showing C and the left display should be 8, so 8C should now be shown on the displays. The reason this happened is that the data was LATCHED for the left display by turning switch 9 ON. This made Latch HIGH, and Latch is an active High signal, latch means to hold something, in this case it’s data. To help drive this point home, with 8C still on the displays, turn switch 10 on, then change switch 1 and 2 off. The displays should still read 8C, now turn switch 9 and then switch 10 off, as you did this the right, then the left display should have been replaced with Zeros (00).

CPLD development board - Two Digit Ccounter - Jim Burney – May 27, 2018

As both displays use the same lines to get their data from, the latch signals are used to let the displays get their information from the same lines, but at different times. This is called

Multiplexing, and is using the same lines to convey different information at different times. This is used to reduce the number of wires needed to carry information, and de-multiplexing is used to convert it back. More on this later, but just know, the world of electronics lives by multiplexing.

This is not to be confused with encoding and decoding, as that is used to change one type of information in to another, like decimal to binary, and binary to decimal.

So, let’s look at making the decimal points of the displays flash. This CPLD is clocked by an evil 66.6Khz signal form a 555 timer IC. So many of you used this timer to make blinking LED project in your first quarter here, but your timer was set very low frequency, so you could see the LED blink. However, this timer is will beyond your visual perception and will have to be slowed down to be seen, and this is done with dividers in the digital world.

This 66.6KHz signal from the timer is called a clock, and this is going to drive pin 24 of the CPLD, then a divider chain made up of four divide by 16 counter. This will make the clock signal about 1Hz or 1 pulse per second, this is well within your visual range. In other words, the 66.6 KHz gets divided by 65,536, giving about a 1Hz signal, this in turn is connected to one of the displays DP, then the signal is inverted and drives the displays.

This test also let you know how to drive the displays, and that the clock source works. however, it did not test all the switches. This is addressed in the next section with a priority encoder to test the switches and display.

CPLD development board - Two Digit counter - Jim Burney – May 27, 2018

Your project should look like this now.

Close-up shot for clarity

Play with this until you really understand what is going on here, even change it.

A priority encoder takes the highest decimal numbered input and converts that to Binary Coded Decimal (BCD), regardless of any lower numbered inputs. This encoder is based on negative logic (active low, or NOT by a bar over the signal name, or in this case, by a small bubble on the input and outputs, this also means NOT, and not is a negative.

As the encoder is already negative logic, the switches going to the encoder don’t need to be inverted, as they are negative logic already. The output however needs to be inverted as the displays work on positive logic (active high). This project shows that all the switches are working, as well as the displays.

Switches 10,11, and 12 do need to be inverted, as they drive the displays directly, so now the whole thing is based on positive logic. Note there are times you want to mix the two logic types, but this is not one of them.

CPLD development board - Two Digit counter - Jim Burney – May 27, 2018

Again, the counter chain is used to toggle the DP of the displays and show that the 555 timer is working at the right frequency and clocking the CPLD. This is the same divider chain used before, just draw differently.

Again, play with the latching and blanking, get a feel for it.

CPLD development board - Two Digit counter - Jim Burney – May 27, 2018

This last one is a few counters that you have seen before and a multiplexer driving the two displays and more blinking decimal points, the first four counters are just the same as before, but again they have been drawn a little differently. This is to show you that the same thing can be drawn in different ways. You must learn how to see what is really going on, as things may be drawn to save space.

This will count-up in hexadecimal from 0x00 to 0xFF at a fast rate, you will need to figure out the pin assignments and how this multiplexes the displays, if you want to make the two-digit calculator. Everything you need to know is here for multiplexing the displays, you just must understand what is going on. Hint, don’t worry about how the counters work, just look at how the data from the counters is selected in time with the displays.

CPLD development board - Two Digit counter - Jim Burney – May 27, 2018
