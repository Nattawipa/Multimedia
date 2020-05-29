// Resizing an array using append()
Ball[] balls = new Ball[1]; // We startwith an array with just one element.
float gravity = 0.1;
void setup() 
{
  size(480, 270);
  balls[0] = new Ball(50, 0, 24);  // Initialize ball index 0
}
void draw() 
{
  background(255);
  // Whatever the length of that array,
  // update and display all of the objects.
  for (int i = 0; i < balls.length; i++ ) 
  {
    balls[i].gravity();
    balls[i].move();
    balls[i].display();
  }
}
void mousePressed() 
{
  // A new ball object
  Ball b = new Ball(mouseX, mouseY, 24);
  balls = (Ball[]) append(balls, b);
}
void keyPressed()
{
  if(key == 'c' || key == 'C')
  {
    for(Ball i : balls)
    balls = (Ball[]) shorten(balls);
  }
}
