#-input:an integer
#-output:true if its palindromic, false if its not

#approach: change number to a string, run palindrome? on it


def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  number = number.to_s
  palindrome?(number)
end



#test cases

p palindromic_number?(34543) #== true
p palindromic_number?(123210) #== false
p palindromic_number?(22) #== true
p palindromic_number?(5) #== true