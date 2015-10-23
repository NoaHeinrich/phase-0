// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// We encountered a computer error and lost our pseudocode.


// Initial Solution
function separate_comma(user_num){
  var add_commas = user_num.toString().split("");
  add_commas.reverse();
  var final_num = [];
  for(var i = 0; i < add_commas.length; i++){
    if(i % 3 === 0 && i != 0)
     final_num = final_num + "," + add_commas[i];
    else
    final_num = final_num + add_commas[i];
  }
  final_num = final_num.split("");
  final_num.reverse();
  final_num = final_num.join("");
  console.log(final_num);
}




// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We approached the problem in the same general way. The major difference was the ways which you use to convert between strings and arrays in JavaScript vs Ruby.
// What did you learn about iterating over arrays in JavaScript?
// I learned that despite using different syntax, iteration operates by the same logic that it does in Ruby.
// What was different about solving this problem in JavaScript?
// JavaScript is very inconsistent with the ways in which you can convert between strings and arrays. There also doesn't seem to be any notation as to whether a method is destructive or not, and so we mostly had to figure out which was which through trial and error.
// What built-in methods did you find to incorporate in your refactored solution?
// We found .reverse, .split, and .join, which operate in almost the same ways as they do in Ruby. We also found good use of the typeof operator, which helped us figure out which of the built-in methods were destructive or otherwise.