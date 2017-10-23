#input: string that represents time in the minute based format
#output: string that represents time in 24 hour format (hh:mm)
# rules/requirements:
# positive number is minutes after midnight
# negative number is minutes before midnight
# 60 minutes == 1 hour
# 1440 minutes equals 1 day

# approach:
# get remainder of dividing number by 1440 to deal with only one day
# if positive, divide number by 60, answer is hours, remainder is minutes
# 
#then divide by 60.
# format answer

MINUTES_IN_HOURS = 60
MINUTES_IN_DAY = 1440

def time_of_day(minutes)
  minutes = minutes % MINUTES_IN_DAY 
  hours, minutes = minutes.divmod(MINUTES_IN_HOURS)
  format("%02d:%02d", hours, minutes)
end

#further exploration
def time_of_day(minutes)
t=Time.local(2017) + (minutes * 60)
t.strftime("%A, %H:%M")
end

#test cases
p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"