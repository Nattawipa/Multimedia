
//--------------------1-1--------------------

//size(480, 270);
//background(255);
//stroke(0);
//fill(150);
//rect(50, 50, 75, 100);

//-------------------1-1-1-------------------

//size(480, 270);
//background(255);
//stroke(0);
//fill(150);
//rect(50, 50, 75, 100);

//stroke(1);
//fill(250);
//rect(200, 50, 60, 30);

//--------------------1-2--------------------

//size(480, 270);
//background(255);
//// noFill() leaves the shape with only an outline.
//noFill();
//stroke(0);
//ellipse(60, 60, 100, 100);

//--------------------1-3--------------------

//size(480, 270);
//background(255);
//noStroke();
//// Bright red
//fill(255, 0, 0);
//ellipse(20, 20, 16, 16);
//// Dark red
//fill(127, 0, 0);
//ellipse(40, 20, 16, 16);
//// Pink (pale red)
//fill(255, 200, 200);
//ellipse(60, 20, 16, 16);

//-----------------1-3-1,2,3-----------------

//size(600,400);
//background(255,255,0);
//noStroke();
//// Bright red
//fill(255, 0, 0);
//ellipse(20, 20, 16, 16);
//// Dark red
//fill(127, 0, 0);
//ellipse(40, 20, 16, 16);
//// Pink (pale red)
//fill(255, 200, 200);
//ellipse(60, 20, 16, 16);
//// Pure green
//fill(51, 204, 51);
//ellipse(80, 20, 16, 16);

//--------------------1-4--------------------

//// Example 1-4: Alpha Transparency
//size(480, 270);
//background(0);
//noStroke();
//// No fourth argument means 100% opacity.
//fill(0, 0, 255);
//rect(0, 0, 240, 200);
//// 255 means 100% opacity.
//fill(255, 0, 0, 255);
//rect(0, 0, 480, 40);
//// 75% opacity.
//fill(255, 0, 0, 191);
//rect(0, 50, 480, 40);
//// 55% opacity.
//fill(255, 0, 0, 127);
//rect(0, 100, 480, 40);
//// 25% opacity.
//fill(255, 0, 0, 63);
//rect(0, 150, 480, 40);
//// 10% opacity.
//fill(255, 0, 0, 25.5);
//rect(0, 200, 480, 40);

//--------------------1-5--------------------

//// Zoog
//size(480, 270);
//background(255);
//ellipseMode(CENTER);
//rectMode(CENTER);
//// Body
//stroke(0);
//fill(255,102,255);
//rect(240, 145, 20, 100);
//// Head
//fill(0,255,255);
//ellipse(240, 115, 60, 60);
//// Eyes
//fill(0);
//ellipse(221, 115, 16, 32);
//ellipse(259, 115, 16, 32);
//// Legs
//stroke(0);
//line(230, 195, 220, 205);
//line(250, 195, 260, 205);

//--------------------2-1--------------------

//// setup() runs first one time.
//// size() should always be first line of setup
//void setup() 
//{  
//  size(480, 270);  // Set the size of the window
//}
//// draw() loops continuously until you close the sketch window.
//void draw() {
//// Draw a white background
//background(255);
//// Set CENTER mode
//ellipseMode(CENTER);
//rectMode(CENTER);
//// Body
//stroke(0);
//fill(150);
//rect(240, 145, 20, 100);
//// Head
//fill(255);
//ellipse(240, 115, 60, 60);
//// Eyes
//fill(0);
//ellipse(221, 115, 16, 32);
//ellipse(259, 115, 16, 32);
//}

//--------------------2-2--------------------

//// mouseX and mouseY
//void setup() 
//{
//  size(480, 270);
//  background(255);
//}
//  void draw() 
//{
//  stroke(0);
//  fill(255,0,0);
//  rectMode(CENTER);
//  ellipse(mouseX, mouseY, 50, 50);
//}

//--------------------2-3--------------------

//// Zoog as dynamic sketch with variation
//void setup() {
//size(480, 270); // Set the size of the window
//}
//void draw() {
//background(255); // Draw a white background
//// Set ellipses and rects to CENTER mode
//ellipseMode(CENTER);
//rectMode(CENTER);
//// Draw Zoog's body
//stroke(0);
//fill(175);
//// Zoog's body is located (mouseX, mouseY).
//rect(mouseX, mouseY, 20, 100);
//// Draw Zoog's head
//stroke(0);
//fill(255);
//// Zoog's head is located (mouseX, mouseY - 30).
//ellipse(mouseX, mouseY-30, 60, 60);
//// Eyes
//fill(0);
//ellipse(221, 115, 16, 32);
//ellipse(259, 115, 16, 32);
//// Legs
//stroke(0);
//line(mouseX-10, mouseY+50, mouseX-20, mouseY+100);
//line(mouseX+10, mouseY+50, mouseX+30, mouseY+100);
//}

//--------------------2-4--------------------

//// Drawing a continuous line
//void setup() 
//{
//  size(480, 270);
//}
//void draw() 
//{
//  background(255);
//  stroke(204,102,0);
//  strokeWeight(5);
//  line(pmouseX, pmouseY, mouseX, mouseY);
//}

//--------------------2-5--------------------

////mousePressed and keyPressed
//void setup()
//{
//  size(480, 270);
//  background(255);
//}
//void draw() {
//// Nothing happens in draw() in this example!
//}
//// Whenever a user clicks the mouse the code written inside mousePressed() is executed.
//void mousePressed() {
//}
//// Whenever a user presses a key the code written inside keyPressed() is executed.
//void keyPressed() 
//{
//  stroke(13,51,167);
//  fill(175);
//  strokeWeight(10);
//  line(pmouseX, pmouseY, mouseX, mouseY);
//}

