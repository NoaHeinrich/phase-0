# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Joshua Kim]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) The most frequently occuring element
# What are the steps needed to solve the problem?
# 1.def method accepts array
# 2. Set up iteration to do .count on the array.
# 3. Use count to return
# 4. If array count > previously counted element, .push it to new local array.
# 5. ELSE we pop it off from the new local array.
# 5. return the new local array

# 1. Initial Solution
def mode(array)
    new_array=Array.new
    max_element=array.max_by{|x| array.count(x)}
    max_num=array.count(max_element)
    array.each do |x|
        if array.count(x) == max_num
           new_array << x
        end
    end
    new_array.uniq!
    return new_array
end

#Pair's Code
def mode(array)
  hash = Hash.new(0)
  array.each{|key| hash[key] += 1}
  tally = 0
  final_array = []
  hash.each do|key, value|
    if value > tally || tally == value
      tally = value
      final_array.push(key)
    end
  end
  p final_array
end

#Note: We had so much trouble with this challenge that we separated to think. We both came back with entirely different solutions that both worked.

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We both initially thought we could just use arrays. We later thought that we had to use a hash as well. When we separated to think, I found a solution with just arrays, and he found one with a hash.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
I was less successful this time than last time. Our pseudocode in this case was too simple, and didn't take into account all the complications that would come to.

What issues/successes did you run into when translating your pseudocode to code?
We quickly realized that it was difficult to compare the count of an element in one array or hash, with the count of another. We finally hit success when we realized that we could keep the count seperate from the data structures.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
I used .each, .max_by, and .count. They weren't difficult to implement per se, but it was hard to realize what order they should go in.
=end
