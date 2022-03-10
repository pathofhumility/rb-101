def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # reassignment. reference to same object as my_string is broken
  an_array_param << "rutabaga" # mutation. mutation occurs thru an_array_param reference
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # => 'pumpkins'
puts "My array looks like this now: #{my_array}"   # => ["pumpkins", "rutabaga"]
