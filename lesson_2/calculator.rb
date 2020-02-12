# calculator.rb

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_integer?(num)
  num.to_i().to_s() == num
end

def valid_float?(num)
  num.to_f().to_s() == num
end

def integer_or_float(num)
  if num.include? '.'
    num.to_f()
  else
    num.to_i()
  end
end

def valid?(num)
  valid_integer?(num) || valid_float?(num)
end

def operation_to_message(op)
  word_op = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['name'] + "#{name}")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()

    if valid?(number1)
      number1 = integer_or_float(number1)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp()

    if valid?(number2)
      number2 = integer_or_float(number2)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operator'])
    end
  end

  prompt("#{operation_to_message(operator)} #{number1} and #{number2}...")

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1.to_f() / number2.to_f() #since division leave the float
           end

  prompt(MESSAGES['result'] + "#{result}")

  prompt(MESSAGES['again'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
