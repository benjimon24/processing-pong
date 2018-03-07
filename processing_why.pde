int rad = 12; 
float xpos, ypos; 

int speed = 8; 

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom

void setup() 
{
  size(800, 600);
  noStroke();
  frameRate(60);
  xpos = width/2;
  ypos = height/2;
}

void draw() 
{
  background(64);

  xpos = xpos + ( speed * xdirection );
  ypos = ypos + ( speed * ydirection );
  
  if (xpos > width-rad || xpos < rad ){
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad|| (xpos > mouseX - 40 && xpos < mouseX + 40 && ypos > height - 80)) {
    ydirection *= -1;
  }

  ellipse(xpos, ypos, rad, rad);
  rect(mouseX - 40, (height - 80), 80, 20);
}