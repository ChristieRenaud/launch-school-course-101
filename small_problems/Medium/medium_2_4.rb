def balanced?(string)
  return false if string.count('(') != string.count(')')
  left_par = 0
  right_par = 0
  string.each_char do |char|
    left_par +=1 if char == "("
    right_par +=1 if char == ")"
    return false if right_par > left_par
  end
  true   
end





p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false