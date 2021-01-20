`include "sqrt.sv"
    
        parameter NBITS = 8, HALF_PRECISION = 5;

module Gamma_Correct_TEST_2 (
    input  logic clk, rst,
    input  logic valid_in,
    output wire valid_out,
    input  logic [7:0] signal_in,
    output logic [7:0] result
	);

	// Internal registers
  	wire [3:0] int_sqrt;

	assign valid_out = valid_in;

	psqrt_2 sqrt_inst (
		.radical	(signal_in),
		.int_sqrt	(int_sqrt)
	);

	always@(posedge clk)
	begin
		if(rst) begin
			result<=0;
		end
		else begin
			result<=int_sqrt;
			$display("DEBUG signal in: %4b", signal_in);	
			$display("DEBUG integer sqrt: %4b", result);
		end
	end



	logic [NBITS-1:0] A;
	logic [NBITS-1:0]result;
	logic iReady, iValid, oReady, oValid;
	enum logic {S1, S2} state;
	
	initial begin
		clock = 0;
		reset = 1;
		#20 reset = 0;
	end
	
	always #5 clock = !clock;
	
	sqrt #(NBITS) SQRT(.*);
	
	always_ff @(posedge clock)begin
		if(reset)begin
			iValid <= 0;
			oReady <= 0;
			state <= S1;
		end
		else case(state)
			S1: begin
				A = 20'd6;
				iValid <= 1;
				oReady <= 1;    
				if(iReady)
					state <= S2;   
			end
			
			S2: begin
				if(oValid)begin
					$display("sqrt(%1d) = %d/(1<<%1d)", A, result, HALF_PRECISION);
					$finish();
				end
			end
		endcase
	end
        
endmodule