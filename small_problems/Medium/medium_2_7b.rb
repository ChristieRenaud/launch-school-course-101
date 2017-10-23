require 'date'
require 'pry'

COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def days_in_month(month, year = Time.now.year)
   return 29 if month == 2 && Date.gregorian_leap?(year)
   COMMON_YEAR_DAYS_IN_MONTH[month]
end

def five_friday_months(year)
friday_counter = []
12.times do |month|
   friday_counter << (1..(days_in_month(month+1, year))).to_a.count do |num|
    Date.new(year, month+1, num).friday? 
  end
end
#binding.pry
friday_counter.count(5)
end

p five_friday_months(2017)
p five_friday_months(2001)
p five_friday_months(1900)