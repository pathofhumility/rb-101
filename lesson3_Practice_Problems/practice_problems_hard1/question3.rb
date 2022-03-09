# A
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => one is: one
puts "two is: #{two}" # => two is: two
puts "three is: #{three}" # => three is: three

# No surprises here. Within the method there is only re-assignment, no mutation.

# B
def b_mess_with_vars(one_b, two_b, three_b)
  one_b = "two"
  two_b = "three"
  three_b = "one"
end

one_b = "one"
two_b = "two"
three_b = "three"

b_mess_with_vars(one_b, two_b, three_b)

puts "one is: #{one_b}" # one is: one
puts "two is: #{two_b}" # two is: two
puts "three is: #{three_b}" # three is: three

# Again, no surprises. The method only re-assigns, no effect on the main
# local variables.

# C
def c_mess_with_vars(one_c, two_c, three_c)
  one_c.gsub!("one", "two")
  two_c.gsub!("two", "three")
  three_c.gsub!("three", "one")
end

one_c = "one"
two_c = "two"
three_c = "three"

c_mess_with_vars(one_c, two_c, three_c)

puts "one is: #{one_c}" # one is: two
puts "two is: #{two_c}" # two is: three
puts "three is: #{three_c}" # three is: one

# Again no surprisies.
# Within the method because multiple variables reference the same object,
# when mutation occurs, all the variables referencing the mutated object
# are effected.
