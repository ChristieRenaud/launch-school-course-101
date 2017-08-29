def swap(string)
  new_strings = []
  string.split(" ").each do |word|
    new_word = word.dup
    new_word[0] = word[-1]
    new_word[-1] = word[0]
    new_strings << new_word
  end
  new_strings.join(' ')
end

######
def swap(string)
  new_strings = []
  string.split(" ").map do |word|
    word[0], word[-1] = word[-1], word[0]
    new_strings << word
  end
  new_strings.join(' ')
end


p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'