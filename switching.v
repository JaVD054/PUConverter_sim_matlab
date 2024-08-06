module switching(
    input wire s1, s2, s3, s4, s5, s6, s7, s8,
    output reg t1, t2, t3, t4, t5, t6
);
    
    reg [5:0] switching_table [7:0];


    
    initial begin
        switching_table[0] = 6'b101010;
        switching_table[1] = 6'b100011;
        switching_table[2] = 6'b001110;
        switching_table[3] = 6'b000111;
        switching_table[4] = 6'b111000;
        switching_table[5] = 6'b110001;
        switching_table[6] = 6'b011100;
        switching_table[7] = 6'b010101;
    end
    
    reg [7:0] state_map [7:0];
    
    initial begin
            t1 = 0;t2 = 0;t3 = 0;t4 = 0;t5= 0;t6= 0;
    end

    wire [7:0] state_mat;
    assign state_mat = {s1, s2, s3, s4, s5, s6, s7, s8};
    
    always @(*) begin
        case (state_mat)
            8'b10000000: {t1, t2, t3, t4, t5, t6} = switching_table[0];
            8'b01000000: {t1, t2, t3, t4, t5, t6} = switching_table[1];
            8'b00100000: {t1, t2, t3, t4, t5, t6} = switching_table[2];
            8'b00010000: {t1, t2, t3, t4, t5, t6} = switching_table[3];
            8'b00001000: {t1, t2, t3, t4, t5, t6} = switching_table[4];
            8'b00000100: {t1, t2, t3, t4, t5, t6} = switching_table[5];
            8'b00000010: {t1, t2, t3, t4, t5, t6} = switching_table[6];
            8'b00000001: {t1, t2, t3, t4, t5, t6} = switching_table[7];
        endcase
    end
endmodule
