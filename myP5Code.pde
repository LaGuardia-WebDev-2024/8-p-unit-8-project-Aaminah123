var dimitri = loadImage("https://art.pixilart.com/thumb/828e3105ed8e.png");
var edelgard = loadImage("delgard.png");
var claude = loadImage("claudee.png");

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
};

//🟢draw Function - will run on repeat
draw = function(){
  //dimitri
  fill(19, 56, 157)
  stroke(19, 57, 157)
  rect(390,-1,210,405);
  image(dimitri,200,-100);
  
  
  //edelgard
  fill(230, 23, 47);
  stroke(230, 23, 47);
  rect(190,-1,200,405);
  image(edelgard,225,205);

  //claude
  fill(222, 201, 46);
  stroke(222,201,46);
  rect(0,-1,190,405);
  image(claude,40,210);

  
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
}

//🟡drawdimitri Function - will run when called
var drawdimitri = function(){
  
};




