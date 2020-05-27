ShapeSystem shapeSystem;

void setup(){
  size(512, 512);
  frameRate(6);
  background(0);
  shapeSystem = new ShapeSystem();
  //shapeSystem.createDummyBaseShape(20);
}
boolean click = false;
boolean clear = false;
boolean rec = false;
boolean cir = false;

void draw()
{
  // TODO: Reset background and draw the shapes
  fill(204,255,255);
  rect(10,10,90,40,5);
  
  fill(255,255,204);
  rect(120,10,90,40,5);
  
  fill(255,204,299);
  rect(230,10,90,40,5);
  
  fill(255,229,204);
  rect(340,10,90,40,5);
  
  fill(229,255,204);
  rect(10,460,90,40,5);
  
  textSize(20);
  
  fill(0);
  text("Generate", 11, 35);
  text("Clear", 140, 35);
  text("Square", 243, 35);
  text("Circle", 355, 35);
  text("Delete", 24, 485);
  noStroke();
  if(click == true) //if click will generate 40 shape
  {
    fill(random(0,255),random(0,255),random(0,255));
    stroke(255);
   
    click = false;
    shapeSystem.createDummyAnyShape(40); //create 40 shapes
    shapeSystem.render(); 
  }
  if(clear == true)
  {
    background(0);
    shapeSystem.removeAllShapes();
    clear = false;
  }
  
}
void mousePressed() 
{
  stroke(255);
  fill(random(0,255),random(0,255),random(0,255)); //fill of random image
  if (mouseX > 10 && mouseX < 100 && mouseY > 10 && mouseY < 50) //generate
  {
    click  = true;
  } 
  else if(mouseX > 120 && mouseX < 210 && mouseY >10 && mouseY < 50 ) //clear 
  {
    clear = true;
  }
  else if(mouseX > 340 && mouseX < 430 && mouseY > 10 && mouseY < 50) //circle
  {
    shapeSystem.addCircle();
    shapeSystem.render();
  }
  else if(mouseX > 230 && mouseX < 320 && mouseY >10 && mouseY < 50) //rectangle
  {
    shapeSystem.addRectangle();
    shapeSystem.render();
  }
  else if(mouseX > 10 && mouseX < 100 && mouseY >460 && mouseY < 500) //delete
  {
    println(mouseX,mouseY);
    shapeSystem.removeLastShape();
    background(0);
    shapeSystem.render();
  }
}
void keyPressed()
{
  if ( key == 's' )
  {
    save ("outputImage.png");
    shapeSystem.doSaveJSONArray("outputData");
  }
  if ( key == 'l' )
  {
    shapeSystem.doLoadJSONArray("outputData");
  }
}
