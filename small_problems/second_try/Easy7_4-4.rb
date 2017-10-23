#input: a string
#output: a new string with each letter's case swapped

# Approach:
# Separate string into characters
# Iterate through array, check if char is uppercase
# - if so call downcase
# Check if char is lowercase
# - if so call upcase on char
# if neither, leave char as is
# join array into string

def swapcase(string)
  swapped_string = string.chars.map do | char |
    if char.match(/[A-Z]/)
      char.downcase
    elsif char.match(/[a-z]/)
      char.upcase
    else
      char
    end
  end
  swapped_string.join
end


#test cases:
p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'