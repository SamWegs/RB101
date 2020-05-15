words = "the flintstones rock"

=begin
words = words.split(" ") # make each word into an element within an array

words.each do |char|
	char[0] = char[0].upcase # assign the first letter of each element to an upcase version
	words # return words
end

p words.join(" ") # transfer the array of finished words back to a string
=end

p words.split.map { |word| word.capitalize }.join(' ')