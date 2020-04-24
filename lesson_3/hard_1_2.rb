greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => "hi there" since the string#<< operator is transforming ontop
# of an objects ID instead of making a copy and changing the copy.
