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

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "No gojoe.  [Press s to restart, press b to go to the kitchen]";
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press f for inside]";
    } 
    if(key == 'b') {
      sceneImage = kitchenImage;
      sceneText = "no gojo [ press F again for inside, press g to check the chicken ]";
    } 
    if(key == 'g'){
      sceneImage = gojoImage;
      sceneText = "there he is!!!!!!! just press s to restart ]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 375);
};



