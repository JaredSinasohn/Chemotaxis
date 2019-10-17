 Bacteria[] joes;
 int BACK_SIZE=800;
 void setup()   
 {     
 	   size(800,800);
 	   joes = new Bacteria[100];
 	   for(int i = 0; i<joes.length; i++){
 	   		joes[i]=new Bacteria(BACK_SIZE/2, BACK_SIZE/2, (int)(Math.random()*256));
 	   }
 }   
 void draw()   
 {    
 	background(64,224,208);
 	for(int i = 0; i<joes.length; i++){
 		joes[i].move();
 		joes[i].show();  
 	}
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
 				myX=(int)(Math.random()*11)-1+myX;
 			}
 			else if(mouseX<myX)
 			{
 				myX=(int)(Math.random()*11)-9+myX;
 			}
 			else
 			{
 				myX=(int)(Math.random()*11)-5+myX;
 			}
 			

 			if(mouseY>myY)
 			{
 				myY=(int)(Math.random()*11)-1+myY;
 			}
 			else if(mouseY<myY)
 			{
 				myY=(int)(Math.random()*11)-9+myY;
 			}
 			else
 			{
 				myY=(int)(Math.random()*11)-5+myY;
 			}
 			
 		}
 		else
 		{
 			myX=(int)(Math.random()*11)-5+myX;
 			myY=(int)(Math.random()*11)-5+myY;
 		}
 	}
 	void show(){
 		fill(0, myCol, 255-myCol,150);
 		stroke(0, myCol, 255-myCol);
 		ellipse(myX, myY, 50, 50);
 	}
 }    