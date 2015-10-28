# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
# DEFINE a method that accepts a string
  # Break up string by word into an array of strings
  # Reverse each string
  # Combine all elements of array into one string

# Initial Solution
def reverser(sentence)
  new_sentence=sentence.split
  new_sentence.each{|word| word.reverse!}
  new_sentence=new_sentence.join(" ")
  p new_sentence
end



# Refactored Solution
def reverser(sentence)
  new_sentence=sentence.split.map{|word| word.reverse!}
  new_sentence=new_sentence.join(" ")
  p new_sentence
end




# Reflection
=begin
What concepts did you review or learn in this challenge?
I reviewed enumerable methods for this challenge, and ways to convert between strings and arrays.

What is still confusing to you about Ruby?
After JavaScript, Ruby feels pretty easy now. One thing that still confuses me though is working with data structures. Arrays are simple enough, but it would have been much tougher if this challenge had asked me to work with a hash.

What are you going to study to get more prepared for Phase 1?
I'm going to study the logic of hashes (and JavaScript objects) more, so that I know the syntax of them downpat, and can access them with relative ease. Perhaps I should have chosen a different challenge, but this one immediately caught my eye.
=end