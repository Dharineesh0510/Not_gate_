module not_gate_tb;
    reg a;
    wire y;
    
    not_gate dut(a, y);
    
    initial begin
        $dumpfile("not_gate.vcd");
        $dumpvars(0, not_gate_tb);  // Changed depth to 0 for all signals
        $display("Simulation started");
        
        a = 0;
        #10;
        a = 1;
        #10;
        a = 0;
        #10;
        
        $display("Simulation finished");
        $finish;
    end
endmodule
