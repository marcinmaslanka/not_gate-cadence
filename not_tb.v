//Verilog HDL for "AMS", "not_gate_tb" "functional"


module not_gate_tb;
reg a;
wire y;

not_gate uut(y,a);

initial
begin
a=1'b0;
#100 a=1'b1;
#100 a=1'b0;
end

endmodul
