// 9.2 JavaScript Review

// DEFINE a function groceryList
  // Creates an empty object
// DEFINE a function addItem
  // Accepts two arguments, item and quantity
  // Adds item as key to quantity, in groceryList
// DEFINE a function removeItem
  // Accepts one argument, item
  // Deletes item and quantity from groceryList
// DEFINE a function updateItem
  // Accepts two arguments, item and quantity
  // IF groceryList contains item, item's quantity equals new quantity
  // ELSE RETURNS an error
// DEFINE a function displayList
  // Accepts one argument, list
  // Iterates over list, displaying each item and quantity


// Initial Solution
var groceryList = {}


var addItem = function (item, qty){
    groceryList[item]=qty;
}

var removeItem = function (item){
    delete groceryList[item];
}

var updateItem = function (item, qty) {
    if (groceryList.hasOwnProperty(item)){
        groceryList[item]=qty;
    }
    else {
       console.log("This isn't on your list.")
    }
}

var displayList = function (){
    for (var i in groceryList){
        console.log("You need " + groceryList[i] + " " + i +".")
    }
}

// Refactored Solution

var groceryList = {


    addItem: function (item, qty){
        groceryList[item]=qty;
    },

    removeItem: function (item){
        delete groceryList[item];
    },

    updateItem: function (item, qty) {
        if (groceryList.hasOwnProperty(item)){
            groceryList[item]=qty;
        }
        else {
            console.log("This isn't on your list.")
        }
    },

    displayList: function (){
        for (var i in groceryList){
            if (typeof groceryList[i] !== "function"){
                console.log("You need " + groceryList[i] + " " + i + ".")
            }
        }
     }

}

// Reflection
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I solidified the use of object methods. I tried using a constructor, but it didn't make sense to me if you'd just be making a new empty list. Maybe that isn't the spirit of the challenge, but this made the most sense to me.

// What was the most difficult part of this challenge?
// The most difficult part was remembering how to define methods within an object, and then how to iterate over the object without calling on the methods. I used the typeof method to get around that part.

// Did an array or object make more sense to use and why?
// It made the most sense to use an object, because we need to store both items, and their quantity.