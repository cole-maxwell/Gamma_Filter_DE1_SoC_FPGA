module SEG7_LUT	(	iCLK,oSEG0,oSEG1,oSEG2,oSEG3,oSEG4,oSEG5,iDIG	);
input iCLK;
input	[9:0]	iDIG;
output	[6:0]	oSEG0,oSEG1,oSEG2,oSEG3,oSEG4,oSEG5;
reg 	[6:0]	oSEG0,oSEG1,oSEG2,oSEG3,oSEG4,oSEG5;

always@(posedge iCLK)
begin
	// clear display
	oSEG0 = 7'b1111111;
	oSEG1 = 7'b1111111;
	oSEG2 = 7'b1111111;
	oSEG3 = 7'b1111111;
	oSEG4 = 7'b1111111;
	oSEG5 = 7'b1111111;
	// gamma = 1.0
	if (iDIG[0]) begin
		oSEG0 = 7'b1111001;
		oSEG1 = 7'b1111111;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 0.6
	if (iDIG[1]) begin
		oSEG0 = 7'b0000010;
		oSEG1 = 7'b1000000;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 0.7
	if (iDIG[2]) begin
		oSEG0 = 7'b1111000;
		oSEG1 = 7'b1000000;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 0.8
	if (iDIG[3]) begin
		oSEG0 = 7'b0000000;
		oSEG1 = 7'b1000000;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 0.9
	if (iDIG[4]) begin
		oSEG0 = 7'b0010000;
		oSEG1 = 7'b1000000;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 1.1
	if (iDIG[5]) begin
		oSEG0 = 7'b1111001;
		oSEG1 = 7'b1111001;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 1.2
	if (iDIG[6]) begin
		oSEG0 = 7'b0100100;
		oSEG1 = 7'b1111001;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 1.3
	if (iDIG[7]) begin
		oSEG0 = 7'b0110000;
		oSEG1 = 7'b1111001;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 1.4
	if (iDIG[8]) begin
		oSEG0 = 7'b0011001;
		oSEG1 = 7'b1111001;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end
	// gamma = 1.5
	if (iDIG[9]) begin
		oSEG0 = 7'b0010010;
		oSEG1 = 7'b1111001;
		oSEG2 = 7'b1111111;
		oSEG3 = 7'b1111111;
		oSEG4 = 7'b1111111;
		oSEG5 = 7'b1111111;
	end

end

endmodule
