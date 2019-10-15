 Bacteria joe = new Bacteria(100, 100, 0);
 void setup()   
 {     
 	   size(200,200);
 }   
 void draw()   
 {    
 	background(255);
 	joe.move();
 	joe.show();  
 }  
 class Bacteria    
 {     
 	int myX, myY, myCol;
 	Bacteria(int x, int y, int col){
 		myX=x;
 		myY=y;
 		myCol=col;
 	}
 	
 	void move(){
 		if(mousePressed==true){
 			if(mouseX>myX)
 			{
 				myX=(int)(Math.random()*5)+myX;
 			}
 			else if(mouseX<myX)
 			{
 				myX=(int)(Math.random()*5)-4+myX;
 			}
 			else
 			{
 				myX=(int)(Math.random()*5)-3+myX;
 			}
 			if(mouseY>myY)
 			{
 				myY=(int)(Math.random()*5)+myY;
 			}
 			else if(mouseY<myY)
 			{
 				myY=(int)(Math.random()*5)-4+myY;
 			}
 			else
 			{
 				myY=(int)(Math.random()*5)-3+myY;
 			}
 			
 		}
 		else
 		{
 			myX=(int)(Math.random()*5)-2+myX;
 			myY=(int)(Math.random()*5)-2+myY;
 		}
 	}
 	void show(){
 		fill(myCol);
 		stroke(myCol);
 		ellipse(myX, myY, 10, 10);
 	}
 }    