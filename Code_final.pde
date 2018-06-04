import processing.pdf.*;
boolean record;
boolean contains;
char letter;
PImage img;
color c1 = #404040;
color c2 = #7B5B6C;
color c3 = #B58590;
color c4 = #CCA6B4;
color c5 = #F0C4E7;
import processing.video.*;
Capture cam;
String words = "";
String words2 = "Type your feelings. Press enter to erase. Mousepress to capture.";
String str1 = "happy";
String str1_1 = "ecstatic";
String str1_2 = "good", str1_3 = "blessed", str1_4 = "chipper", str1_5 = "pleasant", str1_6 = "lively", str1_7 = "cheerful", str1_8 = "gay", str1_9 = "energized", str1_10 = "lively";
String str2 = "sad", str2_2 = "bad", str2_3 = "depressed", str2_4 = "low", str2_5 = "upset", str2_6 = "down in the dumps", str2_7 = "down", str2_8 = "blue", str2_9 = "bitter", str2_10 = "tired";
String str3 = "stressed", str3_1 = "traumatized", str3_2 = "worried";
String str4 = "angry", str4_1 = "annoyed", str4_2 = "bitter", str4_3 = "enraged", str4_4 = "furious", str4_5 = "offended", str4_6 = "outraged";
String str5 = "scared", str5_1 = "anxious", str5_2 = "anxiety", str5_3 = "fear", str5_4 = "panic", str5_5 = "panicking", str5_6 = "terrified", str5_7 = "terror";
String str6 = "rage";
String str7 = "joy";
String str8 = "content", str8_1 = "calm", str8_2 = "zen", str8_3="peace", str8_4 = "cool", str8_5 = "low-key", str8_6 = "smooth";
String str9 = "excited", str9_1 = "delighted", str9_2 = "hysterical", str9_3 = "thrilled", str9_4 = "aroused", str9_5 = "charged";
String str10 = "jealous"; 
boolean b = words.contains(str1);
boolean b2 = words.contains(str2);
boolean b3 = words.contains(str3);
boolean b4 = words.contains(str4);
boolean b5 = words.contains(str5);
boolean b6 = words.contains(str6);
boolean b7 = words.contains(str7);
boolean b8 = words.contains(str8);
boolean b9 = words.contains(str9);

void setup() {
  //fullScreen();
  size(1920, 1681);
  textFont(createFont("Montserrat-ExtraLightItalic.ttf", 36));
  //beginRecord(PDF, "0.pdf");
  frameRate(60);
  //img = loadImage("4.jpg");
  noStroke();
  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();
}

