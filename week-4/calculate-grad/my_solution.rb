# Calculate a Grade

# I worked on this challenge [with: Kris].


# Your Solution Below
def get_grade(grade)
 if grade < 60
  return 'F'
 elsif 60 <= grade && grade < 70
  return 'D'
 elsif 70 <= grade && grade < 80
  return 'C'
 elsif 80 <= grade && grade < 90
  return 'B'
 else
  return 'A'
 end
end