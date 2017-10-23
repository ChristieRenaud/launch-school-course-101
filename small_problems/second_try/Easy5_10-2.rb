#input: a string
#output: input string printed in a box
#requirements:
# box is 5 lines high
# first and fifth line start and end with a "+" has "-"'s between
# 2nd and 4th line start and end with "|" and have spaces between
# 3rd line start and end with '|', have a space, string, and then a space

#approach:
# find string.length
# number of "-"'s and spaces are equal to string.length + 2
# print out each line with the required characters
# simplify method

def print_in_box(string)
  box_interior = string.length + 2
  puts "+#{'-' * box_interior}+"
  puts "|#{' ' * box_interior}|"
  puts "| #{string} |"
  puts "|#{' ' * box_interior}|"
  puts "+#{'-' * box_interior}+"
end

# alternate simplified version

def print_in_box(string)
  string = string[0, 76] if string.length > 76 
  box_interior = string.length + 2
  horizontal_rule = "+#{'-' * box_interior}+"
  empty_line = "|#{' ' * box_interior}|"
  puts horizontal_rule
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts horizontal_rule
end



# test cases:
print_in_box('To boldly go where no one has gone before. To a land far, far away. In a time much different than today')
print_in_box('')