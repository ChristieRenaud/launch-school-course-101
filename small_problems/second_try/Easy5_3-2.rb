#Easy5_3-2.rb
#input: string representing time of day in 24 hr format
#output: minutes before or after midnight
#info:
#first two chars represent hours
#last two chars represnet minutes
#60 minutes == 1 hour
#max minutes is 1439


# after_midnight approach:
# isolate minutes, convert to integer and save to variable
# isolate hours, convert to integer and save to variable
# multiply hours by 60, find remainder of dividing that by 1440
# add minutes to results of previous step

MINUTES_IN_HOURS = 60
MINUTES_IN_DAY = 1440

def after_midnight(time)
  hours = time[0, 2].to_i
  minutes = time[-2..-1].to_i
  minutes += hours * MINUTES_IN_HOURS % MINUTES_IN_DAY
end

def before_midnight(time)
  hours = time[0, 2].to_i
  minutes = time[-2..-1].to_i
  minutes += hours * MINUTES_IN_HOURS
  (MINUTES_IN_DAY - minutes) % MINUTES_IN_DAY
end

#test cases:
p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('36:34') #== 754
p before_midnight('36:34') #== 686
#p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0