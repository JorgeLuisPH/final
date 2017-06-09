class objetivo {

Body b;

float ol;
float oa;

objetivo(float x, float y){
ol=15;
oa=10;


 PolygonShape sd = new PolygonShape();
float box2dW = box2d.scalarPixelsToWorld(ol/2);
float box2dH = box2d.scalarPixelsToWorld(oa/2);
sd.setAsBox(box2dW, box2dH);


BodyDef bd = new BodyDef();
bd.type = BodyType.STATIC;
bd.position.set(box2d.coordPixelsToWorld(150,300));
b = box2d.createBody(bd);
    
b.createFixture(sd,1);

}
void display(){
rectMode(CENTER);
noStroke();
fill(175);
rect(150,300,ol,oa);

}
}