# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: A new object with sides n
# Output: Either the number of sides, or a random number
# Steps:
# Define class Die
  # Define initalization to accept an integer (sides)
  # If integer is less than 1, return argument error
  # Saves number of sides
    # Define class method "sides"
      # Returns the number of sides
    # Define class method "roll"
      # Selects a random number between 1 and number of sides
      # returns number



# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Can't have a " + sides.to_s + " sided die.")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    result = Random.new
    result.rand(1..@sides)
  end
end



# 3. Refactored Solution
# I couldn't find a simpler way to define any of this in enumerable.






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is something you can define within a class or a method, and it will return an error if the user gives an argument that you know to be wrong. This is useful because it lets you prevent a user from getting a nonsensical result in your class: for example, you can use one to prevent a user from inputting a string when there should be an integer.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
Besides all of the new things you must do for a class, I used raise ArgumentError, and .rand. I had a lot of success using both of these. The ruby docs were a little unclear about how to define a random number at first, but I figured it out.

What is a Ruby class?
A Ruby class is an object that can contain other objects. String is a class, for example, that can contain "hahaha" for example. Every class has a number of functions that are built-in, and you can add more if you want.

Why would you use a Ruby class?
I would use a Ruby class if I want to perform multiple operations on many variables, using a large number of methods. Rather than defining the methods and calling on each one individually, I can create a new object using the class, and modify it using the methods within the class. It's cleaner and more versatile.

What is the difference between a local variable and an instance variable?
A local variable remains within the method that you define it in, and trying to call on it outside of the method will return an error. An instance variable is saved outside of the method, and contains all of an objects data.

Where can an instance variable be used?
An instance variable can be used anywhere in the program once it has been defined. Usually you will want to use class methods on it, but the data is there for any other program to access as best as it can.
=end
