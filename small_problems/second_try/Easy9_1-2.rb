# input: An array containing 2 or more elements that produce a name when combined with spaces. And
# a hash with 2 keys, :title and :occupation, with appropriate values
# output: Prints a greeting using the person's full name and title.

# approach:
# join name array
# save occupation by referencing the key and value from hash
# ouput string using above values

def greetings(name_array, title_hash)
full_name = name_array.join(' ')
title = title_hash.values.join(' ')
puts "Hi, #{full_name}. You are the greatest #{title}!"
end
# test case:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around. 