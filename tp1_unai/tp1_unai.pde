PImage img;

void setup(){
  background(#5394FA);
  size(800,400);
  img = loadImage("cubismo.jpg");
}

void draw(){
  println("X");
  println(mouseX);
   println("Y");
   println(mouseY);
  image(img,0,0,400,400);
  fill(#BC0407);
   stroke(0);
  quad(485,401,459,263,500,265,520,401);
  fill(#BEE7E8);
  ellipse(626,296,240,100);
  line(588,248,596,199);
  line(661,245,654,187);
  stroke(#BEE7E8);
   quad(590,254,662,258,652,181,594,194);
   stroke(#BC0407);
   fill(#BC0407);
  bezier(496,264,554,274,589,295,627,333);
  bezier(627,334,659,303,704,279,749,270);
  stroke(#BC0407);
  line(502,267,625,335);
  quad(501,266,627,335,618,401,520,401);
quad(751,268,734,401,618,401,626,332);
 stroke(0);
quad(783,252,749,267,734,401,760,401);
fill(0);
triangle(514,203,626,208,565,98);
triangle(608,70,684,169,710,68);
fill(#BEE7E8);
ellipse(623,138,140,140);
fill(#BC0407);
triangle(598,204,623,208,610,190);
fill(#BEE7E8);
bezier(619,131,613,100,654,96,685,105);
bezier(613,121,613,90,575,101,560,105);
fill(#BC0407);
stroke(#BC0407);
quad(547,288,628,332,622,345,530,304);
stroke(0);
fill(#BEE7E8);
ellipse(610,186,30,10);
line(595,186,625,186);
triangle(598,172,625,172,617,110);
stroke(#BEE7E8);
quad(621,110,614,110,614,120,619,123);
stroke(0);
line(620,124,622,115);
fill(225);
ellipse(585,115,55,20);
ellipse(653,116,55,20);
fill(#98F0F2);
ellipse(585,117,18,18);
fill(0);
ellipse(585,117,8,8);
line(609,109,563,108);
fill(#7DED78);
ellipse(653,118,15,15);
fill(0);
line(632,109,678,110);
ellipse(653,118,8,8);
fill(#076BE3);
quad(668,62,653,0,542,22,578,93);
fill(#FA6251);
quad(406,133,793,55,778,30,410,118);

}
