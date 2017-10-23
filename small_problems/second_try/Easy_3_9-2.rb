# input: string
# output: true or false
# Returns true if string is a palindrome, false if not. Ignore all non-alphanumeric chars. Use palindrome? form previous exercise.

#Approach
#-remove non-alphanumeric characters from string
#-call palindrome? on modified string
#-call downcase to ignore case

def real_palindrome?(string)
  new_string = string.gsub(/[^a-z0-9]/i, '').downcase
  palindrome?(new_string)

end






def palindrome?(string)
  string == string.reverse
end


p real_palindrome?('madam') #== true
p real_palindrome?('Madam') #== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') #== true
p real_palindrome?('356a653') #== true
p real_palindrome?('123ab321') #== false