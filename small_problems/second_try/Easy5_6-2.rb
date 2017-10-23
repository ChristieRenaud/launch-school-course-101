#input: a string with one or more space separated words(string of characters that don't include a space)
#output: a hash that shows the number of words of each size

#approach:
# split string into an array of words
# count chars in each word
# find unique numbers
# save numbers as hash keys
# count matching numbers
# save count to corresponding hash values

def word_sizes(string)
  # words = Hash.new(0) 
  word_sizes = string.split.map{ |word| word.size }
  unique_sizes = word_sizes.uniq
  counter = 0
  while counter < unique_sizes.size
  words[unique_sizes[counter]] = word_sizes.count(unique_sizes[counter])
  counter += 1
  end
  words
end

# test cases:

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}