void draw() {
  if (record) {
    beginRecord(PDF, "portrait-####.pdf");
  }
  noStroke();
  cam.read();
  
  image(cam, 0, 0, width, height);
  background(255);
  int widthStep = 8;
  int heightStep = 8;
    //translate(width/2-1000, height/2-1000);
  scale(3);

  for (int i = 0; i < cam.width; i+=widthStep) {
    for (int j = 0; j < cam.height; j+=heightStep) {
      color c = cam.get(i, j);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      float brightness = (r+g+b)/3;
      float s = map(brightness, 0, 255, 0, 8);
      //println (195, 984);
      //println(mouseX, mouseY);2843 1524
      color c1 = #ED5276;
      color c2 = #F57A82;
      color c3 = #F4CDA5;
      color c4 = #5DB5A4;
      color c5 = #3C989E;
      if (words.contains(str1) == true || words.contains(str7) == true || words.contains(str1_1) == true || words.contains(str1_2) == true ||
          words.contains(str1_3) == true || words.contains(str1_4) == true || words.contains(str1_5) == true ||
          words.contains(str1_6) == true || words.contains(str1_7) == true || words.contains(str1_8) == true ||
          words.contains(str1_9) == true || words.contains(str1_10) == true) {
        c1 = #065DD6;
        c2 = #F5E215;
        c3 = #F4CB15;
        c4 = #F07D18;
        c5 = #F46D2F;
      }
      if (words.contains(str2) == true || words.contains(str2_2) == true || 
          words.contains(str2_3) == true ||words.contains(str2_4) == true ||words.contains(str2_5) == true ||
          words.contains(str2_6) == true ||words.contains(str2_7) == true ||words.contains(str2_8) == true ||
          words.contains(str2_9) == true ||words.contains(str2_10) == true) {
        c1 = #FCFFF5;
        c2 = #D1DBBD;
        c3 = #91AA9D;
        c4 = #3E606F;
        c5 = #193441;
      }
      if (words.contains(str3) == true || words.contains(str3_1) == true || words.contains(str3_2) == true) {
        c1 = color(242, 34, 72, random(0, 255));
        c2 = color(53, 63, 140, random(0, 255));
        c3 = color(13, 13, 13, random(0, 255));
        c4 = color(242, 176, 53, random(0, 255));
        c5 = color(217, 37, 37, random(0, 255));
      }
      if (words.contains(str4) == true || words.contains(str6) == true ||
          words.contains(str4_1) == true || words.contains(str4_2) == true ||
          words.contains(str4_3) == true || words.contains(str4_4) == true ||
          words.contains(str4_5) == true || words.contains(str4_6) == true){
        c1 = #F0433A;
        c2 = #C9283E;
        c3 = #820333;
        c4 = #540032;
        c5 = #2E112D;
      }
      if (words.contains(str5) == true || words.contains(str5_1) == true || words.contains(str5_2) == true ||
          words.contains(str5_3) == true || words.contains(str5_4) == true ||
          words.contains(str5_5) == true || words.contains(str5_6) == true || words.contains(str5_7) == true) {
        c1 = #BFBFBF;
        c2 = #59321B;
        c3 = #260F02;
        c4 = #081826;
        c5 = #0D2340;
      }
      if (words.contains(str8) == true || words.contains(str8_1) == true ||
          words.contains(str8_2) == true || words.contains(str8_3) == true || 
          words.contains(str8_4) == true || words.contains(str8_5) == true ||
          words.contains(str8_6) == true){
        c1 = #6CBDBD;
        c2 = #53A2AB;
        c3 = #4997A5;
        c4 = #2F7A92;
        c5 = #226C8A;
      }
      if (words.contains(str9) == true || words.contains(str9_1) == true ||
          words.contains(str9_2) == true || words.contains(str9_3) == true ||
          words.contains(str9_4) == true || words.contains(str9_5) == true){
        c1 = #F0B90C;
        c2 = #F38C13;
        c3 = #F35B05;
        c4 = #BF2803;
        c5 = #720502;
      }
      if (words.contains(str10) == true) {
        c1 = #F0C4E7;
        c2 = #CCA6B4;
        c3 = #B58590;
        c4 = #7B5B6C;
        c5 = #404040;
      }
      fill(c);

      if (brightness <= 51) {
        //ellipseMode(CENTER);
        fill(c1);
        rect(i+s, j+s, 8-s, 8-s);
      } else if (brightness <= 153 && brightness >= 51) {
        fill(c2);
        ellipse (i+4+s/2, j+4+s/2, 8-s, 8-s);
      } else if (brightness <= 153 && brightness >= 102) {
        fill(c3);
        ellipse (i+4+s, j+4+s, 8-s, 8-s);
      } else if (brightness <= 204 && brightness >= 153) {
        fill(c4);
        //arc (i+6, j+12, 12, 12, PI, TWO_PI);
        arc (i+5, j+5, 4, 4, PI, TWO_PI);
      } else if (brightness <= 255 && brightness >= 204) {
        fill(c5);
        triangleSimple (i, j+10, 4, 4);
      }
    }
  }
  fill(#CCA6B4);
  textSize(50);
  text(words, 06, 523);
  fill(0);
  textSize(20);
  text(words2, 16, 553);
  if (record) {
    endRecord();
    saveFrame("portrait-####.jpg");
    record = false;
  }
}
void triangleSimple(float x, float y, float w, float h) {
  // A wrapper for standard triangle() command. 
  // triangleSimple has the lower left corner as x,y 
  triangle(x, y, 
    x+w/2, y-h, 
    x+w, y);
}
void mousePressed() {
  record = true;
}
void keyTyped() {
  if ((key>='A' && key <= 'z') || key == ' ') {
    letter = key;
    words = words + letter;
    println(key);
  }
  if (key == ENTER) {
    words = " ";
  }
}