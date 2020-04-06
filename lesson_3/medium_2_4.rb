def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga' # adds to the same object ID
  an_array_param = ['pumpkins', 'rutabaga'] # since its a direct change it will not show as this is a new object ID.
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
