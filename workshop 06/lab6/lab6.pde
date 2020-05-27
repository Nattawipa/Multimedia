//-------------------------TASK 1-------------------------

//// Display video

//import processing.video.*;  // Step 1. Import the video library
//Capture video;  // Step 2. Declare a Capture object

//void setup() 
//{
//  size(320, 240);
//  printArray(Capture.list());

//  // Step 3. Initialize Capture object via Constructor
//  // Use the default camera at 320x240 resolution
//  video = new Capture(this, 640, 360);
//  video.start();
//}

//// An event for when a new frame is available
//void captureEvent(Capture video) 
//{
//  video.read();  // Step 4. Read the image from the camera.
//}

//void draw() 
//{
//  image(video, 0, 0);  // Step 5. Display the video image.
//}

//-------------------------TASK 2-------------------------

//// Manipulate video image

//// Step 1. Import the video library
//import processing.video.*;

//Capture video;

//void setup() {
//  size(640, 480);
//  video = new Capture(this, 640, 480);
//  video.start();
//}

//void captureEvent(Capture video) {
//  video.read();
//}

//void draw() {
//  background(255);

//  // Tinting using mouse location
//  tint(mouseX, mouseY, 255);

//  // A video image can also be moved, rotated, tinted, resized just as with a PImage.
//  translate(width/2,height/2);
//  imageMode(CENTER);
//  rotate(PI/4);
//  image(video, 0, 0, mouseX, mouseY);
//}

//-------------------------TASK 3-------------------------

//// Adjust video brightness

//// Step 1. Import the video library
//import processing.video.*;

//// Step 2. Declare a Capture object
//Capture video;

//void setup() {
//  size(640, 480);

//  // Step 3. Initialize Capture object via Constructor
//  video = new Capture(this, 640, 480); 
//  video.start();
//}

//// An event for when a new frame is available
//void captureEvent(Capture video) {
//  // Step 4. Read the image from the camera.
//  video.read();
//}
//void draw() {

//  loadPixels();
//  video.loadPixels();

//  for (int x = 0; x < video.width; x++) {
//    for (int y = 0; y < video.height; y++) {

//      // Calculate the 1D location from a 2D grid
//      int loc = x + y*video.width;

//      // Get the R,G,B values from image
//      float r, g, b;
//      r = red  (video.pixels[loc]);
//      g = green(video.pixels[loc]);
//      b = blue (video.pixels[loc]);

//      // Calculate an amount to change brightness based on proximity to the mouse
//      float d = dist(x, y, mouseX, mouseY);
//      float adjustbrightness = map(d, 0, 100, 4, 0);
//      r *= adjustbrightness;
//      g *= adjustbrightness;
//      b *= adjustbrightness;

//      // Constrain RGB to make sure they are within 0-255 color range
//      r = constrain(r, 0, 255);
//      g = constrain(g, 0, 255);
//      b = constrain(b, 0, 255);

//      // Make a new color and set pixel in the window
//      color c = color(r, g, b);
//      pixels[loc] = c;
//    }
//  }
//  updatePixels();
//}

//-------------------------TASK 4-------------------------

//// Display QuickTime movie

//import processing.video.*;

//// Step 1. Declare Movie object
//Movie movie; 

//void setup() {
//  size(360, 360);

//  // Step 2. Initialize Movie object
//  // Movie file should be in data folder
//  movie = new Movie(this, "videoplayback.mp4"); 

//  // Step 3. Start movie playing
//  movie.loop();
//}

//// Step 4. Read new frames from movie
//void movieEvent(Movie movie) {
//  movie.read();
//}

//void draw() {
//  // Step 5. Display movie.
//  image(movie, 0, 0);
//}

//-------------------------TASK 5-------------------------

//-------------------------TASK 6-------------------------

//-------------------------TASK 7-------------------------

//-------------------------TASK 8-------------------------

//-------------------------TASK 9-------------------------

//------------------------TASK 10-------------------------

//------------------------TASK 11-------------------------

//------------------------TASK 12-------------------------

//------------------------TASK 13-------------------------

//------------------------TASK 14-------------------------

//------------------------TASK 15-------------------------