//--------------------2-6--------------------

//// Interactive Zoog?
//void setup() {
//  size(480, 270);  // Set the size of the window
//  frameRate(30);  // The frame rate is set to 30 frames per second.
//}
//void draw() 
//{
//  background(255);  // Draw a white background
//  ellipseMode(CENTER);  // Set ellipses and rects to CENTER mode
//  rectMode(CENTER);
//  stroke(0);  // Draw Zoog's body
//  fill(175);
//  rect(mouseX, mouseY, 20, 100);
//  stroke(0);  // Draw Zoog's head
//  fill(255);
//  ellipse(mouseX, mouseY-30, 60, 60);
//  // The eye color is determined by the mouse location.
//  fill(mouseX/2, 0, mouseY/2);  // Draw Zoog's eyes
//  ellipse(mouseX-19, mouseY-30, 16, 32);
//  ellipse(mouseX+19, mouseY-30, 16, 32);
//  stroke(0);   // Draw Zoog's legs
//  // The legs are drawn according to the mouse location.
//  line(mouseX-10, mouseY+50, pmouseX-10, pmouseY+60);
//  line(mouseX+10, mouseY+50, pmouseX+10, pmouseY+60);
//  stroke(0);  // Draw Zoog's hands
//  // The hands are drawn according to the mouse location.
//  line(mouseX-10, mouseY+20, pmouseX-70, pmouseY+30);
//  line(mouseX+10, mouseY+20, pmouseX+70, pmouseY+30);
//}
//void mousePressed() {
//println("Take me to your leader!");
//println("I am your lovely pet!");
//}

//--------------------2-7-------------------- *********** not done

//void setup() {
//frameRate(30);
//size(480, 270);
//}
//void draw() {
//background(255);
//rectMode(CENTER);
//ellipseMode(CENTER);
//// Draw everything relative to (mouseX, mouseY)

//line(mouseX-10, mouseY+50, pmouseX-10, pmouseY+60);
//line(mouseX+10, mouseY+50, pmouseX+10, pmouseY+60);
//translate(mouseX, mouseY);
//// Draw Zoog's body
//stroke(0);
//fill(175);
//rect(0, 0, 20, 100);
//// Draw Zoog's head
//stroke(0);
//fill(255);
//ellipse(0, -30, 60, 60);
//// Draw Zoog's eyes
//stroke(0);
//fill(0);
//ellipse(-19, -30, 16, 32);
//ellipse( 19, -30, 16, 32);
//}

//--------------------3-1--------------------

//// Using variables
//// Declare and initialize two integer variables at the top of the code.
//int circleX = 100;
//int circleY = 100;
//int rectX = 100;
//int rectY = 150;
//void setup() {
//size(480, 270);
//}
//void draw() {
//background(255);
//stroke(0);
//fill(175);
//// Use the variables to specify the location of an ellipse.
//ellipse(circleX, circleY, 50, 50);
//rect(rectX,rectY,100,40);
//}

//--------------------3-2--------------------

//// Using system variables
//void setup() {
//size(480, 270);
//}
//void draw() {
//background(50);
//stroke(255);
//// frameCount is used to color a rectangle.
//fill(frameCount / 2);
//rectMode(CENTER);
//// The rectangle will always be in the middle of the window
//// if it is located at (width/2, height/2).
//rect(width/2, height/2, mouseX+10, mouseY+10);
//}
//void keyPressed() {
//println(key);
//}

//--------------------3-3-1,2----------------

//// Varying variables
//// Declare and initialize two integer variables at the top of the code.
//int circleX = 0, circleY = 100;
//int rectX = 0, rectY = 150, lineX = 0, lineY = 250;
//void setup() {
//size(480, 270);
//rectX = width;
//lineX = width;
//}
//void draw() {
//background(255);
//stroke(0);
//fill(175);
//// Use the variables to specify the location of an ellipse.
//ellipse(circleX, circleY, 50, 50);
//rect(rectX, rectY, 150, 50);
//line(lineX, lineY, lineX+50, 250);
//// An assignment operation that increments the value of circleX by 1.
//circleX = circleX + 1;
//rectX = rectX - 1;
//lineX = lineX - 1 * (5/2);
//}

//--------------------3-4--------------------

////Filling variableswith random values
//float r,g,b,a,diam,x,y,diam2;
//void setup() {
//size(480, 270);
//background(255);
//}
//void draw() {
//// Each time through draw(), new random
//// numbers are picked for a new ellipse.
//r = random(255);
//g = random(255);
//b = random(255);
//a = random(255);
//diam = random(20);
//diam2 = random(20);
//x = random(width);
//y = random(height);
//// Use values to draw an ellipse
//noStroke();
//fill(r, g, b, a);
//ellipse(x, y, diam, diam2);
//}

//--------------------3-5--------------------

