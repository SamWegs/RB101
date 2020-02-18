VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_CHOICES_SHORT = ['r', 'p', 'sc', 'l', 'sp']

def convert_abrv_name(input)
  result = case input
          when 'r'
            'rock'
          when 'p'
            'paper'
          when 'sc'
            'scissors'
          when 'l'
            'lizard'
          when 'sp'
            'spock'
          end
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
  (first == 'paper' && (second == 'rock' ||second == 'spock')) ||
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
  (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
  (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if win?(player, computer)
    ("You won!")
  elsif win?(computer, player)
    ("Computer won!")
  else
    ("It's a tie!")
  end
end

def score_board(player, computer)
  if win?(player, computer)
    user_score += 1
    ("User Score: #{user_score} | Computer Score: #{computer_score}")
  elsif win?(computer, player)
    computer_score += 1
    ("User Score: #{user_score} | Computer Score: #{computer_score}")
  else
    ("No points awarded")
  end
end



loop do
  choice = ''
  user_score = 0
  computer_score = 0
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("or choose: #{VALID_CHOICES_SHORT.join(', ')}")
    choice = Kernel.gets().chomp()
    
    

    if VALID_CHOICES.include?(choice) || VALID_CHOICES_SHORT.include?(choice)
        break
    else
      prompt("That's not a valid choice.")
    end
  end

  choice = convert_abrv_name(choice)

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice.upcase()}. Computer chose: #{computer_choice.upcase()}.")

  prompt(display_results(choice, computer_choice))

 

  prompt(score_board(choice, computer_choice))

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
