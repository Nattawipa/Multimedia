// Scribble Mirror

import processing.video.*;

// Two global variables
float x;
float y;

// Variable to hold onto Capture object
Movie video;

void setup() {
  size(360, 360);
  background(255);
  
  // Start x and y in the center
  x = width/2;
  y = height/2;
  
  video = new Movie(this, "videoplayback.mp4");
  video.loop();
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  video.read();
}

void mousePressed() {
  video.pause();  // Pause Video
}

void mouseReleased() {
  video.loop(); // Continue Video
}

void keyPressed()
{
  if (key == 's' || key == 'S') {
    println("Saved the frame out");
    println("Video size = (" + video.width + ", " + video.height + ")");
    PImage currentFrame = video.get();
    // Save the original current frame from video
    currentFrame.save("currentFrame.png");
    // Save the displayed current frame
    saveFrame("displayedFrame-######.png");
  }
}


void draw() {


  video.loadPixels();
  // Pisit: Why do have to check the pixels array length?
  if (video.pixels.length <= 0 ) return;
  if (mousePressed) return; // Pause mechanic
  
  // Pick a new x and y
  float newx = constrain(x + random(-20, 20), 0, width-1);
  float newy = constrain(y + random(-20, 20), 0, height-1);
  
  // Find the midpoint of the line
  int midx = int((newx + x) / 2);
  int midy = int((newy + y) / 2);

  // Pick the color from the video, reversing x
  color c = video.pixels[(width-1-midx) + midy*video.width];

  // Draw a line from x,y to the newx,newy
  stroke(c);
  strokeWeight(4);
  line(x, y, newx, newy);

  // Save newx, newy in x,y
  x = newx;
  y = newy;
}