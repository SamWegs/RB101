# loan_calculator.rb
require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')

loop do
  puts("=> English (en) or Spanish (es)? / Inglés (en) o español (es)?")
  lang_answer = gets.chomp
  lang_answer.downcase()
  if lang_answer.include?('en') || lang_answer.include?('english')
    puts("=> Language set to ENGLISH.")
    LANGUAGE = 'en'
    break
  elsif lang_answer.include?('es') || lang_answer.include?('spanish')
    puts("=> Idioma configurado en ESPAÑOL.")
    LANGUAGE = 'es'
    break
  else
    puts("=> Error, please input language preference. /
    Error, ingrese la preferencia de idioma.")
  end
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
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

prompt('welcome')

loop do
  loan_amount = ''
  loop do
    prompt('loan_amount')
    loan_amount = gets.chomp
    if valid?(loan_amount)
      loan_amount = integer_or_float(loan_amount)
      break
    else
      prompt('num_error')
    end
  end

  apr_amount = ''
  loop do
    prompt('apr_amount')
    apr_amount = gets.chomp
    if apr_amount.include? '.'
      prompt('apr_float_error')
    elsif valid?(apr_amount)
      apr_amount = integer_or_float(apr_amount)
      apr_amount = apr_amount.to_f() * 0.01 # Makes this a percentage decimal.
      break
    else
      prompt('num_error')
    end
  end

  loan_duration = ''
  loop do
    prompt('loan_duration')
    loan_duration = gets.chomp
    if valid?(loan_duration)
      loan_duration = integer_or_float(loan_duration)
      break
    else
      prompt('num_error')
    end
  end

  monthly_interest = apr_amount / 12

  monthly_payment = loan_amount * (monthly_interest / (1 -
    (1 + monthly_interest)**(-(loan_duration))))

  prompt('payment_statement')
  puts("=> $#{monthly_payment.round(2)}")
  prompt('again')
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt('goodbye')
