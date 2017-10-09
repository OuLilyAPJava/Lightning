int startX = 0;
int startY = 250;
int endX = 0;
int endY = 250;
void setup()
{
  strokeWeight(2);
  background(0, 0, 0);
  size(500, 500);
}
void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endX < 501)
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
    line(startX, startY + 50, endX, endY + 50);
    line(startX, startY - 50, endX, endY - 50);
    line(startX, startY + 100, endX, endY + 100);
    line(startX, startY - 100, endX, endY - 100);
    line(startX, startY + 150, endX, endY + 150);
    line(startX, startY - 150, endX, endY - 150);
    fill(192, 192, 192);
    rect(0, 0, 25, 500, 200);
    rect(475, 0, 25, 500, 100);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  background(0, 0, 0);
  startX = 0;
  startY = 250;
  endX = 0;
  endY = 250;
}