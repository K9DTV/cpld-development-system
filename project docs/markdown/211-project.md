# 211 PROJECT

*Markdown preview extracted from 211 PROJECT.docx for GitHub reading. Original Word file remains the provenance copy.*

Lake Washington Institute of Technology

Project CLPD Calculator

Feb 22th, 2017

James Burney

Calculator Project – James Burney, Feb 22th, 2017

Executive Summary – The goal the project was to use the development board to really build the calculator from the chapter 7 of the elec 211 book. First a lager chip needed to be ordered, as the design would not fit on a 32-cell unit, so a 64-cell chip was used.

Then there are some problems with the design presented in the book, along with some short cuts taken that do not take advantage of the fact a CLPD is being used in the first place.

In this report, all the steps to make this calculator will be covered mainly from a Negative logic point of view, as this is what most building this will use. Also, covered will be displaying results, and borrowing when subtracting.

Parts used

EPM7064AELC44-10  CLPD

FDN 367 display

44 Pin PLCC Socket

16 10KOhm ¼W 5%

8 270 Ohm ¼W 5%

12 position switch.

LM 1117 3.3v

32Ga. wire

First off, lets cover that this design is based on negative logic, as the input switches when on, zero volts is used to represent a logical 1, and to turn an LED on, zero volts is used to represents a logical 1. The book uses positive logic and in most cases it is a simple matter of just inverting the inputs, and the output, but not in all cases.

Calculator Project – James Burney, Feb 22th, 2017

Now to take a look at a schematic of the development board, this is not a complete schematic, as one will make their own choices as they build their unit.

It should be noted imminently, that current limiting resistors, and pull-up resistors are not shown, but are needed.  A minimum of a 11-position switch, and at least one 7-segment display is needed.

Note here that all parts are from a bottom view, and the regulator is a LM1117 3,3v type. Be sure to make sure the regulator you use is the same pinout.

Calculator Project – James Burney, Feb 22th, 2017

It is not the intent of this project to help you build your board, but help you in making the calculator in chapter 7 of the lab book, along with some improvements in layout and design.

The book starts out with an adder, then a full-adder and the adds subtraction to it. The book really did not cover a display driver, as it wanted you to use an extremal display decoder for this task, and that kind of defeats the whole reason for using the CLPD in the first place. So, I’ll start off with a display decoder, and if you don’t need to use a Hexadecimal display, just use a 7447 from the library of parts

For building the hex display, First, I stared with a 4 to 16 decoder, or in other words a Binary to decimal converter. Knowing that I only had four inputs in to decode the 16 states, I knew I could use the invert and non-inverted inputs to drive 4 input gates and decode any binary number from 0x0 to 0xF. I setup 8 columns made of 1248 and NOT 1248, this feed 16 quad AND gates. Each gate hooked to the right code for the corresponding output.

My inputs to this part of the decoder re negative logic, as a switch closure is low for an on state. If one wanted to convert to positive logic, all that’s needs to be done is add four inverters in-line with the ABCD inputs. AND gates were used to decode the negative logic to convert it to decimal.

Next step was to encode this decimal number to a 7-segment display, again I thought about this and decided

It would be best to apply negative logic here to simplify the encoding. The reasoning here is that the number with the most segments on is the number eight with all 7 segments on, followed by 6 with 6 segments on.

If I use negative logic, no gates will be used to decode 8, this leaves a maximum gate size needed at 6 inputs, furthermore, I only have to wire the segments to the gates that I want to be off, hence, negative logic.

Again, I setup 15 columns, as number 8 was not needed, I laid down (7) 6-input NOR gate (change to OR for CA display), one gate for each segment of the display. I simply wired each output from the decoder to each segment gate that I did not want on, this made the right numbers show up for the decode.

Next I changed out the 6-input gates that did not use all their inputs with 4-input gates. Then I did some cleanup in wiring and compression of the layout.

Next came testing and debug, and I did make some wiring mistakes, but with some troubleshooting done in the real world, I was able to solve these errors in short order.

Note that if you are using positive logic or a common cathode display, just add four inverters to the inputs.

If you are using both positive logic and a common cathode display, invert both inputs and outputs,

The best way to invert the outputs is too change out the NOR gates with OR gates.

Calculator Project – James Burney, Feb 22th, 2017

Binary to 7-egment display driver

