# loan_calculator.rb

def prompt(message)
  puts "=> #{message}"
end

def integer_or_float(num)
  if num.include? '.'
    num.to_f()
  else
    num.to_i()
  end
end

def valid?(num)
  valid_integer(num) || valid_float(num)
end

def valid_integer(num)
  num.to_i().to_s() == num
end

def valid_float(num)
  num.to_f().to_s() == num
end

prompt("Welcome to the Mortgage / Car Loan calculator!")

name = ''
loop do
  prompt("What is your name?")
  name = gets.chomp
  if name.empty?()
    prompt("Please make sure to enter your name.")
  else
    break
  end
end

prompt("Hello #{name}! Lets start calculating!")
loop do # main loop
  loan_amount = ''
  loop do
    prompt("What is the loan amount total?")
    loan_amount = gets.chomp
    if valid?(loan_amount)
      loan_amount = integer_or_float(loan_amount)
      break
    else
      prompt("Hmm... That doesn't look like a proper value. Please try again.")
    end
  end

  apr_amount = ''
  loop do
    prompt("What APR are you getting on this loan?")
    apr_amount = gets.chomp
    if apr_amount.include? '.'
      prompt("Please enter it as a whole number.")
    elsif valid?(apr_amount)
      apr_amount = integer_or_float(apr_amount)
      apr_amount = apr_amount.to_f() * 0.01 # Makes this a percentage decimal.
      break
    else
      prompt("Hmm... That doesn't look like a proper value. Please try again.")
    end
  end

  loan_duration = ''
  loop do
    prompt("What is the duration of the loan in months?")
    loan_duration = gets.chomp
    if valid?(loan_duration)
      loan_duration = integer_or_float(loan_duration)
      break
    else
      prompt("Hmm... That doesn't look like a proper value. Please try again.")
    end
  end

  monthly_interest = apr_amount / 12

  monthly_payment = loan_amount * (monthly_interest / (1 -
    (1 + monthly_interest)**(-(loan_duration))))

  prompt("Your monthly payment will be #{monthly_payment.round(2)}.")

  prompt("Do you want to calculate another loan? (Y to continue)")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Loan Calcualtor. Goodbye!")
