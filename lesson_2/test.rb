array = [true, false]

true_count = 0
false_count = 0
loop do
  answer = array.sample

  p answer
  
  
  if answer == true
    true_count += 1
  else
    false_count += 1
  end
  p true_count
  p false_count
  

  puts "Please enter y to continue resulting"
  continue = gets.chomp
  break unless continue.downcase.include?('y')

end
