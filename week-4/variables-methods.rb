
puts "Hello, and what is your first name?"
first_name=gets.chomp
puts "I see. And your middle name?"
mid_name=gets.chomp
puts "Very interesting. And finally, your last name please."
last_name=gets.chomp
puts "It is very nice to meet you, " + first_name + " " + mid_name + " " + last_name +"."


puts "What is your favorite number?"
fave=gets.chomp
fave=fave.to_i + 1
puts "May I suggest " + fave.to_s + " instead?"

