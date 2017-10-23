# Hard_9.rb
#input: Rational number
#output: an array of the denominators that are part of an Egyptian fraction  representation of the number
# information:
# A rational number can be written as the result of the division between two integers
# A unit fraction is a rational number with 1 as the numerator
# An Egyptian fraction is the sum of a series of distinct(non-repeating) unit fractions
# Every positive rational number can be written as an Egyptian fraction
# Rational number class: Rational(a, b) == a/b; a/b will be irreducible


# Approach:
# save numerator and denominator of rational number to variables
# if Rational_number is greater than one, start with one
# if less start with denom * 2
# multiply starting number(n) by numerator and denominator
# subtract 1/starting number
# if result is negative move on to next number
# if numerator is 1 and denominator is not starting number
  # save starting number to array, save denominator of answer to array and return array
# if numerator is not 1 or denominator is starting number,
 # push starting number (n) to array, and save answer as new rational number
 # add one to (n) and loop through again





def egyptian(number)
  results_array = []
  denominator = number.denominator
  numerator = number.numerator
  number > 1 ? starting_number = 1 : starting_number = 2
  loop do 
    answer = Rational(starting_number * numerator, starting_number * denominator) - Rational(1, starting_number)
    if answer <= 0
      starting_number += 1
    elsif answer.numerator != 1 || answer.denominator == starting_number
      results_array << starting_number
      starting_number += 1
      numerator = answer.numerator
      denominator = answer.denominator
    else
      results_array << starting_number << answer.denominator
      return results_array
    end
  end
end


#test cases
p egyptian(Rational(127, 130))
p egyptian(Rational(39, 20))
p egyptian(Rational(1, 2))

#input: array of numbers representing the denominator of unit fractions
#ouput: an Rational number that is the sum of all the unit fracions

#approach:
#convert each element in the array into a Rational number with the element as the denominator
# add all the Rational numbers up

def unegyptian(array)
  sum = 0
  array.each do |elem| 
    sum += Rational(1, elem)
  end
  sum
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)