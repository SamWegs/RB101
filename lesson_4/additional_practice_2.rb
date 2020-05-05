ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age_array = [] # initialize and empty array to store just the values
ages.each_with_object(age_array) do |pair, array| # each__with_object to gain only the values
	array << pair.last # push only the age value to the array which returns in age_array
end

p age_array.sum # call sum on the array of ages