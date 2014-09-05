class SimpleCreature extends Creature {

  PVector direction;
  
  SimpleCreature(float x, float y)
  {
	super(x,y);
	this.direction = new PVector(random(-10, 10), random(-10, 10));
	this.direction.normalize();
  }
  
  void draw(float x, float y)
  {
    float size = (cos(frameCount/5) * CREATURE_SIZE/2) + (CREATURE_SIZE/2+5);
    for (float i = size; i > 0; i--)
    {
      noStroke();
      fill(this.c);
      ellipse(x,y,size*i, size*i);
    }
  }
  
  void update()
  {
    if(frameCount % 60 == 0)
    {
      this.direction.x += random(-1, 1);
      this.direction.y += random(-1, 1);
      this.direction.normalize();
    }
    this.position.add(direction);
  }
}
