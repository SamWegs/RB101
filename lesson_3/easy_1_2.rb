# != means 'not equal' in the case of a boolean evaluating true or false.
puts "yes" if 3 != 4
puts "yes" if 4 != 4 # This line will not print since it evaluates to false.

# ! before something means 'not' evaluating a boolean of the expression following
array = [1, 2, 3]
puts "yes" if !array.include?(4) # Array does not have the value of 4 so it evaluates to true

# ! after something is a just a regualar value that is a part of the method name.
array_2 = [1, 1, 2, 2, 3, 3]
array_2.uniq!() #modifies array_2 directly meaning it is removing double values in the array_2.
p array_2

# ? before something is the ternary operator for if..else one line statements
puts 3 > 4 ? "yes 3 is greater than 4" : "no, 3 is not more than 4"

# ? after something is a convention to show whether a method returns a boolean value. Just a regualr valid character.
array_3 = ['a', 'b', 'c', 'd']
p array_3.include?('c') #.include?() has a question mark as a part of its name letting you know it's looking for true or false.

# !! before something converts the value to a boolean in the 'not not' evaluation.
p !!'abc' #returns true since the value after the double bang is not 'nil' or 'false'
          #if the value was 'nil' or 'false', the boolean would evaluate to false.
