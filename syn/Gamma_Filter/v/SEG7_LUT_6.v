module SEG7_LUT_6 (	oSEG0,oSEG1,oSEG2,oSEG3,oSEG4,oSEG5,iDIG );
input	[9:0]	iDIG;
output	[6:0]	oSEG0,oSEG1,oSEG2,oSEG3,oSEG4,oSEG5;
// oSEG2,oSEG3,oSEG4,oSEG5;

SEG7_LUT	u0	(	oSEG0,oSEG1,oSEG2,oSEG3,oSEG4,oSEG5,iDIG	);


endmodule