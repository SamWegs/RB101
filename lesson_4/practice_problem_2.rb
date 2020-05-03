p ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Since the block is evaluating to a boolean, it is looking for how
# many words lengths are smaller than 4 letters. In this case there
# are two words with three letters so the return should be the count
# of those occurances which is 2.

# irb validates this thinking but powershell does not.
