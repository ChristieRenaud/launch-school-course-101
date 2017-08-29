def palindrome?(string)
  string == string.reverse
end


palindrome?('madam')
palindrome?('Madam')
palindrome?("madam i'm adam")
palindrome?('356653')



def palindrome?(array)
  array == array.reverse
end

palindrome?(['m','a','d', 'a', 'm'])
palindrome?(['M','a','d', 'a', 'm'])
palindrome?(['m', 'a', 'd', 'a', 'm', ' ','i', 'm', 'a', 'd', 'a', 'm'])
palindrome?([3, 5, 6, 6, 5, 3])

def palindrome?(value)
  value == value.reverse
end

palindrome?(['m','a','d', 'a', 'm'])
palindrome?('madam')
palindrome?('Madam')
palindrome?("madam i'm adam")
palindrome?('356653')
palindrome?([3, 5, 6, 6, 5, 3])
