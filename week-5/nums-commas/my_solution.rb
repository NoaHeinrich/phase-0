# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) The integer, converted to a string, with commas inserted into the appropriate spots.
# What are the steps needed to solve the problem?
# Define a method seperate_comma
# Determine if number is 1,000 or larger
# If not convert to string and return
# Otherwise convert to string
#Iterate through string
# Insert commas every four spots until end of string
# Return string

# 1. Initial Solution
def seperate_comma(num)
 x=3
  if num <1000
    return num.to_s
  else
    new_array=num.to_s.split("")
    new_array.reverse!
    while x < new_array.count
        new_array.insert(x, ",")
        x+=4
    end
    new_array.reverse!
    new_array=new_array.join
    return new_array
  end
end


# 2. Refactored Solution
def seperate_comma(num)
 x=3
  if num <1000
    return num.to_s
  else
    new_array=num.to_s.split("")
    new_array.reverse!
    while x < new_array.count
        new_array.insert(x, ",")
        x+=4
    end
    new_array.reverse!
    new_array=new_array.join
    return new_array
  end
end
# I looked through the docs for an hour, but couldn't find a method that shortened this well.

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
#My first consideration was how to iterate through a number as if it were an array. It took me a while to realize that it'd be best to do it as an array, and I had to convert the integer into a string, and then into an array. I then tried using a .each iterator, but this caused problems. So I went back to a while loop, which works well for me.

#Was your pseudocode effective in helping you build a successful initial solution?
#It was very helpful, but it also sent me down the wrong path, making me focus on strings when I should have been considering arrays.


#What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
#I know that this is not in the spirit of the challenge, but I could not find a method in the docs that would make my solution any simpler.  Besides .insert, which I already knew, any iterative solutions would be more bulky.

#How did you initially iterate through the data structure?
#I initiatlly tried to iterate with .each, but I found that finding the right places to enter a comma led to a bulky if else statement, so I decided to use a while loop instead.

#Do you feel your refactored solution is more readable than your initial solution? Why?
#See my original comment.