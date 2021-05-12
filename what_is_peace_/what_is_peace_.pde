/* 

   Credits to Processing Foundation and Daniel Shiffman for 
   Strings and Drawing Text Tutorial.

   https://processing.org/tutorials/text/
  
*/

PFont font;
String message = "What is...peace?";
Letter[] letters;

void setup(){
  size(1200, 480);
  pixelDensity(displayDensity());
  font = createFont("Arial", 40, true);
  textFont(font);
  letters = new Letter[message.length()];
  int x = width/2 - 40;
  int y = height/2;
  for (int i = 0; i < message.length(); i++) {
    letters[i] = new Letter(x, y, message.charAt(i));
    x += textWidth(message.charAt(i));
  }
}

void draw(){
  background(255);
  textAlign(CENTER);
  for (int i = 0; i < letters.length; i++) {
    // Display all letters
    letters[i].display();
    
    // If the mouse is pressed the letters shake
    // If not, they return to their original location
    if (mousePressed) {
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }
}
