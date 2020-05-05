[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# same map function that will return a new array based on the truthiness
# of the block passed through the method. Evaluating the last statement
# only 1 will appear since it has truthiness. The if statment returns
# nil because puts is by default nil