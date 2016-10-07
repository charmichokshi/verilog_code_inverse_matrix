`timescale 1ns / 1ps

/**
    Name            : Charmi Chokshhi
    Roll No         : 201501021

    Subject         : Linear Algebra
    Instructor      : Ratnik Gandhi

    Assignment      : 2
    Description     : Verilog Program to find Inverse of 5x5 matrix using Gauss-Jordan Elimination
    Submission Date : 7/10/2016
*/

module inverseMatrix(clk);

input clk;

real mat[0:4][0:9];		//initializing 5x10 matrix

always@(posedge clk)		//block will execute at positive edge of clock

begin
		//1st row
		mat[0][0]=16'd1;		//initializing each position of augmented matrix with I in decimal
		mat[0][1]=16'd4;		
		mat[0][2]=16'd1;
		mat[0][3]=16'd0;
		mat[0][4]=16'd0;
		mat[0][5]=16'd1;
		mat[0][6]=16'd0;
		mat[0][7]=16'd0;
		mat[0][8]=16'd0;
		mat[0][9]=16'd0;
		
		//2nd row		
		mat[1][0]=16'd0;
	   mat[1][1]=16'd1;
      mat[1][2]=16'd4;
      mat[1][3]=16'd1;
      mat[1][4]=16'd0;
		mat[1][5]=16'd0;
		mat[1][6]=16'd1;
		mat[1][7]=16'd0;
		mat[1][8]=16'd0;
		mat[1][9]=16'd0;

		//3rd row
		mat[2][0]=16'd0;
      mat[2][1]=16'd0;
		mat[2][2]=16'd1;
		mat[2][3]=16'd4;
		mat[2][4]=16'd1;
		mat[2][5]=16'd0;
		mat[2][6]=16'd0;
		mat[2][7]=16'd1;
		mat[2][8]=16'd0;
		mat[2][9]=16'd0;
		
		//4th row
		mat[3][0]=16'd0;
		mat[3][1]=16'd0;
		mat[3][2]=16'd0;
		mat[3][3]=16'd1;
		mat[3][4]=16'd4;
		mat[3][5]=16'd0;
		mat[3][6]=16'd0;
		mat[3][7]=16'd0;
		mat[3][8]=16'd1;
		mat[3][9]=16'd0;
		
		//5th row
		mat[4][0]=16'd0;
		mat[4][1]=16'd0;
		mat[4][2]=16'd0;
		mat[4][3]=16'd0;
		mat[4][4]=16'd1;
		mat[4][5]=16'd0;
		mat[4][6]=16'd0;
		mat[4][7]=16'd0;
		mat[4][8]=16'd0;
		mat[4][9]=16'd1;


//////EF STARTS FROM HERE

		//calculating pivot in 1st column and making other entries below it 0
		if(mat[0][0]!=0)
		begin
			mat[0][0]=mat[0][0]/mat[0][0];
			mat[0][1]=mat[0][1]/mat[0][0];
			mat[0][2]=mat[0][2]/mat[0][0];
			mat[0][3]=mat[0][3]/mat[0][0];
			mat[0][4]=mat[0][4]/mat[0][0];
			mat[0][5]=mat[0][5]/mat[0][0];
			mat[0][6]=mat[0][6]/mat[0][0];
			mat[0][7]=mat[0][7]/mat[0][0];
			mat[0][8]=mat[0][8]/mat[0][0];
			mat[0][9]=mat[0][9]/mat[0][0];
			
			
			mat[1][0]=mat[1][0]+(-mat[1][0]*mat[0][0]);
			mat[1][1]=mat[1][1]+(-mat[1][0]*mat[0][1]);
			mat[1][2]=mat[1][2]+(-mat[1][0]*mat[0][2]);
			mat[1][3]=mat[1][3]+(-mat[1][0]*mat[0][3]);
			mat[1][4]=mat[1][4]+(-mat[1][0]*mat[0][4]);
			mat[1][5]=mat[1][5]+(-mat[1][0]*mat[0][5]);
			mat[1][6]=mat[1][6]+(-mat[1][0]*mat[0][6]);
			mat[1][7]=mat[1][7]+(-mat[1][0]*mat[0][7]);
			mat[1][8]=mat[1][8]+(-mat[1][0]*mat[0][8]);
			mat[1][9]=mat[1][9]+(-mat[1][0]*mat[0][9]);
			
			
			mat[2][0]=mat[2][0]+(-mat[2][0]*mat[0][0]);
			mat[2][1]=mat[2][1]+(-mat[2][0]*mat[0][1]);
			mat[2][2]=mat[2][2]+(-mat[2][0]*mat[0][2]);
			mat[2][3]=mat[2][3]+(-mat[2][0]*mat[0][3]);
			mat[2][4]=mat[2][4]+(-mat[2][0]*mat[0][4]);
			mat[2][5]=mat[2][5]+(-mat[2][0]*mat[0][5]);
			mat[2][6]=mat[2][6]+(-mat[2][0]*mat[0][6]);
			mat[2][7]=mat[2][7]+(-mat[2][0]*mat[0][7]);
			mat[2][8]=mat[2][8]+(-mat[2][0]*mat[0][8]);
			mat[2][9]=mat[2][9]+(-mat[2][0]*mat[0][9]);
					
			
			mat[3][0]=mat[3][0]+(-mat[3][0]*mat[0][0]);
			mat[3][1]=mat[3][1]+(-mat[3][0]*mat[0][1]);
			mat[3][2]=mat[3][2]+(-mat[3][0]*mat[0][2]);
			mat[3][3]=mat[3][3]+(-mat[3][0]*mat[0][3]);
			mat[3][4]=mat[3][4]+(-mat[3][0]*mat[0][4]);
			mat[3][5]=mat[3][5]+(-mat[3][0]*mat[0][5]);
			mat[3][6]=mat[3][6]+(-mat[3][0]*mat[0][6]);
			mat[3][7]=mat[3][7]+(-mat[3][0]*mat[0][7]);
			mat[3][8]=mat[3][8]+(-mat[3][0]*mat[0][8]);
			mat[3][9]=mat[3][9]+(-mat[3][0]*mat[0][9]);
					
			
			mat[4][0]=mat[4][0]+(-mat[4][0]*mat[0][0]);
			mat[4][1]=mat[4][1]+(-mat[4][0]*mat[0][1]);
			mat[4][2]=mat[4][2]+(-mat[4][0]*mat[0][2]);
			mat[4][3]=mat[4][3]+(-mat[4][0]*mat[0][3]);
			mat[4][4]=mat[4][4]+(-mat[4][0]*mat[0][4]);
			mat[4][5]=mat[4][5]+(-mat[4][0]*mat[0][5]);
			mat[4][6]=mat[4][6]+(-mat[4][0]*mat[0][6]);
			mat[4][7]=mat[4][7]+(-mat[4][0]*mat[0][7]);
			mat[4][8]=mat[4][8]+(-mat[4][0]*mat[0][8]);
			mat[4][9]=mat[4][9]+(-mat[4][0]*mat[0][9]);
		end
		
		
		//calculating pivot in 2nd column and making other entries below it 0
		if(mat[1][1]!=0)
		begin
			mat[1][0]=mat[1][0]/mat[1][1];
			mat[1][1]=mat[1][1]/mat[1][1];
			mat[1][2]=mat[1][2]/mat[1][1];
			mat[1][3]=mat[1][3]/mat[1][1];
			mat[1][4]=mat[1][4]/mat[1][1];
			mat[1][5]=mat[1][5]/mat[1][1];
			mat[1][6]=mat[1][6]/mat[1][1];
			mat[1][7]=mat[1][7]/mat[1][1];
			mat[1][8]=mat[1][8]/mat[1][1];
			mat[1][9]=mat[1][9]/mat[1][1];
			
			
			mat[2][0]=mat[2][0]+(-mat[2][1]*mat[1][0]);
			mat[2][1]=mat[2][1]+(-mat[2][1]*mat[1][1]);
			mat[2][2]=mat[2][2]+(-mat[2][1]*mat[1][2]);
			mat[2][3]=mat[2][3]+(-mat[2][1]*mat[1][3]);
			mat[2][4]=mat[2][4]+(-mat[2][1]*mat[1][4]);
			mat[2][5]=mat[2][5]+(-mat[2][1]*mat[1][5]);
			mat[2][6]=mat[2][6]+(-mat[2][1]*mat[1][6]);
			mat[2][7]=mat[2][7]+(-mat[2][1]*mat[1][7]);
			mat[2][8]=mat[2][8]+(-mat[2][1]*mat[1][8]);
			mat[2][9]=mat[2][9]+(-mat[2][1]*mat[1][9]);
			
			
			mat[3][0]=mat[3][0]+(-mat[3][1]*mat[1][0]);
			mat[3][1]=mat[3][1]+(-mat[3][1]*mat[1][1]);
			mat[3][2]=mat[3][2]+(-mat[3][1]*mat[1][2]);
			mat[3][3]=mat[3][3]+(-mat[3][1]*mat[1][3]);
			mat[3][4]=mat[3][4]+(-mat[3][1]*mat[1][4]);
			mat[3][5]=mat[3][5]+(-mat[3][1]*mat[1][5]);
			mat[3][6]=mat[3][6]+(-mat[3][1]*mat[1][6]);
			mat[3][7]=mat[3][7]+(-mat[3][1]*mat[1][7]);
			mat[3][8]=mat[3][8]+(-mat[3][1]*mat[1][8]);
			mat[3][9]=mat[3][9]+(-mat[3][1]*mat[1][9]);
		
		
			mat[4][0]=mat[4][0]+(-mat[4][1]*mat[1][0]);
			mat[4][1]=mat[4][1]+(-mat[4][1]*mat[1][1]);
			mat[4][2]=mat[4][2]+(-mat[4][1]*mat[1][2]);
			mat[4][3]=mat[4][3]+(-mat[4][1]*mat[1][3]);
			mat[4][4]=mat[4][4]+(-mat[4][1]*mat[1][4]);
			mat[4][5]=mat[4][5]+(-mat[4][1]*mat[1][5]);
			mat[4][6]=mat[4][6]+(-mat[4][1]*mat[1][6]);
			mat[4][7]=mat[4][7]+(-mat[4][1]*mat[1][7]);
			mat[4][8]=mat[4][8]+(-mat[4][1]*mat[1][8]);
			mat[4][9]=mat[4][9]+(-mat[4][1]*mat[1][9]);
		end
		
		
		//calculating pivot in 3rd column and making other entries below it 0
		if(mat[2][2]!=0)
		begin
			mat[2][0]=mat[2][0]/mat[2][2];
			mat[2][1]=mat[2][1]/mat[2][2];
			mat[2][2]=mat[2][2]/mat[2][2];
			mat[2][3]=mat[2][3]/mat[2][2];
			mat[2][4]=mat[2][4]/mat[2][2];
			mat[2][5]=mat[2][5]/mat[2][2];
			mat[2][6]=mat[2][6]/mat[2][2];
			mat[2][7]=mat[2][7]/mat[2][2];
			mat[2][8]=mat[2][8]/mat[2][2];
			mat[2][9]=mat[2][9]/mat[2][2];
			
			
			mat[3][0]=mat[3][0]+(-mat[3][2]*mat[2][0]);
			mat[3][1]=mat[3][1]+(-mat[3][2]*mat[2][1]);
			mat[3][2]=mat[3][2]+(-mat[3][2]*mat[2][2]);
			mat[3][3]=mat[3][3]+(-mat[3][2]*mat[2][3]);
			mat[3][4]=mat[3][4]+(-mat[3][2]*mat[2][4]);
			mat[3][5]=mat[3][5]+(-mat[3][2]*mat[2][5]);
			mat[3][6]=mat[3][6]+(-mat[3][2]*mat[2][6]);
			mat[3][7]=mat[3][7]+(-mat[3][2]*mat[2][7]);
			mat[3][8]=mat[3][8]+(-mat[3][2]*mat[2][8]);
			mat[3][9]=mat[3][9]+(-mat[3][2]*mat[2][9]);
			
			
			mat[4][0]=mat[4][0]+(-mat[4][2]*mat[2][0]);
			mat[4][1]=mat[4][1]+(-mat[4][2]*mat[2][1]);
			mat[4][2]=mat[4][2]+(-mat[4][2]*mat[2][2]);
			mat[4][3]=mat[4][3]+(-mat[4][2]*mat[2][3]);
			mat[4][4]=mat[4][4]+(-mat[4][2]*mat[2][4]);
			mat[4][5]=mat[4][5]+(-mat[4][2]*mat[2][5]);
			mat[4][6]=mat[4][6]+(-mat[4][2]*mat[2][6]);
			mat[4][7]=mat[4][7]+(-mat[4][2]*mat[2][7]);
			mat[4][8]=mat[4][8]+(-mat[4][2]*mat[2][8]);
			mat[4][9]=mat[4][9]+(-mat[4][2]*mat[2][9]);
		end

		//calculating pivot in 4th column and making other entries below it 0
		if(mat[3][3]!=0)
		begin
			mat[3][0]=mat[3][0]/mat[3][3];
			mat[3][1]=mat[3][1]/mat[3][3];
			mat[3][2]=mat[3][2]/mat[3][3];
			mat[3][3]=mat[3][3]/mat[3][3];
			mat[3][4]=mat[3][4]/mat[3][3];
			mat[3][5]=mat[3][5]/mat[3][3];
			mat[3][6]=mat[3][6]/mat[3][3];
			mat[3][7]=mat[3][7]/mat[3][3];
			mat[3][8]=mat[3][8]/mat[3][3];
			mat[3][9]=mat[3][9]/mat[3][3];
			
			mat[4][0]=mat[4][0]+(-mat[4][3]*mat[3][0]);
			mat[4][1]=mat[4][1]+(-mat[4][3]*mat[3][1]);
			mat[4][2]=mat[4][2]+(-mat[4][3]*mat[3][2]);
			mat[4][3]=mat[4][3]+(-mat[4][3]*mat[3][3]);
			mat[4][4]=mat[4][4]+(-mat[4][3]*mat[3][4]);
			mat[4][5]=mat[4][5]+(-mat[4][3]*mat[3][5]);
			mat[4][6]=mat[4][6]+(-mat[4][3]*mat[3][6]);
			mat[4][7]=mat[4][7]+(-mat[4][3]*mat[3][7]);
			mat[4][8]=mat[4][8]+(-mat[4][3]*mat[3][8]);
			mat[4][9]=mat[4][9]+(-mat[4][3]*mat[3][9]);
		end
		
		
		//calculating pivot in 5th column
		if(mat[4][4]!=0)
		begin
			mat[4][0]=mat[4][0]/mat[4][4];
			mat[4][1]=mat[4][1]/mat[4][4];
			mat[4][2]=mat[4][2]/mat[4][4];
			mat[4][3]=mat[4][3]/mat[4][4];
			mat[4][4]=mat[4][4]/mat[4][4];
			mat[4][5]=mat[4][5]/mat[4][4];
			mat[4][6]=mat[4][6]/mat[4][4];
			mat[4][7]=mat[4][7]/mat[4][4];
			mat[4][8]=mat[4][8]/mat[4][4];
			mat[4][9]=mat[4][9]/mat[4][4];
		end

		
/////////RREF STARTS FROM HERE

		//making entries 0 above the pivot of 2nd column
		mat[0][0]=mat[0][0]+(-mat[0][1]*mat[1][0]);
		mat[0][1]=mat[0][1]+(-mat[0][1]*mat[1][1]);
		mat[0][2]=mat[0][2]+(-mat[0][1]*mat[1][2]);
		mat[0][3]=mat[0][3]+(-mat[0][1]*mat[1][3]);
		mat[0][4]=mat[0][4]+(-mat[0][1]*mat[1][4]);
		mat[0][5]=mat[0][5]+(-mat[0][1]*mat[1][5]);
		mat[0][6]=mat[0][6]+(-mat[0][1]*mat[1][6]);
		mat[0][7]=mat[0][7]+(-mat[0][1]*mat[1][7]);
		mat[0][8]=mat[0][8]+(-mat[0][1]*mat[1][8]);
		mat[0][9]=mat[0][9]+(-mat[0][1]*mat[1][9]);
		
		
		//making entries 0 above the pivot of 3rd column
		mat[1][0]=mat[1][0]+(-mat[1][2]*mat[2][0]);
		mat[1][1]=mat[1][1]+(-mat[1][2]*mat[2][1]);
		mat[1][2]=mat[1][2]+(-mat[1][2]*mat[2][2]);
		mat[1][3]=mat[1][3]+(-mat[1][2]*mat[2][3]);
		mat[1][4]=mat[1][4]+(-mat[1][2]*mat[2][4]);
		mat[1][5]=mat[1][5]+(-mat[1][2]*mat[2][5]);
		mat[1][6]=mat[1][6]+(-mat[1][2]*mat[2][6]);
		mat[1][7]=mat[1][7]+(-mat[1][2]*mat[2][7]);
		mat[1][8]=mat[1][8]+(-mat[1][2]*mat[2][8]);
		mat[1][9]=mat[1][9]+(-mat[1][2]*mat[2][9]);
		
		
		mat[0][0]=mat[0][0]+(-mat[0][2]*mat[2][0]);
		mat[0][1]=mat[0][1]+(-mat[0][2]*mat[2][1]);
		mat[0][2]=mat[0][2]+(-mat[0][2]*mat[2][2]);
		mat[0][3]=mat[0][3]+(-mat[0][2]*mat[2][3]);
		mat[0][4]=mat[0][4]+(-mat[0][2]*mat[2][4]);
		mat[0][5]=mat[0][5]+(-mat[0][2]*mat[2][5]);
		mat[0][6]=mat[0][6]+(-mat[0][2]*mat[2][6]);
		mat[0][7]=mat[0][7]+(-mat[0][2]*mat[2][7]);
		mat[0][8]=mat[0][8]+(-mat[0][2]*mat[2][8]);
		mat[0][9]=mat[0][9]+(-mat[0][2]*mat[2][9]);
		

		//making entries 0 above the pivot of 4th column
		mat[0][0]=mat[0][0]+(-mat[0][3]*mat[3][0]);
		mat[0][1]=mat[0][1]+(-mat[0][3]*mat[3][1]);
		mat[0][2]=mat[0][2]+(-mat[0][3]*mat[3][2]);
		mat[0][3]=mat[0][3]+(-mat[0][3]*mat[3][3]);
		mat[0][4]=mat[0][4]+(-mat[0][3]*mat[3][4]);
		mat[0][5]=mat[0][5]+(-mat[0][3]*mat[3][5]);
		mat[0][6]=mat[0][6]+(-mat[0][3]*mat[3][6]);
		mat[0][7]=mat[0][7]+(-mat[0][3]*mat[3][7]);
		mat[0][8]=mat[0][8]+(-mat[0][3]*mat[3][8]);
		mat[0][9]=mat[0][9]+(-mat[0][3]*mat[3][9]);
		
		
		mat[1][0]=mat[1][0]+(-mat[1][3]*mat[3][0]);
		mat[1][1]=mat[1][1]+(-mat[1][3]*mat[3][1]);
		mat[1][2]=mat[1][2]+(-mat[1][3]*mat[3][2]);
		mat[1][3]=mat[1][3]+(-mat[1][3]*mat[3][3]);
		mat[1][4]=mat[1][4]+(-mat[1][3]*mat[3][4]);
		mat[1][5]=mat[1][5]+(-mat[1][3]*mat[3][5]);
		mat[1][6]=mat[1][6]+(-mat[1][3]*mat[3][6]);
		mat[1][7]=mat[1][7]+(-mat[1][3]*mat[3][7]);
		mat[1][8]=mat[1][8]+(-mat[1][3]*mat[3][8]);
		mat[1][9]=mat[1][9]+(-mat[1][3]*mat[3][9]);
		
		
		mat[2][0]=mat[2][0]+(-mat[2][3]*mat[3][0]);
		mat[2][1]=mat[2][1]+(-mat[2][3]*mat[3][1]);
		mat[2][2]=mat[2][2]+(-mat[2][3]*mat[3][2]);
		mat[2][3]=mat[2][3]+(-mat[2][3]*mat[3][3]);
		mat[2][4]=mat[2][4]+(-mat[2][3]*mat[3][4]);
		mat[2][5]=mat[2][5]+(-mat[2][3]*mat[3][5]);
		mat[2][6]=mat[2][6]+(-mat[2][3]*mat[3][6]);
		mat[2][7]=mat[2][7]+(-mat[2][3]*mat[3][7]);
		mat[2][8]=mat[2][8]+(-mat[2][3]*mat[3][8]);
		mat[2][9]=mat[2][9]+(-mat[2][3]*mat[3][9]);
		
		
		//making entries 0 above the pivot of 5th column
		mat[0][0]=mat[0][0]+(-mat[0][4]*mat[4][0]);
		mat[0][1]=mat[0][1]+(-mat[0][4]*mat[4][1]);
		mat[0][2]=mat[0][2]+(-mat[0][4]*mat[4][2]);
		mat[0][3]=mat[0][3]+(-mat[0][4]*mat[4][3]);
		mat[0][4]=mat[0][4]+(-mat[0][4]*mat[4][4]);
		mat[0][5]=mat[0][5]+(-mat[0][4]*mat[4][5]);
		mat[0][6]=mat[0][6]+(-mat[0][4]*mat[4][6]);
		mat[0][7]=mat[0][7]+(-mat[0][4]*mat[4][7]);
		mat[0][8]=mat[0][8]+(-mat[0][4]*mat[4][8]);
		mat[0][9]=mat[0][9]+(-mat[0][4]*mat[4][9]);
		
		
		mat[1][0]=mat[1][0]+(-mat[1][4]*mat[4][0]);
		mat[1][1]=mat[1][1]+(-mat[1][4]*mat[4][1]);
		mat[1][2]=mat[1][2]+(-mat[1][4]*mat[4][2]);
		mat[1][3]=mat[1][3]+(-mat[1][4]*mat[4][3]);
		mat[1][4]=mat[1][4]+(-mat[1][4]*mat[4][4]);
		mat[1][5]=mat[1][5]+(-mat[1][4]*mat[4][5]);
		mat[1][6]=mat[1][6]+(-mat[1][4]*mat[4][6]);
		mat[1][7]=mat[1][7]+(-mat[1][4]*mat[4][7]);
		mat[1][8]=mat[1][8]+(-mat[1][4]*mat[4][8]);
		mat[1][9]=mat[1][9]+(-mat[1][4]*mat[4][9]);
		
		
		mat[2][0]=mat[2][0]+(-mat[2][4]*mat[4][0]);
		mat[2][1]=mat[2][1]+(-mat[2][4]*mat[4][1]);
		mat[2][2]=mat[2][2]+(-mat[2][4]*mat[4][2]);
		mat[2][3]=mat[2][3]+(-mat[2][4]*mat[4][3]);
		mat[2][4]=mat[2][4]+(-mat[2][4]*mat[4][4]);
		mat[2][5]=mat[2][5]+(-mat[2][4]*mat[4][5]);
		mat[2][6]=mat[2][6]+(-mat[2][4]*mat[4][6]);
		mat[2][7]=mat[2][7]+(-mat[2][4]*mat[4][7]);
		mat[2][8]=mat[2][8]+(-mat[2][4]*mat[4][8]);
		mat[2][9]=mat[2][9]+(-mat[2][4]*mat[4][9]);
		
		
		mat[3][0]=mat[3][0]+(-mat[3][4]*mat[4][0]);
		mat[3][1]=mat[3][1]+(-mat[3][4]*mat[4][1]);
		mat[3][2]=mat[3][2]+(-mat[3][4]*mat[4][2]);
		mat[3][3]=mat[3][3]+(-mat[3][4]*mat[4][3]);
		mat[3][4]=mat[3][4]+(-mat[3][4]*mat[4][4]);
		mat[3][5]=mat[3][5]+(-mat[3][4]*mat[4][5]);
		mat[3][6]=mat[3][6]+(-mat[3][4]*mat[4][6]);
		mat[3][7]=mat[3][7]+(-mat[3][4]*mat[4][7]);
		mat[3][8]=mat[3][8]+(-mat[3][4]*mat[4][8]);
		mat[3][9]=mat[3][9]+(-mat[3][4]*mat[4][9]);
		
		
		$display();
		$display("Given Matrix: ");
		$display();

		$write("1.0000    ");
		$write("4.0000   ");
		$write("1.0000    ");
		$write("0.0000   ");
		$display("0.0000		");
		
		$write("0.0000    ");
		$write("1.0000    ");
		$write("4.0000   ");
		$write("1.0000    ");
		$display("0.0000		");
		
		$write("0.0000    ");
		$write("0.0000    ");
		$write("1.0000    ");
		$write("4.0000   ");
		$display("1.0000  ");

		$write("0.0000    ");
		$write("0.0000    ");
		$write("0.0000    ");
		$write("1.0000    ");
		$display("4.0000 ");
		
		$write("0.0000    ");
		$write("0.0000    ");
		$write("0.0000    ");
		$write("0.0000    ");
		$display("1.0000");


		$display();
		$display("Inverted Matrix: ");
		$display();
		
		
		$write("%f	",mat[0][5]);		//printing inverted matrix 
		$write("%f	",mat[0][6]);
		$write("%f	",mat[0][7]);
		$write("%f	",mat[0][8]);
		$display("%f	",mat[0][9]);
		
		$write("%f	",mat[1][5]);
		$write("%f	",mat[1][6]);
		$write("%f	",mat[1][7]);
		$write("%f	",mat[1][8]);
		$display("%f	",mat[1][9]);
		
		$write("%f	",mat[2][5]);
		$write("%f	",mat[2][6]);
		$write("%f	",mat[2][7]);
		$write("%f	",mat[2][8]);
		$display("%f	",mat[2][9]);
		
		$write("%f	",mat[3][5]);
		$write("%f	",mat[3][6]);
		$write("%f	",mat[3][7]);
		$write("%f	",mat[3][8]);
		$display("%f	",mat[3][9]);
		
		$write("%f	",mat[4][5]);
		$write("%f	",mat[4][6]);
		$write("%f	",mat[4][7]);
		$write("%f	",mat[4][8]);
		$display("%f	",mat[4][9]);
		
		$display();
		$display();
end

endmodule	//end of code
