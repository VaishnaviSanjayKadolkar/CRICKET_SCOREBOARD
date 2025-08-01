module keepscore (
    output reg [6:0] score,     // Score
    output reg [2:0] over,     // Overs
    output reg [3:0] wicket,     // Wickets
    output reg [2:0] ball,     // Balls
    input  [3:0] runs,          // Input
    input clk,               // Clock
    input reset              // Reset
);

// Initialize registers
initial begin
    score = 7'b0000000;
    over = 3'b000;
    wicket = 4'b0000;
    ball = 3'b000;
	
end


always @(posedge clk or posedge reset) begin
    if (reset) begin
         score <= 7'b000000;
        over <= 3'b000;
        wicket <= 4'b0000;
       ball <= 3'b000; 
		 
    end 
	 else 
	 begin
        casex (runs)
            3'b000: begin //no ball
                  score <=   score+ 5'b00000;
                 ball <= ball + 3'b001;
            end
            3'b001: begin
                 score <=  score+ 4'b0001;
                 ball <=  ball + 3'b001;
            end
            3'b010: begin
                 score<=   score + 4'b0010;
                ball <=  ball + 3'b001;
            end
            3'b011: begin
                  score <=   score+ 4'b0011;
                ball <= ball + 3'b001;
            end
            3'b100: begin
                 score <=   score + 4'b0100;
                ball<=  ball + 3'b001;
            end
            4'b101: begin //wide
                  score <=   score+ 4'b0001;
                ball <=  ball + 3'b000;
            end
            3'b110: begin
                  score <=   score + 4'b0110;
                 ball <=  ball+ 3'b001;
            end
            3'b111: begin //wicket
                 score<=   score + 4'b0000;
                 ball<= 3'b001;
               wicket <=  wicket + 4'b0001;
            end
            default: begin
                 score <=   score;
                ball <=  ball;
            end
        endcase

        // Handle overs and reset ball count after 6 balls
        if (ball == 3'b110) begin
            over <=  over+ 3'b001;
            ball <= 3'b000;
        end
    end
end

endmodule
