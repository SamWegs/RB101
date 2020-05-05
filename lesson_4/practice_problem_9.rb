{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    p value
  end
end

# map returns a new array based on what is passed through a block.
# since this is running on a hash, and evaluating keys, it will
# return an arry of [nil, "bear"]
# since the first element doesnt have truthiness it returns a nil.