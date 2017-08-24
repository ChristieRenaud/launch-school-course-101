# #easy_7_10.rb
require 'pry'
def penultimate(string)
  words = string.split(' ')
  words[-2]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'

# further exploration
def middle_word(string)
  words = string.split
  case words.size.odd?
  when true
    index = (words.size/2) 
    words[index]
  when false
    "Unable to determine middle word. An odd number of words are necessary."
  end
end  

p middle_word("hi ho hi ho!")
p middle_word("Off to work we go")
p middle_word('')