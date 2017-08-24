def letter_case_count(string)
  lowercase_count = string.count('a-z')
  uppercase_count = string.count('A-Z')
  neither_count = string.count('^A-Za-z')
  result_hash = { lowercase: lowercase_count,
                  uppercase: uppercase_count,
                  neither: neither_count }
end  



p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }