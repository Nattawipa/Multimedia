// Brightness Mirror

import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 8;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto Capture object
Movie video;

void setup() {
  size(360, 360);

  // Initialize columns and rows
  cols = width / videoScale;
  rows = height / videoScale;
  video = new Movie(this, "videoplayback.mp4");
  println(video.height + ", " + video.width);
  video.play();
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  video.read();
}

void mousePressed() {
  video.pause();  // Pause Video
}

void mouseReleased() {
  video.play(); // Continue Video
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
  background(0);

  video.loadPixels();
  // Pisit: Why do have to check the pixels array length?
  if (video.pixels.length <= 0 ) return;
  
  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Where are we, pixel-wise?
      int x = i * videoScale;
      int y = j * videoScale;

      // Reversing x to mirror the image
      // In order to mirror the image, the column is reversed with the following formula:
      // mirrored column = width - column - 1
      int loc = (video.width - x - 1) + y*video.width;

      // Each rect is colored white with a size determined by brightness
      color c = video.pixels[loc];

      // A rectangle size is calculated as a function of the pixel's brightness. 
      // A bright pixel is a large rectangle, and a dark pixel is a small one.
      float sz = (brightness(c)/255)*videoScale; 
      rectMode(CENTER);
      fill(255);
      //fill(c); // If you want original color
      noStroke();
      //stroke(0); // If  you want border pixelate
      rect(x + videoScale/2, y + videoScale/2, sz, sz);
      //rect(x, y, videoScale, videoScale); // If you want simple pixelate
    }
  }
}
