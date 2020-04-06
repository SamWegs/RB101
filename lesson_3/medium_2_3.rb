def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # Creates a new string within the method and not avaiable outside the scope.
  an_array_param << "rutabaga" #mutates the array to the outter scope
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
