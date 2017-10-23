#input: a string
#output: true or false depending on whether al the characters in string are uppercase
#specifications: if any character is lower case, return false. Ignore nonalphabetic characters

#approach:
#split into characters
# iterate over, checking to see if any match lowercase letters
# - if they do return false
# - if not return true

def uppercase?(string)
  string.match(/[a-z]/) ? false : true
end
#test cases:
p uppercase?('t') #== false
p uppercase?('T') #== true
p uppercase?('Four Score') #== false
p uppercase?('FOUR SCORE') #== true
p uppercase?('4SCORE!') #== true
p uppercase?('') #== true