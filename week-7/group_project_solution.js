// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.

// I. As a user, I want to create 2 variables: oddLengthArray (equal to an array with and odd amount of items (7)) and evenLengthArray (equal to an array with and even amount of items (8)). In our case, Items are numbers from 1 to 7 (or 1 to 8 for the even length array like 1,2,3,4..8).
// Pseudocode
// DEFINE a variable 'oddLengthArray'. Fill with numbers 1-7
// DEFINE a variable 'evenLengthArray'. Fill with numbers 1-8.
//*****************************
// oddLengthArray variable here
//*****************************
// oddLengthArray variable here
//*****************************


// II. As a user, I want to create a function in order to test (math) expressions and return a message in console depending on the result true/false. I want this function to be called assert and take 3 arguments: (1)test (a math expression), (2)message (a message as a string that say what the test does), (3)test_number (the number of the test). As a user, I want my function to evaluate if the result of the test (a math expression) returns true or false. If the result if false, I want two things: my console to return me the message test_number + "false" (3rd argument I pass to function assert) and also I want the program to throw an error like "ERROR :" + the message (2nd argument I pass to function assert). Otherwise, if the result is true, I want two things: my console to return the message test_number + "true" and the script to return the keywork true.
// Pseudocode
// DEFINE a function 'assert', taking arguments test, message, test_number
  // IF test is a false expression
    // LOG string that says test_number is false, and "ERROR:" plus message
    // RETURN FALSE
  // ELSE LOG that test_number is true
  // RETURN TRUE
//***********************
// function assert() here
//***********************


// III. As an user I want to do several tests with my function by passing chunks of arguments three by three into it. Hence, in the next part of the script, I want to create a call stack of nine tests for my assert function: 3 for sum, 3 for mean and 3 for median. Those tests will be run by the function assert and return a different output for each test in the future. Here every test have the same name: assert, and contain the 3 expressions to be evaluated by the function assert((1)a math expression (using a method and/or a math operator, (2)a message as a tring like "message", (3)a test number as a string like "1."). The architecture of a test ALWAYS goes like assert(math, message, test_number) in order to fit with function assert when they are passed into it.

//************************************
// TESTS FOR SUM STARTS HERE (3 tests)
//************************************

// TEST N°1: As an user I want to define my assert with 3 parameters in order to (1)know if sum is an instance of class Function in javascript by returning true or false, (2)create a descriptive message to explain test's purposes such as "sum should be a Function." and (3)keep track of the test with a test_number "1. ".
// Pseudocode
// DEFINE a function 'assert' with three arguments: sum, message, test_number
// test_number equals 1
// IF sum is FUNCTION
// LOG message
// RETURN TRUE
// ELSE
// LOG message
// RETURN FALSE
// ***********
// TEST 1 Here
// ***********

// Test N°2: As an user I want to define my assert with 3 parameters in order to (1)know if the sum of all elements from the array with an odd length is equal to the number 27 by returning true or false, (2)create a descreptive message to explain test's purposes such as:"sum should return the sum of all elements in an array with an odd length" and (3)keep track of the test with a test_number "2. ".
// Pseudocode
// DEFINE a function 'assert' with three arguments: oddLengthArray, message, test_number
// test_number equals 2
// DEFINE a variable, 'sum'
// ITERATE through array, sum equals sum plus value
// IF sum equals 27
// LOG message
// RETURN true
// ELSE
// LOG message
// RETURN false


// ***********
// TEST 2 Here
// ***********

// Test N°3: As an user I want to define my assert in order to (1)know if the sum of all elements from the array with an even length is equal to the number 43, (2)create a descreptive message to explain test's purposes such as "sum should return the sum of all elements in an array with an even length." and (3)keep track of the test with a test_number "3. ".
// DEFINE a function 'assert' with three arguments: evenNumberArray, message, test_number
// test_number equals 3
// DEFINE a variable, 'sum'
// ITERATE through array, sum equals sum plus value
// IF sum equals 43
// LOG message
// RETURN true
// ELSE
// LOG message
// RETURN false

//
// ***********
// TEST 3 Here
// ***********

