# 211 build board

*Markdown preview extracted from 211 build board.docx for GitHub reading. Original Word file remains the provenance copy.*

Lake Washington Institute of Technology

Electronics 211

Chap 7

Board Build/testing

Full Adder / Subtraction

Calculator

Feb 20th, 2017

James Burney

Electronics 211, Board Build – James Burney, Feb 20th, 2017

Executive Summary – The goal of this lab was to build a development board for the 7000 series CLPD and conduct our labs on it. To this end a schematic was given with the rear view of the socket shown to make construction easier. However, not all information was given, so that the data sheet would need to be used and some thought would be needed to finalize the design. I did a pre-lay out of a board design in my head, then did the pin mapping, and constructed a hand wired board. I used this board to conduct chap4 and do chap 7. In this report, I will discuss all projects done with this board and how I did them, and what was learned. So, in the end, the goals of this lab were completed by following the fine directions of our instructor, Professor Peter Welty.

Parts used

7000ae CLPD

FDN 367 display

44 Pin PLCC Socket

10 10KOhm ¼W 5%

8 270 Ohm ¼W 5%

10 pos sw.

LM 1117 3.3

30Ga wire

Equipment used

HP 34401a

Windows 10 pc with usb blaster

I first had to draw a schematic of what I wanted to do with the pin assignment of the 7000 CLPD. I made changes to the pins assignments as I constructed the board to make it easier to build. In this part of the lab, I learned that note taking is a big part of the job. As without documenting how it was done, one would not have the info needed to program the part.

Electronics 211, Board Build – James Burney, Feb 20th, 2017

After building the board, I wanted a simple way to test that all of the I/O of my layout, and test all parts of the board. To this end, I used a priority encoder to read the switch inputs from 1 to 9 and feed them into a 74147, the output was feed into a 7447 to convent the BCD to 7 segment display. The 10th switch was feed to the displays D.P. to show it operation. Some mods were made to the 74147 for negative logic levels in my design, this will be discussed later in the report.

Priority Encoder (10 to 4 Encoder) BCD Display Driver

Now on to chapter 7.

First the book wanted us to wire-up a full adder, I just pulled a 7483 from the library and added I/O to it as shown in the book.

Next the book wanted a Subtractor Module made by inverting the B inputs to the adder.

Not sure of the point of this, as it is not used.

Electronics 211, Board Build – James Burney, Feb 20th, 2017

Next up as to make the add/sub module from the full-adder. And just to be a brainless zombie, I followed the book poor layout directly.

Next up is to use the full-adder for the multiplication unit. There’s a lot to this little guy.

In this picture, there was a short on the bottom and gate, this was fixed.

Electronics 211, Board Build – James Burney, Feb 20th, 2017

Next up, the Min Max module.

And then the tristate buffers, just away to select one of three outputs from the calculator.

Electronics 211, Board Build – James Burney, Feb 20th, 2017

Next, is the calculator.

Next is to add a multiplexer and the Hex display.

End result of combining all sub-logic into the design.

Electronics 211, Board Build – James Burney, Feb 20th, 2017

Good compile on larger chip. However, my board will need another switch added, and that will be really hard to pull off.

My hex display.

Electronics 211, Board Build – James Burney, Feb 20th, 2017
