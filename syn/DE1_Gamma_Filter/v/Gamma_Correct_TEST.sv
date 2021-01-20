
module Gamma_Correct_TEST (
    input  logic clk, rst,
    input  logic valid_in,
    output wire valid_out,
    input  logic [7:0] signal_in,
    output logic [7:0] result
	);

	// Internal registers
  	wire [3:0] int_sqrt;

	assign valid_out = valid_in;

	psqrt sqrt_inst (
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

	

endmodule