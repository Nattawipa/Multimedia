//---------Challenge-for-Week3---------------

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
