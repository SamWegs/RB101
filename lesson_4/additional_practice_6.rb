flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

short_name = []
flintstones.each do | name |
	short_name << name[0..2]
end

p short_name

=begin
	
flintstones.map! do |name|  # map! will modify the current array and pull only the elements index 0-2 for each name since 3 is the end point map does one less than the end.
  name[0, 3]
end
	
end