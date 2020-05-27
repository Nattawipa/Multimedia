void Experiment8()
{
  //-------------------------ALPHA------------------------
  //PImage imgF1 = loadImage("bluema.png");
  //PImage imgF2 = loadImage("bpinkma.png");
  //PImage imgB1 = loadImage("bgblue.png");
  //PImage imgB2 = loadImage("bgpink.png");
  //int refWidth = imgF1.width;
  //int refHeight = imgF1.height;
  ////imgF1.resize(imgF1.width,imgF1.height);
  ////println(imgF2.width +" "+imgF2.height);
  //imgF2.resize(refWidth, refHeight); 
  //imgB1.resize(refWidth, refHeight);
  //imgB2.resize(refWidth, refHeight);
  //imgF1.loadPixels(); imgF2.loadPixels(); 
  //imgB1.loadPixels(); imgB2.loadPixels();
  //PImage imgAlpha = createImage(refWidth, refHeight, ALPHA);
  //for(int i = 0 ; i < refWidth * refHeight; i++){
  //  float Rf1 = red(imgF1.pixels[i]);
  //  float Gf1 = green(imgF1.pixels[i]);
  //  float Bf1 = blue(imgF1.pixels[i]);
    
  //  float Rf2 = red(imgF2.pixels[i]);
  //  float Gf2 = green(imgF2.pixels[i]);
  //  float Bf2 = blue(imgF2.pixels[i]);
    
  //  float Rb1 = red(imgB1.pixels[i]);
  //  float Gb1 = green(imgB1.pixels[i]);
  //  float Bb1 = blue(imgB1.pixels[i]);
    
  //  float Rb2 = red(imgB2.pixels[i]);
  //  float Gb2 = green(imgB2.pixels[i]);
  //  float Bb2 = blue(imgB2.pixels[i]);
    
  //  float a;
  //  float divider = pow(Rb1 - Rb2, 2) +
  //    pow(Gb1 - Gb2, 2) + pow(Bb1 - Bb2, 2);
      
  //  if(divider == 0) { a = 0;  }
    
  //  a = 1 - ((Rf1 - Rf2)*(Rb1 - Rb2) + 
  //    (Gf1 - Gf2)*(Gb1 - Gb2) + (Bf1 - Bf2)*(Bb1 - Bb2))/ divider;
      
  //  // !important Makre sure a is within 0-1.0 only
  //  a = constrain(a, 0.0, 1.0);
    
  //  imgAlpha.pixels[i] = color( a * 255.0);  
  //}
  //imgAlpha.updatePixels(); 
  //imgAlpha.save("ExperThis Experiment is iment8_alpha.png");
  //imgAlpha.resize(width,0); image(imgAlpha, 0, 0); 
  
  //-------------------------SPRITE------------------------
  
  PImage imgCf;  // Composited foreground
  PImage imgAlpha; // Alpha of the foreground in greyscale
  PImage imgC0;  // UncompositedForeground

  imgCf = loadImage("bpinkma.png");
  imgAlpha = loadImage("Experiment8_alpha.png");

  imgC0 = createImage(imgCf.width, imgCf.height, ARGB);
  
  imgCf.loadPixels();
  imgAlpha.loadPixels();
  imgC0.loadPixels();

  for (int i=0; i < imgCf.width * imgCf.height; i++)
  {
    float Cf_red = red( imgCf.pixels[i] );
    float Cf_green = green( imgCf.pixels[i] );
    float Cf_blue = blue( imgCf.pixels[i] );
    
    // !important Makre sure a is within 0-1.0 only
    float a = constrain( brightness(imgAlpha.pixels[i])/255.0, 0, 1);
    color C0_color = color(
      Cf_red,
      Cf_green,
      Cf_blue,
      a *  255 //Opacity = alpha
    );
    imgC0.pixels[i] = C0_color;
  }
  imgC0.updatePixels();
  imgC0.save("Experiment8_sprite.png");
  //imgC0.resize(width, 0);
        //image(imgC0, 0, 0, width, imgC0.height);
}
