# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A random string from the array
# Steps:
# DEFINE a class, Die, that accepts an array
# IF array is empty, RAISE argument error
# ELSE count the number of elements, equals number of sides
# DEFINE class method, Sides
  # RETURNS the number of sides
# DEFINE class method, roll
  # Randomize the array
  # RETURN the first element of the randomized array
# Initial Solution

class Die
  def initialize(labels)
    if labels.length==0
      raise ArgumentError.new("Please input an array of strings")
    else
      @sides = labels.length
      @labels = labels
    end
  end

  def sides
    return @sides
  end

  def roll
    result=@labels.shuffle
    return result[0]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Please input an array of strings")
    else
      @sides = labels.length
      @labels = labels
    end
  end

  def sides
    @sides
  end

  def roll
    @labels.sample
  end
end






# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
It was very similar to the first one, except I needed to save an additional @object, for the array that was being passed in. I also had to change what triggers an argument error. The logic was the same, I just used .length, and later .empty? to trigger it.

What does this exercise teach you about making code that is easily changeable or modifiable?
I learned that the more readable your code is, the easier it is to modify. My first class was pretty simple, and so it was very simple to modify it for this exercise.

What new methods did you learn when working on this challenge, if any?
I learned the .sample method, which returns a random item from an array, which is a lot more convenient than using shuffle or a random number.

What concepts about classes were you able to solidify in this challenge?
Honestly, I don't think this challenge taught me anything about classes I didn't understand. It perhaps solidified the syntax for defining classes, and showed that you can do more with classes besides accept integers.

=end
