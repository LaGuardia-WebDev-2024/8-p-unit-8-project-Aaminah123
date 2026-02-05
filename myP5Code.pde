var dimitri = loadImage("https://art.pixilart.com/thumb/828e3105ed8e.png");
var edelgard = loadImage("edellgardd.png");

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    imageMode(CENTER)
    
    drawFish(200, 100, color(200,0,200)); 
    drawFish(300, 100, color(0,200,200));
};

//🟢draw Function - will run on repeat
draw = function(){
  image(dimitri,100,-100)
  image(edelgard,100,160)
  
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
};




