# medium_2_3.rb
require "pry"
def num_of_uppercase(string)
  string.count('A-Z')
end

def num_of_lowercase(string)
  string.count('a-z')
end

def letter_percentages(string) 
  string_float = string.size.to_f
  lowercase_percentage = (num_of_lowercase(string)/string_float) * 100
  #binding.pry
  uppercase_percentage = (num_of_uppercase(string)/string_float) * 100
  neither_percentage = (string.size - (num_of_uppercase(string) + num_of_lowercase(string)))/string_float * 100
  percentages = {lowercase:lowercase_percentage, uppercase:uppercase_percentage,
  neither:neither_percentage}
end








p letter_percentages('abCdef 123')# == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }
