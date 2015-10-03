# Factorial

# I worked on this challenge [with: Chris Lee].


# Your Solution Below
def factorial(number)
  n = 1
  if number==0
    return n
  else
    while number >= 1
      n=number*n
      number-=1
    end
    return n
  end
end

#define a method factorial that accepts an integer number
  #new variable n is 1
  #if number is 0 return 1
  #else
    #  while number is greater or equal to 1
    #  multiply number by n
    #  subtract 1 from number
  #end
#end