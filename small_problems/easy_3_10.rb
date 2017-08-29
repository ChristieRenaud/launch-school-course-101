def palindromic_number?(number)
  number = number.to_s
  number == number.reverse
end

palindromic_number?(34543)
palindromic_number?(123210)
palindromic_number?(22)
palindromic_number?(050)

#-------------
def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

#-------------

def palindromic_number?(number)
  if number[0] == 0
    number = number.to_s