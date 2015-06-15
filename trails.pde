/**
 * trails  
 * by sarah howorka  
 * 
 * a simple sketch that loads a quicktime file and leaves 
 * "trails" behind moving objects in the video by blending 
 * frames on top of each other. 
 */

import processing.video.*;

Movie mov;

void setup() {
  size(1920, 1080);
  mov = new Movie(this, "***your-video-filename***.mov");
  mov.loop();
}

void draw() {
  if (mov.available() == true) {
    mov.read();
    
    // leave dark trails:
    blend(mov, 0, 0, width, height, 0, 0, width, height, DARKEST);
    
    // leave light trails:
    // blend(mov, 0, 0, width, height, 0, 0, width, height, LIGHTEST);
     
    // use safeFrame() to save each frame (e.g. if you want to make
    // a video from your Processing output)
    // saveFrame();
  }
  
}
