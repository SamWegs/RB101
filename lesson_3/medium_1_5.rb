 limit = 15 # limit is not within the scope of the method fib

def fib(limit, first_num, second_num) # made limit an argument to be passed in
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(limit, 0, 1) # passed the limit value
puts "result is #{result}"
