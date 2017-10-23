#-inputs: 6 integers as strings
#-outputs: A string message telling if 6th number is equal to numbers 1-5
#-data structures: numeric string, and an array of integers

#-Approach
#- initialize array
#-Ask for 1st number, save answer to an array
#-Repeat 4 times, pushing each anwer to the array
#-Ask for last number
#-Check if last number added is included in in array
#-If true output affirmative message 
#-If false, output negative message

results = []
["1st", "2nd", "3rd", "4th", "5th"].each do |ordinal|
  puts "#==> Enter the #{ordinal} number:"
  results << gets.chomp.to_i
end
puts "#==> Enter the last number:"
last_number = gets.chomp.to_i
value =   case results.include?(last_number)
          when true
           "appears"
          when false
            "does not appear"
          end
puts "#==> The number #{last_number} #{value} in #{results}."
 