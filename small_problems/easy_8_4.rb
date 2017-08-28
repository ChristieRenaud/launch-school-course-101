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




p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]