//*************************************
// TESTS FOR MEAN STARTS HERE (3 tests)
//*************************************

// Hint: mean should return the average of all elements, mean =  value of all elements summed then divided by the number of elements(return a fractionnal number generally)

// Test N°4: As an user I want to define my assert with 3 parameters in order to (1)know if mean is an instance of the class Function in javascript by returning true or false, (2)create a descreptive message to explain test's purposes such as "mean should be a Function." and (3)keep track of the test with a test_number "4. ".
// Pseudocode
// DEFINE a function 'assert' with three arguments: mean, message, test_number
// test_number equals 4
// IF mean is FUNCTION
// LOG message
// RETURN true
// ELSE
// LOG message
// RETURN false

// ***********
// TEST 4 Here
// ***********

// Test N°5: As an user I want to define my assert with 3 parameters in order to (1)return true if the mean of the array with an odd length is equal to 3.857142857142857, (2)create a descreptive message to explain test's purposes such as "mean should return the average of all elements in an array with an odd length." and (3)keep track of the test with a test_number "5. ".
// Pseudocode
// DEFINE a function 'assert' with three arguments: oddLengthArray, message, test_number
// test_number equals 5
// DEFINE variable sum
// ITERATE through oddLengthArray. sum equals sum plus value
// sum equals sum divided by size of oddLengthArray
// IF sum equals 3.857142857142857
// LOG message
// RETURN true
// ELSE
// LOG message
// RETURN false
// ***********
// TEST 5 Here
// ***********

// Test N°6: As an user I want to define my assert with 3 parameters in order to (1)return true if the mean of the array with an even length is equal to 5.375, (2)create a descreptive message to explain test's purposes such as "mean should return the average of all elements in an array with an even length." and (3)keep track of the test with a test_number "6. ".
// Pseudocode
// DEFINE a function 'assert' with three arguments: evenNumberArray, message, test_number
// test_number equals 6
// ITERATE through evenLengthArray. sum equals sum plus value
// sum equals sum divided by size of evenLengthArray
// IF sum equals 5.375
// LOG message
// RETURN true
// ELSE
// LOG message
// RETURN false
// ***********
// TEST 6 Here
// ***********

//***************************************
// TESTS FOR MEDIAN STARTS HERE (3 tests)
//***************************************

//Hint: median should return the median value of all elements in an array, median value is the value or the value between the numbers located at the center of the array.

// Test N°7: As an user I want to define my assert with 3 parameters in order to (1)know if meadian is an instance of the class Function in javascript by returning true or false, (2)create a descreptive message to explain test's purposes such as "median should be a Function." and (3)keep track of the test with a test_number "7. ".
// Pseudocode
// DEFINE a function 'assert' with three arguments: median, message, test_number
// test_number equals 7
// IF median is FUNCTION
// LOG message
// RETURN true
// ELSE
// LOG message
// RETURN false

// ***********
// TEST 7 Here
// ***********

// Test N°8: As an user I want to define my assert with 3 parameters in order to (1)return true if the median of the array with an odd length is equal to 4.857142857142857, (2)create a descreptive message to explain test's purposes such as "median should return the median value of all elements in an array with an odd length." and (3)keep track of the test with a test_number "8. ".
// Pseudocode
// DEFINE a function 'assert' with three arguments: oddLengthArray, message, test_number
// test_number equals 8
// IF oddLengthArray[3] equals 4
// LOG message
// RETURN true
// ELSE
// LOG message
// RETURN false
// ***********
// TEST 8 Here
// ***********

// Test N°9: As an user I want to define my assert with 3 parameters in order to (1)return true if the median of the array with an even length is equal to 5.5, (2)create a descreptive message to explain test's purposes such as "median should return the median value of all elements in an array with an even length." and (3)keep track of the test with a test_number "9. ".
// Pseudocode
// DEFINE a function 'assert' with three arguments: evenLengthArray, message, test_number
// test_number equals 9
// DEFINE variable average
// average equals evenLengthArray[4] plus evenLengthArray[5], divided by 2
// IF average equals 4.5
// LOG message
// RETURN true
// ELSE
// LOG message
// RETURN false
// ***********
// TEST 9 Here
// ***********