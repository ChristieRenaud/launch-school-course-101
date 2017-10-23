#input: a string
#output: an integer that is the ASCII string value of a string

#approach:
#split string into array of characters
#map ASCII values to array using String#ord
#Find sum of array values

def ascii_value(string)
  return 0 if string.empty?
  string.chars.map { |char| char.ord }.inject(:+)
end

#test cases:
p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #== 97
p ascii_value('') #== 0