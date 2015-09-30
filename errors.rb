# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about " + thing +"?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# The console said that it was line 170, but it was really line 17.
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# It expected a keyword_end
# 5. Where is the error in the code?
# The method needed two ends, one for the method and one for the while loop.
# 6. Why did the interpreter give you this error?
# Because the method never ended until the bottom of the page.

# --- error -------------------------------------------------------

south_park=2

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# The undefined variable/method is called "south_park"
# 4. Where is the error in the code?
# In main.
# 5. Why did the interpreter give you this error?
# You can't have a variable or method that isn't assigned some kind of value.

# --- error -------------------------------------------------------

def cartman(*)
end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error? The undefined method is called cartman
# 4. Where is the error in the code?
# in main
# 5. Why did the interpreter give you this error?
# There should be a def before cartman, and any sort of variable or value in the parentheses.

# --- error -------------------------------------------------------

def cartmans_phrase(x)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase("I hate Kyle!")

# 1. What is the line number where the error occurs?
# 66 and 70
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# There was a wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# In cartmans_phrase
# 5. Why did the interpreter give you this error?
# The program tried to run a method that accepts no arguments, with one argument.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Lick my CENSORED")

# 1. What is the line number where the error occurs?
# 89
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments, there were 0 for 1
# 4. Where is the error in the code?
# In cartman_says
# 5. Why did the interpreter give you this error?
# It tried to run the method without giving an argument



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Kenny")

# 1. What is the line number where the error occurs?
# 110
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# In cartmans_lie
# 5. Why did the interpreter give you this error?
# It only put down one argument, when it required two

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# In *
# 5. Why did the interpreter give you this error?
# You can't multiply 5 times as string, it has to be the other way around

# --- error -------------------------------------------------------

amount_of_kfc_left = 20*0


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# Divided by zero
# 4. Where is the error in the code?
# in /
# 5. Why did the interpreter give you this error?
# You can't divide by zero, it's mathematically impossible.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file
# 4. Where is the error in the code?
# in require_relative
# 5. Why did the interpreter give you this error?
# It tried to load a file that doesn't exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
# The hardest was the first one, because I forgot that while loops need an end as well, and it gave me the wrong line number. I know that it hinted that line number was the key, but I went right past that.
#How did you figure out what the issue with the error was?
#I reviewed the syntax for both methods and while loops, and realized that something was missing.
#Were you able to determine why each error message happened based on the code?
# Yes, the error methods are very specific, and told me exactly what the problem was.
#When you encounter errors in your future code, what process will you follow to help you debug?
# I will make sure to keep calm, and go methodically through the error message. I will find the line, the element, and what issue it ran into. I think that by doing this I will be able to get through most error messages.