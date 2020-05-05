flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {} # initialize an empty hash
flintstones.each_with_index do |name, index| # each_with_index to parse the index value
	flintstones_hash[name] = index # assign the key to name and pair that to the index value from each_with_index
end

p flintstones_hash