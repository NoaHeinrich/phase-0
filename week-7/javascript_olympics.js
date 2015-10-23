 // JavaScript Olympics

// I paired [with: Christopher] on this challenge.

// This challenge took me .75 hours.


// Warm Up




// Bulk Up
var athletes = [{name: "John", events: "Hockey"}, {name: "Noah", events: "Fencing"}, {name: "Chris", events: "Golf"}, {name: "Sarah", events: "Swimming"}]
var winAdd = function(array) {
  var x;
  for (x = 0; x < athletes.length; x++) {
    athletes[x].win = athletes[x].name + " won the " + athletes[x].events + " title.";
    console.log(athletes[x]);
  }
}
winAdd(athletes);
// Makes more sense as a function declaration.


// Jumble your words
var words = "This is a string";
var jumble = function(string) {
  var newString = string.split("").reverse().join("");
  console.log(newString)
}
jumble(words);



// 2,4,6,8
var numbers = [1, 2, 3, 4, 5];
var even = function(array) {
  var x;
  for (x = 0; x < array.length; x++) {
    if (array[x] % 2 == 0)
      console.log(array[x]);
  }
}
even(numbers);



// "We built this city"
function Athlete(person, age, sport, quote){
  this.name = person;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// I solidified how to run loops, how to define objects, and learned a few of the built-in methods for JavaScript. Not all of it makes sense so far though.
// What are constructor functions?
// Constructor functions allow you to pick ahead of time what properties an object will have. That way, if you want to define a new object with a particular constructor, it will have a template to put each property into.
// How are constructors different from Ruby classes (in your research)?
// Constructors are very similar to Ruby classes, and fulfill many analagous purposes.The main differences that I could tell are that constructors are less focused on allowing interaction of elements, and more useful for storage. I could very easily be wrong there.