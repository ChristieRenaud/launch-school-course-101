def uppercase?(string)
  string.delete('^a-zA-Z').chars.all? do |char|
    char =~ /[A-Z]/
  end
end

# alternative solution
def uppercase?(string)
  string == string.upcase
end


p uppercase?('t') # == false
p uppercase?('T') #== true
p uppercase?('Four Score') #== false
p uppercase?('FOUR SCORE') #== true
p uppercase?('4SCORE!') #== true
p uppercase?('') #== true