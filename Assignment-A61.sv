class generator;

  randc bit [7:0] x,y,z;  // rand or randc
  

endclass

module tb;

 generator g;
 int i = 0;

 initial begin
   
   for(i = 0; i < 20; i++) begin

     g = new(); 
     g.randomize(); 
     
     if(!g.randomize()) begin
       $display("Randomization Failed at %0t", $time);
       $finish(); 
     end
     
    
     $display("Value of x: %0d , y: %0d and z: %0d", g.x,g.y,g.z);
     #20; 
   end
 end

endmodule
