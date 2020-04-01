VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_CHOICES_SHORT = ['r', 'p', 'sc', 'l', 'sp']
user_score = 0
computer_score = 0

def rock_win(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard')
end

def paper_win(first, second)
  (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock')
end

def scissor_win(first, second)
  (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard')
end

def lizard_win(first, second)
  (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper')
end

def spock_win(first, second)
  (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors')
end

def win?(first, second)
  if first == 'rock'
    rock_win(first, second)
  elsif first == 'paper'
    paper_win(first, second)
  elsif first == 'scissors'
    scissor_win(first, second)
  elsif first == 'lizard'
    lizard_win(first, second)
  elsif first == 'spock'
    spock_win(first, second)
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
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

  if VALID_CHOICES_SHORT.include?(choice)
    choice = case choice
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

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice.upcase()}. Computer chose:
  #{computer_choice.upcase()}.")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    user_score += 1
    prompt("User Score: #{user_score} | Computer Score: #{computer_score}")
    if user_score == 5
      prompt("User has won this match! Come back again!")
      break
    end
  elsif win?(computer_choice, choice)
    computer_score += 1
    prompt("User Score: #{user_score} | Computer Score: #{computer_score}")
    if computer_score == 5
      prompt("Computer has won this match! Come back again!")
      break
    end
  else
    prompt("No points awarded... User Score: #{user_score} | Computer Score:
      #{computer_score}")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
