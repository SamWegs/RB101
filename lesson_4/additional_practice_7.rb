statement = "The Flintstones Rock"

statement.split('')
statement.each_with_object({}) do |letter, hash|
	p hash[letter[0]] = letter
end