Although this may look hard, it is fairly straight forward and much easier to do, than to do on a breadboard.

I learned a lot from this, I learned to really think about the way I was using the gates, as resources are limited in this chip, and one wants the most bang for the buck here. I learned how to really use hierarchical deigns to simplify the work flow.

Calculator Project – James Burney, Feb 22th, 2017

I am going to skip the adder/full-adder, and just jump in to the adder with carry and the subtraction.

The Full-adder with carry and subtraction with added logic for correcting DP. To add subtraction to the full-adder, all that is needed is to do a 2’s complement on the second half of the binary inputs and set the input carry to the 7483. To make it add/subtract selectable, XOR’s were used. Some added logic was also used to suppress the DP in subtraction mode. Again, this is for negative logic.

Add/Subtract switching and DP suppression

I used the logic below to test my ideas based on the information provided by the book. Then added to it to even add a borrowing to it when subtracting.

Full-Adder with carry / Subtraction. With D.P. suppression

Calculator Project – James Burney, Feb 22th, 2017

After getting my full adder with carry, and subtraction with borrow working, this is what it now looks like.

DE Morgan theorem was used here to figure out how to drive the display for adding and subtracting with carry and borrowing.

Here are the details of the subtraction unit with borrowing. This allows only four states on the MSD of the display. The four allowed states are F, E, 1, and 0. F and E are used in subtraction and 1, and 0 are used in addition with carry.

Calculator Project – James Burney, Feb 22th, 2017

Now would be a good time to look at the multiplier, the book does a good job of showing you the multiplier, however, really does not do a good job on its layout. Also, it was designed for positive logic.

However, as said earlier, it is easy to convert in most cases. In this case, the easiest way to do this conversion, is to simply remove the inverts on the inputs and the outputs. Care must be taken when doing this as layout as it is a little complicated.

Next in Min-Max, this is just a magnitude comparator driving two 2 to 1 multiplexers. The state of AGBO and ALBO determines what nibble will be displayed on digit. To convert to positive logic, just simply remove the inverts on the inputs and the outputs, and reverse the AGBO, and ALBO connections.

Calculator Project – James Burney, Feb 22th, 2017

Next the book made a multiplexer for the three-function calculator by using three tristate buffers.

This however is a problem, as the book did not use a display encoder internally, they could use these buffers on the output of the device. However, tristate buffers are not allowed on the internal buss of the EPM70xxA, a real multiplexer must be used. Now to do this, you could just use a 74157, but I wanted to conserve space in the CLPD, so I made my own.

The multiplexer has to select one of the three functions of the calculator. As can be seen, the decoder logic is just inverting the control signals.

Calculator Project – James Burney, Feb 22th, 2017

Now multiplexing the display, as I only used one 7-segment display, and this calculator needs two digits. This CLPD has more than enough pins to add a second display. Only 23 pins were used and this leaves 13 pins for you to add another display and even more input switches.

If you chose to add a second display, only 5 microcells are left, however, deleting the display multiplexer should make this fit. (Tried it and it will not fit)

The multiplexed the display converter, as seen below.

Next, I took all these combined sections and wired them up, as seen below.

This is where careful layout of the hierarchical deign comes in. this makes understanding the follow easy.

I really don’t think the book conveyed this very well.

The final design showing the pinout used in this design.

Calculator Project – James Burney, Feb 22th, 2017

Usage of the EPM7064AE

Photographic documentation

Note: The decimal point of the display shows what digit is being displayed. With the decimal point lit, the MSD is displayed and off is the LSD.

Full adder with carry (switch 9 is add/subtract. add is the off position)

0x1 + 0x0 = 1

0x1 + 0x8 = 9

0x9 + 0x9 = 0x12

It is easy to see in the pictures above, that the carry function works just fine.

Calculator Project – James Burney, Feb 22th, 2017

Subtraction with borrow

0x3 – 0x1 = 02 (switch 9 is add/subtract. Subtract is the on position)

0x1 – 0x9 = 0xF8

Greater than / Less than

0x3 > 0x1 = 0x31

0x2 < 0x4 0x42

Calculator Project – James Burney, Feb 22th, 2017

Multiplication

0x6 X 0x2 = 0x0C

0x7 X 0xA = 0x46

0xF X 0xF = E1

Calculator Project – James Burney, Feb 22th, 2017
