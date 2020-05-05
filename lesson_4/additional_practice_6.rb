flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

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