import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

liga liga;
objetivo objetivo;
ArrayList<part>par;

void setup(){
size(650, 350);
smooth();
box2d = new Box2DProcessing(this);
box2d.createWorld();

liga = new liga(height,height/20);
objetivo = new objetivo(300,150);
par = new ArrayList<part>();
}

void draw(){
background(0);
box2d.step();

if (mousePressed) {
    part p = new part(mouseX,mouseY);
    par.add(p);
  }

  for (part b: par) {
    b.display();
  }

  for (int i = par.size()-1; i >= 0; i--) {
    part b = par.get(i);
    if (b.done()) {
      par.remove(i);
    }
  }
liga.display();
objetivo.display();

fill(255);
text("Presiona el Mouse.",10,height-10);

}
