`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 19:11:55
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench();
reg a,b,c;
wire sum,carry;
fulladder ckt(sum,carry,a,b,c);
initial
begin
$monitor($time,"sum=%b,carry=%b,a=%b,b=%b,c=%b",sum,carry,a,b,c);
#10 a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
#20 $finish;
end
endmodule
