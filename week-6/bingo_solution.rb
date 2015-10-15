# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.


# Release 0: Pseudocode
# Outline:
# Define a class BingoBoard, which accepts 5 nested arrays

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Define an array with b i n g o in it
  # return a random letter from the array, plus a random number between 1 and 100

# Check the called column for the number called.
  # Iterate through each array: to see if the called number is in the column

# If the number is in the column, replace with an 'x'
  # Replace number with x

# Display a column to the console
  # puts each row to the console

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @columns=["B", "I", "N", "G", "O"]
  end


  def call
    number=Random.new
    @letter=@columns.sample
    @num=number.rand(1..100)
    puts @letter + @num.to_s

  end

  def check

    case @letter
    when "B"
      @letter=0
    when "I"
      @letter=1
    when "N"
      @letter=2
    when "G"
      @letter=3
    when "O"
      @letter=4
    end

    @bingo_board.each do |row|
      if row[@letter]==@num
        row[@letter]="X"
      end
    end
    @bingo_board.each {|row| p row}
  end

end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @columns={"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
  end


  def call
    number=Random.new
    letter_array=@columns.keys
    @letter=letter_array.sample
    @num=number.rand(1..100)
    puts @letter + @num.to_s
  end

  def check
    @bingo_board.each do |row|
      if row[@columns[@letter]]==@num
        row[@columns[@letter]]="X"
      end
    end
    @bingo_board.each {|row| p row}
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding was difficult, but not as difficult as it could have been. Honestly, the way the challenge is set up made it more difficult. Each larger step was in there, and it threw me off a bit. I think my pseudocoding style is improving though.

What are the benefits of using a class for this challenge?
You can save the variables such as letter and number across methods much easier with a class. Without a class, each method would have to accept strange arguments, and would just be a mess overall.

How can you access coordinates in a nested array?
The normal way is to write an array access as normal, but after you add the first key, add the key of the inner array. For example, if your array is [1, 2, 3, [4, 5]]. You access the 4 in this array by typing array[3][0]. The inner array occupies the third spot of the outer array.

What methods did you use to access and modify the array?
I used a simple .each loop to look at every inner array, and then use an if loop to examine each array. If the right spot of the array had the right value, we changed that value to "X".

How did you determine what should be an instance variable versus a local variable?
Instance variables are the ones that you want to access across different methods. My local variables, on the other hand, were ones I only needed to use within each method.

What do you feel is most improved in your refactored solution?
  The biggest improvement in my refactored solution replacing the "BINGO" array with a hash. In the new solution I can find the right array key without using that cumbersome case when statement. This way I can use the hash values to access the correct values in the arrays.
=end