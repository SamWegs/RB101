def select_letter(string, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == string.size
    current_char = string[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars.size
end
  
question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a')