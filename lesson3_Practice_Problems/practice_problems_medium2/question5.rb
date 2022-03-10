def tricky_method(a_param)
  param_type = a_param.class.new
  param_type << 'rutabaga'
  a_param += param_type
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string = tricky_method(my_string)
my_array = tricky_method(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
