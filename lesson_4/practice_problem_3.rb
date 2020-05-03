p [1, 2, 3].reject do |num|
  puts num
end

# Since puts evaluates to nil, the method reject is going to 
# evaluate to false/nil meaning all of the elements are going to 
# be in the new rejected array.
