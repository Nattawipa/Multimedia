// Scrubbing forward and backward in movie

// If mouseX is 0, go to beginning
// If mouseX is width, go to end
// And everything else scrub in between

import processing.video.*;

Movie movie;

void setup() {
  size(360, 360);
  movie = new Movie(this, "videoplayback.mp4");
  // Plays a movie one time and stops at the last frame
  movie.play();
}

void mousePressed()
{
  // Ratio of mouse X over width
  float ratio = mouseX / (float) width;

  // The jump() function allows you to jump immediately to a point of time within the video. 
  // duration() returns the total length of the movie in seconds.  
  movie.jump(ratio * movie.duration()); 
  // call play() again to start playing after jump the pointer
  movie.play();
}

void draw() {
  // Display frame
  image(movie, 0, 0);
}

void movieEvent(Movie m) {
    // Read frame
    movie.read(); 
}
