# Create an array of student names from the cohort
# Define a method that accepts an array
# Break array down into smaller arrays of four to five

#Initial Solution
roster=["Joshua Abrams", "Syema Ailia", "Kris Bies", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "JAMES KIRKPATRICK", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

def group_maker(array)
  x=0
  new_array=[]
  while x < array.size
    if x%5==0
        new_array << "\\" << array[x] << array[x-1] << array[x-2]  << array[x-3] << array[x-4]
    end
    x+=1
  end
  return new_array
end
group_maker(roster)

#Add complexity and refactor
roster=["Joshua Abrams", "Syema Ailia", "Kris Bies", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "JAMES KIRKPATRICK", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

def group_maker(array)
  array.shuffle!
  if array.count%4==0
    new_array=array.each_slice(4).to_a
  elsif array.count%3==0
    new_array=array.each_slice(3).to_a
  else
    new_array=array.each_slice(5).to_a
  end
end
group_maker(roster)


#What was the most interesting and most difficult part of this challenge?
#The most interesting thing was the idea of taking a long array, and breaking it down into sub groups. This was also the tough part, since I didn't know how to do that without using methods. Instead I opted to insert dividers into a large array, to show what divides the groups.

#Do you feel you are improving in your ability to write pseudocode and break the problem down?
#I think that I am, but I have also noticed that my pseudocode is also not the best at encompassing each individual step, and often breaks down once its out of the gate. However, I think that I am getting there, step by step.

#Was your approach for automating this task a good solution? What could have made it even better?
# My approach for automating the task in the intial solution was crude. I've been told that loops like this use up a lot of time. Maybe each or each_index would have worked better, but it seemed more complicated to me.

#What data structure did you decide to store the accountability groups in and why?
# In my initial solution I stored them in one big array, divided by // to show who was in each group. In my second solution I stored them in a multidimensional array, with each group placed in its own sub-array.

#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#I learned that the .each_slice method is a very efficient way of breaking down a large array into sub-arrays. I also learned .shuffle, which makes randomizing a list easy as well.