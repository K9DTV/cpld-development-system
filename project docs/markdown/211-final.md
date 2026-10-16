# 211 final

*Markdown preview extracted from 211 final.docx for GitHub reading. Original Word file remains the provenance copy.*

Lake Washington Institute of Technology

Electronics 211

Final

Priority encoder / Full Adder / Subtraction

Feb 20th, 2017

James Burney

Electronics 211, Final – James Burney, Feb 20th, 2017

Executive Summary – The goal the final was to use the development board that was made for chap7, and make a calculator that was a full-adder, it needed to be able to add two hexadecimal numbers. In this report, I will discuss everything I did done with this board and how I did them, and what was learned. So, in the end, the goals of the final was completed by following the fine directions of our instructor, Professor Peter Welty.

Parts used

7000ae CPLD

FDN 367 display

44 Pin PLCC Socket

10 10KOhm ¼W 5%

8 270 Ohm ¼W 5%

10 pos sw.

LM 1117 3.3

32Ga wire

Equipment used

HP 34401a

Windows 10 pc with usb blaster

I first had to use the schematic of what was done with the pin assignment of the 7000 CPLD. This was used in the end programming of the CPLD to match my assignments.

Electronics 211, Final – James Burney, Feb 20th, 2017

After building the board, I wanted a simple way to test that all of the I/O of my layout, and test all parts of the board. To this end, I used a priority encoder to read the switch inputs from 1 to 9 and feed them into a 74147, the output was feed into a 7447 to convent the BCD to 7 segment display. The 10th switch was feed to the displays D.P. to show it operation. Some mods were made to the 74147 for negative logic levels in my design, this will be discussed later in the report.

Priority Encoder (10 to 4 Encoder) BCD Display Driver

Next part of this lab was to build a Full adder with carry and a Hex to 7 segment display driver. This adder seemed straight forward, however, I was unable to find a hex display driver in the Max catalog of parts.

I decided to make my own and thought about it and came up with three ways to do it, mod a 7447, use a LUT, or, make a decoder and encoder, I chose the latter. First, I stared with a 4 to 16 decoder, or in other words a Binary to decimal converter. Knowing that I only had four inputs in, I knew I could use the invert and non-inverted inputs to drive 4 input gates and decode any binary number from 0x0 to 0xF. I setup 8 columns made of 1248 and not 1248, this feed 16 quad AND gates. Each gate hooked to the right code for the corresponding output. My inputs to this part of the decoder is negative logic as a switch closure is low for an on state. If one wanted to convert to positive logic, all that’s needs to be done is add four inverters in-line with the ABCD inputs. AND gates were used to decode the negative logic to convert it to decimal.

Next step was to encode this decimal number to a 7-segment display, again I thought about this and decided

It would be best to apply negative logic here to simplify the encoding. The reasoning here is that the number with the most segments on is the number eight with all 7 segments on, followed by 6 with 6 segments on. If I use negative logic, no gates will be used to decode 8, this leaves a maximum gate size needed at 6 inputs, furthermore, I only have to wire the segments to the gates that I want to be off, hence, negative logic.

Again, I setup 15 columns, as number 8 was not needed, I laid down (7) 6-input NOR gate (change to OR for CA display), one gate for each segment of the display. I simply wired each output from the decoder to each segment gate that I did not want on, this made the right numbers show up for the decode.

Next I changed out the 6-input gates that did not use all their inputs with 4-input gates. Then I did some cleanup in wiring and compression of the layout.

Next came testing and debug, and I did make some wiring mistakes, but with some troubleshooting done in the real world, I was able to solve these errors in short order.

Electronics 211, Final – James Burney, Feb 20th, 2017

Binary to 7-egment display driver

Although this may look hard, it is fairly straight forward and much easier to do, than to do on a breadboard.

I learned a lot from this, I learned to really think about the way I was using the gates, as resources are limited in this chip, and one wants the most bang for the buck here. I learned how to really use hierarchical deigns to simplify the work flow.

Electronics 211, Final – James Burney, Feb 20th, 2017

Next up, add the full-adder, this was very easy and straightforward. I just dropped in a 7483 and bob's your uncle. So, getting no real joy from this I moved on to the extra credit stuff.

Full-Adder with carry

Next up, Full-adder with carry and subtraction with added logic for correcting DP. To add subtraction to the full-adder, all that is needed is to do a 2’s complement on the second half of the binary inputs and set the input carry to the 7483. To make it add/subtract selectable, XOR’s were used. Some added logic was also used to suppress the DP in subtraction mode.

Add/Subtract switching and DP suppression

Full-Adder with carry / Subtraction. With D.P. suppression

Electronics 211, Final – James Burney, Feb 20th, 2017

Having completed the extra credit part, I still wanted to go on, so I decided that combining all this into one design, to see if I could use most of the chip, this would be great. To do this, I had to add multiplexing to the design, for inputs to the priority encoder and the adder/sub mod, and for the display.

First, I multiplexed the display converter, as seen below. This was easy as there is already a chip to do this.

All I had to do is a little layout.

Next, it did come combining of the add/sub mod, as seen below. This was another easy step as I had already designed the subtraction unit with DP suppression.

Electronics 211, Final – James Burney, Feb 20th, 2017

Next up was to make a large 1 to 2 selector with 9 inputs and 18 outputs. This was all about layout to make the job easy. I laid out columns as before, and went ahead with wiring gates to the inputs and outputs.

Next, I took all these combined sections and wired them up, as seen below.

Some changes were needed to the priority encoders first layout, as switch 10 could no longer be used just for the DP on the display, as this become the mode select switch. Switch 10 selects priority encoder when switch 10 is in the off position, and selects the adder/sub when it is on. When switch 10 is on, switch 9 becomes the add/sub selector switch, with off being add, and on being subtract.

Electronics 211, Final – James Burney, Feb 20th, 2017

Adding the priority encoder to the full adder with carry and the subtraction selector with suppression.

More hierarchical deign, however, labeling seems to take over the design.

Next up, the ultimate reduction of this hierarchical deign, just a little too much I think.

Did not make it to my goal of 100% usage, but did make 75%

Electronics 211, Final – James Burney, Feb 20th, 2017

Photographic documentation

Priority encoder one only

Priority encoder nine only

Priority encoder nine & 1 to 5

Electronics 211, Final – James Burney, Feb 20th, 2017

Full adder with carry

0x8 + 0x2 = A or 8+2=10

0x7 + 0xF = 0x16 or  7+15=22

Subtraction

0x7 – 0x4 = 0x3 or 7-4=3

0x3 – 0x8 = B

Electronics 211, Final – James Burney, Feb 20th, 2017
