`timescale 1ns/1ps

module ring_counter_tb;

reg clk;
reg rst;
wire [3:0] q;

// Instantiate DUT
ring_counter uut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $dumpfile("ring_counter.vcd");
    $dumpvars(0, ring_counter_tb);

    clk = 0;
    rst = 1;

    // Apply reset
    #20;
    rst = 0;

    // Run simulation
    #100;

    $finish;
end

initial begin
    $display("--------------------------------");
    $display("Time\tCounter");
    $display("--------------------------------");

    $monitor("%0t\t%b", $time, q);
end

endmodule