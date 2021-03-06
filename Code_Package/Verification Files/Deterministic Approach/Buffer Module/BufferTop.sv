//--------------------------------------------------------------------------------------------------------------------
// File         : BufferTop.sv --> Top environment for buffer module
// Author       : Manjush Padmamma Venkatesha
// Date Created : March 12 2018
// Description  : Clock generation and buffer environment creation
//--------------------------------------------------------------------------------------------------------------------
module BufferTop;
logic clk;

//Interface and buffer and its tb instantiations
IBuffer bufIntf (.clk(clk));
Buffer bufm (.bufBus(bufIntf.BufferPorts));
Buffer_tb bufm_tb(.bufBus_tb(bufIntf.BufferPorts_tb));

//Clock generation
initial begin
	clk = 0;
	forever #5 clk = ~clk;
end

endmodule : BufferTop
