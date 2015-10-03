# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with:Chris Lee ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: all numbers in the array added together
# Steps to solve the problem.
# define a method total - accept an array of integers
  # define local variable sum
    # array.each x
      # add x to sum
    # end
    # return sum
  # end

# 1. total initial solution
def total(arry)
  sum=0
  arry.each {|x| sum=sum+x}
  return sum
end


# 3. total refactored solution
def total(arry)
  arry.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of string
# Output: a full sentence
# Steps to solve the problem.
# Define method that takes an array of strings
  # Iterate through each string
  # capitalize first word
  # Add item into new string, followed by a space.
  # Add period to end of string.
# Method end


# 5. sentence_maker initial solution
def sentence_maker(words)
  sentence = ""
  words[0].capitalize!
  words.each do |x|
      if x == words.last
          sentence=sentence + x.to_s + "."
      else
          sentence=sentence + x.to_s + " "
      end
    end
  return sentence
end


# 6. sentence_maker refactored solution

def sentence_maker(words)
    sentence=words.join(" ")
    sentence.capitalize!
    sentence << "."
  return sentence
end