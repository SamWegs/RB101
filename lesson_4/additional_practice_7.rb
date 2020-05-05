#Create a hash that expresses the frequency with which each letter occurs in this string:
#{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

#-iterate through statement
#-assign each letter within statement to a key
#-for each key, count the occurances of each letter.
#-return the hash

#-each_char


statement = "The Flintstones Rock"

char_hash = {} # Initalize an empty hash
letters = ('A'..'Z').to_a + ('a'..'z').to_a # define the letter ranges we are looking for (alphabet in upcase and alphabet in downcase)
letters.each do |parse|
  letter_frequency = statement.scan(parse).count # assign a variable to the parsing of statment using each letter as the loop and counting the occurances.
  char_hash[parse] = letter_frequency if letter_frequency > 0 #creates the key value of the letter being analyzed and assigns the value of occurances if it atleast happens once.
end

p char_hash


#statement = statement.split("")
#p statement.each_with_object({}) do |key, hash|
#  hash[key] = statement.count(key)
#end