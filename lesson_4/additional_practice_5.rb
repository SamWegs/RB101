flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  p index if name.include?("Be")   
end

# p flintstones.index { |name| name[0, 2] == "Be" }

