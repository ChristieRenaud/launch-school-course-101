def substrings_at_start(string)
  result = []
  string.size.times do |i|
    result << string.slice(0, i+1)
  end
  result
end  

def substrings(string) 
  result = []
  0.upto(string.size - 1) do |i|
    result << substrings_at_start(string[i..-1])
  end
  result.flatten 
end

def palindromes(string)
   words = substrings(string).select { |element| element.size >= 2 }
   words.select { |element| element.reverse == element}
end

## further exploration

def substrings_at_start(string)
  result = []
  string.size.times do |i|
    result << string.slice(0, i+1)
  end
  result
end  

def substrings(string) 
  result = []
  0.upto(string.size - 1) do |i|
    result << substrings_at_start(string[i..-1])
  end
  result.flatten 
end

def palindromes(string)
  test_substrings = substrings(string).select { |element| element.delete("^A-Za-z").size >= 2 }
  test_substrings.select do |element| 
    element.delete("^A-Za-z").casecmp(element.delete("^A-Za-z").reverse) == 0 
  end
end






#p palindromes('abcd') # == []
p palindromes('Madam-') #== ['madam', 'ada']
p palindromes('hello-madam-did-madamgoodbye') #== [
  # 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  # 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  # '-madam-', 'madam', 'ada', 'oo'
# ]
#p palindromes('knitting cassettes') #== [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]