// Conditional from mouse
//// Three variables for the background color.
//float r = 0;
//float b = 0;
//float g = 0;
//void setup() 
//{  size(480, 270);  }
//void draw() {
//// Color the background and draw lines to divide the window in quadrants.
//background(r,g,b);
//stroke(255);
//line(width/2,0,width/2,height);
//line(0,height/2,width,height/2);
//// If the mouse is on the right hand side of the window, increase red.
//// Otherwise, it is on the left hand side and decrease red.
//if (mouseX > width/2) 
//  {  r = r + 1;  } 
//else 
//  {  r = r - 1;  }
//// If the mouse is on the bottom of the window, increase blue.
//// Otherwise, it is on the top and decrease blue.
//if (mouseY > height/2) 
//{  b = b + 1;  } 
//else 
//{  b = b - 1;  }
//// If the mouse is pressed (using the system variable mousePressed)
//if (mousePressed) 
//{  g = g + 1;  } 
//else 
//{  g = g - 1;  }
//// Constrain all color values to between 0 and 255.
//r = constrain(r,0,255);
//g = constrain(g,0,255);
//b = constrain(b,0,255);
//}

//--------------------3-5-3------------------

//float r = 0, b = 0, g = 0;
//void setup() 
//{  
//  size(480, 270);
//}
//void draw() 
//{
//  background(255,255,255);
//  stroke(0);
//  line(width/2,0,width/2,height);
//  line(0,height/2,width,height/2);
//  if(mouseX<width/2 && mouseY<height/2)
//  {
//    fill(r,g,b);
//    rect(0,0,width/2,height/2);
//  }
//  else if(mouseX>width/2 && mouseY<height/2)
//  {
//    fill(r,g,b);
//    rect(width/2,0,width,height/2);
//  }
//   else if(mouseX<width/2 && mouseY>height/2)
//  {
//    fill(r,g,b);
//    rect(0,height/2,width/2,height);
//  }
//  else
//  {
//    fill(r,g,b);
//    rect(width/2,height/2,width,height);
//  }
//    if (mouseX > width/2) 
//    {  r = r + 1;  } 
//  else 
//    {  r = r - 1;  }
//  if (mouseY > height/2) 
//  {  b = b + 1;  } 
//  else 
//  {  b = b - 1;  }
//  if (mousePressed) 
//  {  g = g + 1;  } 
//  else 
//  {  g = g - 1;  }
//  r = constrain(r,0,255);
//  g = constrain(g,0,255);
//  b = constrain(b,0,255);
//}

//--------------------3-6--------------------

//boolean button = false;
//int x = 50, y = 50, w = 100, h = 75;
//void setup() {
//size(480, 270);
//}
//void draw() {
//  if (mouseX > x && mouseX < x+w && mouseY > y &&mouseY < y+h && mousePressed) 
//  {
//    button = true;
//  } else {
//    button = false;
//    }
//  if (button) {
//    background(255);
//    stroke(0);
//    } else {
//     background(0);
//    stroke(255);
//    }
//    fill(175);
//    rect(x,y,w,h);
//}

//--------------------3-6-2------------------ change bg when click

//boolean button = false;
//int x = 50, y = 50, w = 100, h = 75;
//void setup() {
//size(480, 270);
//}
//void draw() 
//{
//    fill(175);
//    rect(x,y,w,h);
//    if (mouseX > x && mouseX < x+w && mouseY > y &&mouseY < y+h &&mousePressed) 
//  {
//    button = true;
//  } 
//  if (button) {
//    background(255);
//    stroke(0);
//    } else {
//     background(0);
//    stroke(255);
//    }
//    fill(175);
//    rect(x,y,w,h);
//}

//--------------------3-7--------------------

//// Remember, || means "or."
//// Bouncing Ball
//int x = 0;
//int speed = 2;
//void setup() 
//{  size(480, 270);  }
//void draw() 
//{
//  background(255);
//  // Add the current speed to the x location.
//  x = x + speed;
//  if ((x > width) || (x < 0)) {
//  // If the object reaches either edge, multiply speed by -1 to turn it around.
//  speed = speed * -1;
//  }
//  // Display circle at x location
//  stroke(0);
//  fill(175);
//  ellipse(x,100,32,32);
//}

//--------------------3-7-1------------------

//int x = 0;
//int y = 0;
//int speed = 2;
//int speedY = 2;
//void setup() 
//{  size(480, 270);  }
//void draw() 
//{
//  background(255);
//  x = x + speed;
//  if ((x > width) || (x < 0)) {
//  speed = speed * -1;
//  }
//  // Display circle at x location
//  stroke(0);
//  fill(175);
//  ellipse(x,100,32,32);
  
//  y = y + speedY;
//  if ((y > height) || (y < 0)) {
//  speedY = speedY * -1;
//  }
//  // Display circle at x location
//  stroke(0);
//  fill(175);
//  ellipse(width/2,y,32,32);
//}

//--------------------3-7-2------------------

//int x = 0, y = 0, z=0, speed = 2, speedY = 2, speedZ =2;
//boolean mp = false;
//void setup() 
//{  size(480, 270);  }
//void draw() 
//{
//  background(255);
//  x = x + speed;
//  if ((x > width) || (x < 0)) 
//  {  speed = speed * -1;  }
//  stroke(0);
//  fill(0,255,0);
//  ellipse(x,100,32,32);
//  y = y + speedY;
//  if ((y > height) || (y < 0)) {
//  speedY = speedY * -1;
//  }
//  stroke(0);
//  fill(255,0,0);
//  ellipse(width/2,y,32,32);
//  if(mp)
//  {
//    z = z + speedZ;
//      if ((z > width) || (z < 0)) 
//          { speedZ = speedZ * -1;  }
//      stroke(0);
//      fill(0,0,255);
//      triangle(z,200,z+100,180,z,160);
//  }
//}
//void mousePressed()
//{  mp=true;  }

