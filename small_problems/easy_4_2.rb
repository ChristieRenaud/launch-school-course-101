def century(year)
  century_number = ((year-1)/100) + 1
  last_2_digits = (century_number % 100)
  last_digit = (century_number % 10)
  if (11..13).include?(last_2_digits) ||
    (4..9).include?(last_digit) ||
    last_digit == 0
      suffix = 'th'
  elsif 
    last_digit == 1
      suffix = 'st'
  elsif 
    last_digit == 2
      suffix = 'nd'
  elsif 
    last_digit == 3
      suffix = 'rd'
  end 
  century_number.to_s + suffix
end


p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)