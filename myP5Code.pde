var dimitri = loadImage("dimitri.png");
var edelgard = loadImage("delgard.png");
var claude = loadImage("cclaudee.png");
var dimitriY = 0;
var edelgardY = 0;
var claudeY = 0;
var dimitritime = 0;
var edelgardtime = 0;
var claudetime = 0;
var dimitriJumped = false;
var edelgardJumped = false;
var claudeJumped = false;

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
};

//🟢draw Function - will run on repeat
draw = function(){
  drawCharacters();
  if (dimitriJumped){
    dimitriJump(10);
  }
  if (edelgardJumped){
    edelgardJump(3);
  }
  if (claudeJumped){
    claudeJump(5);
  }
  
};

var drawCharacters = function(){
 //dimitri
  fill(19, 56, 157)
  stroke(19, 56, 157)
  rect(390,-1,210,405);
  image(dimitri,410,220-dimitriY);

  //edelgard
  fill(230, 23, 47);
  stroke(230, 23, 47);
  rect(0,-1,190,405);
  image(edelgard,40,210-edelgardY);

  //claude
  fill(222, 201, 46);
  stroke(222,201,46);
  rect(190,-1,200,405);
  image(claude,210,10+claudeY);
}

var dimitriJump = function(height){
 dimitriY = -1*height*(dimitritime-0)*(dimitritime-10);
if (dimitriY < 0){
  dimitriY = 0;
}
dimitritime += 0.25;
if (dimitritime > 10){
  dimitriJumped = false;
}
}

var edelgardJump = function(height){
edelgardY = -1*height*(edelgardtime-0)*(edelgardtime-10);
if (edelgardY < 0){
  edelgardY = 0;
}
edelgardtime += 0.25;
if (edelgardtime > 10){
  edelgardJumped = false;
}
}

var claudeJump = function(height){
claudeY = -1*height*(claudetime-0)*(claudetime-10);
if (claudeY < 0){
  claudeY = 0;
}
claudetime +=  0.25;
if (claudetime > 10){
  claudeJumped = false;
}
}


/*x1 - left x
y1 - left y
x2 - right x
y2 - right y*/
var correctArea = function(x1,y1,x2,y2){
 if (mouseX > x1 && mouseX < x2){
  if (mouseY > y1 && mouseY< y2){
    return true;
 }
 }
}

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){ 
  if (correctArea(390,0,600,405)){
    dimitritime = 0;
    dimitriJumped = true;
  }
  if (correctArea(0,0,190,405)){
    edelgardtime = 0;
    edelgardJumped = true;
  }
  if (correctArea(190,0,390,405)){
    claudetime = 0;
    claudeJumped = true;
  }
}









