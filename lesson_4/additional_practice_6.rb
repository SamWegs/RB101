flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

<<<<<<< HEAD
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
=======
# iterate through the array
# on each element, select only the first 3 chars
# return a new array with these chars.

=begin
short_names = []
flintstones.each_with_object(short_names) do |name, array|
  array << name[0..2]
end

p short_names
=end

p flintstones.map! { |name| name[0,3] }

#map will iterate on each element, execute the block, and then collect the new values into a new array.
>>>>>>> 2b0f5c87e29495f3d7e9261e7454dbbcd97c1838
