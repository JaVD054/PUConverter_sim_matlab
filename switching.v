module switching(
    input wire s1, s2, s3, s4, s5, s6, s7, s8,
    output reg t1, t2, t3, t4, t5, t6
);
    


    
        parameter state0 = 6'b101010,
                state1 = 6'b100011,
                state2 = 6'b001110,
                state3 = 6'b000111,
                state4 = 6'b111000,
                state5 = 6'b110001,
                state6 = 6'b011100,
                state7 = 6'b010101;
    
    

    wire [7:0] state_mat;
    assign state_mat = {s1, s2, s3, s4, s5, s6, s7, s8};
    
    always @(*) begin
        case (state_mat)
            8'b10000000: {t1, t2, t3, t4, t5, t6} = state0;
            8'b01000000: {t1, t2, t3, t4, t5, t6} = state1;
            8'b00100000: {t1, t2, t3, t4, t5, t6} = state2;
            8'b00010000: {t1, t2, t3, t4, t5, t6} = state3;
            8'b00001000: {t1, t2, t3, t4, t5, t6} = state4;
            8'b00000100: {t1, t2, t3, t4, t5, t6} = state5;
            8'b00000010: {t1, t2, t3, t4, t5, t6} = state6;
            8'b00000001: {t1, t2, t3, t4, t5, t6} = state7;
            default: {t1, t2, t3, t4, t5, t6} = 6'b000000;
        endcase
    end
endmodule
