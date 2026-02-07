var dimitri = loadImage("dimitri.png");
var edelgard = loadImage("delgard.png");
var claude = loadImage("claudee.png");
var characterY = 0;
var time = 0;
var dimitriY = 0;
var edelgardY = 0;
var claudeY = 0;

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
};

//🟢draw Function - will run on repeat
draw = function(){
  characterJump();
  drawCharacters();
  
};

var drawCharacters = function(){
 //dimitri
  fill(19, 56, 157)
  stroke(19, 56, 157)
  rect(390,-1,210,405);
  image(dimitri,410,220-characterY);

  //edelgard
  fill(230, 23, 47);
  stroke(230, 23, 47);
  rect(190,-1,200,405);
  image(edelgard,225,205-characterY);

  //claude
  fill(222, 201, 46);
  stroke(222,201,46);
  rect(0,-1,190,405);
  image(claude,40,210-characterY);
}


//🟡characterJump Function - will run when called
var characterJump = function(){
characterY = -5*(time-0)*(time-10);
if (characterY < 0){
  characterY = 0;
}
time += 0.25;
}
  


//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
  time = 0;
  characterJump();
}









