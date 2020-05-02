def multiply(numbers, value)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    doubled_numbers << numbers[counter] * value

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)