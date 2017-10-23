#input: a string
#input: an array that represents a list of all substrings of the string that are palindromic
# Specifications:
# a palindromic string consists of the same sequence of characters forwards and backwards
# single characters are not palindromes

# approach
# save all substrings to a new array
# iterate through array and select substrings that are longer than 1 character and the same forwards and reversed

def substrings_at_start(string)
  strings_array = (1..(string.length)).map { |idx| string[0, idx] }
  strings_array.sort_by { |string| string.length }
end

def substrings(string)
  all_substrings_array = []
  0.upto(string.length - 1) do |idx|
    all_substrings_array += substrings_at_start(string[idx..string.length - 1])
  end
  all_substrings_array
end

# def palindromes(string) 
#   test_substrings = substrings(string)
#   test_substrings.select do |substring|
#     substring.length > 1 && substring == substring.reverse
#   end
# end

def palindromes(string) 
  test_substrings = substrings(string)
  test_substrings.select do |substring|
    substring.length > 1 && substring.downcase.gsub(/[^A-Z0-9]/i, '') == substring.downcase.gsub(/[^A-Z0-9]/i, '').reverse
  end
end


# test cases
p palindromes('abcd') #== []
p palindromes('Madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') #== [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]