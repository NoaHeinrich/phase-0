# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Celeste].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A 16 digit credit card number
# Output: TRUE or FALSE
# Steps:
# DEFINE a class CreditCard that accepts an integer
# Check if number is 16 digits, if not return argument error
#   DEFINE method check_card
#     Convert integer to string, then to array
#     ITERATE over array
#       IF index is at right spot, multiply number times 2
#     Convert into string and array, and then integers
#     ADD up total of digits
#     MODULUS by ten
#       IF equal to 0, RETURN true
        # ELSE RETURN false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize (number)
    if number.to_s.length != 16
      raise ArgumentError.new("Please input a 16-digit number")
    else
      @number=number
    end
  end

  def check_card
    array=@number.to_s.split(//)

    array.map! {|x|  x.to_i}

    counter=2
    array.map! do |x|
      if counter%2==0
        x= x*2
        counter += 1
        p x
      else
        counter += 1
        p x
      end
    end

    sum_array=array.to_s.split(//)
    sum_array.delete_if{|value| value== ","}
    sum_array.map! {|x|  x.to_i}
    cc_num=sum_array.reduce(:+)

    if cc_num%10==0
       return true
    else
      return false
    end

  end

end




# Refactored Solution






# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
The most difficult part by far was how to convert one large number into an array of individual digits. The best solution we could come up with was to convert the number to a string, and then calling the #split method to turn it into an array. We then used #map to turn the strings back into integers.

What new methods did you find to help you when you refactored?
The #map and #split methods were very helpful. We also were thankful for the #reduce and #delete_if methods. NOTE: We didn't have a seperate refactored solution because we thought of the refactored method midway through our initial solution.

What concepts or learnings were you able to solidify in this challenge?
I was able to solidfy how to define a class, and also uses of the more efficient enumerable methods. I do wish there was some kind of method that let you skip over elements in an array without using a counter variable.

=end