//--------------------3-8--------------------

//// Square following edge, uses a state variable
//int x = 0; // x location of square
//int y = 0; // y location of square
//int speed = 5; // speed of square
//// A variable to keep track of the squares "state."
//// Depending on the value of its state,it will either move right, down, left, or up.
//int state = 0;
//void setup() 
//{  size(480, 270);  }
//void draw() {
//  background(255);
//  // Display the square
//  stroke(0);
//  fill(175);
//  rect(x,y,9,9);
//  // If the state is 0, move to the right.
//  if (state == 0) 
//  {
//    x = x + speed;
//  // If, while the state is 0, it reaches the right side of the window, change the state to 1
//  // Repeat this same logic for all states!?
//    if (x > width-10) 
//    {
//      x = width-10;
//      state = 1;
//    }
//  }
//  else if (state == 1) 
//  {
//    y = y + speed;
//    if (y > height-10) 
//    {
//      y = height-10;
//      state = 2;
//    }
//  } 
//  else if (state == 2) 
//  {
//    x = x - speed;
//    if (x < 0) 
//    {
//      x = 0;
//      state = 3;
//    }
//  }
//  else if (state == 3) 
//  {
//    y = y - speed;
//    if (y < 0) 
//    {
//      y = 0;
//      state=0;
//    }
//   }
//}

//--------------------3-8-1------------------

//int x = 0, y = 0, speed = 5, state = 0;
//boolean mp = false;
//void setup() 
//{  size(480, 270);  }
//void draw() {
//  background(255);
//  stroke(0);
//  fill(175);
//  rect(x,y,9,9);
//  if(mp) //if mouse clicked speed will be minus 
//  {
//    speed = speed *-1;
//    mp = false;
//  }
//   if(speed > 0)
//   {
//    if (state == 0) 
//    {
//       x = x + speed;
//       if (x > width-10) 
//       {
//         x = width-10;
//         state = 1;
//       }
//    }
//    else if (state == 1) 
//    {
//       y = y + speed;
//       if (y > height-10) 
//       {
//         y = height-10;
//          state = 2;
//       }
//    } 
//    else if (state == 2) 
//    {
//       x = x - speed;
//       if (x < 0) 
//       {
//         x = 0;
//          state = 3;
//       }
//    }
//    else if (state == 3) 
//    {
//       y = y - speed;
//       if (y < 0) 
//       {
//         y = 0;
//         state=0;
//       }
//    }
//   }
//   else //when mouse is clicked
//   {
//     if(state==0)
//     {
//       x = x + speed;
//       if (x < 0+10) 
//       {
//         x = 0;
//         state = 3;
//       }
//     }
//     else if(state==1)
//     {
//       y = y + speed;
//       if (y < 0+10) 
//       {
//          y = 0;
//          state = 0;
//        }
//     }
//     else if(state==2)
//     {
//       x = x - speed;
//       if (x > width-10) 
//       {
//         x = width-10;
//         state = 1;
//       }
//     }
//     else
//     {
//       y = y - speed;
//       if (y > height-10) 
//       {
//         y = height-10;
//         state=2;
//       } 
//     }
//   }
//}
//void mousePressed()
//{  mp=true;  }

//--------------------3-9--------------------

//// Simple Gravity
//float x = 240; // x location of square
//float y = 0; // y location of square
//float speed = 0; // speed of square
//// A new variable, for gravity (i.e. acceleration).
//// We use a relatively small number (0.1)because
//// this accelerations accumulates over time, increasing the speed.
//// Try changing this number to 2.0 and see what happens.
//float gravity = 0.1;
//void setup() {  size(480, 270);  }
//void draw() {
//  background(255);
//  // Display the square
//  fill(175);
//  stroke(0);
//  rectMode(CENTER);
//  rect(x, y, 10, 10);
//  // Add speed to location.
//  y = y + speed;
//  // Add gravity to speed.
//  speed = speed + gravity;
//  // If square reaches the bottom
//  // Reverse speed
//  if (y > height) 
//  {
//  // Multiplying by -0.95 instead of -1 slows the square
//  // down each time it bounces (by decreasing speed).
//  // This is known as a "dampening" effect and is a more
//  // realistic simulation of the real world (without it,
//  // a ball would bounce forever).
//  speed = speed * -0.95;
//  y = height;
//  }
//}

//--------------------3-10-------------------

//// A Car class and a Car object
//Car myCar; // Declare car object as agloble variable.
//void setup() 
//{
//  size(480, 270);
//  myCar = new Car();  // Initialize car object in setup()by calling constructor.
//}
//void draw() {
//background(255);
//// Operate Car object in draw() by calling
//// object methods using the dot syntax.
//myCar.move();
//myCar.display();
//}
//// Define a class outside of setup and draw.
//class Car {
//// Variables.
//color c;
//float xpos, ypos, xspeed;
//Car()   // A constructor.
//{
//  c = color(175);
//  xpos = width/2;
//  ypos = height/2;
//  xspeed = 1;
//}
//void display()   // Function.
//{
//  // The car is just a square
//  rectMode(CENTER);
//  stroke(0);
//  fill(c);
//  rect(xpos, ypos, 20, 10);
//}
//void move()   // Function.
//{
//  xpos = xpos + xspeed;
//  if (xpos > width) 
//  {  xpos = 0;  }
//}
//}

//--------------------3-10-1-----------------

