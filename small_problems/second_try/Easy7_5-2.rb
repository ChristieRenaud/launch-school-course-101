#input: a string
#output: a new string with every other character of first string capitalized
#Approach:
# iterate through string using index
# if char index is even, capitalize char
# if char index is odd, lowercase char
# join and return string if necessary

# def staggered_case(string)
#   staggered_string = ''
#   string.chars.each_with_index do | elem, idx |
#     staggered_string << elem.upcase if idx.even?
#     staggered_string << elem.downcase if idx.odd?
#   end
#   staggered_string
# end
# Further Exploration
def staggered_case(string, first_char_upcase = true)
  result = ''
  first_char_upcase ? need_upper = true : need_upper = false
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


#test cases:
p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', false)
# p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'