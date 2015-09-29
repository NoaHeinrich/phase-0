What does puts do?
Puts prints the program's output to the screen, and then makes a new line, so that if anything comes after it, it will be on the line below instead of right next to it. It also prints nil once it is done.

What is an integer? What is a float?
An integer is any whole number without a decimal point, positive or negative. A float is any number with a decimal point.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division acts like division normally would on your calculator. It will return the exact number that is being divided. Integer division, however, can only produce integer answers. If you divide two numbers that would normally produce decimals, it just rounds the answer down to the nearest ones place.
```
puts 24*365
8760
=> nil
```
```
puts 60*8760*10
5256000
=> nil
```
[Basic Math](https://github.com/NoahHeinrich/phase-0/blob/master/week-4/basic-math.rb "Basic Math")
[Defining Variables](https://github.com/NoahHeinrich/phase-0/blob/master/week-4/defining-variables.rb "Defining Variables")
[Simple String](https://github.com/NoahHeinrich/phase-0/blob/master/week-4/simple-string.rb "Simple String")

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
It handles them just like a normal calculator in most instances, except when handling division, in which case it depends on whether or not you're using integers or floats.

What is the difference between integers and floats?
Integers are just that, integers, whole numbers of any value. Floats are any number with a decimal place after it.

What is the difference between integer and float division?
When ruby divides two integers, it rounds the answer down to the nearest one. If one divides with floats, it instead calculates it as normal, giving the full value of all decimal places.

What are strings? Why and when would you use them?
A string is a collection of letters and numbers bounded by apostrophes or quotation marks. You use these if you want to convey a written message to the console, or information that is not a number.

What are local variables? Why and when would you use them?
A local variable is a way of storing a number or string within your program. You use them because you can access the information easily later on, and edit as you see fit without typing out the entire number or string again. This gets much more useful later on when you write iterative programs, because you can have your program change the value of the variable as many times as you need it to.

How was this challenge? Did you get a good review of some of the basics?
This challenge was very easy. It was nice to get an overview of the basics of ruby again, especially after two weeks of html and CSS.