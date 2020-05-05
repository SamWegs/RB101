numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# 1, 3
# prints the first element, it then calls shift which removes the first element (1). Since it has already iterated on index 0, the next start of the iteration will begin on 3, which
# or index (1).
	
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1, 2
# prints the first element, then pop removes the last emelent (4) right away in the same iteration. Then prints 2, and in the same iteration removes 3 via pop.