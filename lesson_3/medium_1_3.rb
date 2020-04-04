def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do # create a conditional while loop to evaluate there is no 0
    # number % divisor == 0 is there to make sure when dividing we only assess whole numbers
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors # calls the method to return all the changes made within the method.
end

p factors(5)
