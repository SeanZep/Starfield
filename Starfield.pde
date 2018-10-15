Particle[] one = new Particle[200];
void setup()
{
	size(500, 500);
  for(int i=0; i<one.length; i++){
    one[i] = new NormalParticle();
  }
  one[0] = new JumboParticle();
  one[1] = new OddballParticle();
}
void draw()
{
  background(192);
  for(int i=0; i<one.length; i++){
	  one[i].move();
	  one[i].show();
  }
}
void mousePressed(){
  for(int i=0; i<one.length; i++){
      one[i] = new NormalParticle();
    }
    one[0] = new JumboParticle();
    one[1] = new OddballParticle();
}
class NormalParticle implements Particle
{
	double myX, myY, myAngle, mySpeed;
	NormalParticle(){
		mySpeed = Math.random()*10+1;
		myAngle = Math.random()*2*Math.PI;
		myX = myY = 250;
	}
	void move(){
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
	void show(){
    fill(255, 255, 255);
		ellipse((float)myX, (float)myY, 10, 10);
	}
}
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle
{
	float myX, myY;
  OddballParticle(){
    myX = myY = 250;
  }
  void move(){
    if(mouseX < 250){
      myX = myX + 1;
    }else if(mouseX > 250){
      myX = myX -1;
    }
    if(mouseY < 250){
      myY = myY + 1;
    }else if(mouseY > 250){
      myY = myY - 1;
    }
    //myX = myX + (int)(Math.random()*5)-2;
    //myY = myY + (int)(Math.random()*5)-2;
  }
  void show(){
    fill(255, 0, 0);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}
class JumboParticle extends NormalParticle
{
  void show(){
    fill(255, 255, 255);
    ellipse((float)myX, (float)myY, 40, 40);
  }
}
