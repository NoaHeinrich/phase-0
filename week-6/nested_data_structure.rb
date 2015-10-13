# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
puts array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# puts hash[outer][inner]["almost"][3]
# puts hash[outer:][inner:]["almost"][3]
puts hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
puts nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |val|
  if val.class==Array
    val.map! { |v| v += 5 }
  else
    val += 5
  end
end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# startup_names.map! do |name|
#   if name.class==Array
#     name.map! do |n|
#       if n.class==Array
#         n.map! {|s| s + "ly"}
#       else
#         n + "ly"
#       end
#     end
#   else
#     name + "ly"
#   end
# end


#refactored solution
def addly(array)
  array.map! do |name|
    if name.class==Array
      addly(name)
    else
      name + "ly"
    end
  end
  return array
end
=begin
What are some general rules you can apply to nested arrays?
Always remember the way that arrays are keyed (0, 1, 2, etc), and remember that an entire array only takes up one slot when its nested in another array.

What are some ways you can iterate over nested arrays?
Most enumerable methods, like each and map, work on nested arrays, but only if you tweak them a bit, usually with an if statement, and using a detection method that will let the program know its looking at an array. Essentially, you can repeat the enumerable method you used on the outer array, and tell it to apply to any inner array it detects.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We ended up using .class instead of .kind_of? since we had some trouble implementing it. It doesn't look as good, but it work just as well. We also made good use of .map!, which is a good way of iterating through an array and making sure that the changes are destructive. When we refactored, we also made a recursive method, which was much DRYer than our first idea.
=end
