#Easy7_6-2fe.rb

def staggered_case_ignore(string)
  result = ''
  need_upper = true
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

def staggered_case_dont_ignore(string)
  result = ''
  need_upper = true
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

def staggered_case(string, ignore = true)
  ignore ? staggered_case_ignore(string) : staggered_case_dont_ignore(string)
end

p staggered_case('I Love Launch School!', true) #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!', false) #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') #== 'AlL cApS'
p staggered_case('ALL CAPS', false) #== 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', false) #== 'IgNoRe 77 ThE 444 nUmBeRs'
p staggered_case('ignore 77 the 444 numbers', true) #== 'IgNoRe 77 ThE 444 nUmBeRs'