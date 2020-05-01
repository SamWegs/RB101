alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = '' # initialize an empty string
counter = 0 # initialize a counter

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char # appends current_char into the selected_chars string
  end

  counter += 1
  break if counter == alphabet.size
end

p selected_chars
