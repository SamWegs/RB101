p ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# returns enumerator error since there is no valid block for each_with_object
# to execute. This should be returning each element of the array
# as a value assigned to the first letter of each value making the
# key. { "a" => "ant", "b" => "bear", "c" => "cat"}