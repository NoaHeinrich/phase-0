// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myAge = 25;
myAge += 25;

prompt("Hey, what's your favorite food?");
console.log("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (num=1; num<=100; num++) {
    if (num%3===0 && num%5!==0)
        console.log("Fizz");
    else if (num%5===0 && num%3!==0)
        console.log("Buzz");
    else if (num%3===0 && num%5===0)
        console.log("FizzBuzz");
    else
        console.log(num);
}


// Functions

// Complete the `minimum` exercise.
function min(firstNum, secondNum) {
    if (firstNum < secondNum)
        return firstNum;
    else if (secondNum < firstNum)
        return secondNum;
    else
        return null;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me =["Noah", 25, "Pad Thai", "Cheeseburger", "Burrito", "Squeals like a pika anytime he sees a dog"];