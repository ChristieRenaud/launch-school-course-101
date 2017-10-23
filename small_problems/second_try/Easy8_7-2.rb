#input: a string
#output: a new string in which every consonant char is doubled

#approach:
# split into an array
#initialize new string
# iterate through array and test if each character is a consonant
# - if it is push to a new string twice
# - if not push char to string once
# return new string

def double_consonants(string)
  doubled_string = ''
  string.each_char do |char|
    char.match(/[a-z&&[^aeiou]]/i) ? doubled_string << char << char : doubled_string << char
  end
  doubled_string
end

#test cases:
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""