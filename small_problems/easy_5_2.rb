def time_of_day(minutes) 
  if 0 <= minutes
    hours, minutes = minutes.divmod(60)
    hours = hours % 24
  elsif 0 > minutes
    hours, minutes = (-minutes).divmod(60)
    hours = 23 - (hours % 24)
    minutes = 60 - minutes
    if minutes == 60
      hours += 1
      minutes = 0
    end
  end
  time = "#{format("%02d",hours)}:#{format("%02d",minutes)}"
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"


######further exploration

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

