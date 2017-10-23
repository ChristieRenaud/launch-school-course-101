#Problem
#- input: an integer greater than 0, a string representing sum or product
#- output: an integer representing the sum or product of all numbers up to the integer

# Approach
# -request an integer
# -save input to a variable
# -request an 's' or 'p' to determine sum or product
# -save input to another variable
# -if 's', then result is sum of numbers up to integer
#   -calculate sum
# -if 'p', then result is product of numbers
#   -calculate product
# -output result

number = nil
  loop do
    puts ">> Please enter an integer greater than 0:"
    number = gets.chomp
    break if (number.to_i.to_s == number) && (number.to_i > 0)
    puts ">> Invalid input"
  end
puts ">> Enter 's' to compute the sum, 'p' to compute the product:"
operation = gets.chomp
if operation.start_with?('s')
  result = (1..number.to_i).inject(:+)
puts "The sum of the integers between 1 and #{number} is #{result}."
elsif operation.start_with?('p')
  result = (1..number.to_i).inject(:*)
puts "The product of the integers between 1 and #{number} is #{result}."
end
