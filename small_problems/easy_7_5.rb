def staggered_case(string)
  new_string = ''  
  counter = 0
    string.each_char do |char|
      counter += 1
      if char.match(/[A-za-z]/) 
        if counter.odd?
        new_string << char.upcase 
        else
        new_string << char.downcase 
        end
      else
        new_string << char
      end
    end
  new_string  
end

##Further Exploration

def staggered_case(string, first_char_upper = true)
  result = ''
  first_char_upper == true ? need_upper = true : need_upper = false
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', false) 
p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'