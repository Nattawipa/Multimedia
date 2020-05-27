// Video pixelation by playback movie

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
      // Looking up the appropriate color in the pixel array
      color c = video.pixels[x + y * video.width];
      fill(c);
      stroke(0);
      rect(x, y, videoScale, videoScale);
    }
  }
}
