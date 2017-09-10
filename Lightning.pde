int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  strokeWeight(2);
  background(0, 0, 0);
  size(300, 300);
}
void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endX < 301)
  {
    if(Math.random() < 0.5)
    {
      endY = startY + (int)(Math.random()*10);
    }
    else
    {
      endY = startY - (int)(Math.random()*10);
    }
    endX = startX + (int)(Math.random()*10);
    line(startX, startY, endX, endY);
    line(startX, startY + 25, endX, endY + 25);
    line(startX, startY - 25, endX, endY - 25);
    line(startX, startY + 50, endX, endY + 50);
    line(startX, startY - 50, endX, endY - 50);
    line(startX, startY + 75, endX, endY + 75);
    line(startX, startY - 75, endX, endY - 75);
    fill(192, 192, 192);
    rect(0, 0, 20, 300, 200);
    rect(280, 0, 20, 300, 100);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  background(0, 0, 0);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}