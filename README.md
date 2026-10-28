This repository contains Verilog HDL implementations of fundamental combinational and sequential circuits along with testbenches and waveforms
1. Half Adder
   A 1-bit half adder that performs binary addition on two inputs (A, B) and produces a Sum and Carry.
   RTL Design: half_adder.v
   Testbench: half_adder_tb.v
   Simulation Waveform:
   <img width="741" height="350" alt="Screenshot 2026-10-28 205722" src="https://github.com/user-attachments/assets/c5fd0e86-31e9-42af-9dcb-fc8659b2367c" />

2. Full Adder
   A 1-bit full adder module verified using a testbench stimulus.
   RTL Design: full_adder.v
   Testbench: full_adder_tb.v
   Simulation Waveform:
   <img width="749" height="377" alt="image" src="https://github.com/user-attachments/assets/780b25f2-035f-4a86-bc83-7205d4fbf0cb" />

3. 4x1 Multiplexer
   A 4-to-1 data selector using select lines to route one of four inputs to the output.
   RTL Design: mux_4x1.v
   Testbench: mux_4x1_tb.v
   Simulation Waveform:
   <img width="748" height="376" alt="image" src="https://github.com/user-attachments/assets/38d8146f-9994-4bbf-9208-d6d7659438a6" />

4. 3-to-8 Decoder
   Decodes a 3-bit binary input to activate one of 8 output lines.
   RTL Design: decoder_3to8.v
   Testbench: decoder_3to8_tb.v
   Simulation Waveform:
   <img width="754" height="382" alt="image" src="https://github.com/user-attachments/assets/dd35646e-d968-4c1b-9add-a9f34ef2f408" />

5. 8-to-3 Priority Encoder
   An encoder that outputs the binary code of the highest-order active input line.
   RTL Design: priority_encoder_8to3.v
   Testbench: priority_encoder_8to3_tb.v
   Simulation Waveform:
   <img width="755" height="380" alt="image" src="https://github.com/user-attachments/assets/3b856312-a90c-43bb-be10-7548e25dcbd1" />

6. 8-bit Arithmetic Logic Unit
   An 8-bit ALU capable of performing basic arithmetic (Addition, Subtraction) and logical (AND, OR, XOR, NOT) operations.
   RTL Design: alu_8bit.v
   Testbench: alu_8bit_tb.v
   Simulation Waveform:
   <img width="779" height="405" alt="image" src="https://github.com/user-attachments/assets/e5d4a5ea-305d-416a-961f-3467bcf8bd56" />

7. D Flip-Flop
   Edge-triggered D Flip-Flop testbench verifying data storage on the clock edge.
   RTL Design: D_flipflop.v
   Testbench:  D_flipflop_tb.v
   Simulation Waveform:
   <img width="750" height="380" alt="image" src="https://github.com/user-attachments/assets/d471c2a5-45da-4284-a2c5-efbc2022e5e4" />

8. 4-Bit Up Counter
   A 4-bit synchronous binary up-counter incrementing on each positive edge of the clock signal.
   RTL Design: up_counter_4bit.v
   Testbench: up_counter_4bit_tb.v
   Simulation Waveform:
   <img width="755" height="377" alt="image" src="https://github.com/user-attachments/assets/f1a53697-171c-4895-b2ff-6606eef56051" />




