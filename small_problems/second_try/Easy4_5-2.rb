# input: integer greater than 1
# output: integer that is the sum of all multiples of 3 and 5 
# that lie between 1 and the number passed in

#approach:
#-find all multiples of 3 or 5 beween 1 and number passed in
  #-iterate through a range of 1 to number, select all numbers divisible by 3 or 5
# find sum of all these numbers

def multisum(number)
  results = (1..number).to_a.select do |num|
    num % 3 == 0 || num % 5 == 0
  end
  # total = 0
  # results.each { |num| total += num }
  # total

  results.inject(:+)
end







# test cases:
p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168