module Gamma_Correct ( iRESET, iCLK, iY, result);

//	Input
input [7:0] iY;
input iRESET,iCLK;

//	Output
output wire [7:0] result;

//	Internal Registers/Wires
reg [7:0] iY_Gamma;

assign result = iY_Gamma;

always@(posedge iCLK)
begin
	if(iRESET)
	begin
		iY_Gamma<=0;
	end
	else
	begin
		// intValue = (int) (255.0*pow((dblValue - minVal)/(maxVal - minVal), gamma) + 0.5);
		// (value + 1 + (value >> 8)) >> 8
		// iY_Gamma <= 255 * ((iY + 1 + (iY >> 8)) >> 8) ** (0.5);
		iY_Gamma<=iY[7:0]>>1;
		// iY_Gamma <= iY + 8'b00001000;
	end
end

endmodule