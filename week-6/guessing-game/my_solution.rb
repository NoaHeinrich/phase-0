# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer
# Output: :correct, :low, or :high, true or false
# Steps:
# DEFINE a class, GuessingGame
  # Initiatlize to accept an integer
  # Integer is saved as @answer
  # @status is equal to false
  # DEFINE instance method, "guess"
    # Accept an integer
      # IF integer is greater than @answer, RETURN :high
      # ELSIF integer is less than @answer, RETURN :low
      # ELSE integer is equal to @answer, RETURN :correct
        # set @status equal to true
  #DEFINE instance method, "solved?"
    # IF @status equals false, RETURN false
    # ELSIF @status equals true, RETURN true



# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer=answer
    @status=false
  end

  def guess(num)
    if num > @answer
      @status=false
      return :high
    elsif num < @answer
      @status=false
      return :low
    elsif num==@answer
      @status=true
      return :correct
    end
  end

  def solved?
    if @status==true
      return true
    elsif @status==false
      return false
    end
  end

end




# Refactored Solution
class GuessingGame
  def initialize(answer)
    if answer.class != Fixnum
      raise ArgumentError.new ("Please input a number")
    end
    @answer=answer
    @status=false
  end

  def guess(num)
    if num > @answer
      @status=false
      :high
    elsif num < @answer
      @status=false
      :low
    elsif num==@answer
      @status=true
      :correct
    end
  end

  def solved?
    if @status==true
      true
    elsif @status==false
      false
    end
  end

end





# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
I'm not sure if by "real-world" you mean outside of a class, or outside of a computer. If the former, they act just like objects normally would, except they are restricted to the class, and can be passed between methods.

When should you use instance variables? What do they do for you?
You should use instance variables if you need to pass information on from one instance method to another. For example, in this challenge, the user's answer in the initialize method can be accessed and compared by the other methods. They are a very convenient way of keeping data constant within a class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is a way of making sure that the correct actions are taken at the right times. You can do this using loops, or conditionals like "if else". Flow control was fairly simple for me in this challenge, since all I used were a series of if elsif statements. I did briefly forget that when you return a variable, you can't do anything else after that return.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I do know that symbols are saved as unique objects within the code, unlike a normal variable, which can be defined over and over. I'm not entirely certain of what use the sybols in this exercise have, hwoever. At least the way I've written the code, returning strings would have had the same effect.
=end
