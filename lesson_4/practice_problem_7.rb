p [1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# any? looks at the truthiness of the block. puts returns nil by default
# but the last statement would evaluate to a true statement
# meaning the output would be true