#input: string of words separated by spaces
#output: a string, with the first and last letters of every word swapped

#approach:
# split string into an array
# iterate through the array
# use parallel assignment to swich first and last letters
# join array into a string using spaces as delimiters

def swap(string)
  string = string.split.map do |word| 
    word[0], word[-1] = word[-1], word[0]
    word
  end
  string.join(' ')
end


#test cases:
p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'