# Pad an Array

# I worked on this challenge [with: Gabrielle ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# Input: The input is an array, a minimum length for the array, and an optional padding value.
# Output: The output is the provided array, padded to the minimum length as necessary.
# What are the steps needed to solve the problem?
 # define method pad with 3 arguments (the last optional with a default)
 # create variables for arguments
 # if second argument (minimum length) is greater than the current length of the array,
  # create second array which is old plus new values
  # add a padding value to the new array
  # check new array length
  # if array length does not equal minimum, repeat
 # else (minimum is equal or less than array length) return array
 # return new array

 # define method pad! with 3 arguments (the last optional with a default)
 # create variables for arguments
 # if second argument (minimum length) is greater than the current length of the array,
  # add a padding value to the array
  # check new array length
  # if array length does not equal minimum, repeat
 # else (minimum is equal or less than array length) return array
 # return new array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size > array.length
    while array.length < min_size
     array << value
    end
    return array
  else return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  if min_size > new_array.length
    while new_array.length < min_size
     new_array << value
    end
    return new_array
  else return new_array
  end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size > array.length
    while array.length < min_size
     array << value
    end
     array
  else  array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  if min_size > new_array.length
    while new_array.length < min_size
     new_array << value
    end
     new_array
  else  new_array
  end
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
We were succesful in breaking it down. The trick to writing good pseudocode is to have it remain in layman's terms while still being specific enough to the code itself.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We were easily able to translate it into code. This was a relatively simple exercise, and we didn't have any major difficulties.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
We did not pass the tests at first. We realized it was because our non-destructive method was actually destructive, and so we used .dup to work around it.

When you refactored, did you find any existing methods in Ruby to clean up your code?
We could not find any existing methods that appeared to be any more efficient than what we had. We made sure our returns were implicit, that's all.

How readable is your solution? Did you and your pair choose descriptive variable names?
It's very readable. Most of the variables are handed down in the original file, so we only had to define one local variable.

What is the difference between destructive and non-destructive methods in your own words?
A destructive method permanently alters the input that you use. A non-destructive method returns a copy of the input, so that the original input remains in its original form.
=end