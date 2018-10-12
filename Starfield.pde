NormalParticle one = new NormalParticle();
void setup()
{
	size(500, 500);
}
void draw()
{
	one.move();
	one.show();
}
class NormalParticle
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
		ellipse((float)myX, (float)myY, 10, 10);
	}
}
/*interface Particle
{

}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}*/

