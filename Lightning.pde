int startX = mouseX;
int startY = 0;
int endX = mouseX;
int endY = 0;
void setup()
{
  strokeWeight(2);
  background(0, 0, 0);
  size(300, 300);
}
void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endX < 300)
  {
    if(Math.random() < 0.5)
    {
      endX = startX + (int)(Math.random()*10);
    }
    else
    {
      endX = startX - (int)(Math.random()*10);
    }
    endY = startY + (int)(Math.random()*10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  background(255, 255, 255);
  background(0, 0, 0);
  startX = mouseX;
  startY = 0;
  endX = mouseY;
  endY = 0;
}