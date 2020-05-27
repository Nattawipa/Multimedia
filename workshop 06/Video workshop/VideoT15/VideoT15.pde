// Overall motion

import processing.video.*;

// Variable for capture device
Movie movie;
// Previous Frame
PImage prevFrame;

// How different must a pixel be to be a "motion" pixel
float threshold = 50;


void setup() {
  size(360, 360);
  // Using the default capture device
  movie = new Movie(this,"videoplayback.mp4");
  movie.play();
  // Create an empty image the same size as the video
  prevFrame = createImage(width,height, RGB);
  movie.loop();
}

// New frame available from camera
void movieEvent(Movie movie) {
  // Save previous frame for motion detection!!
  prevFrame.copy(movie, 0, 0, movie.width, movie.height, 0, 0, movie.width, movie.height);
  prevFrame.updatePixels();
  movie.read();
}

void draw() {
  background(0);

  // You don't need to display it to analyze it!
  image(movie, 0, 0);

  movie.loadPixels();
  prevFrame.loadPixels();

  // Begin loop to walk through every pixel
  // Start with a total of 0
  float totalMotion = 0;

  // Sum the brightness of each pixel
  for (int i = 0; i < movie.pixels.length; i ++ ) {
    // Step 2, what is the current color
    color current = movie.pixels[i];

    // Step 3, what is the previous color
    color previous = prevFrame.pixels[i];

    // Step 4, compare colors (previous vs. current)
    float r1 = red(current); 
    float g1 = green(current);
    float b1 = blue(current);
    float r2 = red(previous); 
    float g2 = green(previous);
    float b2 = blue(previous);

    // Motion for an individual pixel is the difference between the previous color and current color.
    float diff = dist(r1, g1, b1, r2, g2, b2);
    // totalMotion is the sum of all color differences. 
    totalMotion += diff;
  }

  // averageMotion is total motion divided by the number of pixels analyzed.
  float avgMotion = totalMotion / movie.pixels.length; 

  // Draw a circle based on average motion
  strokeWeight(3);
  fill(random(255), random(255), random(255));
  float r = avgMotion * 2;
  ellipse(width/2, height/2, r, r);
}
