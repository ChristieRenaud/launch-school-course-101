# Problem
# Write a program that prints all odd numbers 1 to 99 inclusive, each on a separate line
# Output - numbers
#approach
# - loop through numbers 1 through 99.
#  - check if its odd
#   - if it is print number.

counter = 1
loop do 
  puts counter if counter.odd?
  break if counter == 99
  counter += 1
end

# Alternate solutiom

(1..99).each do |num|
  puts num if num.odd?
end