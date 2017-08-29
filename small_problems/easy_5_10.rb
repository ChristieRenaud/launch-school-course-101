# easy_5_10.rb
def outer_line(box_length)
  puts "+" + ("-" * box_length) + "+"
end

def inner_line(box_length)
  puts "|" + (" " * box_length) + "|"
end

MAX_BOX_LENGTH = 80
def print_in_box(string)
  box_length = string.size + 2
  if box_length > MAX_BOX_LENGTH
    string = string.slice(0, MAX_BOX_LENGTH-2)
    box_length = MAX_BOX_LENGTH
  end
  outer_line(box_length)
  inner_line(box_length)
  puts "| #{string} |"
  inner_line(box_length)
  outer_line(box_length)
end  




print_in_box('To boldly go where no one has gone before. To a land far, far away beyond the stars.')
print_in_box('')