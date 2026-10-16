/*
  calulator.v
  -----------
  Rebuildable Verilog replacement for the original Quartus BDF calculator
  that lived on the author desktop and was never checked into this archive.

  Target board: K9DTV CPLD Development System Ver2 pinout
  Target device: EPM7064AELC44-10 (64 macrocell PLCC-44, matches board BOM)

  DIP switches are active-low at the pins; this design inverts them so
  "switch ON" reads as logic 1 inside the ALU.

  Mode (SW11, SW12) after invert:
    00  min / max   (left = max, right = min; DPs mark a swap from A/B order)
    01  add         (8-bit sum A+B)
    11  subtract    (8-bit A-B, borrow-aware two's complement wrap in low byte)
    10  multiply    (8-bit product A*B)

  Operands: A = SW1..SW4, B = SW5..SW8 (SW9/SW10 unused).
  Dual TIL311 hex displays share ABCD; clk (~66.6 kHz) muxes left/right.
*/

module calulator (
    input  wire [11:0] sw_n,      // SW1..SW12, active low
    input  wire        clk,       // board 555 clock
    output wire [3:0]  hex_nibble, // Display A,B,C,D (A = LSB)
    output wire        blank,     // display blank control
    output wire        left_le,   // left  TIL311 latch enable
    output wire        right_le,  // right TIL311 latch enable
    output wire        left_dp,   // left  decimal point
    output wire        right_dp   // right decimal point
);

    // Active-high switch values after invert
    wire [11:0] sw = ~sw_n;

    wire [3:0] a = sw[3:0];   // SW1..SW4
    wire [3:0] b = sw[7:4];   // SW5..SW8
    wire       sw11 = sw[10];
    wire       sw12 = sw[11];

    // ------------------------------------------------------------------
    // ALU
    // ------------------------------------------------------------------
    wire [4:0] sum5   = {1'b0, a} + {1'b0, b};
    wire [7:0] sum8   = {3'b000, sum5};          // 0..30
    wire [7:0] diff8  = {4'b0000, a} - {4'b0000, b}; // wraps on borrow
    wire [7:0] prod8  = a * b;

    wire a_ge_b = (a >= b);
    wire [3:0] vmax = a_ge_b ? a : b;
    wire [3:0] vmin = a_ge_b ? b : a;
    wire       swapped = ~a_ge_b; // B was larger than A

    wire [7:0] minmax8 = {vmax, vmin};

    reg [7:0] result;
    always @(*) begin
        case ({sw11, sw12})
            2'b00: result = minmax8;
            2'b01: result = sum8;
            2'b11: result = diff8;
            2'b10: result = prod8;
            default: result = 8'h00;
        endcase
    end

    // Min/max: light both DPs when A/B order was swapped to place max left
    wire minmax_mode = ({sw11, sw12} == 2'b00);
    assign left_dp  = minmax_mode & swapped;
    assign right_dp = minmax_mode & swapped;

    // Displays on (blank inactive). Polarity matches common TIL311 wiring
    // used on this board (assert blank to extinguish).
    assign blank = 1'b0;

    // ------------------------------------------------------------------
    // Time-mux left / right hex digit onto shared ABCD bus
    // ------------------------------------------------------------------
    reg sel_right;
    always @(posedge clk) begin
        sel_right <= ~sel_right;
    end

    assign hex_nibble = sel_right ? result[3:0] : result[7:4];

    // TIL311: LE high = transparent. Hold the idle digit latched.
    assign left_le  = ~sel_right;
    assign right_le =  sel_right;

endmodule
