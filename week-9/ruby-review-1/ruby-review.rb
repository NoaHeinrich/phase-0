# I worked on this challenge [by myself].
# This challenge took me [.75] hours.


# Pseudocode
# DEFINE method super_fizzbuzz that accepts an array
#   Iterate over array
#     IF element is divisible by 15, element equals "FizzBuzz"
#     ELSIF element is divisible by 3, element equals "Fizz"
#     ELSIF element is divisibly by 5, element equals "Buzz"


# Initial Solution

# def super_fizzbuzz(array)
#     new_array=[]
#     array.each do |x|
#         if x % 15 == 0
#             new_array << "FizzBuzz"
#         elsif x % 3 == 0
#             new_array << "Fizz"
#         elsif x % 5 == 0
#             new_array << "Buzz"
#         else
#             new_array << x
#         end
#     end
#     new_array
# end



# Refactored Solution

def super_fizzbuzz(array)
    array.map {|x|
        if x % 15 == 0
            x = "FizzBuzz"
        elsif x % 3 == 0
            x = "Fizz"
        elsif x % 5 == 0
            x = "Buzz"
        else
            x = x
        end
    }
end



# Reflection
=begin
What concepts did you review in this challenge?
I reviewed enumerable methods, and proper use of an if-else statement.

What is still confusing to you about Ruby?
It is easy to forget how to make a method destructive. I know that this challenge did not ask me to make a destructive method, but if it had, I'm not clear on how I would have done it.

What are you going to study to get more prepared for Phase 1?
I am going to read up on the differences between destructive and non-destructive methods, and how to define each.
=end