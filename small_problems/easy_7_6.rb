# easy_7_6.rb

def staggered_case(string)
  new_string = ''  
  counter = 1
    string.each_char do |char|
      if char.match(/[A-za-z]/) 
        counter.odd? ? new_string << char.upcase : new_string << char.downcase
        counter += 1
      else
        new_string << char
      end
    end
  new_string  
end

## further exploration
def staggered_case(string, include_nonalpha = true)
  new_string = ''  
  counter = 1
    string.each_char do |char|
      if char.match(/[A-za-z]/) 
        counter.odd? ? new_string << char.upcase : new_string << char.downcase
        counter += 1
      else
        new_string << char
        counter += 1 if include_nonalpha == true
      end
    end
  new_string  
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!', false) #== 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') #== 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'