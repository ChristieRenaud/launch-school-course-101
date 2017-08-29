def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end


def leap_year2?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      else
        return false
      end
    end
  return true
  else
    false
  end
end





p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400) 
p leap_year?(240000)
p leap_year?(240001)
p leap_year?(2000) 
p leap_year?(1900) 
p leap_year?(1752) 
p leap_year?(1700) 
p leap_year?(1)
p leap_year?(100) 
p leap_year?(400) 