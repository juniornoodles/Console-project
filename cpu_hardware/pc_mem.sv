module pc_mem (
    input logic clk,
    input logic reset,
    input logic flush,
    input logic halted,
    input logic stall,
    input logic [12:0] addr,
    output logic [31:0] read_data
);
localparam MEMORY_SIZE = 8192;
logic [31:0] memory [MEMORY_SIZE-1:0];
    initial begin
       $readmemb("Machine_Code.mem",memory);
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset | flush) begin
            read_data <= 32'h0000;
        end else if (!stall & !halted) begin
            read_data <= memory[addr];
        end else begin
            read_data <= read_data;
        end
    end
endmodule
