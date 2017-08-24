MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY
MAX_MINUTES = 1439

def after_midnight(time)
  minutes = ((time[0, 2].to_i) * MINUTES_IN_HOUR) + time[3, 2].to_i
  minutes > MAX_MINUTES ? 0 : minutes
end 

def before_midnight(time)
  minutes = MINUTES_IN_DAY - after_midnight(time)
  minutes > MAX_MINUTES ? 0 : minutes
end 





p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0
