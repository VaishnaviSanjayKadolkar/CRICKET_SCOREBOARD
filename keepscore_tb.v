module module keepscore_tb;

    // Inputs
    reg [2:0] runs;
    reg clk;
    reg reset;

    // Outputs
    wire [6:0] score;
    wire [2:0] over;
    wire [3:0] wicket;
    wire [2:0] ball;

    // Instantiate the Unit Under Test (UUT)
    keepscore uut (
        .score(score), 
        .over(over), 
        .wicket(wicket), 
        .ball(ball), 
        .runs(runs), 
        .clk(clk), 
        .reset(reset)
    );

    // Clock generation
    always #10 clk = ~clk;

    initial begin
        // Initialize Inputs
       runs = 3'b000;
        clk = 0;
        reset = 1;

        // Apply reset
     
        #50 reset = 1;
        #50 reset = 0;

        // Wait for global reset to finish
      
		   // Apply stimuli
        runs = 3'b000; #20; // No score
         runs = 3'b001; #20; // Score 1
         runs = 3'b010; #20; // Score 2
         runs = 3'b001; #20; // Score 3
         runs = 3'b100; #20; // Score 4
        runs= 3'b1001; #20; // wide
        runs = 3'b110; #20; // Score 6
        runs = 3'b111; #20; // Wicket

         // Further sequences to test the overflow and other conditions
       runs= 3'b100; #20; // No score
        runs = 3'b010; #20; // No score
      runs = 3'b000; #20; // No score
       runs = 3'b100; #20; // No score
       runs = 3'b001; #20; // No score
        runs= 3'b000; #20; // No score - should increment over
        runs = 3'b001; #20; // Score 1
       runs= 3'b111; #20; // Wicket
		  
		   runs= 3'b111; #20; // Wicket
			runs = 3'b111; #20; // Wicket
		  runs = 3'b111; #20; // Wicket
       runs= 3'b110; #20; // Score 6
		  
		  
		   runs = 3'b100; #20; // No score
        runs = 3'b010; #20; // No score
       runs= 3'b000; #20; // No score
        runs = 3'b100; #20; // No score
        runs = 3'b001; #20; // No score
        runs = 3'b000; #20; // No score - should increment over
        runs = 3'b001; #20; // Score 1
        runs = 3'b111; #20; // Wicket
		  
		   runs = 3'b100; #20; // No score
        runs = 3'b010; #20; // No score
        runs= 3'b000; #20; // No score
       runs = 3'b100; #20; // No score
        runs = 3'b001; #20; // No score
        runs = 3'b000; #20; // No score - should increment over
       runs = 3'b001; #20; // Score 1
      runs = 3'b111; #20; // Wicket
		
		
		
		 runs = 3'b100; #20; // No score
        runs = 3'b010; #20; // No score
        runs= 3'b000; #20; // No score
       runs = 3'b100; #20; // No score
        runs = 3'b001; #20; // No score
        runs = 3'b000; #20; // No score - should increment over
       runs = 3'b001; #20; // Score 1
      runs = 3'b111; #20; // Wicket
       
        // Check reset functionality
        #10 reset = 1;
        #10 reset = 0;

        // End simulation
        #20 $finish;

    end

    // Monitor to display changes in outputs
    initial begin
        $monitor("At time %t: score,= %d, over = %d, wicket = %d, ball = %d, runs = %d",
                 $time, score, over, wicket, ball, runs);
    end

endmodule

    // Inputs
    reg [2:0] runs;
    reg clk;
    reg reset;

    // Outputs
    wire [6:0] score;
    wire [2:0] over;
    wire [3:0] wicket;
    wire [2:0] ball;

    // Instantiate the Unit Under Test (UUT)
    keepscore uut (
        .score(score), 
        .over(over), 
        .wicket(wicket), 
        .ball(ball), 
        .runs(runs), 
        .clk(clk), 
        .reset(reset)
    );

    // Clock generation
    always #10 clk = ~clk;

    initial begin
        // Initialize Inputs
       runs = 3'b000;
        clk = 0;
        reset = 1;

        // Apply reset
     
        #50 reset = 1;
        #50 reset = 0;

        // Wait for global reset to finish
      
		   // Apply stimuli
        runs = 3'b000; #20; // No score
         runs = 3'b001; #20; // Score 1
         runs = 3'b010; #20; // Score 2
         runs = 3'b001; #20; // Score 3
         runs = 3'b100; #20; // Score 4
        runs= 3'b1001; #20; // wide
        runs = 3'b110; #20; // Score 6
        runs = 3'b111; #20; // Wicket

         // Further sequences to test the overflow and other conditions
       runs= 3'b100; #20; // No score
        runs = 3'b010; #20; // No score
      runs = 3'b000; #20; // No score
       runs = 3'b100; #20; // No score
       runs = 3'b001; #20; // No score
        runs= 3'b000; #20; // No score - should increment over
        runs = 3'b001; #20; // Score 1
       runs= 3'b111; #20; // Wicket
		  
		   runs= 3'b111; #20; // Wicket
			runs = 3'b111; #20; // Wicket
		  runs = 3'b111; #20; // Wicket
       runs= 3'b110; #20; // Score 6
		  
		  
		   runs = 3'b100; #20; // No score
        runs = 3'b010; #20; // No score
       runs= 3'b000; #20; // No score
        runs = 3'b100; #20; // No score
        runs = 3'b001; #20; // No score
        runs = 3'b000; #20; // No score - should increment over
        runs = 3'b001; #20; // Score 1
        runs = 3'b111; #20; // Wicket
		  
		   runs = 3'b100; #20; // No score
        runs = 3'b010; #20; // No score
        runs= 3'b000; #20; // No score
       runs = 3'b100; #20; // No score
        runs = 3'b001; #20; // No score
        runs = 3'b000; #20; // No score - should increment over
       runs = 3'b001; #20; // Score 1
      runs = 3'b111; #20; // Wicket
		
		
		
		 runs = 3'b100; #20; // No score
        runs = 3'b010; #20; // No score
        runs= 3'b000; #20; // No score
       runs = 3'b100; #20; // No score
        runs = 3'b001; #20; // No score
        runs = 3'b000; #20; // No score - should increment over
       runs = 3'b001; #20; // Score 1
      runs = 3'b111; #20; // Wicket
       
        // Check reset functionality
        #10 reset = 1;
        #10 reset = 0;

        // End simulation
        #20 $finish;

    end

    // Monitor to display changes in outputs
    initial begin
        $monitor("At time %t: score,= %d, over = %d, wicket = %d, ball = %d, runs = %d",
                 $time, score, over, wicket, ball, runs);
    end

endmodule
