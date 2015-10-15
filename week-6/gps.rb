# Your Names
# 1)Noah Heinrich
# 2)Kevin Mark

# We spent .75 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #error_counter = 3

  #Iterates through each key in the hash, compares if item is equal to the method input. Decreases the error counter if it isn't equal to the input.
 # library.each do |food|
  #  if library[food] != library[item_to_make]
   #   p error_counter += -1
    #end
 # end

  # If the error counter doesn't reach zero it raises an argument error
  #if error_counter > 0
   # raise ArgumentError.new("#{item_to_make} is not a valid input")
  #end
  if !library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end


  # Serving_size return the hash value of item_to_make
  serving_size = library[item_to_make]
  #.values_at(item_to_make)[0]
  # divides order_quantity and divides by serving_size and returns the remainder
  remainder = order_quantity % serving_size

  # If it's evenly divisible, returns following string. Otherwise, returns string with leftover ingredients

  if order_quantity/serving_size == 0
    return "You don't have enough ingredients to make #{item_to_make}."
  elsif remainder==0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{remainder} leftover ingredients."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 5)

#p serving_size_calc("pie", 7)
#p serving_size_calc("pie", 8)
#p serving_size_calc("cake", 5)
#p serving_size_calc("cake", 7)
#p serving_size_calc("cookie", 1)
#p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
Most of what I learned was common sense. If your variable names and logic couldn't make at least a little sense to a person without Ruby experience, then you're doing it wrong. Make everything simple as you possibly can, and if you have to have something more strange, leave a comment to explain it.

Did you learn any new methods? What did you learn about them?
I learned the .has_key? method, which was a much simpler way of checking to see if the user's input was valid than the loop that was originally there. I also learned using ! as an invalidator, so that I could check if something did not has_key? I learned later that there are more DRY ways of going about that though.

What did you learn about accessing data in hashes?
I didn't learn much new about accessing data in a hash. I learned a lot of ways not to do it though.

What concepts were solidified when working through this challenge?
I never really understood what it meant to make your code readable until I found how unreadable this code was. There are a lot of common mistakes that I'd been making up to this point that I now know to avoid. From now on I intend to make my logic clearer, and to be more explicit with the purpose of each variable's name.

=end