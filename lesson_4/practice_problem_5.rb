hash = { a: 'ant', b: 'bear' }
p hash.shift

# Shift removes a key-value pair from the hash and since there is no
# block, it will by default remove the first element a: 'ant' and put
# it into a new array.