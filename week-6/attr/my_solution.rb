#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

class NameData
  def intialize
    @name="Noah"
  end
end


class Greetings

  def initialize
    @user=NameData.new
  end

  def hello
      puts "Hello " + @user.intialize + "! Fancy seeing you here!"
  end

end



# Reflection
=begin
What are these methods doing?
The methods in release 1 are printing information stored in instance variables, and then changing the values stored there, and then printing the updated inforamtion.

How are they modifying or returning the value of instance variables?
They are using seperate instance methods to modify or return each one.

What changed between the last release and this release?
They added an attr_reader before the initalize method, and deleted the method that returned age.

What was replaced?
The .what_is_age method has now been replaced with .age, which automatically returns the age.

Is this code simpler than the last?
It is, since the new method for finding out this variable is just one line long, and can be called on with .age instead of a longer method name.

What changed between the last release and this release?
They added an attr_writer for age, and used that to change the age variable in the class.

What was replaced?
The method which changed the value of the variable age has been replaced with the attr_writer.

Is this code simpler than the last?
Yes, since this is another method which has been reduced to a single line.

What is a reader method?
A reader method is an instance method that returns or prints the data of a particular variable. It is defined by typing attr_reader :variable, and called on by typing class.variable, which will return the variable.

What is a writer method?
A writer method allows you to set new data for an instance variable. You definie it by typing attr_writer :variable, and edit the variable by typing class.variable(value). This will automatically change the variable to the new value.

What do the attr methods do for you?
They allow you to save time and space when defining a class. Without them, if you wanted to view or edit the data of an instance variable, you would have to write two different instance methods. These are single line solutions that accomplish the same task.

Should you always use an accessor to cover your bases? Why or Why not?
You should not always use an accessor for every variable. There may be some variables that you want a user to be able to see, but not change. If every variable has an accessor, then anybody could change the variables in any way they liked, which might wreak havoc on your code.

What is confusing to you about these methods?
I'm not entirely certain why they have to be defined before the intialize method. And I am also unclear on what would happen if you defined something like attr_reader :age, but didn't have an @age variable. How does the reader know that :age and @age mean the same thing? I also am not sure how we could have used these methods for the last part of the challenge.
=end