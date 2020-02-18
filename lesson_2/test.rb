VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock', 'ass']

def valid_parser()

end

array = []

VALID_CHOICES.each() do |input|
  value = input.split('')
  array << value 
end

first_letter_picker = 2

# if array[][0] == array[][0]

array = array.select { |x| p x.include?('s')}

if array.length() > 1
  array.each() do |x|
    x = 0
    if array[x][0] == array[x + 1][0]
      'error'
      x += 1
    else
      'number is individual'
    end
  end
else
  #this is the answer
end

p array

=begin
if array[0][0] == array[1][0]
  puts "error, this letter exists"
else
  puts "this letter is an individual"
end
=end

=begin
unless array[x][y].include?('s') 
  puts 'error'
  x += 
end
=end

