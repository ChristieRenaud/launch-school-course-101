#inputs: a string
#outputs: true or false
# checks if string reads same forwards and backwards. Case, punctuation and space matter

#approach
#compare string to string reversed
#if they are == return true, if not return false

def palindrome?(string)
  string == string.reverse

end


#test cases
p palindrome?('madam') #== true
p palindrome?('Madam') #== false          # (case matters)
p palindrome?("madam i'm adam") #== false # (all characters matter)
p palindrome?('356653') #== true

def ary_palindrome?(array)
  array == array.reverse
end

p ary_palindrome?([1, 2, 3, 2, 1]) #== true
p ary_palindrome?(['M', 'a', 'd', 'a', 'm']) #== false         
p ary_palindrome?(['m', 'a', 'd', 'a', 'm']) #== true
p ary_palindrome?(['123']) #== true
