def double_consonants(string) 
  results = ''
  string.each_char do |char|
    char.match(/[^aeiou]/i) ? results << char << char : results << char
  end
  results
end  


p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""