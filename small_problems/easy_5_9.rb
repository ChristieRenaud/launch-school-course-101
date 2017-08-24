def crunch(string)
  new_string = [string[0]]
  string.chars.each do |char|
    new_string << char unless new_string[-1] == char
  end
  new_string.join
end



p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''