//Car myCar;
//Car nnCar;
//boolean mp = false;
//void setup() 
//{
//  size(480, 270);
//  myCar = new Car();
//}
//void draw() 
//{
//  background(255);
//  myCar.move();
//  myCar.display();
//  if(mp)    //when clicked
//  {
//    nnCar.move();
//    nnCar.display();
//  }
//}
//class Car 
//{
//  color c;
//  float xpos, ypos, xspeed;
//  Car()   
//  {
//    c = color(175);
//    xpos = width/2;
//    ypos = height/2;
//    xspeed = 1;
//  }
//  Car(int x , int y){
//    c = color(x-y,78,156);
//    xpos = x;
//    ypos = y;
//    xspeed = 1;
//  }
//  void display() 
//  {
//    rectMode(CENTER);
//    stroke(0);
//    fill(c);
//    rect(xpos, ypos, 20, 10);
//  }
//  void move()   
//  {
//    xpos = xpos + xspeed;
//    if (xpos > width) 
//    {  xpos = 0;  }
//  }
//}

//void mousePressed()
//{ 
//  nnCar = new Car(mouseX,mouseY);
//mp=true;  }

//--------------------3-10-2----------------- ********* do as array

//Car myCar;
//Car nnCar;
//Car[] x = new Car[100];
//boolean mp = false;
//void setup() 
//{
//  size(480, 270);
//  myCar = new Car();
//}
//void draw() 
//{
//  background(255);
//  myCar.move();
//  myCar.display();
//  if(mp)    //when clicked
//  {
//    for(int i=0;i<x.length;i++)
//    {
//      if(x[i]!= null )
//      {
//        x[i].move();
//        x[i].display();
//      }
//      else
//      {
        
//      }
//    }
//  }
//}
//class Car 
//{
//  color c;
//  float xpos, ypos, xspeed;
//  Car()   
//  {
//    c = color(175);
//    xpos = width/2;
//    ypos = height/2;
//    xspeed = 1;
//  }
//  Car(int x , int y){
//    c = color(x-y,78,156);
//    xpos = x;
//    ypos = y;
//    xspeed = 1;
//  }
//  void display() 
//  {
//    rectMode(CENTER);
//    stroke(0);
//    fill(c);
//    rect(xpos, ypos, 20, 10);
//  }
//  void move()   
//  {
//    xpos = xpos + xspeed;
//    if (xpos > width) 
//    {  xpos = 0;  }
//  }
//}
//int count =0;
//void mousePressed()
//{ 
//  nnCar = new Car(mouseX,mouseY);
//  x[count] = nnCar ; 
//  count++;
//  mp=true; 
//}

//-----------------consult the given source code-------------------- **** do it 

//// A list of 4 floating point numbers
//float[] scores = new float[4];
//// A list of 100 Human objects
//Human[] people = new Human[100];
//// Using a variable to specify size
//int num = 50;
//Car[] cars = new Car[num];
//// Using an expression to specify size
//Spaceship[] ships = new Spaceship[num*2 + 3];

//--------------------3-11------------------- in AppenArray file

//--------------------4-1--------------------

//// "Hello World" images
//// Declaring a variable of type PImage
//// PImage is a class available from the Processing core library.
//PImage img;
//void setup() {
//size(512, 512);
//// Make a new instance of a PImage by loading an image file
//img = loadImage("Lenna.png");
//}
//void draw() {
//background(0);
//// The image() function displays the image at a location
//// in this case the point (0,0).
//image(img, 0, 0, width, height);
//}

//--------------------4-1-1------------------

//PImage img;
//void setup() 
//{
//  size(320, 240);
//  img = loadImage("Lenna.png");
//}
//void draw() 
//{
//  background(0);
//  image(img, 0, 0, width, height);
//}

//--------------------4-1-2------------------

//PImage img;
//void setup() 
//{
//  size(600,600);
//  img = loadImage("Lenna.png");
//}
//void draw() 
//{
//  background(0);
//  image(img, 0, 0, width, height);
//}

//--------------------4-1-3------------------



//--------------------4-1-4------------------



//--------------------4-2--------------------

//PImage lenna; // A variable for the image file
//float x,y; // Variables for image location
//float rot; // A variable for image rotation
//void setup() 
//{
//  size(1024,768);
//  lenna = loadImage("Lenna.png");  // Load image, initialize variables
//  x = 0.0;
//  y = width/2.0;
//  rot = 0.0;
//}
//  void draw() 
//{
//  background(255);
//  translate(x,y);  // Translate and rotate
//  rotate(rot);
//  // Images can be animated just like regular shapes 
//  //using variables, translate(), rotate(), and so on.
//  imageMode(CENTER);
//  image(lenna,0,0);
//  // Adjust variables for animation
//  x += 1.0;
//  rot += 0.02;
//  if (x > width+lenna.width) 
//  {
//    x = -lenna.width;
//  }
//  }

//--------------------4-3--------------------

//// Swapping images
//int maxImages = 10; // Total # of images
//int imageIndex = 0; // Initial image to be displayed is the first
//// Declaring an array of images.
//PImage[] images = new PImage[maxImages];
//void setup() {
//size(200, 200);
//// Loading the images into the array
//// Don't forget to put the JPG files in the data folder!
//for (int i = 0; i < images.length; i ++ ) {
//images[i] = loadImage( "animal" + i + ".jpg" );
//}
//}
//void draw() {
//// Displaying one image
//image(images[imageIndex], 0, 0);
//}
//void mousePressed() {
//// A new image is picked randomly when the mouse is clicked
//// Note the index to the array must be an integer!
//imageIndex = int(random(images.length));
//}


