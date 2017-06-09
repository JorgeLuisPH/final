class liga {

float largo;
float npartes;

ArrayList<pieza>partes;

liga(float l, int n) {
  
largo=l;
npartes=n;

partes = new ArrayList();

float lar = largo/npartes;

for (int i=0; i<npartes+1; i++){
pieza p = null;

if (i==0 || i==npartes) p = new pieza(i*lar, height/1.5,5,true);
else p = new pieza(i*lar, height/1.5,5,false);
partes.add(p);

if (i > 0) {
DistanceJointDef djd = new DistanceJointDef();
pieza previous = partes.get(i-1);
djd.bodyA = previous.body;
djd.bodyB = p.body;
djd.length = box2d.scalarPixelsToWorld(lar);
djd.frequencyHz = 0;
djd.dampingRatio = 0;

DistanceJoint dj = (DistanceJoint) box2d.world.createJoint(djd);
}
}

}

void display() {
for (pieza p: partes) {
p.display();
}
}

}