Table myData;
int rowCount;
 Boolean KeyPressed = false;

void setup () {
    size(1300,800);
  background(#65B0FA);
 drawSetup();
 keyPressed();

}

void draw() { }

void drawSetup() {
    background(#65B0FA);
  myData = new Table("GNI.tsv"); 
 rowCount = myData.getRowCount();
 println("rowCount = " + rowCount);
 
 
 
 for (int i = 1; i < rowCount; i++){
 int xPosition = myData.getInt(i,0);
 float yPosition = myData.getFloat(i,1);
int  shapeWidth = myData.getInt(i,2);
int  shapeHeight = myData.getInt(i,3);  
 
   drawShape(xPosition,  yPosition,  shapeWidth,  shapeHeight);
    drawText();
 }
  
  
}

void drawShape(int xPosition,  float yPosition,  int shapeWidth, int shapeHeight){
 


//This sets the the condision for the color
  if (shapeWidth == 25){
    fill(206, 7, 229);
strokeWeight(1);
stroke(0);
  ellipse(xPosition+300, 600-yPosition, shapeWidth/2, shapeHeight /2 );

    
  }
  
  else{
    fill(209, 255, 8);
stroke(0); 
strokeWeight(1);
  ellipse(xPosition+300, 600-yPosition, shapeWidth / 2, shapeHeight / 2);

  
    
  }


    textSize(15);
  // Y incraments
 textAlign(RIGHT);
 text(xPosition, 275, 600-xPosition);
 textAlign(LEFT);
}

// draws the line graph
void drawBar() {
 
  background(#65B0FA);
 myData = new Table("GNI.tsv"); 
 rowCount = myData.getRowCount();
 println("rowCount = " + rowCount);
 
 
 
 for (int i = 1; i < rowCount; i++){
 int xPosition = myData.getInt(i,0);
 float yPosition = myData.getFloat(i,1);
 int shapeWidth = myData.getInt(i,2);
 
   drawBarGraph(xPosition,  yPosition, shapeWidth);
  drawText();
}

}


void drawBarGraph(int xPosition,  float yPosition, int shapeWidth){
      textSize(15);
  // Y incraments
 textAlign(RIGHT);
 text(xPosition, 275, 600-xPosition);
 textAlign(LEFT);


  if (shapeWidth == 25){
    
    strokeWeight(5);
    stroke(206, 7, 229);
    fill(206, 7, 229);

 
line(xPosition+300, 600, xPosition+300, 600-yPosition);
   textSize(7);
  fill(0);
  text(round(yPosition), xPosition+300, 590-yPosition);
 
    
  }
  
  else{
    strokeWeight(4);
    stroke(209, 255, 8);
 line(xPosition+300, 600, xPosition+300, 600-yPosition);
   textSize(7);
  fill(0);
  text(round(yPosition), xPosition+300, 590-yPosition);
    
  }
  
}



void drawLine() {
 
  background(#65B0FA);
 myData = new Table("GNI.tsv"); 
 rowCount = myData.getRowCount();
 println("rowCount = " + rowCount);
 
 
 
 for (int i = 1; i < rowCount; i++){
 int xPosition = myData.getInt(i,0);
 float yPosition = myData.getFloat(i,1);
 int shapeWidth = myData.getInt(i,2);
 
   drawLineGraph (xPosition,  yPosition, shapeWidth);
  drawText();
}
}

void drawLineGraph (int xPosition, float yPosition, int shapeWidth){
  
  textSize(15);
 textAlign(RIGHT);
 text(xPosition, 275, 600-xPosition);
 textAlign(LEFT);
 
  
    if (shapeWidth != 25){
    
    strokeWeight(2);
   stroke(209, 255, 8);
line(500, 100, xPosition+300, 600-yPosition);
  textSize(10);
  fill(0);
  text(round(yPosition), xPosition+300, 610-yPosition);
  
    
  }
 
  
  else {
  
    strokeWeight(2);
    stroke(206, 7, 229); 
line(1200, 590, xPosition+300, 600-yPosition);
  textSize(10);
  fill(0);
  text(round(yPosition), xPosition+293, 593-yPosition);
  
  }


}



// this a function for the text that will stay on the page regardless of the graph
void drawText(){
  // Text Writing
  PFont Apple;
  Apple = loadFont("AppleMyungjo-48.vlw");
  textFont(Apple);
   textSize(32);
   fill(247, 0, 17);
  text("Gross National Income", 200, 700);
  fill(15, 139, 4);
  text("Burkina Faso", 400, 750);

  stroke(BLUR, 179,214, 213);
strokeWeight(5);
  //Graph Lines
  //X-axis line
 line(290,600, 1175, 600);
 
 // Y-axis line
 line(290, 600, 290, 10);
 
 // X-axis axis label
 textSize(25);
 text("Year", 732.5, 650);
  
  //Y-axis label
  pushMatrix();
  translate(240, 330);
  rotate(-HALF_PI);
  text("Dollar Amount", 0, 0);
  popMatrix();
  
  // label for bottom right and label for bottomg left of graph
  //1960
   pushMatrix();
  translate(290, 610);
  rotate(1);
  text("1960", 0, 0);
  popMatrix();
  //2018
     pushMatrix();
  translate(1175, 610);
  rotate(1);
  text("2019", 0, 0);
  popMatrix();
 
 // Legend text 
 strokeWeight(4);
  textSize(32);
  fill(247, 0, 17);
  text("Legend", 45, 147.5);
  strokeWeight(2);
  stroke(15, 139, 4);
  line(45, 155.5, 160, 155.5);
   stroke(0);
  strokeWeight(1);
   fill(209, 255, 8);
  text("10 Million", 45, 200);

  ellipse(35, 190, 10, 10);

  fill(206, 7, 229);
  text("100 Million", 45, 240);
    ellipse(35, 230, 10, 10);
    
}

// this calls on the functions so the graphs appear when a key is pressed
void keyPressed() {
 
if (key == 'A' || key == 'a') {

  drawBar(); 
}
else if (key == 'S' || key == 's') {

  drawLine();
}
else if (key == 'D' || key == 'd') {
drawSetup();
  
}

}
