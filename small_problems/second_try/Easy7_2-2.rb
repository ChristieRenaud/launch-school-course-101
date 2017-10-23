#input: a string
#output: a hash with 3 entries: no. of lowercase letters, no. of uppercase letters, no of chars that are neither

#approach
#initialize a hash
# use string.count to determine lowercase letters, add to correct hash
# count uppercase letters, add to correct hash
# count chars that are neither uppercase letters or lowercase letters, add to hash
# return hash

def letter_case_count(string)
  hsh = {}
  hsh[:lowercase] = string.count('a-z')
  hsh[:uppercase] = string.count('A-Z')
  hsh[:neither] = string.count('^a-zA-Z')
  hsh
end


#test cases:
p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }