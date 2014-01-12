//| Author          : Ben Smith
//| Purpose         : Toplevel file for Lab 3 - Demo 1
//| Revision        : 1.0
//| Change History  :
//| ============================================================================
//|  1.0 - Initial Input
//|
//| ============================================================================
module CPE64LabThree_TOP(
	input 		  	[1:0]		GPIO0,
	input 		    [1:0]		GPIO0_IN,

	output        	[7:0]		LED
);

//=======================================================
//  Structural coding
//=======================================================
Adder #(
	.constant(4'b0000)
)AdderInstance(
	.UserNumber({GPIO0[1:0],GPIO0_IN[1:0]}),
	.sum(LED[7:0])
);

endmodule
