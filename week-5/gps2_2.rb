# Input: A hash
# Output: A hash
# Define a method to create a new list
# Accepts a hash
  # Returns hash

# Input: Key and value
# Output: The updated hash
# Define a method that adds item with quantity
# Accepts a key and a value
  # Push key and value onto hash
  # Return hash

# Input: Key
# Output: Updated hash
# Define a method that deletes an item
  # Iterate through hash
  # Delete the requested item
  # Return hash

# Input: Key and new value
# Output: Updated hash
# Define a method to update quantity
  # Access key
  # Change value
  # Return hash

# Input: Command
# Output: Formatted hash
# Define a method to print the list
# Iterate through hash
# Print friendly string that lists item and quantity

def grocery_list(new_list)
  puts new_list
end

def add_list(item, qty, hash)
   hash[item] = qty
   puts hash
end

def delete_item(item, hash)
  hash.delete_if{|x, qty| x==item}
  puts hash
end

def update_qty(item, qty, hash)
  hash.each do |key, value|
    if key==item
      hash[key]=qty
      puts hash
    end
  end
end

def print_list(hash)
  hash.each do |key, value|
    puts "You need " + value.to_s + " " + key.to_s + "."
  end
end

=begin
What did you learn about pseudocode from working on this challenge?
I did learn that pseudocode is not an exact science, and it is most important that it is readable to you.

What are the tradeoffs of using Arrays and Hashes for this challenge?
It never occurred to me to use anything other than hashes for this challenge. A has lets you pair each item to its associate quantity, though it is also more complicated to use.

What does a method return?
A method returns what you tell it to return.

What kind of things can you pass into methods as arguments?
You can pass Integers, Floats, Strings, Arrays, and Hashes to a method.

How can you pass information between methods?
You can have one method call on another method.

What concepts were solidified in this challenge, and what concepts are still confusing?
Hashes remain a bit confusing, but I am a bit more certian as to how to use them.

=end