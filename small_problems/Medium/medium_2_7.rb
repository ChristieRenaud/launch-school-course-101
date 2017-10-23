require 'date'

def friday_13th(year)
  (1..12).to_a.count do |num|
    Time.local(year,num,13).friday?
  end
end


p friday_13th(2015) #== 3
p friday_13th(1986) #== 1
p friday_13th(2019) #== 2