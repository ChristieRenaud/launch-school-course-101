def balanced?(string, opening_char, closing_char)
  return false if string.count(opening_char) != string.count(closing_char)
  left_par = 0
  right_par = 0
  string.each_char do |char|
    left_par +=1 if char == opening_char
    right_par +=1 if char == closing_char
    return false if right_par > left_par
  end
  true   
end

def totally_balanced?(string, opening_char_1, closing_char_1, opening_char_2, closing_char_2)
  if balanced?(string, opening_char_1, closing_char_1) &&
          balanced?(string, opening_char_2, closing_char_2)
    true
  else
    false
  end
end

p totally_balanced?("What (is) {this}?", "(", ")", "{", "}") #true
p totally_balanced?("{What (is) this?", "(", ")", "{", "}") #false
p totally_balanced?("(What {is} this?)", "(", ")", "{", "}") #true
p totally_balanced?("(What (is) }this?{)", "(", ")", "{", "}") #false