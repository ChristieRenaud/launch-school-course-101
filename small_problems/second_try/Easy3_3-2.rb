#input: string of word or words
#output: string telling how many characters are in first string, minus spaces
#test cases: "walk", "walk don't run", ''

#approach:
#-Ask user for string of word or words
#-save string to variable
#-remove spaces
#-count characters in variable
#-Output number of characters in variable
# require 'pry'

puts "==> Please write word or multiple words:"
original_string = gets.chomp
new_string = original_string.delete(' ')
char_count = new_string.size
puts "==> There are #{char_count} characters in \"#{original_string}\""

#alternate solution

puts "==> Please write word or multiple words:"
original_string = gets.chomp
char_count = original_string.chars.count { |char| char =~ /\S/ }    # /[^\s]/ == /\S/, not a whitespace
puts "==> There are #{char_count} characters in \"#{original_string}\""

