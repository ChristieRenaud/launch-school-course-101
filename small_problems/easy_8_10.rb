def center_of(string)
  length = string.size/2.0
  length.to_i.to_f == length ? string[length.to_i - 1, 2] : string[length.to_i]
end


p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'