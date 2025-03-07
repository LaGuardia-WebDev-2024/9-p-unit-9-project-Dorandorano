setup = function() {
    size(600, 400);
    
};

//Background Images
var caveSceneImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-0fWsPHqgRYNz84g9nIACfvoqoEQfvIQ3vw&s");

var forestImage = loadImage("https://citysurfingorlando.com/wp-content/uploads/2024/08/KFCoriginalorlando2.jpg");

var kitchenImage = loadImage("https://i.ytimg.com/vi/oqIxITZa-Zk/sddefault.jpg");

var gojoImage = loadImage("https://cdn.glitch.global/5aa4c99a-ac6e-4bbc-88e6-e3c8629c0680/tenor.gif?v=1741193877902");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Where do you want to go?  [Press f to go inside]";
var r;
var g;
var b;
var a;
r = random(200,255); 
        g = random(100,200); 
        b = random(100, 200); 
        a = random(200,255);
        var wave = 160;
var wave2 = 259;
var blink = 25;
var wave3 = 274;
let bubbleX = 200;
let bubbleY = 260; 
var bubbleW = 10;
var bubbleH = 10;

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;
            r = random(200,255); 
          g = random(100,200); 
          b = random(100, 200); 
          a = random(200,255);
       sceneText = "No gojoe.  [ press b to go to the kitchen]";
       
     } 
     
    if(key == 'b') {
      sceneImage = kitchenImage;
      r = random(200,255); 
          g = random(100,200); 
          b = random(100, 200); 
          a = random(200,255);
          drawChiikawa();
          
      sceneText = "no gojo [ press g to check the chicken. hold b to see chiikawa!]";
    } 
    if(key == 'g'){
      sceneImage = gojoImage;
          r = random(200,255); 
          g = random(100,200); 
          b = random(100, 200); 
          a = random(200,255);
      sceneText = "there he is!!!!!!! ]";
     
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(r,g,b);
    textSize(20);
   
   text(sceneText, 10, 375);
   
   
   
};

var drawChiikawa = function(){

            fill(255,255,255)
            noStroke();
            ellipse(200, 190, 200, 150);
            ellipse(150, 121, 30, 50);
            ellipse(239, 121, 30, 50);
  
            //eyes
            noStroke();
            fill(0,0,0);
            ellipse(170, 200, 25, 27);
            ellipse(230, 200, 25, 27);
            fill(255,255,255);
            ellipse(170, 197, 16, 9);
            ellipse(230, 197, 16, 9);
            ellipse(170, 210, 10, 4);
            ellipse(230, 210, 10, 4);


            //blink
            noStroke();
            fill(255,255,255);
            ellipse(230, 190, 80, blink);
            ellipse(230, 214, 25, blink);

            //blush
            noStroke();
            fill(237, 197, 194)
            ellipse(150, 220, 40, 20)
            ellipse(260, 220, 40, 20)

            stroke( 0, 0, 0)
            noFill();
            strokeWeight(3);
            line(144, 215,136, 226);
            line(153, 215,145, 226);
            line(161, 215,153, 226);
            line(254, 215,246, 226);
            line(263, 215,255, 226);
            line(271, 215,263, 226);


            //eyebrows
            stroke( 0, 0, 0);
            noFill();
            strokeWeight(6);
            line(160, 176, 172, 175);
            line(226, 175, 239, 176);
            arc(190, 220, 20, 20, 0, HALF_PI);
            arc(211, 220, 20, 20, radians(90),radians(180) );
            line(197, 240, 204, 240);
            
            //body
            noStroke();
            fill(255,255,255);
            quad(147, 250, 257, 250, 237, 293 ,168, 293);
            ellipse(203,280,82,53);

            //limbs
            stroke(255,255,255);
            noFill();
            strokeWeight(18);
            line(wave, wave2, 170, wave3);
            line(245, 260, 260, 274);
            line(194,293,195,309);
            line(216,293,215,309);


            wave = wave -1
            wave2 = wave2 +1
            blink = blink +2

            if(wave < 102){
            wave = 130 ;
            }

            if(wave2 > 259){
            wave2 = 230 ;
            }
            if(blink > 50){
            blink = 1;
            }  
            

};

