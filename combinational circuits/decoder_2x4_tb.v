module dec2x4_tb;

reg [1:0] xin;
reg enable;
wire [3:0] yout;

dec2x4 tb(xin,yout,enable);

initial
begin

//$monitor("%b  %b --- %b",enable,xin,yout);

xin = 2'b00;
enable = 1'b1;
#1
xin = 2'b01;
enable = 1'b1;
#1
xin = 2'b10;
enable = 1'b1;
#1
xin = 2'b11;
enable = 1'b1;

end
endmodule
