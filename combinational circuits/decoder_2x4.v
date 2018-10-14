module dec2x4(xin,yout,enable);

input [1:0] xin;
input enable;
output[3:0] yout;
reg[3:0] yout;

always @(xin or enable)

begin
	if(enable==1)
		case(xin)
		2'b00:
		begin
		yout=4'b0001;
		$display("%b  %b  %b",enable,xin,yout);
		end
		2'b01:
		begin
		yout=4'b0010;
		$display("%b  %b  %b",enable,xin,yout);
		end
		2'b10:
		begin
		yout=4'b0100;
		$display("%b  %b  %b",enable,xin,yout);
		end
		2'b11:
        begin
		yout=4'b1000;
		$display("%b  %b  %b",enable,xin,yout);
		end
		endcase
	else
	    begin
     	yout=4'b0000;
		$display("%b  %b  %b",enable,xin,yout);
        end

end
endmodule
