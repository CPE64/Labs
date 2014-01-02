module CPE64LabThree_TOP(
	input						CLOCK_50,	//brought in for debug use
	
	input 		  	[7:0]		GPIO0,
	input 		    [1:0]		GPIO0_IN,
	
	output        	[7:0]		LED
);

//=======================================================
//  Structural coding
//=======================================================
Comparitor CompInstance(
  .ComparisonReference(GPIO0[5:2]),
  .ComparisonInput({GPIO0[1:0], GPIO0_IN[1:0]}),
  .G(LED[7]),
  .E(LED[4]),
  .L(LED[0])
);

endmodule
