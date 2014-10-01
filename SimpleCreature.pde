class SimpleCreature extends Creature {
  
  SimpleCreature(float x, float y)
  {
	super(x,y);
  }
  
  void draw(float x, float y)
  {
    float size = (cos(frameCount/5 - (this.agitation * 5)) * CREATURE_SIZE/2) + (CREATURE_SIZE/2+5);
    for (float i = size; i > 0; i--)
    {
      noStroke();
      fill(this.c);
      ellipse(x,y,size*i, size*i);
    }
  }
}
