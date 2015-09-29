
puts "Hello, and what is your first name?"
first_name=gets.chomp
puts "I see. And your middle name?"
mid_name=gets.chomp
puts "Very interesting. And finally, your last name please."
last_name=gets.chomp
puts "It is very nice to meet you, " + first_name + " " + mid_name + " " + last_name +"."


puts "What is your favorite number?"
fave=gets.chomp
fave=fave.to_i + 1
puts "May I suggest " + fave.to_s + " instead?"

=begin
How do you define a local variable?
  Defining a local variable is easy: simply type in the name of the variable you want, and set it equal to some value. Make sure that your variable isn't already the name of a ruby method or object.
How do you define a method?
  Define a method by typing in def name_of_method(variable), and after you code the method, put "end" at the bottom. You can add as many variables as you need.
What is the difference between a local variable and a method?
  A local variable is a temporary designation that saves a number or string of your choice. A method is a block of code that can be on different variables, and produce different results.
How do you run a ruby program from the command line?
  ruby name-of-program.rb
How do you run an RSpec file from the command line?
  rspec name-of-file.spec
What was confusing about this material? What made sense?
  The only confusing thing about this material was adding strings and integers together. When I first started learning ruby through CodeAcademy, it was never necessary to use .to_s, the program already knew that you wanted to place an integer after a string. Once I understood that you must specify whether a variable is a string or a number, everything came together.

  (I don't know how if markdown works in a ruby document, so I'm going to add the URLs here.)
  https://github.com/NoahHeinrich/phase-0/blob/master/week-4/address/my_solution.rb
  https://github.com/NoahHeinrich/phase-0/blob/master/week-4/math/my_solution.rb
  https://github.com/NoahHeinrich/phase-0/blob/master/week-4/define-method/my_solution.rb

=end