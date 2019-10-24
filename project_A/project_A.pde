

// making the size of my grid
void setup()
{
  size(330, 440);
  background(0);
}

// TEXT FOR COME TO on poster

void draw()
{ 
  // variables 
  color blue = color(20, 75, 200);
  color red = color(255, 0, 0);
  color green = color(#29FC0A);
  color yellow = color(#F3FC03);
  // the first text COME on the poster
  
  fill(blue);
textSize(35);
textAlign(CENTER, BOTTOM);
text("COME TO", 165, 50);

// Plaza text
fill(red);
textSize(35);
textAlign(CENTER, TOP);
text("PLAZA", 165, 310);

// Mariachi
fill(yellow);
textSize(35);
textAlign(CENTER, TOP);
text("MARIACHI", 165, 360);



// outside body
noFill();

beginShape();
stroke(blue);
vertex(110, 105);
vertex(160, 75);
endShape();
beginShape();
stroke(red);
vertex(160, 75);
vertex(210, 105);
endShape();

bezier(210, 105, 215, 115, 220, 115, 210, 126);
stroke(blue);
bezier(110, 105, 105, 115, 100, 115, 110, 126);
bezier(110, 126, 100, 130, 90, 125, 100, 102); 
beginShape();
vertex(100, 102);
vertex(155, 65);
vertex(140, 65);
vertex(95, 95);
endShape();
bezier(95, 95, 85, 115, 85, 125, 95, 135);

// right side of the outside top
stroke(red);
bezier(210, 126, 220, 130, 230, 125, 220, 102);

beginShape();
vertex(220, 102);
vertex(165, 65);
vertex(180, 65);
vertex(225, 95);
endShape();
bezier(225, 95, 235, 115, 235, 125, 225, 135);
// left
// right side of the outside top


//important
beginShape();
stroke(blue);
vertex(40, 180);
vertex(75, 145);
endShape();
beginShape();
stroke(green);
vertex(75, 215);
vertex(40, 180);
endShape();
beginShape();
stroke(blue);
vertex(70, 130);
vertex(25, 160);
vertex(25, 175);
vertex(70, 140);
//vertex(30, 
endShape();
bezier(75, 145, 80, 142, 85, 142, 88, 145);
bezier(88, 145, 93, 142, 85, 135, 70, 140);
bezier(95, 135, 98, 138, 85, 135, 70, 130);
stroke(green);
bezier(75, 215, 80, 218, 85, 218, 88, 215);
bezier(88, 215, 93, 218, 85, 225, 70, 220);
bezier(95, 225, 98, 222, 85, 225, 70, 230);
beginShape();
vertex(70, 230);
vertex(25, 200);
vertex(25, 185);
vertex(70, 220);
endShape();
// duplicate
beginShape();
stroke(yellow);
vertex(245, 215);
vertex(280, 180);
endShape();
beginShape();
stroke(red);
vertex(280, 180);
vertex(245, 145);
endShape();
beginShape();
vertex(250, 130);
vertex(295, 160);
vertex(295, 175);
vertex(250, 140);
//vertex(30, 
endShape();
bezier(245, 145, 240, 142, 235, 142, 232, 145);
bezier(232, 145, 227, 142, 235, 135, 250, 140);
bezier(225, 135, 222, 138, 235, 135, 250, 130);
stroke(yellow);
bezier(245, 215, 240, 218, 235, 218, 232, 215);
bezier(232, 215, 227, 218, 235, 225, 250, 220);
bezier(225, 225, 222, 222, 235, 225, 250, 230);
beginShape();
vertex(250, 230);
vertex(295, 200);
vertex(295, 185);
vertex(250, 220);
endShape();
//bottom

beginShape();
stroke(green);
vertex(110, 255);
vertex(160, 285);
endShape();
beginShape();
stroke(yellow);
vertex(160, 285);
vertex(210, 255);
endShape();
bezier(210, 255, 215, 245, 220, 245, 210, 234);
stroke(green);
bezier(110, 255, 105, 245, 100, 245, 110, 234);
bezier(110, 234, 100, 230, 90, 235, 100, 258);
beginShape();
vertex(100, 258);
vertex(155, 295);
vertex(140, 295);
vertex(95, 265);
endShape();
bezier(95, 265, 85, 245, 85, 235, 95, 225);
stroke(yellow);
bezier(210, 234, 220, 230, 230, 235, 220, 258);
beginShape();
vertex(220, 258);
vertex(165, 295);
vertex(180, 295);
vertex(225, 265);
endShape();
bezier(225, 265, 235, 245, 235, 235, 225, 225);
//inner squares
stroke(100);
fill(yellow);
quad(110, 180, 160, 130, 210, 180, 160, 230);
fill(green);
quad(120, 180, 160, 140, 200, 180, 160, 220);
fill(blue);
quad(130, 180, 160, 150, 190, 180, 160, 210);
fill(red);
quad(140, 180, 160, 160, 180, 180, 160, 200);
fill (yellow);
quad(155, 180, 160, 175, 165, 180, 160, 185);

// starting the lines
arc(178, 252, 10, 10, 0, PI);
arc(245, 190, 10, 10, 0, 2 * PI);
beginShape();
fill(yellow);
vertex(183, 251);
vertex(173, 251);
vertex(173, 242);
vertex(225, 185);
vertex(245, 185);
vertex(245, 195);
vertex(225, 195);
vertex(183, 242);//
vertex(183, 251);
endShape();

// top right
fill(red);
arc(178, 108, 10, 10, 0, 2 * PI);
arc(245, 170, 10, 10, 0, 2 * PI);
beginShape();
vertex(183, 109);
vertex(173, 109);
vertex(173, 118);
vertex(225, 175);
vertex(245, 175);
vertex(245, 165);
vertex(225, 165);//
vertex(183, 118);
vertex(183, 109);
endShape();
//top left
fill(blue);
arc(142, 108, 10, 10, 0, 2 * PI);
arc(75, 170, 10, 10, 0, 2 * PI);
beginShape();
vertex(137, 109);
vertex(147, 109);
vertex(147, 118);
vertex(95, 175);
vertex(75, 175);
vertex(75, 165);
vertex(95, 165);
vertex(137, 118);
vertex(137, 109);
endShape();
// bottom left
fill(green);
arc(142, 252, 10, 10, 0, 2 * PI);
arc(75, 190, 10, 10, 0, 2 * PI);
beginShape();
vertex(137, 251);// might have to change the y
vertex(147, 251);
vertex(147, 242);
vertex(95, 185);
vertex(75, 185);
vertex(75, 195);
vertex(95, 195);
vertex(137, 242);
vertex(137, 251);
endShape();

// red square
fill(red);
square(160, 90);
// yellow square
fill(yellow);
square(260, 180);
//green square
fill(green);
square(160, 270);
// blue square
fill(blue);
square(60, 180);

// circles starting with red 22 away x 7 away on the y 245, 170
fill(red);
circle(200, 115);
circle(235, 155);
fill(yellow);
circle(200, 245);
circle(235, 205);
fill(green);
circle(120, 245);
circle(85, 205);
fill(blue);
circle(85, 155);
circle(120, 115);
}

void circle(float x, float y)
{
  ellipse(x, y, 10, 10);
}
void square(float x, float y)
{
  quad(x+5, y, x, y+5, x-5, y, x, y-5);
}
