//Simone Cimolato, 14/12/2017

void setup() {
  size(1000, 1000);
  background(0);
  noLoop();
}

void draw() {
  int x;
  int y;
  
  //grid density
  int lines = 20;
  
  //pixels between axes and the window's border
  int start = 5;

  //grid's settings
  strokeWeight(0.45);
  stroke(255,255,0);
  
  //axes
  line(start, start, start, height);
  line(start, start, width, start);
  
  //drawing the grid
  for(int i = start; i <= width; i+=(width/lines)) {
      line(i, start, i, height);
  }
  for(int j = start; j <= width; j+=(width/lines)) {
      line(start, j, width, j);
  }
  
  //points' settings
  stroke(255);
  strokeWeight(3);
  
  //how many points to plot
  int points = 500;
  
  //zooming
  int scale = points/50;
  
  for (x = 0; x < points; x++) {
      for (y = 0; y < points; y++) {
          //where the magic happens.
          point((x*x - y*y)/scale, (2*x*y)/scale);
      }
      
  }
}