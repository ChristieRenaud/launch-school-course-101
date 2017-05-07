# Question 1

# Question 3
my_string == "pumpkins"
my_array == ["pumpkins", "rutabaga"]

# Question 4
my_string == "pumpkinsrutabaga"
my_array == ["pumpkins"]

# Question 5
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid2(color)
  %w(blue green).include?(color)
end

def color_valid(color)
  color == "blue" || color == "green"
end