//--------------------4-3-1------------------

//// Swapping images
//boolean mp=false;
//int maxImages = 4; // Total # of images
//int imageIndex = 0; // Initial image to be displayed is the first
//// Declaring an array of images.
//PImage[] images = new PImage[maxImages];
//void setup() 
//{
//  size(200, 200);
//  // Loading the images into the array
//  // Don't forget to put the JPG files in the data folder!
//  for (int i = 0; i < images.length; i ++ ) 
//  {
//    images[i] = loadImage( "animal" + i + ".jpg" );
//  }
//}
//void draw() 
//{
//  image(images[imageIndex], 0, 0);  // Displaying one image
//  if(mp)
//  {
//    println("width: "+width+"  height: "+height);
//    mp=false;
//  }
//}
//void mousePressed() 
//{
//  // A new image is picked randomly when the mouse is clicked
//  // Note the index to the array must be an integer!
//  mp=true;
//  imageIndex = int(random(images.length));
//}

//--------------------4-3-2------------------

//// Swapping images
//boolean mp=false, kp=false;
//int maxImages = 4; // Total # of images
//int imageIndex = 0; // Initial image to be displayed is the first
//PImage[] images = new PImage[maxImages];  // Declaring an array of images.
//void setup() 
//{
//  size(200, 200);
//  for (int i = 0; i < images.length; i ++ ) 
//  {
//    images[i] = loadImage( "animal" + i + ".jpg" );
//  }
//}
//void draw() 
//{
//  image(images[imageIndex], 0, 0);  // Displaying one image
//  if(mp)
//  {
//    println("width: "+width+"  height: "+height);
//    mp=false;
//  }
//}
//void mousePressed() 
//{
//  mp=true;
//}
//void keyPressed()
//{
//  if(keyCode=='s' || keyCode=='S')
//  {
//    imageIndex = int(random(images.length));
//  }
//}

//--------------------4-4--------------------

//// Setting pixels
//size(200, 200);
//loadPixels();  // Before we deal with pixels
//for (int i = 0; i < pixels.length; i++ )  // Loop through every pixel
//{ 
//  // We can get the length of the pixels array just like with any array.
//  // Pick a random number, 0 to 255
//  float rand = random(255);
//  // Create a grayscale color based on random number
//  color c = color(rand);
//  // Set pixel at that location to random color
//  pixels[i] = c; 
//  // We can access individual elements of the pixels array via an index, 
//  //just like with any other array.
//}
//updatePixels();  // When we are finished dealing with pixels

//--------------------4-4-1------------------

//// Setting pixels
//size(200, 200);
//loadPixels();  
//for (int i = 0; i < pixels.length; i++ )  
//{ 
//  float rand = random(255);
//  float rand2 = random(255);
//  float rand3 = random(255);
//  color c = color(rand,rand2,rand3);
//  pixels[i] = c; 
//}
//updatePixels();  

//--------------------4-5--------------------

//// Setting pixels according to their 2D location
//size(200, 200);
//loadPixels();
//// Two loops allow us to visit every column (x) and every row (y).
//// Loop through every pixel column
//for (int x = 0; x < width; x++ ) 
//{
//  // Loop through every pixel row
//  for (int y = 0; y < height; y++ ) 
//  {
//    // Use the formula to find the 1D location
//    int loc = x + y * width;
//    if (x % 2 == 0)  // If even column
//    {
//      pixels[loc] = color(255);
//    } 
//    else  // If odd column
//    {
//      pixels[loc] = color(0);
//    }
//  }
//}
//updatePixels();

//--------------------4-6--------------------

//// Displaying the pixels of an image
//PImage img;
//void setup() 
//{
//  size(513, 513);
//  img = loadImage("Lenna.png");
//}
//  void draw() 
//  {
//  loadPixels();
//  img.loadPixels();
//  for (int y = 0; y < height; y++ ) 
//  {
//    for (int x = 0; x < width; x++ ) 
//    {
//    int loc = x + y*width;
//    float r = red(img.pixels [loc]);
//    float g = green(img.pixels[loc]);
//    float b = blue(img.pixels[loc]);
//    pixels[loc] = color(r, g, b);
//    }
//  }
//updatePixels();
//}

//--------------------4-7--------------------

//// Displaying the pixels of an image
//PImage img;
//void setup() 
//{
//  size(512, 512);
//  img = loadImage("Lenna.png");
//}
//void draw() 
//{
//  loadPixels();
//  img.loadPixels();
//  for (int y = 0; y < height; y++ ) 
//  {
//    for (int x = 0; x < width; x++ ) 
//    {
//      int loc = x + y*width;
//      float r = red(img.pixels [loc]);
//      float g = green(img.pixels[loc]);
//      float b = blue(img.pixels[loc]);
//      pixels[loc] = color(r, g, b);
//      float adjustBrightness = map(mouseX, 0, width,0, 8);
//      r *= adjustBrightness;
//      g *= adjustBrightness;
//      b *= adjustBrightness;
      
//      r = constrain(r, 0, 255);
//      g = constrain(g, 0, 255);
//      b = constrain(b, 0, 255);
//      color c = color(r, g, b);
//      pixels[loc] = c;
//    }
//  }
//  updatePixels();
//}

//--------------------4-8-------------------- UNDERSTAND IT

//--------------------4-9--------------------

