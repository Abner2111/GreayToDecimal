module Tarea1HDL (a,b,c,clock50,  Sa, Sb,Sc,Sd,Se,Sf,Sg,actuator, ledA, ledB, ledC);
input wire a;
input wire b;
input wire c;
input wire clock50;


output reg Sa;
output reg Sb;
output reg Sc;
output reg Sd;
output reg Se;
output reg Sf;
output reg Sg;
output reg actuator;

output reg ledA;
output reg ledB;
output reg ledC;


always @(posedge clock50) begin
	begin
		Sa <= ((!a)&&(!c))||(a&&(!b))||(b&&c);
		Sb <= (!a)||(!c);
		Sc <= (!c)||(!b)||a;
		Sd <= (a&&c)||((!a)&&b)||((!a)&&(!c));
		Se <= (!a&&!b&&!c)||(a&&!b&&c)||(!a&&b&&c);
		Sf <= (!a&&!b&&!c)||(a&&c)||(a&b);
		Sg <= b||(a&&c);
		
		ledA <= a;
		ledB <= b;
		ledC <= c;
		actuator <= !b;
		
	end
	
	

end

endmodule

