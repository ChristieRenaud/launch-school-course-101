#Easy7_10-2.rb

#input: A string of at least 2 words
#output: A string that represents the second to last word
#Specifications: words are any sequence of non-blank chars

#approach:
# Split string on white space to an array
# Return second to last element of array using element reference

def penultimate(string) 
  string.split[-2]
end

#further exploration
def middle_word(string)
  words_array = string.split
  middle_index = words_array.length/2
  words_array.length.even? ? number = 2 : number = 1
  words_array[middle_index, number].join(' ')
end

test cases:
p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'

p middle_word('Launch School is so great!') #== 'is'
p middle_word('How are you today')
p middle_word('Hello')
p middle_word('')
