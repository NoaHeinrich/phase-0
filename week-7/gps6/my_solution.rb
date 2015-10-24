# Virus Predictor

# I worked on this challenge with: Aaron Tsai.
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative lets you link to another file saved on your computer, one which is not neccessarily included in Ruby.
#
require_relative 'state_data'

class VirusPredictor
  #set arguments into instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls two other methods using instance variables as arguments
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
#     predicted_deaths
#     speed_of_spread
  end

  private

  #Taking instance variables and calculate number of deaths based on population density and print it out
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 0..50 then (@population*0.05).floor
    when 50..100 then (@population*0.1).floor
    when 100..150 then (@population*0.2).floor
    when 150..200 then (@population*0.3).floor
    else (@population*0.4).floor
    end

#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end


  end

  #Taking instance variables and calculate speed of spread, then print out the result of calculation
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
#     speed = 0.0

    case @population_density
    when 0..50 then 2.5
    when 50..100 then 2
    when 100..150 then 1.5
    when 150..200 then 1
    else 0.5
    end

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end


  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_data|
  VirusPredictor.new(state, pop_data[:population_density], pop_data[:population]).virus_effects
end



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One syntax uses the hash rocket, and doesn't need to use symbols, since there's no reason to confuse the states with one another. The second one uses symbols since there are so many keys that have the same names.

What does require_relative do? How is it different from require?
require_relative links the code to another file using a relative path. require, on the other hand, links through an absolute path, and is usually used to access things that are built in to Ruby.

What are some ways to iterate through a hash?
You can iterate through a hash using each, or variations like each_key, each_value, or each_pair.

When refactoring virus_effects, what stood out to you about the variables, if anything?
We realized that all of the variables were instance variables, and so the private methods didn't need to take arguments.

What concept did you most solidify in this challenge?
This challenge helped me solidify the proper uses of classes and instance variables. I also learned the best way to implement case when statements.
=end