//// Brightness threshold
//PImage source; // Source image
//PImage destination; // Destination image
//void setup() 
//{
//  size(512,512);
//  source = loadImage("Lenna.png");
//  destination = createImage(source.width, source.height, RGB);
//}
//void draw() 
//{
//  float threshold = 127;
//  source.loadPixels();  // We are going to look at both image's pixels
//  destination.loadPixels();
//  for (int x = 0; x < source.width; x++ ) 
//  {
//    for (int y = 0; y < source.height; y++ ) 
//    {
//      int loc = x + y*source.width;
//      // Test the brightness against the threshold
//      if (brightness(source.pixels[loc]) > threshold)  
//      {
//        destination.pixels[loc] = color(255); // White
//      } 
//      else 
//      {
//        destination.pixels[loc] = color(0); // Black
//      }
//    }
//  }
//  destination.updatePixels();    // We changed the pixels in destination
//  image(destination,0,0);  // Display the destination
//}

//--------------------4-9-1------------------

//PImage source; // Source image
//PImage destination; // Destination image
//void setup() 
//{
//  size(512,512);
//  source = loadImage("Lenna.png");
//  destination = createImage(source.width, source.height, RGB);
//}
//void draw() 
//{
//  float threshold = 180;
//  source.loadPixels();  // We are going to look at both image's pixels
//  destination.loadPixels();
//  for (int x = 0; x < source.width; x++ ) 
//  {
//    for (int y = 0; y < source.height; y++ ) 
//    {
//      int loc = x + y*source.width;
//      // Test the brightness against the threshold
//      if (brightness(source.pixels[loc]) > threshold)  
//      {
//        destination.pixels[loc] = color(255); // White
//      } 
//      else 
//      {
//        destination.pixels[loc] = color(0); // Black
//      }
//    }
//  }
//  destination.updatePixels();    // We changed the pixels in destination
//  image(destination,0,0);  // Display the destination
//}

//--------------------4-10-------------------

//// threshold with library filter
//PImage img;
//void setup() 
//{
//  size(512,512);
//  img = loadImage("Lenna.png");
//}
//void draw() 
//{
//  // Draw the image
//  image(img,0,0);
//  // Filter the window with a threshold effect
//  // 0.5 means threshold is 50% brightness
//  filter(THRESHOLD,0.8);
//}

//--------------------4-11-------------------

//task 4-11
//Sharpen with convolution
PImage img;
int w = 80;
//The convolution matrix for a "sharpen"effect stored as a 3 x 3 twodimensional array.
//float[][] matrix = { { -1, -1, -1 } ,
//                     { -1, 9, -1 } ,
//                     { -1, -1, -1 } } ;

/////////////////////////Simple Gaussian Blur////////////////////////
//float[][] matrix = { {0.0625,0.125,0.0625 } ,
//                     {0.125,0.25,0.125} ,
//                     {0.0625,0.125,0.0625} } ;
                     
/////////////////////////////Bottom Sobel////////////////////////////
//float[][] matrix = { { -1, -2, -1 } ,
//                     {  0,  0,  0 } ,
//                     {  1,  2,  1 } } ; 
                     
///////////////////////////Identity////////////////////////////
//float[][] matrix = { {  0,  0,  0 } ,
//                     {  0,  1,  0 } ,
//                     {  0,  0,  0 } } ;                      

/////////////////////////////Emboss////////////////////////////
//float[][] matrix = { { -2, -1,  0 } ,
//                     { -1,  1,  1 } ,
//                     {  0,  1,  2 } } ; 
                     
/////////////////////////////Left Sobel////////////////////////////
//float[][] matrix = { {  1,  0, -1 } ,
//                     {  2,  0, -2 } ,
//                     {  1,  0, -1 } } ;                      

/////////////////////////////Outline////////////////////////////
//float[][] matrix = { { -1, -1, -1 } ,
//                     { -1,  8, -1 } ,
//                     { -1, -1, -1 } } ;                      


/////////////////////////////Right Sobel////////////////////////////
//float[][] matrix = { { -1,  0,  1 } ,
//                     { -2,  0,  2 } ,
//                     { -1,  0,  1 } } ;                      

/////////////////////////////Sharpen////////////////////////////
//float[][] matrix = { {  0, -1,  0 } ,
//                     { -1,  5, -1 } ,
//                     {  0, -1,  0 } } ; 

/////////////////////////////Top Sobel////////////////////////////
//float[][] matrix = { {  1,  2,  1 } ,
//                     {  0,  0,  0 } ,
//                     { -1, -2, -1 } } ;                      


/////////////////////////////Edge detection////////////////////////////
//float[][] matrix = { {  0, -1,  0 } ,
//                     { -1,  4, -1 } ,
//                     {  0, -1,  0 } } ;                      


///////////////////////////////Laplacian of Gaussian ////////////////////////////
//float[][] matrix = { {  0,  0, -1,  0,  0 } ,
//                     {  0, -1, -2, -1,  0 } ,
//                     { -1, -2, 16, -2, -1 } ,
//                     {  0, -1, -2, -1,  0 } ,
//                     {  0,  0, -1,  0,  0 } };    

/////////////////////////////Gaussian Blur///////////////////////////////
//float[][] matrix = { {  0,  0,  0,  5,  0,  0,  0 } ,
//                     {  0,  5, 18, 32, 18,  5,  0 } ,
//                     {  0, 18, 64,100, 64, 18,  0 } , 
//                     {  5, 32,100,100,100, 32,  5 } ,
//                     {  0, 18, 64,100, 64, 18,  0 } ,
//                     {  0,  5, 18, 32, 18,  5,  0 } ,
//                     {  0,  0,  0,  5,  0,  0,  0 }};
             
