 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Escape the temple without meeting Medusa's gaze
// Goals: Reach the end of the hall, don't look at Medusa
// Characters: Player, Medusa
// Objects: Player(position, eyes open), Medusa(distance)
// Functions: move, closeEyes, listen

// Pseudocode
// DEFINE object 'player' with properties position, eyes open, and victory
// ADD methods to player: move, closeEyes, listen
// DEFINE object 'medusa', and give it a random distance
// player either moves, closes eyes, or listens. Medusa moves closer
// Check if Medusa is close and if player's eyes are open
// IF eyes are open and Medusa is there, game over
// ELSE medusa retreats to a random distance
// IF player reaches end of hall, player wins

// Initial Code
var medusa = {
 distance: Math.floor((Math.random() * 7) + 3)
};

var player = {
  distance: 10,
  eyesOpen: true,
  victory: false,

move: function(){
  eyesOpen=true;
  player.distance --;
  if (player.distance===0){
    console.log("You escaped the temple!"),
    player.victory=true;
  }
  medusa.distance --;
  if (medusa.distance===0){
    console.log("Medusa's horrifying visage appears before you, her eyes glowing green. You lose.")

    } else{
      console.log("You take one step closer to freedom and safety. No sign of Medusa.")
    }
},

closeEyes: function(){
  eyesOpen=false;
  medusa.distance --;
  if (medusa.distance===0){
    console.log("You shut your eyes tight.")
    console.log("For a few seconds you can feel Medusa's hot breath on the back of your neck, but she vanishes back into the shadows.");
    medusa.distance=Math.floor((Math.random() * 7) + 3);
  } else{
    console.log("You shut your eyes tight.");
    console.log("You wait for a few seconds, but hear nothing. She isn't here.");
  }
},

listen: function(){
  if (medusa.distance>=5){
      console.log("You hear nothing but the sound of your own breath.");
      medusa.distance --;
    } else if (medusa.distance>=2) {
      console.log("You hear the rustling of scales, and a soft sound that could be the wind. Or hissing.");
      medusa.distance--;
    } else if (medusa.distance===1) {
      console.log("You can hear her breath, and the scrape of her nails on stone pillars. Close your eyes immediately!")
   } else if (medusa.distance===0)
      console.log("Medusa's horrifying visage appears before you, her eyes glowing green. You lose.")
  }
};


// Refactored Code
var medusa = {
 distance: Math.floor((Math.random() * 7) + 3)
};

var player = {
  distance: 10,
  victory: false,

move: function(){
  player.distance --;
  if (player.distance===0){
    console.log("You escaped the temple!"),
    player.victory=true;
  }
  medusa.distance --;
  if (medusa.distance===0){
    console.log("Medusa's horrifying visage appears before you, her eyes glowing green. You lose.")

    } else{
      console.log("You take one step closer to freedom and safety. No sign of Medusa.")
    }
},

closeEyes: function(){
  medusa.distance --;
  if (medusa.distance===0){
    console.log("You shut your eyes tight.")
    console.log("For a few seconds you can feel Medusa's hot breath on the back of your neck, but she vanishes back into the shadows.");
    medusa.distance=Math.floor((Math.random() * 7) + 3);
  } else{
    console.log("You shut your eyes tight.");
    console.log("You wait for a few seconds, but hear nothing. She isn't here.");
  }
},

listen: function(){
  if (medusa.distance>=5){
      console.log("You hear nothing but the sound of your own breath.");
      medusa.distance --;
    } else if (medusa.distance>=2) {
      console.log("You hear the rustling of scales, and a soft sound that could be the wind. Or hissing.");
      medusa.distance--;
    } else if (medusa.distance===1) {
      console.log("You can hear her breath, and the scrape of her nails on stone pillars. Close your eyes immediately!")
   } else if (medusa.distance===0)
      console.log("Medusa's horrifying visage appears before you, her eyes glowing green. You lose.")
  }
};





// Reflection
// What was the most difficult part of this challenge?
// The most difficult part of this challenge for me was just planning it out. There were a lot of factors to keep straight, even for this simple game. Also, I had some difficulty using the switch case statement, and ultimately abandoned it.
// What did you learn about creating objects and functions that interact with one another?
// I learned that it isn't always simple to call on an object's value. For example, typing in medusa.distance in a switch statement didn't do anything. Otherwise though, it made sense to me.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I couldn't find any built-in methods that I could use here, other than the random number generator. All this game does is check if certain things are true, essentially.
// How can you access and manipulate properties of objects?
// Using the dot method seems to be the simplest way. If I wanted to change the distance value for medusa, I wrote medusa.distance=number. It works much like a variable, so far.