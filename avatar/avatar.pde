String alphabet[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}; 
//Random background colors or constant one;
//If constant, set the desired color as the first color of the `colors` array
Boolean randomBackground = true;
//Colors for the background
color colors[] = {#e03f3f, #e0a23f, #3fe072, #3fbae0, #543fe0, #e03f75};
//Relative path to save the avatars
String path = "./avatares/";
//Font name (with extension)
String fontName = "";
String curr = "";
int imageSize = 150;
PFont font;

void setup() {
  //Set the same value as size
  size(150, 150);
  
  if (fontName != "") {
    font = createFont(fontName, imageSize / 2);
    textFont(font);
  } else {
    textSize(imageSize / 2);
  }
  
  textAlign(CENTER, CENTER);
}

void draw() {
  for(int i = 0; i < alphabet.length; i++) {
    for(int j = 0; j < alphabet.length; j++) {
        curr = alphabet[i] + alphabet[j];
        setBackground(randomBackground);
        displayText(curr);
        saveImage(path, curr);   
    }
  }

  noLoop();
}

void setBackground(Boolean random) {
  int index;

  if (random) {
    index = int(random(colors.length));
  } else {
    index = 0;
  }

  background(colors[index]);
}

void displayText(String name) {
  fill(255);
  text(name, imageSize / 2, imageSize / 2 - 10);
}

void saveImage(String pathname, String filename) {
  save(pathname + filename + ".png");
}