//float[][] matrix = {
//          {0.00000067, 0.00002292,  0.00019117,  0.00038771,  0.00019117,  0.00002292,  0.00000067},
//          {0.00002292, 0.00078633,  0.00655965,  0.01330373,  0.00655965,  0.00078633,  0.00002292},
//          {0.00019117, 0.00655965,  0.05472157,  0.11098164,  0.05472157,  0.00655965,  0.00019117},
//          {0.00038771, 0.01330373,  0.11098164,  0.22508352,  0.11098164,  0.01330373,  0.00038771},
//          {0.00019117, 0.00655965,  0.05472157,  0.11098164,  0.05472157,  0.00655965,  0.00019117},
//          {0.00002292, 0.00078633,  0.00655965,  0.01330373,  0.00655965,  0.00078633,  0.00002292},
//          {0.00000067, 0.00002292,  0.00019117,  0.00038771,  0.00019117,  0.00002292,  0.00000067}};                     
//void setup() 
//{
//    size(512,512);
//    img = loadImage( "Lenna.png" );
//}
//void draw() 
//{
//    // We're only going to process a portion of the image
//    // so let's set the whole image as the background first
//    image(img,0,0);
//    // In this example we are only processing a section of the imagean 80 x 80 rectangle around the mouse location.
//    int xstart = constrain(mouseX-w/2,0,img.width);
//    int ystart = constrain(mouseY-w/2,0,img.height);
//    int xend = constrain(mouseX + w/2,0,img.width);
//    int yend = constrain(mouseY + w/2,0,img.height);
//    int matrixsize = matrix.length;
//    loadPixels();
//    // Begin our loop for every pixel
//    for (int x = xstart; x < xend; x++ ) 
//    {
//        for (int y = ystart; y < yend; y++ ) 
//        {
//            // Each pixel location (x,y) gets passed into a function called convolution()
//            // The convolution() function returns a new color to be displayed.
//            color c = convolution(x,y,matrix,matrixsize,img);
//            int loc = x + y*img.width;
//            pixels[loc] = c;
//        }
//    }
//    updatePixels();
//    stroke(0);
//    noFill();
//    rect(xstart,ystart,w,w);
//}

//color convolution(int x, int y, float[][] matrix, int matrixsize, PImage img) {
//    float rtotal = 0.0;
//    float gtotal = 0.0;
//    float btotal = 0.0;
//    int offset = matrixsize / 2;
//    // Loop through convolution matrix
//        for (int i = 0; i < matrixsize; i++ ) 
//        {
//            for (int j = 0; j < matrixsize; j++ ) 
//            {
//                // What pixel are we testing
//                int xloc = x + i-offset;
//                int yloc = y + j-offset;
//                int loc = xloc + img.width*yloc;
//                // Make sure we haven't walked off the edge of the pixel array
//                // It is often good when looking at neighboring pixels to make sure we have not gone off the edge of the pixel array by accident.
//                loc = constrain(loc,0,img.pixels.length-1);
//                // Calculate the convolution
//                // We sum all the neighboring pixels multiplied by the values in the convolution matrix.
//                rtotal += (red(img.pixels[loc]) * matrix[i][j]);
//                gtotal += (green(img.pixels[loc]) * matrix[i][j]);
//                btotal += (blue(img.pixels[loc]) * matrix[i][j]);
//            }
//        }
//    return color(rtotal,gtotal,btotal);
//}

//--------------------4-12-------------------

//// "Pointillism"
//PImage img;
//int pointillize = 16;
//void setup() 
//{
//  size(200,200);
//  img = loadImage("Lenna.png");
//  background(255);
//  smooth();
//}
//void draw() 
//{
//  // Pick a random point
//  int x = int(random(img.width));
//  int y = int(random(img.height));
//  int loc = x + y*img.width;
//  // Look up the RGB color in the source image
//  loadPixels();
//  float r = red(img.pixels[loc]);
//  float g = green(img.pixels[loc]);
//  float b = blue(img.pixels[loc]);
//  noStroke();
//  // Back to shapes! Instead of setting a pixel, we use the color
//  // from a pixel to draw a circle.
//  fill(r,g,b,100);
//  ellipse(x,y,pointillize,pointillize);
//}

//---------------Challenge-1----------------- change something when mousePressed

//boolean mp=false;
//void setup() 
//{  
//  size(480, 270);  
//  background(255);
//}

//void draw() 
//{
//  ellipseMode(CENTER);
//  if(mp)
//  {
//     fill(255,200,55);
//     ellipse(240, 115, 90, 90);
//  }
//  else
//  {
//     fill(255);
//    ellipse(240, 115, 90, 90);
//  }
//}
//void mousePressed()
//{
//  mp=true;
//}

//---------------Challenge-2----------------- show location of mouseX, mouseY

//void setup()
//{
//  size(480, 270);
//}
//void draw() 
//{
//  println("x : "+mouseX+"  y : "+mouseY);
//}

//---------------Challenge-3----------------- see whole ball when bouncing from left to right

//int x = 40;
//int speed = 2;
//void setup()
//{
//  size(480, 270);
//}
//void draw() 
//{
//  background(255);
//  x = x + speed;
//  if ((x < 40) || (x > width-40)) 
//  {
//    speed = speed * -1;
//  }
//  stroke(0);
//  fill(0,255,0);
//  ellipse(x,100,80,80);
//}
