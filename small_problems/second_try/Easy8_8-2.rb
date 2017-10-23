#Easy8_8-2.rb
#input: an integer
#output: integer with digits reversed

#approach:
# convert to a string
# reverse string
# convert back to an integer

def reversed_number(num)
  num.to_s.reverse.to_i
end

#test cases: 
p reversed_number(12345) #== 54321
p reversed_number(12213) #== 31221
p reversed_number(456) #== 654
p reversed_number(12000)# == 21 # Note that zeros get dropped!
p reversed_number(1) #== 1