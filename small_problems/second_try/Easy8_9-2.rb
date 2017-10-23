#input: a string
#output: middle character if string is odd length or middle 2 chars if string is even
#analysis: if word is odd, return character at position x/2, if even x/2 - 1 and x/2

#approach:
# Find string length
# If length is even, return character at position length/2
# if lengthis odd, return character at position length/2 - 1 and length/2

def center_of(string)
  middle = string.size/2
  string.size.odd? ? string[middle] : string[middle-1, 2]
end

#test cases:
p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'