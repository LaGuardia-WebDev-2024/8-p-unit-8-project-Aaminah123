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
  image(dimitri,200,-100)
  image(edelgard,225,205)
  image(claude,30,210)
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
};




