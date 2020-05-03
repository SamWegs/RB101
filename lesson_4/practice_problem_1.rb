p [1, 2, 3].select do |num|
	num > 5
	'hi'
end

# since .select evaluates the last line of the block for truthiness,
# the string 'hi' returns as a truthy value. Select will return a
# new array containing all of the elements in the original array.