fruits = ['apple', 'banana', 'pear']
transformed_elements = [] # initialize an empty array
counter = 0 # initialize a counter

loop do
  current_element = fruits[counter]

  transformed_elements << current_element + 's' # appends transformed string into array

  counter += 1
  break if counter == fruits.size
end

p transformed_elements
