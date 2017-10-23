#Easy7_6-2.rb
#input: a string
#output: a string with alternating capitals that ignores non-alphabetic chars, but includes them in result

#Approach
#take method from last exercise
#iterate through chars
#-if char is non-alpha, add to string as is and don't toggle variable

def staggered_case(string, first_char_upcase = true)
  result = ''
  first_char_upcase ? need_upper = true : need_upper = false
  string.chars.each do |char|
    if char =~ /[^a-z]/i
      result += char
      next
    end
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

# test cases
p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') #== 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'