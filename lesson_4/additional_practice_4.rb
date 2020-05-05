ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

=begin
minimum_age = []
ages.select do |key, value|
	if value < 20
		minimum_age << value
	end
end

p minimum_age

=end

p ages.values.min # simpler version